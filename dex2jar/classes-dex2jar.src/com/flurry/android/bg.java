package com.flurry.android;

import android.util.Log;
import com.millennialmedia.android.MMAdView;
import com.millennialmedia.android.MMAdView.MMAdListener;
import java.util.Collections;

final class bg
  implements MMAdView.MMAdListener
{
  bg(bi parambi)
  {
  }

  public final void MMAdCachingCompleted(MMAdView paramMMAdView, boolean paramBoolean)
  {
    Log.d(bi.d(), "Millennial MMAdView banner caching completed.");
  }

  public final void MMAdClickedToOverlay(MMAdView paramMMAdView)
  {
    this.dg.onAdClicked(Collections.emptyMap());
    Log.d(bi.d(), "Millennial MMAdView clicked to overlay.");
  }

  public final void MMAdFailed(MMAdView paramMMAdView)
  {
    this.dg.onRenderFailed(Collections.emptyMap());
    Log.d(bi.d(), "Millennial MMAdView failed to load ad.");
  }

  public final void MMAdOverlayLaunched(MMAdView paramMMAdView)
  {
    Log.d(bi.d(), "Millennial MMAdView banner overlay launched.");
  }

  public final void MMAdRequestIsCaching(MMAdView paramMMAdView)
  {
    Log.d(bi.d(), "Millennial MMAdView banner request is caching.");
  }

  public final void MMAdReturned(MMAdView paramMMAdView)
  {
    this.dg.onAdFilled(Collections.emptyMap());
    this.dg.onAdShown(Collections.emptyMap());
    Log.d(bi.d(), "Millennial MMAdView returned ad." + System.currentTimeMillis());
  }
}

/* Location:           /Users/dantheman/src/android/decompiled/vine-decompiled/dex2jar/classes-dex2jar.jar
 * Qualified Name:     com.flurry.android.bg
 * JD-Core Version:    0.6.2
 */