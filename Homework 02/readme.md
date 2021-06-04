# Job to be Done!
![header](https://img.shields.io/badge/-Creative-blue) ![header](https://img.shields.io/badge/-Diagram-blue) ![header](https://img.shields.io/badge/-Business--Model-blue)  
![JTBD](https://user-images.githubusercontent.com/51535964/120813907-8dc24a80-c578-11eb-995c-33a352fffe69.jpg)

<B>Start a job : Plan a trip</B>   
  
<B>Task : </B>  
1. Get many requirements from travel companions.
2. Find a lot of information - Tourist places , Direction , Food etc.
3. Arrange the schedule of the plan.
4. Estimate the cost.
5. Travel! 
    
<b>BUT!!</b>

for t < travel time:  

6. The tourist places are closed.
7. Rearrange the plan.
8. Travel!  

<b>Done</b>  
  
V  
V  
  
<b>Question : Can we do it automately by selecting only the interests in step 1?</b>

# Travelmate - Automatic travel planning
![Slide1](https://user-images.githubusercontent.com/51535964/119959815-8e823c00-bfce-11eb-9c92-6c0f3b6fa9f9.JPG)
![Slide4](https://user-images.githubusercontent.com/51535964/119982314-de6dfc80-bfe8-11eb-9a77-3ec9b6ec17f7.JPG)
![Slide5](https://user-images.githubusercontent.com/51535964/119982319-e168ed00-bfe8-11eb-96e5-2481e938df15.JPG)
![Slide6](https://user-images.githubusercontent.com/51535964/119982321-e2018380-bfe8-11eb-8194-6748309d26e6.JPG)
![Slide3](https://user-images.githubusercontent.com/51535964/119981683-1b85bf00-bfe8-11eb-9e31-ae4f8f3244c4.JPG)
For do this, We need a lot of personal data in travel terms for training the AI in each scenario. So, I can't do it now. But....
## The solution that I think we can do it now and can improve in the future.

For the covid situation, On my experience, 1-2 places per trip in my plan are closed!!   
So, I will be in this loop.  

for t < travel time:  

6. The tourist places are closed.
7. Rearrange the plan.
8. Travel! 

On my experience, I will rearrange the plan by...


<B>Start a job : Rearrage the plan if the one is closed</B>   
  
<B>Task : </B>  
1. See the next place in the plan and the time that I should arrive in the plan.
2. Calculate the time that I can spend before go to the next place
3. Find a direction which I can go to the next place.
4. Find a new tourist place that is on the way.
5. Calculate the time to arrive the new tourist place , time to spend and time to go to the next place in the plan.

for time that I can spend > time to go to the next place in the plan:  
&nbsp;&nbsp;&nbsp; 6. if (the time to arrive the new place + time to spend + time to go the next place) < time in the schedule and found a favorite place:  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Travel!!  
&nbsp;&nbsp;&nbsp; 7. elif (the time to arrive + time to spend + time to go) < time in the schedule and not found a favorite place:  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Find a new place.  
&nbsp;&nbsp;&nbsp; 8. Go to the next place in the plan.

<b>Question : Can we do it automately the task by setting start point and the destination point and selecting a interesting place?</b>

## This is the behind process to do that.
![JTBD](https://user-images.githubusercontent.com/51535964/120831030-51e3b100-c589-11eb-8e70-1f5dca1e8c11.jpg)

