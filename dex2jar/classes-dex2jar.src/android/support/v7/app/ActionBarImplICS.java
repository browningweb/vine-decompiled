package android.support.v7.app;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v4.app.FragmentManager;
import android.view.View;
import android.widget.SpinnerAdapter;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

class ActionBarImplICS extends ActionBar
{
  final android.app.ActionBar mActionBar;
  final Activity mActivity;
  private ArrayList<WeakReference<OnMenuVisibilityListenerWrapper>> mAddedMenuVisWrappers = new ArrayList();
  final ActionBar.Callback mCallback;

  public ActionBarImplICS(Activity paramActivity, ActionBar.Callback paramCallback)
  {
    this.mActivity = paramActivity;
    this.mCallback = paramCallback;
    this.mActionBar = paramActivity.getActionBar();
  }

  private OnMenuVisibilityListenerWrapper findAndRemoveMenuVisWrapper(ActionBar.OnMenuVisibilityListener paramOnMenuVisibilityListener)
  {
    int i = 0;
    if (i < this.mAddedMenuVisWrappers.size())
    {
      OnMenuVisibilityListenerWrapper localOnMenuVisibilityListenerWrapper = (OnMenuVisibilityListenerWrapper)((WeakReference)this.mAddedMenuVisWrappers.get(i)).get();
      if (localOnMenuVisibilityListenerWrapper == null)
      {
        localArrayList = this.mAddedMenuVisWrappers;
        j = i - 1;
        localArrayList.remove(i);
        i = j;
      }
      while (localOnMenuVisibilityListenerWrapper.mWrappedListener != paramOnMenuVisibilityListener)
      {
        ArrayList localArrayList;
        int j;
        i++;
        break;
      }
      this.mAddedMenuVisWrappers.remove(i);
      return localOnMenuVisibilityListenerWrapper;
    }
    return null;
  }

  public void addOnMenuVisibilityListener(ActionBar.OnMenuVisibilityListener paramOnMenuVisibilityListener)
  {
    if (paramOnMenuVisibilityListener != null)
    {
      OnMenuVisibilityListenerWrapper localOnMenuVisibilityListenerWrapper = new OnMenuVisibilityListenerWrapper(paramOnMenuVisibilityListener);
      this.mAddedMenuVisWrappers.add(new WeakReference(localOnMenuVisibilityListenerWrapper));
      this.mActionBar.addOnMenuVisibilityListener(localOnMenuVisibilityListenerWrapper);
    }
  }

  public void addTab(ActionBar.Tab paramTab)
  {
    this.mActionBar.addTab(((TabWrapper)paramTab).mWrappedTab);
  }

  public void addTab(ActionBar.Tab paramTab, int paramInt)
  {
    this.mActionBar.addTab(((TabWrapper)paramTab).mWrappedTab, paramInt);
  }

  public void addTab(ActionBar.Tab paramTab, int paramInt, boolean paramBoolean)
  {
    this.mActionBar.addTab(((TabWrapper)paramTab).mWrappedTab, paramInt, paramBoolean);
  }

  public void addTab(ActionBar.Tab paramTab, boolean paramBoolean)
  {
    this.mActionBar.addTab(((TabWrapper)paramTab).mWrappedTab, paramBoolean);
  }

  public View getCustomView()
  {
    return this.mActionBar.getCustomView();
  }

  public int getDisplayOptions()
  {
    return this.mActionBar.getDisplayOptions();
  }

  public int getHeight()
  {
    return this.mActionBar.getHeight();
  }

  public int getNavigationItemCount()
  {
    return this.mActionBar.getNavigationItemCount();
  }

  public int getNavigationMode()
  {
    return this.mActionBar.getNavigationMode();
  }

  public int getSelectedNavigationIndex()
  {
    return this.mActionBar.getSelectedNavigationIndex();
  }

  public ActionBar.Tab getSelectedTab()
  {
    return (ActionBar.Tab)this.mActionBar.getSelectedTab().getTag();
  }

  public CharSequence getSubtitle()
  {
    return this.mActionBar.getSubtitle();
  }

  public ActionBar.Tab getTabAt(int paramInt)
  {
    return (ActionBar.Tab)this.mActionBar.getTabAt(paramInt).getTag();
  }

  public int getTabCount()
  {
    return this.mActionBar.getTabCount();
  }

  public Context getThemedContext()
  {
    return this.mActionBar.getThemedContext();
  }

  public CharSequence getTitle()
  {
    return this.mActionBar.getTitle();
  }

  public void hide()
  {
    this.mActionBar.hide();
  }

  public boolean isShowing()
  {
    return this.mActionBar.isShowing();
  }

  public ActionBar.Tab newTab()
  {
    android.app.ActionBar.Tab localTab = this.mActionBar.newTab();
    TabWrapper localTabWrapper = new TabWrapper(localTab);
    localTab.setTag(localTabWrapper);
    return localTabWrapper;
  }

  public void removeAllTabs()
  {
    this.mActionBar.removeAllTabs();
  }

  public void removeOnMenuVisibilityListener(ActionBar.OnMenuVisibilityListener paramOnMenuVisibilityListener)
  {
    OnMenuVisibilityListenerWrapper localOnMenuVisibilityListenerWrapper = findAndRemoveMenuVisWrapper(paramOnMenuVisibilityListener);
    this.mActionBar.removeOnMenuVisibilityListener(localOnMenuVisibilityListenerWrapper);
  }

  public void removeTab(ActionBar.Tab paramTab)
  {
    this.mActionBar.removeTab(((TabWrapper)paramTab).mWrappedTab);
  }

  public void removeTabAt(int paramInt)
  {
    this.mActionBar.removeTabAt(paramInt);
  }

  public void selectTab(ActionBar.Tab paramTab)
  {
    this.mActionBar.selectTab(((TabWrapper)paramTab).mWrappedTab);
  }

  public void setBackgroundDrawable(Drawable paramDrawable)
  {
    this.mActionBar.setBackgroundDrawable(paramDrawable);
  }

  public void setCustomView(int paramInt)
  {
    this.mActionBar.setCustomView(paramInt);
  }

  public void setCustomView(View paramView)
  {
    this.mActionBar.setCustomView(paramView);
  }

  public void setCustomView(View paramView, ActionBar.LayoutParams paramLayoutParams)
  {
    android.app.ActionBar.LayoutParams localLayoutParams = new android.app.ActionBar.LayoutParams(paramLayoutParams);
    localLayoutParams.gravity = paramLayoutParams.gravity;
    this.mActionBar.setCustomView(paramView, localLayoutParams);
  }

  public void setDisplayHomeAsUpEnabled(boolean paramBoolean)
  {
    this.mActionBar.setDisplayHomeAsUpEnabled(paramBoolean);
  }

  public void setDisplayOptions(int paramInt)
  {
    this.mActionBar.setDisplayOptions(paramInt);
  }

  public void setDisplayOptions(int paramInt1, int paramInt2)
  {
    this.mActionBar.setDisplayOptions(paramInt1, paramInt2);
  }

  public void setDisplayShowCustomEnabled(boolean paramBoolean)
  {
    this.mActionBar.setDisplayShowCustomEnabled(paramBoolean);
  }

  public void setDisplayShowHomeEnabled(boolean paramBoolean)
  {
    this.mActionBar.setDisplayShowHomeEnabled(paramBoolean);
  }

  public void setDisplayShowTitleEnabled(boolean paramBoolean)
  {
    this.mActionBar.setDisplayShowTitleEnabled(paramBoolean);
  }

  public void setDisplayUseLogoEnabled(boolean paramBoolean)
  {
    this.mActionBar.setDisplayUseLogoEnabled(paramBoolean);
  }

  public void setIcon(int paramInt)
  {
    this.mActionBar.setIcon(paramInt);
  }

  public void setIcon(Drawable paramDrawable)
  {
    this.mActionBar.setIcon(paramDrawable);
  }

  public void setListNavigationCallbacks(SpinnerAdapter paramSpinnerAdapter, ActionBar.OnNavigationListener paramOnNavigationListener)
  {
    android.app.ActionBar localActionBar = this.mActionBar;
    if (paramOnNavigationListener != null);
    for (OnNavigationListenerWrapper localOnNavigationListenerWrapper = new OnNavigationListenerWrapper(paramOnNavigationListener); ; localOnNavigationListenerWrapper = null)
    {
      localActionBar.setListNavigationCallbacks(paramSpinnerAdapter, localOnNavigationListenerWrapper);
      return;
    }
  }

  public void setLogo(int paramInt)
  {
    this.mActionBar.setLogo(paramInt);
  }

  public void setLogo(Drawable paramDrawable)
  {
    this.mActionBar.setLogo(paramDrawable);
  }

  public void setNavigationMode(int paramInt)
  {
    this.mActionBar.setNavigationMode(paramInt);
  }

  public void setSelectedNavigationItem(int paramInt)
  {
    this.mActionBar.setSelectedNavigationItem(paramInt);
  }

  public void setSubtitle(int paramInt)
  {
    this.mActionBar.setSubtitle(paramInt);
  }

  public void setSubtitle(CharSequence paramCharSequence)
  {
    this.mActionBar.setSubtitle(paramCharSequence);
  }

  public void setTitle(int paramInt)
  {
    this.mActionBar.setTitle(paramInt);
  }

  public void setTitle(CharSequence paramCharSequence)
  {
    this.mActionBar.setTitle(paramCharSequence);
  }

  public void show()
  {
    this.mActionBar.show();
  }

  static class OnMenuVisibilityListenerWrapper
    implements android.app.ActionBar.OnMenuVisibilityListener
  {
    final ActionBar.OnMenuVisibilityListener mWrappedListener;

    public OnMenuVisibilityListenerWrapper(ActionBar.OnMenuVisibilityListener paramOnMenuVisibilityListener)
    {
      this.mWrappedListener = paramOnMenuVisibilityListener;
    }

    public void onMenuVisibilityChanged(boolean paramBoolean)
    {
      this.mWrappedListener.onMenuVisibilityChanged(paramBoolean);
    }
  }

  static class OnNavigationListenerWrapper
    implements android.app.ActionBar.OnNavigationListener
  {
    private final ActionBar.OnNavigationListener mWrappedListener;

    public OnNavigationListenerWrapper(ActionBar.OnNavigationListener paramOnNavigationListener)
    {
      this.mWrappedListener = paramOnNavigationListener;
    }

    public boolean onNavigationItemSelected(int paramInt, long paramLong)
    {
      return this.mWrappedListener.onNavigationItemSelected(paramInt, paramLong);
    }
  }

  class TabWrapper extends ActionBar.Tab
    implements android.app.ActionBar.TabListener
  {
    private android.support.v4.app.FragmentTransaction mActiveTransaction;
    private CharSequence mContentDescription;
    private ActionBar.TabListener mTabListener;
    private Object mTag;
    final android.app.ActionBar.Tab mWrappedTab;

    public TabWrapper(android.app.ActionBar.Tab arg2)
    {
      Object localObject;
      this.mWrappedTab = localObject;
    }

    private void commitActiveTransaction()
    {
      if ((this.mActiveTransaction != null) && (!this.mActiveTransaction.isEmpty()))
        this.mActiveTransaction.commit();
      this.mActiveTransaction = null;
    }

    private android.support.v4.app.FragmentTransaction getActiveTransaction()
    {
      if (this.mActiveTransaction == null)
        this.mActiveTransaction = ActionBarImplICS.this.mCallback.getSupportFragmentManager().beginTransaction().disallowAddToBackStack();
      return this.mActiveTransaction;
    }

    public CharSequence getContentDescription()
    {
      return this.mContentDescription;
    }

    public View getCustomView()
    {
      return this.mWrappedTab.getCustomView();
    }

    public Drawable getIcon()
    {
      return this.mWrappedTab.getIcon();
    }

    public int getPosition()
    {
      return this.mWrappedTab.getPosition();
    }

    public Object getTag()
    {
      return this.mTag;
    }

    public CharSequence getText()
    {
      return this.mWrappedTab.getText();
    }

    public void onTabReselected(android.app.ActionBar.Tab paramTab, android.app.FragmentTransaction paramFragmentTransaction)
    {
      ActionBar.TabListener localTabListener = this.mTabListener;
      if (paramFragmentTransaction != null);
      for (android.support.v4.app.FragmentTransaction localFragmentTransaction = getActiveTransaction(); ; localFragmentTransaction = null)
      {
        localTabListener.onTabReselected(this, localFragmentTransaction);
        commitActiveTransaction();
        return;
      }
    }

    public void onTabSelected(android.app.ActionBar.Tab paramTab, android.app.FragmentTransaction paramFragmentTransaction)
    {
      ActionBar.TabListener localTabListener = this.mTabListener;
      if (paramFragmentTransaction != null);
      for (android.support.v4.app.FragmentTransaction localFragmentTransaction = getActiveTransaction(); ; localFragmentTransaction = null)
      {
        localTabListener.onTabSelected(this, localFragmentTransaction);
        commitActiveTransaction();
        return;
      }
    }

    public void onTabUnselected(android.app.ActionBar.Tab paramTab, android.app.FragmentTransaction paramFragmentTransaction)
    {
      ActionBar.TabListener localTabListener = this.mTabListener;
      if (paramFragmentTransaction != null);
      for (android.support.v4.app.FragmentTransaction localFragmentTransaction = getActiveTransaction(); ; localFragmentTransaction = null)
      {
        localTabListener.onTabUnselected(this, localFragmentTransaction);
        return;
      }
    }

    public void select()
    {
      this.mWrappedTab.select();
    }

    public ActionBar.Tab setContentDescription(int paramInt)
    {
      this.mContentDescription = ActionBarImplICS.this.mActivity.getText(paramInt);
      return this;
    }

    public ActionBar.Tab setContentDescription(CharSequence paramCharSequence)
    {
      this.mContentDescription = paramCharSequence;
      return this;
    }

    public ActionBar.Tab setCustomView(int paramInt)
    {
      this.mWrappedTab.setCustomView(paramInt);
      return this;
    }

    public ActionBar.Tab setCustomView(View paramView)
    {
      this.mWrappedTab.setCustomView(paramView);
      return this;
    }

    public ActionBar.Tab setIcon(int paramInt)
    {
      this.mWrappedTab.setIcon(paramInt);
      return this;
    }

    public ActionBar.Tab setIcon(Drawable paramDrawable)
    {
      this.mWrappedTab.setIcon(paramDrawable);
      return this;
    }

    public ActionBar.Tab setTabListener(ActionBar.TabListener paramTabListener)
    {
      this.mTabListener = paramTabListener;
      android.app.ActionBar.Tab localTab = this.mWrappedTab;
      if (paramTabListener != null);
      for (TabWrapper localTabWrapper = this; ; localTabWrapper = null)
      {
        localTab.setTabListener(localTabWrapper);
        return this;
      }
    }

    public ActionBar.Tab setTag(Object paramObject)
    {
      this.mTag = paramObject;
      return this;
    }

    public ActionBar.Tab setText(int paramInt)
    {
      this.mWrappedTab.setText(paramInt);
      return this;
    }

    public ActionBar.Tab setText(CharSequence paramCharSequence)
    {
      this.mWrappedTab.setText(paramCharSequence);
      return this;
    }
  }
}

/* Location:           /Users/dantheman/src/android/decompiled/vine-decompiled/dex2jar/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.app.ActionBarImplICS
 * JD-Core Version:    0.6.2
 */