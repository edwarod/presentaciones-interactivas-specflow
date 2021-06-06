Feature: CreacionSlideEncuesta
	Como usuario quiero crear un slide con una pregunta de respuesta con opción múltiple

@mytag
Scenario: Crear slide de Pregunta de opción multiple
	Given un navegador web en la pagina presentación interactiva
	When Se selecciona la opcion de crear una nuevo slide de opción múltiple
	Then Se muestra el nuevo slide en blanco
	And Se muestra una barra lateral de configuración con el espacio para diligenciar la pregunta
	And Se muestra una menu para agregar las posibles respuestas
	And Se muestra un boton de guardado

Scenario: Agregar pregunta al slide de pregunta de opción múltiple
	Given un navegador web en la pagina presentación interactiva
	And Se selecciona la opcion de crear una nuevo slide de opción múltiple
	And Se muestra el nuevo slide en blanco
	And Se muestra una barra lateral de configuración con el espacio para diligenciar la pregunta
	And Se muestra una menu para agregar las posibles respuestas
	When Se diligencia la pregunta de la encuesta 
	And Se agregan las posibles respuestas
	And Se presenta una barra lateral con sugerencias de layout para el slide de bienvenida
	And Se utliza el boton de guardado
	Then Se guarda la pregunta

Scenario: Mostrar borrador de Slide de pregunta de opción múltiple una vez configurada
	Given un navegador web en la pagina presentación interactiva
	And Se ha creado una nuevo slide de bienvenida
	And Se ha diligenciado la pregunta de la encuesta 
	And Se han diligenciado las posibles respuestas
	When Se ha utlizado el boton de guardado
	Then Se muestra el borrador de presentación del slide de opción multiple
	And contiene un gráfico de barras con las opciones de respuesta en 0% de participación
