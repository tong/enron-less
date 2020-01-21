
SRC = src
.FLAGS =
LESSC = lessc $(FLAGS)

test:
	$(LESSC) --lint $(SRC)/enron.less

print-dependencies:
	@$(LESSC) --depends $(SRC)/enron.less enron.css | cut -c12-

enron.css:
	$(LESSC) $(SRC)/enron.less $@

enron.min.css:
	$(LESSC) $(SRC)/enron.less $@ -clean-css="--s1 --advanced"
