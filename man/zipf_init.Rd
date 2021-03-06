% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/zipf_init.R
\name{zipf_init}
\alias{zipf_init}
\title{Initialise a Handicap}
\usage{
zipf_init(races, group_by, race_id, btn_var, .progress = "none")
}
\arguments{
\item{\strong{races}}{dataframe of races}

\item{\strong{group_by}}{name of variable(s) to group races found in
\strong{races}, eg. US races you wouldn't group claiming races and Stakes
races together, in UK you wouldn't group Class 4 and Listed races.}

\item{\strong{race_id}}{name of variable to split \strong{races} up by
so each split is one race}

\item{\strong{btn_var}}{name of variable in \strong{races} with margins
between horses}

\item{\strong{.progress}}{plyr's progress bar (default = "none", options inc.
"text", "time", "tk" or "win")}
}
\value{
Returns a list consisting of:
\itemize{
     \item \strong{groups} contains \strong{group_by} param
     \item \strong{race_id} contains \strong{race_id} param
     \item \strong{counts} dataframe of counts per group_by
     \item \strong{ratings} dataframe of ratings (with 3 variables,
     \emph{group_by}, \emph{race_id}, and \emph{zipf_rtg})
}
}
\description{
Initialise a handicap by splitting a dataframe of races up into groups of
similar class, then for each race in the group calculate a rating for the
winner using the remaining races in the group.  The result is a skeleton
handicap from which to start.
}
\details{
Related to \link{zipf_race} and \link{zipf_hcp}, this function will
initialise a handicap.  It will split a dataframe of races into groups
according to \strong{group_by}, these groups should be races of similar class,
most (all) racing jurisdictions employ a type of classification. For each
race (identified by \strong{race_id}), in each group, the winner is assigned
a rating based on the other races in the same group.
}

