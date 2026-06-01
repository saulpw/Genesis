
genesis.html: genesis.md style.css
	pandoc $< -s --css=style.css -o $@

dev: genesis.html
	python3 -m http.server 8080
