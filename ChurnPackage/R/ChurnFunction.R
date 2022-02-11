ChurnFunction <- function(x,y) {
  if(x %in% myData[,CustomerId]){
    glmExit <- glm(myData$Exited ~ myData$CreditScore+myData$Gender+myData$Age+myData$Tenure+myData$Balance+myData$NumOfProducts+myData$HasCrCard+myData$IsActiveMember+myData$EstimatedSalary, family="binomial")
    y <- y[, Prediction:= predict(glmExit, myData, type="response")]
    result <- y[CustomerId==x, Prediction]}
  else {stop("Erroro")}
  return(result)
}
