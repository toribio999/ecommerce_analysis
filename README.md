# 📊 Ecommerce Sales Analysis

Dashboard analítico desarrollado en Power BI para un e-commerce multicanal. Permite monitorizar el rendimiento de ventas, márgenes de beneficio y comportamiento de compra a través de 4 páginas de análisis interactivo con filtros cruzados.

---

## 🛠️ Stack tecnológico

- **Power BI Desktop** — desarrollo del informe y visualizaciones
- **DAX** — medidas calculadas (MoM%, Profit Margin, KPIs dinámicos)
- **Power Query (M)** — transformación y limpieza del dataset
- **Excel / CSV** — fuente de datos origen

---

## 📁 Estructura del proyecto

```
ecommerce-sales-analysis/
├── report/
│   └── ecommerce_sales.pbix
├── data/
│   └── dataset.csv
├── images/
│   ├── home.png
│   ├── gender_disclosure.png
│   ├── profit_analysis.png
│   └── extra.png
└── README.md

```

## 📄 Páginas del informe

### 1. Home — Overview

Este dashboard corresponde a la página principal (1/3) del análisis de ecommerce y ofrece una visión general del rendimiento del negocio. Aquí se resumen los principales indicadores del trimestre actual, incluyendo ventas totales, beneficios, margen de beneficio medio y crecimiento mes a mes (MoM), permitiendo evaluar rápidamente la salud financiera. Además, se presentan tendencias mensuales de ventas y ganancias para identificar patrones y estacionalidad, junto con un desglose por categorías de producto que muestra tanto la contribución a las ventas como la rentabilidad de cada segmento. Los filtros superiores permiten segmentar el análisis por prioridad de orden, tipo de dispositivo, método de pago y trimestre, facilitando una exploración dinámica de los datos.


![Nombre](./images/home.png) 





**💡 Insights principales**

- **Fashion domina las ventas** con un 55,62% del total ($43M), siendo con diferencia la categoría más relevante tanto en volumen como en profit generado.
- **El margen global del 46,22%** es sólido, aunque Electronics muestra el profit más bajo de las cuatro categorías, lo que sugiere mayor coste o menor precio medio de venta.
- **La tendencia mensual de ventas** presenta picos en mayo y diciembre, indicando estacionalidad marcada que puede aprovecharse para campañas promocionales.
- **Home & Furniture** representa el segundo bloque de ventas (25,29%), con un profit relevante, lo que la convierte en una categoría estratégica de crecimiento.
- **El crecimiento MoM (promedio 10,89%)** muestra una tendencia general positiva, cerrando en torno al 10,89%, lo que confirma crecimiento sostenido; sin embargo, no es lineal. Hay picos fuertes (abril–mayo) seguidos de caídas marcadas (junio y agosto), lo que indica volatilidad mes a mes. Esto sugiere que el crecimiento está impulsado por eventos puntuales (promociones, campañas o estacionalidad) más que por una demanda completamente estable. 


**Comentarios Relevantes**

En general, se observa un crecimiento sólido y consistente tanto en ventas como en beneficios, con un incremento MoM positivo y márgenes saludables (~46%), lo que indica una operación rentable y bien controlada. Sin embargo, no todas las categorías aportan igual: Fashion lidera claramente en volumen de ventas, mientras que otras categorías mantienen márgenes similares pero menor peso, lo que abre una oportunidad para optimizar mix de producto o empujar categorías subexplotadas. A nivel temporal, hay cierta estacionalidad con picos hacia mitad y final de año, lo que sugiere que campañas o demanda estacional están influyendo significativamente. En conjunto, el negocio crece, pero el siguiente paso lógico no es solo vender más, sino diversificar ingresos y mejorar el rendimiento de categorías con menor contribución sin sacrificar margen.

El MoM muestra una tendencia general positiva, cerrando en torno al 10,89%, lo que confirma crecimiento sostenido; sin embargo, no es lineal. Hay picos fuertes (abril–mayo) seguidos de caídas marcadas (junio y agosto), lo que indica volatilidad mes a mes. Esto sugiere que el crecimiento está impulsado por eventos puntuales (promociones, campañas o estacionalidad) más que por una demanda completamente estable. 


### 2. Análisis de clientes
Segmentación de ventas y comportamiento de compra del cliente.... Permite identificar patrones de consumo diferenciados y orientar estrategias de marketing.



### 3. Análisis en profundidad del beneficio
Análisis en profundidad del margen de beneficio desglosado por categoría, segmento y período. Identifica las líneas de producto más y menos rentables.





## 🎛️ Filtros disponibles

Todos los dashboards soportan filtrado cruzado mediante los siguientes slicers globales:

`Order Priority` · `Device Type` · `Payment Method` · `Quarter` · `Product Category` · `MonthName`

---
