USE world_layoffs;

-- exploratory data analysis
SELECT MAX(total_laid_off), MAX(percentage_laid_off)
FROM layoff_staging3;

SELECT MAX(total_laid_off), MAX(percentage_laid_off)
FROM layoff_staging3;

SELECT *
FROM layoff_staging3
WHERE percentage_laid_off = 1
ORDER BY funds_raised DESC;

SELECT *
FROM layoff_staging3
WHERE percentage_laid_off = 1
ORDER BY funds_raised DESC;

SELECT MIN(`date`), MAX(`date`)
FROM layoff_staging3;

SELECT MIN(`date`), MAX(`date`)
FROM layoff_staging3;

SELECT industry, SUM(total_laid_off)
FROM layoff_staging3
GROUP BY company
ORDER BY 2 DESC;