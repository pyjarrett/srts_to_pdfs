#!/usr/bin/env ruby

require 'prawn'

def process_transcript(file_name, output)
  video_text = ""

  video_title = File.basename(file_name, ".srt")
  output.text video_title
  output.text " "

  File.open(file_name).each_line do |line|
    case line
    when /^[0-9]+/
      puts "Skipping #{line}"
    when /^\s+/
      puts "Skipping #{line}"
    when /-->/
      puts "Skipping #{line}"
    else
      video_text += line
    end
  end

  video_text.gsub!(/\n|\r/, ' ')

  output.text video_text
  output.text " "
  output.text " "
end

def merge_transcripts(path)
  # TODO: Check if path exists.
  pdf = Prawn::Document.new

  search_glob = File.join(path, "*.srt")
  Dir[search_glob].each do |transcript|
    process_transcript(transcript, pdf)
  end

  output_file_name = File.basename(path) + ".pdf"
  pdf.render_file(output_file_name)
end

ARGV.each do |arg|
  merge_transcripts(arg)
end
