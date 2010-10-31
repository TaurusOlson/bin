#!/opt/local/bin/ruby

script = $0.to_s.split('/')[-1]

help = <<-MSG
Usage: #{script} [-h] PDFNAME

lakex is a simple Makefile creator for your Latex project.

Options:
    -h  shows this help message

MSG

if ARGV.index('-h') or ARGV.index('--help') or ARGV.size == 0
    puts help
    exit
end

if ARGV[0].to_s.end_with?('pdf') 
    pdf_name = ARGV[0]
    if File.exist? 'Makefile'
        puts "A Makefile already exists. Please remove it before using #{script}."
        exit
    end
end

msg = <<DATA
PDF=#{pdf_name}

LATEX=latex
DVI2PDF=dvipdfm

TEX=$(PDF:.pdf=.tex)
DVI=$(PDF:.pdf=.dvi)

$(SOURCE): $(TEX)
	$(LATEX) $(SOURCE)

dvi:
	@echo "Creating the dvi file."
	$(LATEX) $(TEX)

pdf: 
	@echo "Creating the pdf file."
	$(LATEX) $(TEX) && $(DVI2PDF) $(DVI)
	rm -f *.dvi *.mt* *.aux *.log *.maf *.out

clean:
	@echo "Cleaning the directory"
	rm -f *.dvi *.mt* *.aux *.log *.maf *.out *.pdf

help:
	@echo "Makefile for Latex"
	@echo 
	@echo "Usage:"
	@echo "make       : Create all the files"
	@echo "make dvi   : Create the dvi files"
	@echo "make pdf   : Create the pdf files"
	@echo "make clean : Remove the created files"
	@echo "make help  : Show this help message"
DATA

def create_makefile(msg)
    File.open('Makefile', 'w') {|file| file.write(msg)}
    puts "The Makefile has been written. Enjoy!"
end

create_makefile(msg)

