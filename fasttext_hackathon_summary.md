#Summary of FastText Project from Hackathon - September 9, 2016
##Project Summary
I downloaded the works of Algernon Blackwood and Mary Shelley from Project Gutenberg to have public domain text to work with. 2/3 of the works of each of the authors I used to train a fasttext model, and the last 1/3 was my test set.

The first part of the process was getting the documents in the format fasttext expects. For this I wrote scripts to remove the linebreaks that came with the documents, make each sentence it's own line, and (based on the document it was in) label it as either "BLACKWOOD" or "SHELLEY" using the expected fasttext format. I then trained my model on this training data. I similarly had to break down my test data into the one sentence per line format, but of course labels were not included here!

I built my model and made files both with binary predictions (accuracy of 81%) and probabilistic predictions for my training data.

##Future Outcomes
When I joined the facebook group for fasttext users a lot of people were having the same issue I was with document formatting and needing a way to format and label automatically. I would like to make my scripts for this process cleaner and more well documented so that anyone using fasttext can use them to solve this problem.

I want some neat or fun visual for this project itself. It's harder than I would like to dip into the model's binary output file (others on the facebook group for fasttext have also complained about this). One idea would be to find the five most (or least) iconic Blackwood and Shelley sentences.

I am also considering doing a comparison with word2vec. Word2vec is slower, but fasttext is more opaque.

Compare accuracy on sentences versus paragraphs (Kyle's suggestion)

Write a script that picks out sentences that are classified to meet a certain criteria (e.g., train a model on active and passive voice than give you the indices for all your passive voice sentences)
