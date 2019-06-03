import { shallow } from 'enzyme';
import MenuItem from '../client/src/components/menuItems.jsx';
import MenuButtonContainer from '../client/src/components/menuButtonContainer.jsx';
import MenuButton from '../client/src/components/menuButton.jsx';
import MenuTypeContainer from '../client/src/components/MenuTypeContainer.jsx';


const puppeteer = require('puppeteer');
const app = require('../server/index.js');
const request = require('supertest');


let page;
let browser;
const width = 1280;
const height = 720;

beforeAll(async () => {
    browser = await puppeteer.launch({
      headless: false,
      slowMo: 80,
      args: [`--window-size=${width},${height}`]
    });
    page = await browser.newPage();
    await page.setViewport({ width, height });
  });
  afterAll(() => {
    browser.close();
  });

  describe('Test the root path', () => {
    test('GET route is successful', async(done) => {
      request(app).get('/menu').then((response) => {
        expect(response.statusCode).toBe(200);
        done();
      });
    });

    test('Response type should be an object', async(done) => {
      request(app).get('/menu').then((response) => {
        expect(typeof response).toBe('object');
        done();
      })
    })

    test('Get back error when encountering wrong endpoint', async(done) => {
      request(app).get('/menu/menu').then((response) => {
        expect(response.status).toBe(404);
        done();
      })
    })

});

// Will add more tests involving database data
describe('Test the database schema', () => {
  test('Contains correct columns', async(done) => {
    let expected = ['id', 'main_description', 'single_menu', 'price_per_guest', 'dish_name', 'dish_description', 'single_menu_id'];
    // expect.arrayContaining jest method
    done();
})

})


describe('React Test Suite', () => {
const items = [{
  "main_description": "Test description1",
  "single_menu_item": "Weekend",
  "price_per_guest": 11,
},
{
  "main_description": "Description2",
  "single_menu_item": "Sleek",
  "price_per_guest": 6,
},
{
  "main_description": "Description3",
  "single_menu_item": "Generic menu",
  "price_per_guest": 8,
},
{
  "main_description": "Description 4",
  "single_menu_item": "Pants",
  "price_per_guest": 7,
}]
})

// test doesnt work... will need time to edit but have outlined cleared
describe('MenuItem', () => {
  const wrapper = shallow(<MenuItem item={items[0]}/>);
  
  test('it displays the correct item components on screen', () => {
    expect(wrapper.find('div.itemContainer')).toHaveLength(1);
    expect(wrapper.find('div.dishPrice')).toHaveLength(1);
    
  });
  test('each component is displayed in the correct div', () => {
    expect(wrapper.find('div.dishPrice').text()).toBe('$11');
  });
})

// Tests the menyTypeContainer for length among other things
describe('MenuTypeContainer', () => {
  const sideItems = [items[0]];

  test('it displays the correct number of items', () => {
    expect(wrapper.find('MenuItem')).toHaveLength(1);
  })
});