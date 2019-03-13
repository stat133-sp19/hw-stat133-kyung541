Data Dictionary
================

<table>
<colgroup>
<col width="14%" />
<col width="16%" />
<col width="69%" />
</colgroup>
<thead>
<tr class="header">
<th>Data Name</th>
<th align="left">Data Types</th>
<th align="center">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Team_name</td>
<td align="left">character</td>
<td align="center">The name of the team</td>
</tr>
<tr class="even">
<td>Game_date</td>
<td align="left">numeric</td>
<td align="center">The date of the game</td>
</tr>
<tr class="odd">
<td>Season</td>
<td align="left">numeric</td>
<td align="center">The season of the game</td>
</tr>
<tr class="even">
<td>Period</td>
<td align="left">numeric</td>
<td align="center">An NBA game is divided in 4 periods of 12 mins each. For example, a value for period = 1 refers to the first period (the first 12 mins of the game).</td>
</tr>
<tr class="odd">
<td>Minutes_remaining</td>
<td align="left">numeric</td>
<td align="center">Have to do with the amount of time in minutes that remained to be played in a given period.</td>
</tr>
<tr class="even">
<td>Second_remaining</td>
<td align="left">numeric</td>
<td align="center">Have to do with the amount of time in seconds that remained to be played in a given period.</td>
</tr>
<tr class="odd">
<td>Shot_made_flag</td>
<td align="left">character</td>
<td align="center">indicates whether a shot was made (y) or missed (n).</td>
</tr>
<tr class="even">
<td>Action_type</td>
<td align="left">character</td>
<td align="center">the basketball moves used by players, either to pass by defenders to gain access to the basket, or to get a clean pass to a teammate to score a two pointer or three pointer.</td>
</tr>
<tr class="odd">
<td>short_type</td>
<td align="left">character</td>
<td align="center">indicates whether a shot is a 2-point field goal, or a 3-point field goal.</td>
</tr>
<tr class="even">
<td>shot_distance</td>
<td align="left">numeric</td>
<td align="center">distance to the basket (measured in feet).</td>
</tr>
<tr class="odd">
<td>Opponent</td>
<td align="left">numeric</td>
<td align="center">The team that they playing against to</td>
</tr>
<tr class="even">
<td>x</td>
<td align="left">numeric</td>
<td align="center">the court coordinates (measured in inches) where a shot occurred .</td>
</tr>
<tr class="odd">
<td>y</td>
<td align="left">numeric</td>
<td align="center">the court coordinates (measured in inches) where a shot occurred .</td>
</tr>
</tbody>
</table>
