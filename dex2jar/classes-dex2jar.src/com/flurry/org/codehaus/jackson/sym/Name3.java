package com.flurry.org.codehaus.jackson.sym;

public final class Name3 extends Name
{
  final int mQuad1;
  final int mQuad2;
  final int mQuad3;

  Name3(String paramString, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super(paramString, paramInt1);
    this.mQuad1 = paramInt2;
    this.mQuad2 = paramInt3;
    this.mQuad3 = paramInt4;
  }

  public boolean equals(int paramInt)
  {
    return false;
  }

  public boolean equals(int paramInt1, int paramInt2)
  {
    return false;
  }

  public boolean equals(int[] paramArrayOfInt, int paramInt)
  {
    return (paramInt == 3) && (paramArrayOfInt[0] == this.mQuad1) && (paramArrayOfInt[1] == this.mQuad2) && (paramArrayOfInt[2] == this.mQuad3);
  }
}

/* Location:           /Users/dantheman/src/android/decompiled/vine-decompiled/dex2jar/classes-dex2jar.jar
 * Qualified Name:     com.flurry.org.codehaus.jackson.sym.Name3
 * JD-Core Version:    0.6.2
 */