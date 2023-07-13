class Lasagna
{
  public int ExpectedMinutesInOven()
  {
    return 40;
  }

  public int RemainingMinutesInOven(int minutesInOven)
  {
    return ExpectedMinutesInOven() - minutesInOven;
  }

  public int PreparationTimeInMinutes(int layerCount)
  {
    return layerCount * 2;
  }

  public int ElapsedTimeInMinutes(int layerCount, int minutesInOven)
  {
    return PreparationTimeInMinutes(layerCount) + minutesInOven;
  }
}