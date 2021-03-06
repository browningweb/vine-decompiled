package org.scribe.builder.api;

import org.scribe.model.Token;

public class LinkedInApi extends DefaultApi10a
{
  private static final String AUTHORIZE_URL = "https://api.linkedin.com/uas/oauth/authorize?oauth_token=%s";

  public String getAccessTokenEndpoint()
  {
    return "https://api.linkedin.com/uas/oauth/accessToken";
  }

  public String getAuthorizationUrl(Token paramToken)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = paramToken.getToken();
    return String.format("https://api.linkedin.com/uas/oauth/authorize?oauth_token=%s", arrayOfObject);
  }

  public String getRequestTokenEndpoint()
  {
    return "https://api.linkedin.com/uas/oauth/requestToken";
  }
}

/* Location:           /Users/dantheman/src/android/decompiled/vine-decompiled/dex2jar/classes-dex2jar.jar
 * Qualified Name:     org.scribe.builder.api.LinkedInApi
 * JD-Core Version:    0.6.2
 */