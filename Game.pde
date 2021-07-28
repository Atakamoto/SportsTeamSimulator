public class Game
{
  private Team a, b;
  private int aScore, bScore, pAScore, pBScore, playerNumA, playerNumB, pPlayerNumA, pPlayerNumB;
  private boolean turnA;
  Game(Team a, Team b)
  {
    this.a = a;
    this.b = b;
    playerNumA = 0;
    playerNumB = 0;
    pPlayerNumA = 0;
    pPlayerNumB = 0;
    pAScore = 0;
    pBScore = 0;
    turnA = true;
  }
  public void playGame()
  {
    for(int i = 0; i < possessions; i++) { 
      if(turnA == true) {
        a.addTeamPlayerScore(playerNumA);
        pPlayerNumA = playerNumA;
        playerNumA++;
        turnA = false;
      } else {
        b.addTeamPlayerScore(playerNumB);
        pPlayerNumB = playerNumB;
        playerNumB++;
        turnA = true;
      }
      if(playerNumA > 4) {
        playerNumA = 0;
      } else if(playerNumB > 4) {
        playerNumB = 0;
      }
      for(int j = 0; j < a.teamPlayers.size(); j++) {
        if(j == 0) {
          aScore = 0;
        }
        aScore += a.teamPlayers.get(j).getPlayerScore();
      } 
      for(int j = 0; j < b.teamPlayers.size(); j++) {
        if(j == 0) {
          bScore = 0;
      }
        bScore += b.teamPlayers.get(j).getPlayerScore();
      }
      if(!turnA) {
        if(i == possessions) {
            System.out.println("Final Score: " + a.getTeamName() + ": " + aScore + " " + b.getTeamName() + ": " + bScore + " " + a.getTeamPlayerName(pPlayerNumA));
          } else if(i == possessions/2) {
              System.out.println("Half Time Score: " + a.getTeamName() + ": " + aScore + " " + b.getTeamName() + ": " + bScore + " " + a.getTeamPlayerName(pPlayerNumA));
          } else if(i == possessions/4) {
              System.out.println("1st Quarter Score: " + a.getTeamName() + ": " + aScore + " " + b.getTeamName() + ": " + bScore + " " + a.getTeamPlayerName(pPlayerNumA));
          } else if(i == possessions/4 * 3) {
              System.out.println("3rd Quarter Score: " + a.getTeamName() + ": " + aScore + " " + b.getTeamName() + ": " + bScore + " " + a.getTeamPlayerName(pPlayerNumA));
          } else if(aScore != pAScore){
            System.out.println(a.getTeamName() + ": " + aScore + " " + b.getTeamName() + ": " + bScore + " " + a.getTeamPlayerName(pPlayerNumA));
          }
      }
      if(turnA) {
        if(i == possessions) {
            System.out.println("Final Score: " + a.getTeamName() + ": " + aScore + " " + b.getTeamName() + ": " + bScore + " " + b.getTeamPlayerName(pPlayerNumB));
          } else if(i == possessions/2) {
              System.out.println("Half Time Score: " + a.getTeamName() + ": " + aScore + " " + b.getTeamName() + ": " + bScore + " " + b.getTeamPlayerName(pPlayerNumB));
          } else if(i == possessions/4) {
              System.out.println("1st Quarter Score: " + a.getTeamName() + ": " + aScore + " " + b.getTeamName() + ": " + bScore + " " + b.getTeamPlayerName(pPlayerNumB));
          } else if(i == possessions/4 * 3) {
              System.out.println("3rd Quarter Score: " + a.getTeamName() + ": " + aScore + " " + b.getTeamName() + ": " + bScore + " " + b.getTeamPlayerName(pPlayerNumB));
          } else if(bScore != pBScore){
            System.out.println(a.getTeamName() + ": " + aScore + " " + b.getTeamName() + ": " + bScore + " " + b.getTeamPlayerName(pPlayerNumB));
          }
      }
      pAScore = aScore;
      pBScore = bScore;
    }
  }
  public void displayGameResults()
  {
    System.out.println("Final Score: " + a.getTeamName() + ": " + aScore + 
    " " + b.getTeamName() + ": " + bScore);
  }
  public void displayPlayerResults()
  {
    System.out.println("Player Stats:");
    System.out.println(a.getTeamName() + ":");
    for(int i = 0; i < 5; i++) {
      System.out.println(a.getTeamPlayerName(i) + "|" + a.getTeamPlayerScore(i));
    }
    System.out.println("");
    System.out.println(b.getTeamName() + ":");
    for(int i = 0; i < 5; i++) {
      System.out.println(b.getTeamPlayerName(i) + "|" + b.getTeamPlayerScore(i));
    }
  }  
}
