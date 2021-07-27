public class Player
{
  private int playerScore, scoreInformer, improvement;
  private String playerName;
  Player(String playerName, int improvement)
  {
     this.improvement = improvement;
     this.playerName = playerName;
  }
  public void addPlayerScore()
  {
    scoreInformer = (int)(Math.random()*101);
    if(scoreInformer > 90 - improvement) {
      playerScore += 3;
    } else if(scoreInformer > 50 - improvement) {
      playerScore += 2;
    } else if(scoreInformer > 35 - improvement) {
      playerScore += 1;
    } else {
      playerScore += 0;
    }
  }
  public int getPlayerScore() {return playerScore;}
  public void setPlayerScore(int playerScore) {this.playerScore = playerScore;}
  public String getPlayerName() {return playerName;}
}
