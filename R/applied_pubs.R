NUM_CITATIONS <- 6
fname <- "applied_tab.txt"
cnt <- 1
year <- venue <- citation_apa <- link <- rep(NA, NUM_CITATIONS)

# ADD PAPERS HERE
year[cnt] <- 2023
venue[cnt] <- "AWWA Water Science"
citation_apa[cnt] <- "Scruggs, C. E., Heyne, C. M. & Rumsey, K. N. (2023). Understanding questions and concerns about potable water reuse: An analysis of survey write-in responses. AWWA Water Science"
link[cnt] <- "https://awwa.onlinelibrary.wiley.com/doi/pdfdirect/10.1002/aws2.1333"
cnt <- cnt + 1

year[cnt] <- 2023
venue[cnt] <- "Microorganisms"
citation_apa[cnt] <- "Carroll-Portillo, A., Rumsey, K. N., Braun, C. A., Lin, D. M., Coffman, C. N., Alcock, J. A., ... & Lin, H. C. (2023). Mucin and Agitation Shape Predation of Escherichia coli by Lytic Coliphage. Microorganisms, 11(2), 508"
link[cnt] <- "https://www.mdpi.com/2076-2607/11/2/508"
cnt <- cnt + 1

year[cnt] <- 2021
venue[cnt] <- "American Water Works Association"
citation_apa[cnt] <- "Distler, L. N., Scruggs, C. E., Cruz, M. P., & Rumsey, K. N. (2021). Public Engagement on Water Reuse Beyond Community Surveys. Journal: American Water Works Association, 113(4)."
link[cnt] <- "https://awwa.onlinelibrary.wiley.com/doi/pdf/10.1002/awwa.1710"
cnt <- cnt + 1

year[cnt] <- 2021
venue[cnt] <- "Dermatology Online"
citation_apa[cnt] <- "Lin, J., Rumsey, K., Stepenaskie, S., & Durkin, J. R. (2021). Dermatologists are more likely than oncologists to prescribe skin-directed therapies for early-stage cutaneous T-cell lymphoma: a retrospective review. Dermatology Online Journal, 27(10)."
link[cnt] <- ""
cnt <- cnt + 1

year[cnt] <- 2021
venue[cnt] <- "Journal of Planning Education and Research"
citation_apa[cnt] <- "Scruggs, C. E., Lozoya, S., Rumsey, K. N., Bronson, K., & Chavez, P. (2021). Voluntary Public Campaigns to Benefit the Environment: Assessing the Effectiveness of the There Is No Poop Fairy Campaign. Journal of Planning Education and Research, 0739456X2110"
link[cnt] <- "https://par.nsf.gov/servlets/purl/10298261"
cnt <- cnt + 1

year[cnt] <- 2020
venue[cnt] <- "Journal of Water Resources Planning and Management"
citation_apa[cnt] <- "Distler, L. N., Scruggs, C. E., & Rumsey, K. N. (2020). Arid inland community survey on water knowledge, trust, and potable reuse. II: Predictive modeling. Journal of Water Resources Planning and Management, 146(7)."
link[cnt] <- "https://ascelibrary.org/doi/pdf/10.1061/%28ASCE%29WR.1943-5452.0001219"
cnt <- cnt + 1



# MAKE TABLE
cat("<table>
    \t<tr>
    \t<th>Year</th>
    \t<th>Venue</th>
    \t<th>Citation</th>
    \t<th>Link</th>\n\t</tr>\n", file=fname)
n <- length(year)
for(i in 1:n){
  str <- c("\t<tr>\n\t<td>", year[i], "</td>\n",
           "\t<td>", venue[i], "</td>\n",
           "\t<td>", citation_apa[i], "</td>\n",
           "\t<td><a href=\"", link[i], "\"><i class=\"material-icons\">link</i> </a></td>\n",
           "\t</tr>\n")
  cat(str, file=fname, append=TRUE)
}
cat("</table>", file=fname, append=TRUE)

