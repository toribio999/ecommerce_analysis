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

Vista general del negocio. Incluye los cuatro KPIs principales (Sales, Profit Margin, Profit, Quantity), evolución mensual de ventas y profit, crecimiento mes a mes (MoM%) y distribución de ventas por categoría de producto.

![Nombre](./images/home.png) 

**💡 Insights principales**

- **Fashion domina las ventas** con un 55,62% del total ($43M), siendo con diferencia la categoría más relevante tanto en volumen como en profit generado.
- **El margen global del 46,22%** es sólido, aunque Electronics muestra el profit más bajo de las cuatro categorías, lo que sugiere mayor coste o menor precio medio de venta.
- **La tendencia mensual de ventas** presenta picos en mayo y diciembre, indicando estacionalidad marcada que puede aprovecharse para campañas promocionales.
- **Home & Furniture** representa el segundo bloque de ventas (25,29%), con un profit relevante, lo que la convierte en una categoría estratégica de crecimiento.
- **El crecimiento MoM (promedio 8,1%)** muestra alta variabilidad entre meses, con caídas en algunos períodos que merecen análisis de causa (stock, competencia, estacionalidad).


### 2. Gender Disclosure
Segmentación de ventas y comportamiento de compra por género del cliente. Permite identificar patrones de consumo diferenciados y orientar estrategias de marketing.



### 3. Profit Analysis
Análisis en profundidad del margen de beneficio desglosado por categoría, segmento y período. Identifica las líneas de producto más y menos rentables.





## 🎛️ Filtros disponibles

Todos los dashboards soportan filtrado cruzado mediante los siguientes slicers globales:

`Order Priority` · `Device Type` · `Payment Method` · `Quarter` · `Product Category` · `MonthName`

---
