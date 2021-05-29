# Product Recommendation
![header](https://img.shields.io/badge/-Survey-blue) ![header](https://img.shields.io/badge/-Google--Colab-blue) ![header](https://img.shields.io/badge/-Market--basket-blue) ![header](https://img.shields.io/badge/-Analysis-blue) ![header](https://img.shields.io/badge/-Insight-blue)  

## Dataset
A survey asking students in the class which items have purchased / used them (Can input only Yes or No).
The data come from 44 participants on 60 items.

<b>Google colab :</b> [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/drive/1LecDmGpd525vPa79IWtESR4RhNQrmrVL?usp=sharing)

## Overall
The participants have purchased / used 22 items on average.
![newplot (4)](https://user-images.githubusercontent.com/51535964/120073741-db940a00-c0c3-11eb-9c1b-3bb25adb43b7.png)

### Most common and least common product 
Most cunsumed product are shabu,wallet and sunscreen.  
Least cunsumed product are drine,FIFA online game and pork leg with rice(!?).
![newplot (5)](https://user-images.githubusercontent.com/51535964/120073870-62e17d80-c0c4-11eb-9b6c-067afb736dbb.png)

### Most common co-occurance product 
![image](https://user-images.githubusercontent.com/51535964/120073890-84426980-c0c4-11eb-9b69-5ec901e3fe07.png)

## Recommendation model
### Association Rule : Apriori
First, I set min support = 0.5
![newplot (6)](https://user-images.githubusercontent.com/51535964/120074254-30388480-c0c6-11eb-8da7-264ee4c9229d.png)

From the distribution,  
I try to set support <= upper fence ,  confidence >= mean , Lift >= Q1 to see the interesting rules.  
I will get the item rules that less supoort but high confidence and high lift. Then, I want to know which products are high dependency and Can we bundle it to make a promotion for boosting support higher?  
<b>See on lift view : Use lift value for edge value in the network (High lift = High dependency)</b>  
![image](https://user-images.githubusercontent.com/51535964/120074335-8ad1e080-c0c6-11eb-9907-92937cd1ed5d.png)

### Collaborative Filtering : Item-to-Item
Calculate co-occurance score from co-sine formula and plot it to see distribturion.
![newplot (7)](https://user-images.githubusercontent.com/51535964/120075168-6415a900-c0ca-11eb-8467-e61c877226a3.png)

Then, plot co-occurrence products by setting co-sine score to the edge in the network that give the same picture by using Apriori.
![image](https://user-images.githubusercontent.com/51535964/120075375-31b87b80-c0cb-11eb-8558-54ba1f7e201b.png)
