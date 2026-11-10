Save the Bees! – Version 2.0
Project overview

Save the Bees! is a small educational project exploring the application of basic statistics to ecology.

The aim is to compare nectar production across three simulated flower meadows and identify which environment offers the greatest nectar resources for bees.

Version 2.0 extends the original experiment (Version 1.0), introducing a third meadow and additional statistical comparisons.

1. Experimental design

Three meadows were simulated, each containing 100 flowers.

For each flower, nectar production was randomly generated using a normal distribution.

Parameter	Meadow A	Meadow B	Meadow C
Number of flowers	100	100	100
Mean nectar production (µL)	5	9	7
Standard deviation (µL)	1.5	2.0	1.0

Negative nectar values were set to zero.

A fixed random seed (rng(42)) was used to ensure reproducibility.

2. Statistical analysis

For each meadow, the following parameters were calculated:

Mean nectar production.
Standard deviation.
Maximum nectar production.
Number of flowers producing more than 10 µL of nectar.
3. Results
Indicator	Meadow A	Meadow B	Meadow C
Mean (µL)	5.10	8.94	7.09
Standard deviation	1.46	2.36	1.08
Maximum (µL)	9.32	14.15	10.24
Flowers > 10 µL	0	31	1

Meadow B showed the highest average nectar production and the greatest number of particularly nectar-rich flowers.

Meadow C showed the lowest variability, indicating a more uniform nectar distribution.

4. Data visualization

A comparative histogram was generated using MATLAB to visualize the nectar production distributions across the three meadows.

Output figure:

bee_nectar_histogram_v2.png

5. Files
save_the_bee_v2.m – MATLAB script for data generation and statistical analysis.
bee_histogram_v2.m – MATLAB script for histogram generation.
bee_nectar_data_v2.txt – Simulated nectar dataset.
bee_nectar_histogram_v2.png – Comparative histogram.
6. Software
MATLAB R2026a.
7. Educational purpose

This project demonstrates how simple statistical methods can be used to explore ecological questions.

The simulated data are intended for educational purposes and do not represent actual measurements of nectar production.

Save the Bees! 🐝

Version 2.0
