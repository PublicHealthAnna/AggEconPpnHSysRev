##making forest plots in R 
##acknowledgements to Rachel Thomson 
library(grDevices)
library(grid)

#Plots using Std. beta as effect size
forest.meta(ma.beta.health2aea,
            sortvar = RoB,
            predict = TRUE,
            print.tau2 = FALSE,
            leftcols = c("Cov_ID","Result_ID","Exp","Out","RoB"),
            leftlabs = c("Study ID", "Result ID", "Exposure", "Outcome", "RoB"),
            rightcols = c("TE", "seTE", "effect.ci","w.random"),
            rightlabs = c("Std. ??", "SE", "95% CI","Weight"),
            smlab = "Standardised Beta",
            label.right = "increases AEA",
            label.left = "decreases AEA",
            text.random = "Random effects model",
            xlim = c(-100, 300),
            just = "left",
            just.addcols.left = "center",
            just.addcols.right = "center",
            just.studlab = "left",
            colgap.studlab = "-0.8cm",
            fs.lr = 10.5)
            
           



 ###From Rachel 
     
         
         #what to display
         
         leftcols = c("Cov_ID",
                      "Result_ID",
                      "Exp",
                      "Out",
                      "RoB"),
         rightcols = c("TE",
                       "95%-CI",
                       "%w(random)"),
         sortvar = RoB,
         comb.random = TRUE,
         test.overall.random = TRUE,
         print.tau2 = FALSE,
         print.stat = FALSE,
         print.pval.Q = FALSE,
         
         #labels
         
         leftlabs = c("Study",
                      "Result",
                      "Exposure",
                      "Outcome",
                      "RoB"),
         rightlabs = c("Std. ??",
                       "95% CI      ",
                       "Weight"),
         smlab = "Standardised Beta",
         label.right = "increases AEA",
         label.left = "decreases AEA",
         text.random = "Random effects model",
         
         #structure
         
         digits = 3,
         digits.pval = 3,
         ## include if needed xlim = c(-11, 170),
         
         #layout
         
         just = "right",
         just.addcols.left = "center",
         just.addcols.right = "right",
         just.studlab = "left",
         colgap.studlab = "-0.8cm",
         fs.lr = 10.5
       )
       
       dev.copy2pdf(file = paste0("Forest plots/Main/PDFs/", name, ".pdf"),
                    width = 10,
                    height = 8)
       
       dev.copy(svg,
                file = paste0("Forest plots/Main/SVGs/", name, ".svg"),
                width = 10,
                height = 8)
       dev.off()
     })