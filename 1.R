# Data set has been downloaded and unziped under 
# "C:\Users\vanwu\OneDrive\Documents\data-raw"
# "C:\Users\vanwu\OneDrive\Documents\" as the default working directory
# Read the path of all txt files

path <- file.path("data-raw", "reviews", "txt_sentoken")

pos <- list.files(file.path(path, "pos"))
#print pos
#pos
neg <- list.files(file.path(path, "neg"))
#print neg
#neg


pos.files <- file.path(path, "pos", pos)
neg.files <- file.path(path, "neg", neg)
all.files <- c(pos.files, neg.files) #concat the two files

#check all by printing
#all.files

# Create doc names by shortening the file path.  
nms <- gsub("data-raw/reviews/txt_sentoken", "", all.files)
#nms


# Load all files into variable: txt
txt <- lapply(all.files, readLines)
#txt

#set name of respective files
#reviews

reviews <- sapply(reviews, function(x) paste(x, collapse = " "))
#reviews
save(reviews, file = "C:/Users/avinita/Desktop/dataset/data-raw/reviews.rdata", compress = "xz")

