public class Team
{
  private int teamScore, possessions;
  private String teamName;
  private ArrayList<Player> teamPlayers = new ArrayList<Player>();
  Team(String teamName, int possessions, Player a, Player b, Player c, Player d, Player e) {
    this.teamName = teamName;
    this.possessions = possessions;
    teamPlayers.add(a);
    teamPlayers.add(b);
    teamPlayers.add(c);
    teamPlayers.add(d);
    teamPlayers.add(e);
  }
  public void makeTeamScore() {
    for(int i = 0; i < teamPlayers.size(); i++) {
      for(int j = 0; j < possessions; j++) {
        teamPlayers.get(i).addPlayerScore();
      }
    }
    for(int i = 0; i < teamPlayers.size(); i++) {
      teamScore += teamPlayers.get(i).getPlayerScore();
    }
  }
  public int getTeamScore() {return teamScore;}
  public String getTeamName() {return teamName;}
  public int getTeamPlayerScore(int playerNumber) {return teamPlayers.get(playerNumber).getPlayerScore();}
  public String getTeamPlayerName(int i) {return teamPlayers.get(i).getPlayerName();}
}
