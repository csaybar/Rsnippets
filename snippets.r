snippet lib
	library(${1:package})

snippet req
	require(${1:package})

snippet src
	source("${1:file.R}")

snippet ret
	return(${1:code})

snippet mat
	matrix(${1:data}, nrow = ${2:rows}, ncol = ${3:cols})

snippet sg
	setGeneric("${1:generic}", function(${2:x, ...}) {
		standardGeneric("${1:generic}")
	})

snippet sm
	setMethod("${1:generic}", ${2:class}, function(${2:x, ...}) {
		${0}
	})

snippet sc
	setClass("${1:Class}", slots = c(${2:name = "type"}))

snippet if
	if (${1:condition}) {
		${0}
	}

snippet el
	else {
		${0}
	}

snippet ei
	else if (${1:condition}) {
		${0}
	}

snippet fun
	${1:name} <- function(${2:variables}) {
		${0}
	}

snippet for
	for (${1:variable} in ${2:vector}) {
		${0}
	}

snippet while
	while (${1:condition}) {
		${0}
	}

snippet switch
	switch (${1:object},
		${2:case} = ${3:action}
	)

snippet apply
	apply(${1:array}, ${2:margin}, ${3:...})

snippet lapply
	lapply(${1:list}, ${2:function})

snippet sapply
	sapply(${1:list}, ${2:function})

snippet mapply
	mapply(${1:function}, ${2:...})

snippet tapply
	tapply(${1:vector}, ${2:index}, ${3:function})

snippet vapply
	vapply(${1:list}, ${2:function}, FUN.VALUE = ${3:type}, ${4:...})

snippet rapply
	rapply(${1:list}, ${2:function})

snippet ts
	`r paste("#", date(), "------------------------------\n")`

snippet shinyapp
	library(shiny)
	
	ui <- fluidPage(
	  ${0}
	)
	
	server <- function(input, output, session) {
	  
	}
	
	shinyApp(ui, server)

snippet shinymod
	${1:name}_UI <- function(id) {
	  ns <- NS(id)
	  tagList(
		${0}
	  )
	}
	
	${1:name} <- function(input, output, session) {
	  
	}



snippet worldmap
	# geospatial_attributes ---------------------------------------------------
	geo <- list(showland = FALSE,
							showlakes = FALSE,
							showcountries = TRUE,
							showocean = TRUE,
							countrywidth = 0.5,
							landcolor = toRGB("grey90"),
							lakecolor = toRGB("white"),
							oceancolor = toRGB("#e5f3fc"),
							projection = list(type = 'orthographic',
																rotation = list(lon = -100,
																								lat = 40,
																								roll = 0)),
							lonaxis = list(showgrid = TRUE,
														 gridcolor = toRGB("gray80"),
														 gridwidth = 0.5),
							lataxis = list(showgrid = TRUE,
														 gridcolor = toRGB("gray80"),
														 gridwidth = 0.5))
		# Legend attributes -------------------------------------------------------
		legendtitle <- list(yref = "paper",
										  	xref = "paper",
										  	y = 0.8,
												x = 1.02, 
												text = "<b>${1:character}</b>",
												font = list(color = "#264E86",
																		family = "sans serif",
																		size = 14),
												showarrow = FALSE)
	p <- plot_ly(${2:name}, 
							 text = ~${3:name},
							 color = ~${4:name},
							 colors = viridis(N,direction = -1),
							 span = I(0.01),
							 type = "scattergeo",
							 alpha = 1,
							 stroke = I("black"),
							 hoverinfo = "text",
						 	 hoveron = "fill",
						 	 span = I(0.5)) %>%
		layout(showlegend = TRUE,
					 geo = geo,
					 annotations = legendtitle) %>%
			config(displayModeBar = FALSE)
	p


