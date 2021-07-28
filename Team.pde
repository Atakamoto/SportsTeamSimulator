public class Team
{
  private int teamScore;
  private String teamName;
  private ArrayList<Player> teamPlayers = new ArrayList<Player>();
  Team(String teamName, Player a, Player b, Player c, Player d, Player e) {
    this.teamName = teamName;
    teamPlayers.add(a);
    teamPlayers.add(b);
    teamPlayers.add(c);
    teamPlayers.add(d);
    teamPlayers.add(e);
  }

  public int getTeamScore() {return teamScore;}
  public String getTeamName() {return teamName;}
  public int getTeamPlayerScore(int playerNumber) {return teamPlayers.get(playerNumber).getPlayerScore();}
  public String getTeamPlayerName(int i) {return teamPlayers.get(i).getPlayerName();}
  public void addTeamPlayerScore(int playerNumber) {teamPlayers.get(playerNumber).addPlayerScore();}
}
