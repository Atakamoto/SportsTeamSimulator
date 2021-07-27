int aP = -20;
Player sharksP1 = new Player("Thomas", aP); Player sharksP2 = new Player("James", aP - 5); Player sharksP3 = new Player("Nicolas", aP -10); Player sharksP4 = new Player("Alexander", aP + 1); Player sharksP5 = new Player("Jordan", aP -10);
Player tigersP1 = new Player("Milo", aP + 1); Player tigersP2 = new Player("Ken", aP - 2); Player tigersP3 = new Player("Jackson", aP - 3); Player tigersP4 = new Player("Sam", aP - 5); Player tigersP5 = new Player("Kyle", aP + 1);
Player eaglesP1 = new Player("Liam", aP + 2); Player eaglesP2 = new Player("Benjamin", aP - 4); Player eaglesP3 = new Player("Daniel", aP - 3); Player eaglesP4 = new Player("Mateo", aP - 5); Player eaglesP5 = new Player("Joseph", aP + 4);
Player dolphinsP1 = new Player("Noah", aP + 5); Player dolphinsP2 = new Player("Lucas", aP + 2); Player dolphinsP3 = new Player("Jacob", aP + 3); Player dolphinsP4 = new Player("Jack", aP + 5); Player dolphinsP5 = new Player("John", aP + 1);
Player hawksP1 = new Player("Oliver", aP - 1); Player hawksP2 = new Player("Henry", aP - 2); Player hawksP3 = new Player("Logan", aP - 1); Player hawksP4 = new Player("Owen", aP - 7); Player hawksP5 = new Player("David", aP - 1);
Player raysP1 = new Player("Elijah", aP - 3); Player raysP2 = new Player("Mason", aP - 15); Player raysP3 = new Player("Jackson", aP - 13); Player raysP4 = new Player("Theodore", aP - 7); Player raysP5 = new Player("Wyatt", aP + 20);
Player lionsP1 = new Player("William", aP - 14); Player lionsP2 = new Player("Michael", aP - 9); Player lionsP3 = new Player("Levi", aP - 5); Player lionsP4 = new Player("Dien", aP - 5); Player lionsP5 = new Player("Matthew", aP - 10);
Player snakesP1 = new Player("James", aP + 1); Player snakesP2 = new Player("Ethan", aP); Player snakesP3 = new Player("Sebastian", aP); Player snakesP4 = new Player("Samuel", aP); Player snakesP5 = new Player("Luke", aP);

Team sharks = new Team("Sharks", 10, sharksP1, sharksP2, sharksP3, sharksP4, sharksP5);
Team dolphins = new Team("Dolphins", 10, dolphinsP1, dolphinsP2, dolphinsP3, dolphinsP4, dolphinsP5);
Team snakes = new Team("Snakes", 10, snakesP1, snakesP2, snakesP3,snakesP4, snakesP5);
Team tigers = new Team("Tigers", 10, tigersP1, tigersP2, tigersP3, tigersP4, tigersP5);
Team eagles = new Team("Eagles", 10, eaglesP1, eaglesP2, eaglesP3, eaglesP4, eaglesP5);
Team hawks = new Team("Hawks", 10, hawksP1, hawksP2, hawksP3, hawksP4, hawksP5);
Team rays = new Team("Rays", 10, raysP1, raysP2, raysP3, raysP4, raysP5);
Team lions = new Team("Lions", 10, lionsP1, lionsP2, lionsP3, lionsP4, lionsP5);

Game avb = new Game(sharks, eagles);
public void setup()
{
  avb.playGame();
  avb.displayGameResults();
  delay(5000);
  avb.displayPlayerResults();
}
