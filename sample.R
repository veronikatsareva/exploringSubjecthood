install.packages("lingtypology")
library(lingtypology)


df <- data.frame(language = c("Arabic", "Basque", "English", "German", "Hindi", "Russian", "Turkish", "Welsh"))

map.feature(df$language,
            label = df$language,
            color= "magma",
            label.hide = FALSE,
            label.position = "right",
            label.fsize = 20,
            label.font = "mono",
            tile = "Esri.WorldGrayCanvas")

