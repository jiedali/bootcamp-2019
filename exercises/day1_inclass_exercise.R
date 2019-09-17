gapminder <- read.csv(here::here("data", "gapminder5.csv"))
head(gapminder)
str(gapminder)
gapminder$country <-as.character(gapminder$country)
gapminder$continent <-as.character(gapminder$continent)
str(gapminder)
# to recover the GDP, by multiply gdpPercap and pop
# take natural log of gdpPercap and pop

obs <-1:nrow(gapminder)

for (i in obs) {
  gapminder[i,"gdp"] <- gapminder[i,"pop"] * gapminder[i,"gdpPercap"]
  gapminder[i,"log_gdpPercap"] <- log(gapminder[i, "gdpPercap"])
  gapminder[i,"log_pop"] <- log(gapminder[i, "pop"])
}

#
