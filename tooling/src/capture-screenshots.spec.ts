import { test, expect } from '@playwright/test';

test('take screenshot of element', async ({ page }) => {
  
  await page.goto('https://snyk.io/advisor/npm-package/playwright');

  // sanity tests
  await expect(page).toHaveTitle(/Playwright/ig);

  const element = await page.locator('#popularity');
  await page.waitForSelector('#line-chart');
  await page.waitForLoadState('domcontentloaded');
  await page.waitForLoadState('networkidle');

  await page.hover('.vue--popularity-chart-dropdown__value');
  await page.locator('.vue--popularity-chart-dropdown__value').click({force: true});
  await page.waitForSelector('.vue--popularity-chart-dropdown__options', { state: 'attached' });

  await page.locator('.vue--popularity-chart-dropdown__options').locator('label').nth(0).click();

  await page.locator('.vue--popularity-chart-dropdown__value').click({force: true});
  await page.waitForSelector('.vue--popularity-chart-dropdown__options', { state: 'attached' });
  await page.locator('label').filter({ hasText: 'Download trend' }).click({force: true});

  const scriptJsContent = `
    document.querySelectorAll('#popularity p').forEach(elem => elem.remove());
  `;
  await page.addScriptTag({ content: scriptJsContent });

  // take screenshot
  await element.screenshot({ path: 'figure1-1.png' });

  // as an alternative to the above removal of HTML elements we can 
  // take screenshot of element but mask out the text
  // await element.screenshot({ path: 'figure1-1.png', mask: [page.locator('#popularity p')]});
});
