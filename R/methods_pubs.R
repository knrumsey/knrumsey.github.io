NUM_CITATIONS <- 9
fname <- "methods_tab.txt"
cnt <- 1
year <- venue <- citation_apa <- link <- rep(NA, NUM_CITATIONS)

# ADD PAPERS HERE
year[cnt] <- 2023
venue[cnt] <- "ArXiV"
citation_apa[cnt] <- "Rumsey, K., Francom, D., & Shen, A. (2023). Generalized Bayesian MARS: Tools for Emulating Stochastic Computer Models. arXiv preprint arXiv:2306.01911."
link[cnt] <- "https://arxiv.org/pdf/2306.01911"
cnt <- cnt + 1

year[cnt] <- 2023
venue[cnt] <- "Stat"
citation_apa[cnt] <- "Rumsey, K., Huerta, G. & Tucker, J.D. (2023, April). A localized ensemble of approximate Gaussian processes for fast emulation in sequential settings. Stat, e576."
link[cnt] <- "https://onlinelibrary.wiley.com/doi/pdf/10.1002/sta4.576"
cnt <- cnt + 1

year[cnt] <- 2022
venue[cnt] <- "Applications of Machine Learning 2022"
citation_apa[cnt] <- "Rumsey, K., Grosskopf, M., Lawrence, E., Biswas, A., & Urban, N. (2022, October). A hierarchical sparse Gaussian process for in situ inference in expensive physics simulations. In Applications of Machine Learning 2022 (Vol. 12227, pp. 126-138). SPIE."
link[cnt] <- "https://www.spiedigitallibrary.org/conference-proceedings-of-spie/12227/122270J/A-hierarchical-sparse-Gaussian-process-for-in-situ-inference-in/10.1117/12.2633427.pdf"
cnt <- cnt + 1

year[cnt] <- 2022
venue[cnt] <- "ArXiV"
citation_apa[cnt] <- "Collins, G., Francom, D., & Rumsey, K. (2022). Bayesian Projection Pursuit Regression. arXiv preprint arXiv:2210.09181."
link[cnt] <- "https://arxiv.org/pdf/2210.09181.pdf"
cnt <- cnt + 1

year[cnt] <- 2021
venue[cnt] <- "ISAV'21"
citation_apa[cnt] <- "Grosskopf, M., Lawrence, E., Biswas, A., Tang, L., Rumsey, K., Van Roekel, L., & Urban, N. (2021). In-situ spatial inference on climate simulations with sparse gaussian processes. In ISAV'21: In Situ Infrastructures for Enabling Extreme-Scale Analysis and Visualization (pp. 31-36)."
link[cnt] <- "https://dl.acm.org/doi/pdf/10.1145/3490138.3490140"
cnt <- cnt + 1

year[cnt] <- 2021
venue[cnt] <- "JSCS"
citation_apa[cnt] <- "Rumsey, K. N., & Huerta, G. (2021). Fast matrix algebra for Bayesian model calibration. Journal of Statistical Computation and Simulation, 91(7), 1331-1341."
link[cnt] <- "https://www.tandfonline.com/doi/pdf/10.1080/00949655.2020.1850729"
cnt <- cnt + 1

year[cnt] <- 2020
venue[cnt] <- "SIAM/ASA JUQ"
citation_apa[cnt] <- "Rumsey, K., Huerta, G., Brown, J., & Hund, L. (2020). Dealing with measurement uncertainties as nuisance parameters in Bayesian model calibration. SIAM/ASA Journal on Uncertainty Quantification, 8(4), 1287-1309."
link[cnt] <- "https://epubs.siam.org/doi/pdf/10.1137/19M1283707"
cnt <- cnt + 1

year[cnt] <- 2018
venue[cnt] <- "Reliability Engineering and System Safety"
citation_apa[cnt] <- "Hund, L., Schroeder, B., Rumsey, K., & Huerta, G. (2018). Distinguishing between model-and data-driven inferences for high reliability statistical predictions. Reliability Engineering & System Safety, 180, 201-210."
link[cnt] <- "https://www.sciencedirect.com/science/article/pii/S0951832018301534"
cnt <- cnt + 1

year[cnt] <- 2018
venue[cnt] <- "SAND-Report"
citation_apa[cnt] <- "Hund, L., Schroeder, B. B., Rumsey, K., & Murchison, N. (2017). Robust approaches to quantification of margin and uncertainty for sparse data (No. SAND2017-9960). Sandia National Lab.(SNL-NM), Albuquerque, NM (United States)."
link[cnt] <- "https://www.osti.gov/servlets/purl/1394061"
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

