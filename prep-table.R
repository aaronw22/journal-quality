library(data.table)
library(readxl)

data <- read_excel("data/ABDC-JQL-2022-v3-100523.xlsx", sheet = "2022 JQL", skip = 8)
setDT(data)

setcolorder(data, c("Journal Title", "2022 rating"))

fwrite(data, "data/journal list.csv")
