package com.facebook.internal;

public enum SessionAuthorizationType
{
  static
  {
    PUBLISH = new SessionAuthorizationType("PUBLISH", 1);
    SessionAuthorizationType[] arrayOfSessionAuthorizationType = new SessionAuthorizationType[2];
    arrayOfSessionAuthorizationType[0] = READ;
    arrayOfSessionAuthorizationType[1] = PUBLISH;
  }
}

/* Location:           /Users/dantheman/src/android/decompiled/vine-decompiled/dex2jar/classes-dex2jar.jar
 * Qualified Name:     com.facebook.internal.SessionAuthorizationType
 * JD-Core Version:    0.6.2
 */