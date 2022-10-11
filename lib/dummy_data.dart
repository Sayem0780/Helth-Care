import 'package:flutter/material.dart';
import './models/category.dart';
import './models/disease.dart';

const DUMMY_CATEGORIES = const [
  Category(
    id: 'c1',
    title: 'Diabetes',
    image:'https://cdn.pixabay.com/photo/2017/03/09/16/53/diabetes-2130236__340.jpg' ,
  ),
  Category(
    id: 'c2',
    title: 'CVD',
    image: 'https://cdn.pixabay.com/photo/2014/12/10/21/01/doctor-563429__340.jpg',
  ),
  Category(
    id: 'c3',
    title: 'Stroke',
    image: 'https://cdn.pixabay.com/photo/2022/09/25/21/31/heart-attack-7479253__340.jpg',
  ),
  Category(
    id: 'c4',
    title: 'Breast cancer',
    image: 'https://cdn.pixabay.com/photo/2017/10/27/16/34/cavitacion-2894835__340.jpg',
  ),
  Category(
    id: 'c5',
    title: 'Chronic kidney disease',
    image: 'https://media.istockphoto.com/photos/human-kidney-stones-medical-concept-picture-id843352558?b=1&k=20&m=843352558&s=170667a&w=0&h=EzmiXAcPzGeR201-j-Wk3auSw5eHj2nFxexSS2Gn-hU=',
  ),
  Category(
    id: 'c6',
    title: 'Cirrosis of the liver',
    image: 'https://media.istockphoto.com/photos/hepatitis-virus-with-human-liver-picture-id1272365959?b=1&k=20&m=1272365959&s=170667a&w=0&h=LhNaR7obC9-2X1Cc1wt5nafUM_uI0xbUNYT67bojVzU=',
  ),
  Category(
    id: 'c7',
    title: 'Alzheimer’s Disease',
    image: 'https://cdn.pixabay.com/photo/2015/03/30/13/22/woman-698964__340.jpg',
  ),
  Category(
    id: 'c8',
    title: 'Melanoma',
    image: 'https://cdn.pixabay.com/photo/2016/08/20/02/50/acne-1606765__340.jpg',
  ),
  Category(
    id: 'c9',
    title: 'Gastric cancer',
    image: 'https://cdn.pixabay.com/photo/2017/10/27/16/39/cavitacion-2894851__340.jpg',
  ),
  Category(
    id: 'c10',
    title: 'Tuberculosis',
    image: 'https://images.unsplash.com/photo-1631651368361-c8e3f4785fc3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dHViZXJjdWxvc2lzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  ),
];

const DUMMY_TEST = const [
  Disease(
    id: 'm1',
    categories: [
      'c1',
      'c2',
    ],
    title: 'Glucos Test',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
    'https://cdn.pixabay.com/photo/2014/11/12/19/25/diabetes-528678_960_720.jpg',
    duration: 20,
    instructions: [
      'Go nearest Hospital',
      'Ask for avobe Test',
      'Do As The asked',
      'Take the report',
      'Ask The Parameters',
      'Insert Them in Our Next Section'
    ],
    advice: [
      'Divide your meals into 3 main meals at regular intervals.',
      'Drink softened water only.',
      'Include vegetables in every meal. Prefer seasonal vegetables and fruits. Consume at least 400g of fresh vegetables and fruits.',
      '1-2 nuts a day (walnuts/almonds/pistachios). grams of fresh vegetables and fruits,'
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'Keep dairy products to a minimum. Give preference to products based on goat milk.',
      'Eat 60-100g of meat a day (preferably white meat or fish). Do not eat meat 2 days a week.'
    ],
    isGlucoseFree: false,
    isHypertension: true,
    ischolesterol: true,
    isLactoseFree: true,
  ),
  Disease(
    id: 'm2',
    categories: [
      'c2',
    ],
    title: 'Blood pressure',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
    'https://cdn.pixabay.com/photo/2015/07/30/14/36/hypertension-867855_960_720.jpg',
    duration: 10,
    instructions: [
      'Go nearest Hospital',
      'Ask for avobe Test',
      'Do As The asked',
      'Take the report',
      'Ask The Parameters',
      'Insert Them in Our Next Section'
    ],
    advice: [
      'Divide your meals into 3 main meals at regular intervals.',
      'Drink softened water only.',
      'Include vegetables in every meal. Prefer seasonal vegetables and fruits. Consume at least 400g of fresh vegetables and fruits.',
      '1-2 nuts a day (walnuts/almonds/pistachios). grams of fresh vegetables and fruits,'
          'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'Keep dairy products to a minimum. Give preference to products based on goat milk.',
      'Eat 60-100g of meat a day (preferably white meat or fish). Do not eat meat 2 days a week.'
    ],
    isGlucoseFree: false,
    isHypertension: false,
    ischolesterol: true,
    isLactoseFree: true,
  ),
  Disease(
    id: 'm3',
    categories: [
      'c2',
      'c3',
    ],
    title: 'Pulse pressure',
    affordability: Affordability.Pricey,
    complexity: Complexity.Simple,
    imageUrl:
    'https://cdn.pixabay.com/photo/2017/05/13/22/28/blood-pressure-2310824_960_720.jpg',
    duration: 45,
    instructions: [
      'Go nearest Hospital',
      'Ask for avobe Test',
      'Do As The asked',
      'Take the report',
      'Ask The Parameters',
      'Insert Them in Our Next Section'
    ],
    advice: [
      'Divide your meals into 3 main meals at regular intervals.',
      'Drink softened water only.',
      'Include vegetables in every meal. Prefer seasonal vegetables and fruits. Consume at least 400g of fresh vegetables and fruits.',
      '1-2 nuts a day (walnuts/almonds/pistachios). grams of fresh vegetables and fruits,'
          'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'Keep dairy products to a minimum. Give preference to products based on goat milk.',
      'Eat 60-100g of meat a day (preferably white meat or fish). Do not eat meat 2 days a week.'
    ],
    isGlucoseFree: false,
    isHypertension: true,
    ischolesterol: false,
    isLactoseFree: true,
  ),
  Disease(
    id: 'm4',
    categories: [
      'c4',
    ],
    title: 'Cholesterol Test',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Challenging,
    imageUrl:
    'https://media.istockphoto.com/photos/blood-test-for-cholesterol-picture-id1005894192?s=612x612',
    duration: 60,
    instructions: [
      'Go nearest Hospital',
      'Ask for avobe Test',
      'Do As The asked',
      'Take the report',
      'Ask The Parameters',
      'Insert Them in Our Next Section'
    ],
    advice: [
      'Divide your meals into 3 main meals at regular intervals.',
      'Drink softened water only.',
      'Include vegetables in every meal. Prefer seasonal vegetables and fruits. Consume at least 400g of fresh vegetables and fruits.',
      '1-2 nuts a day (walnuts/almonds/pistachios). grams of fresh vegetables and fruits,'
          'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'Keep dairy products to a minimum. Give preference to products based on goat milk.',
      'Eat 60-100g of meat a day (preferably white meat or fish). Do not eat meat 2 days a week.'
    ],
    isGlucoseFree: false,
    isHypertension: true,
    ischolesterol: true,
    isLactoseFree: false,
  ),
  Disease(
    id: 'm5',
    categories: [
      'c2'
          'c5',
      'c10',
    ],
    title: 'BMI',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
    'https://media.istockphoto.com/photos/body-mass-index-formula-in-a-notepad-picture-id481814420?b=1&k=20&m=481814420&s=170667a&w=0&h=GVpiECz5sEhBgUvFcgZ5eFNPFkPZ4qPA9gpiqlGGL5Q=',
    duration: 15,
    instructions: [
      'Go nearest Hospital',
      'Ask for avobe Test',
      'Do As The asked',
      'Take the report',
      'Ask The Parameters',
      'Insert Them in Our Next Section'
    ],
    advice: [
      'Divide your meals into 3 main meals at regular intervals.',
      'Drink softened water only.',
      'Include vegetables in every meal. Prefer seasonal vegetables and fruits. Consume at least 400g of fresh vegetables and fruits.',
      '1-2 nuts a day (walnuts/almonds/pistachios). grams of fresh vegetables and fruits,'
          'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'Keep dairy products to a minimum. Give preference to products based on goat milk.',
      'Eat 60-100g of meat a day (preferably white meat or fish). Do not eat meat 2 days a week.'
    ],
    isGlucoseFree: true,
    isHypertension: true,
    ischolesterol: true,
    isLactoseFree: true,
  ),
  Disease(
    id: 'm6',
    categories: [
      'c6',
      'c10',
    ],
    title: 'Hypertension',
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl:
    'https://cdn.pixabay.com/photo/2018/06/09/17/11/doctor-3464761__340.jpg',
    duration: 240,
    instructions: [
      'Go nearest Hospital',
      'Ask for avobe Test',
      'Do As The asked',
      'Take the report',
      'Ask The Parameters',
      'Insert Them in Our Next Section'
    ],
    advice: [
      'Divide your meals into 3 main meals at regular intervals.',
      'Drink softened water only.',
      'Include vegetables in every meal. Prefer seasonal vegetables and fruits. Consume at least 400g of fresh vegetables and fruits.',
      '1-2 nuts a day (walnuts/almonds/pistachios). grams of fresh vegetables and fruits,'
          'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'Keep dairy products to a minimum. Give preference to products based on goat milk.',
      'Eat 60-100g of meat a day (preferably white meat or fish). Do not eat meat 2 days a week.'
    ],
    isGlucoseFree: false,
    isHypertension: false,
    ischolesterol: false,
    isLactoseFree: true,
  ),
  Disease(
    id: 'm7',
    categories: [
      'c7',
    ],
    title: 'Brain MRI',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
    'https://media.istockphoto.com/photos/mri-brain-with-headache-picture-id938046810?b=1&k=20&m=938046810&s=170667a&w=0&h=rYzYbJ8ScPHWmg8PEDyRPjMQ0al_ruljfVlNEsoJCs0=',
    duration: 20,
    instructions: [
      'Go nearest Hospital',
      'Ask for avobe Test',
      'Do As The asked',
      'Take the report',
      'Ask The Parameters',
      'Insert Them in Our Next Section'
    ],
    advice: [
      'Divide your meals into 3 main meals at regular intervals.',
      'Drink softened water only.',
      'Include vegetables in every meal. Prefer seasonal vegetables and fruits. Consume at least 400g of fresh vegetables and fruits.',
      '1-2 nuts a day (walnuts/almonds/pistachios). grams of fresh vegetables and fruits,'
          'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'Keep dairy products to a minimum. Give preference to products based on goat milk.',
      'Eat 60-100g of meat a day (preferably white meat or fish). Do not eat meat 2 days a week.'
    ],
    isGlucoseFree: false,
    isHypertension: true,
    ischolesterol: false,
    isLactoseFree: true,
  ),
  Disease(
    id: 'm8',
    categories: [
      'c8',
    ],
    title: 'Chest X-rays',
    affordability: Affordability.Pricey,
    complexity: Complexity.Challenging,
    imageUrl:
    'https://cdn.pixabay.com/photo/2022/03/25/12/17/skeleton-7090995__340.jpg',
    duration: 35,
    instructions: [
      'Go nearest Hospital',
      'Ask for avobe Test',
      'Do As The asked',
      'Take the report',
      'Ask The Parameters',
      'Insert Them in Our Next Section'
    ],
    advice: [
      'Divide your meals into 3 main meals at regular intervals.',
      'Drink softened water only.',
      'Include vegetables in every meal. Prefer seasonal vegetables and fruits. Consume at least 400g of fresh vegetables and fruits.',
      '1-2 nuts a day (walnuts/almonds/pistachios). grams of fresh vegetables and fruits,'
          'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'Keep dairy products to a minimum. Give preference to products based on goat milk.',
      'Eat 60-100g of meat a day (preferably white meat or fish). Do not eat meat 2 days a week.'
    ],
    isGlucoseFree: false,
    isHypertension: true,
    ischolesterol: true,
    isLactoseFree: true,
  ),
  Disease(
    id: 'm9',
    categories: [
      'c9',
      'c3',
    ],
    title: 'Lung X-rays',
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl:
    'https://media.istockphoto.com/photos/lung-3d-rendering-image-picture-id1214718434?k=20&m=1214718434&s=612x612&w=0&h=8OFjfgqkClJizXpgy_hGBr2NIo_y5z7jKrzOP_5WhzM=',
    duration: 45,
    instructions: [
      'Go nearest Hospital',
      'Ask for avobe Test',
      'Do As The asked',
      'Take the report',
      'Ask The Parameters',
      'Insert Them in Our Next Section'
    ],
    advice: [
      'Divide your meals into 3 main meals at regular intervals.',
      'Drink softened water only.',
      'Include vegetables in every meal. Prefer seasonal vegetables and fruits. Consume at least 400g of fresh vegetables and fruits.',
      '1-2 nuts a day (walnuts/almonds/pistachios). grams of fresh vegetables and fruits,'
          'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'Keep dairy products to a minimum. Give preference to products based on goat milk.',
      'Eat 60-100g of meat a day (preferably white meat or fish). Do not eat meat 2 days a week.'
    ],
    isGlucoseFree: false,
    isHypertension: false,
    ischolesterol: true,
    isLactoseFree: false,
  ),
  Disease(
    id: 'm10',
    categories: [
      'c2',
      'c5',
      'c10',
    ],
    title: 'Blood Test',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
    'https://cdn.pixabay.com/photo/2016/03/30/18/12/needle-1291172__340.jpg',
    duration: 30,
    instructions: [
      'Go nearest Hospital',
      'Ask for avobe Test',
      'Do As The asked',
      'Take the report',
      'Ask The Parameters',
      'Insert Them in Our Next Section'
    ],
    advice: [
      'Divide your meals into 3 main meals at regular intervals.',
      'Drink softened water only.',
      'Include vegetables in every meal. Prefer seasonal vegetables and fruits. Consume at least 400g of fresh vegetables and fruits.',
      '1-2 nuts a day (walnuts/almonds/pistachios). grams of fresh vegetables and fruits,'
          'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'Keep dairy products to a minimum. Give preference to products based on goat milk.',
      'Eat 60-100g of meat a day (preferably white meat or fish). Do not eat meat 2 days a week.'
    ],
    isGlucoseFree: true,
    isHypertension: true,
    ischolesterol: false,
    isLactoseFree: true,
  ),
];
