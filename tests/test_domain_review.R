source("R/domain_review.R")

item <- list(signal=53, slack=49, drag=25, confidence=90)
stopifnot(domain_review_score(item) == 170)
stopifnot(domain_review_lane(item) == "ship")
