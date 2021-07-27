public class Game
{
  private String winner;
  private Team a, b;
  Game(Team a, Team b)
  {
    this.a = a;
    this.b = b;
  }
  public void playGame()
  {
    a.makeTeamScore();
    b.makeTeamScore();
  }
  public void displayGameResults()
  {
    System.out.println("Final Score: " + a.getTeamName() + ": " + a.getTeamScore() + 
    " " + b.getTeamName() + ": " + b.getTeamScore());
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
