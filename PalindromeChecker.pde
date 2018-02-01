public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if (palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    } else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String word2 = noCapitals(word);
  String word3 = noSpaces(word2); 
  String word4 = onlyLetters(word3); 
  if (word4.equals(reverse(word4))==true) {
    return true;
  }
  return false;
}
public String reverse(String str)
{
  String sNew = new String();
  for (int i= str.length()-1; i >= 0; i--)
  {
    sNew = sNew + str.charAt(i);
  }
  return sNew;
}
public String noCapitals(String word2) {
  return word2.toLowerCase();
}
public String noSpaces(String word3) {
  String al = new String();
  for (int i =0; i < word3.length(); i++)
  {
    if (!word3.substring(i, i+ 1).equals(" "))
    {
      al = al + word3.substring(i, i+1);
    }
  }
  return al;
}
public int numLetters(String sString){
  int numLet = 0;
  for(int i=0; i <sString.length(); i++)
  if(Character.isLetter(sString.charAt(i)) == true)
  numLet++;
  return numLet;
}
public String onlyLetters(String word4){
  String al = new String();
  for(int i =0; i < word4.length(); i++){
    if(Character.isLetter(word4.charAt(i))) {
     al = al + word4.charAt(i);
}
}
  return al;
  
}