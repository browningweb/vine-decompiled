.class public Lco/vine/android/ProfileFragment;
.super Lco/vine/android/BaseTimelineFragment;
.source "ProfileFragment.java"

# interfaces
.implements Lco/vine/android/widget/SpanClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lco/vine/android/widget/TabButton$TabChanger;
.implements Lco/vine/android/ViewOffsetResolver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/ProfileFragment$ProfileListener;
    }
.end annotation


# static fields
.field public static final ARG_TAKE_FOCUS:Ljava/lang/String; = "take_focus"

.field public static final ARG_USER_ID:Ljava/lang/String; = "user_id"

.field private static final FLAG_PROFILE_INFO:I = 0x1

.field private static final FLAG_PROFILE_LIKES:I = 0x4

.field private static final FLAG_PROFILE_POSTS:I = 0x2

.field private static final LOADER_ID_LIKES:I = 0x2

.field private static final LOADER_ID_POSTS:I = 0x1

.field public static final SPAN_FOLLOWERS:I = 0x1

.field public static final SPAN_FOLLOWING:I = 0x2

.field private static final STATE_TAB:Ljava/lang/String; = "state_tab"

.field private static final TAB_LIKES:I = 0x2

.field private static final TAB_POSTS:I = 0x1


# instance fields
.field private mCurrentTab:I

.field private mFetchFlags:I

.field private mIsMe:Z

.field mProfileHeaderAdapter:Lco/vine/android/ProfileHeaderAdapter;

.field private mSectionAdapter:Lco/vine/android/widget/SectionAdapter;

.field private mTakeFocus:Z

.field private mUser:Lco/vine/android/api/VineUser;

.field private mUserId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lco/vine/android/BaseTimelineFragment;-><init>()V

    .line 387
    return-void
.end method

.method static synthetic access$000(Lco/vine/android/ProfileFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 37
    iget-wide v0, p0, Lco/vine/android/ProfileFragment;->mUserId:J

    return-wide v0
.end method

.method static synthetic access$100(Lco/vine/android/ProfileFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lco/vine/android/ProfileFragment;->mIsMe:Z

    return v0
.end method

.method static synthetic access$202(Lco/vine/android/ProfileFragment;Lco/vine/android/api/VineUser;)Lco/vine/android/api/VineUser;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;

    return-object p1
.end method

.method private fetchContent(IIZ)V
    .locals 10
    .parameter "fetchType"
    .parameter "feedType"
    .parameter "userInitiated"

    .prologue
    const/16 v2, 0x14

    .line 326
    invoke-virtual {p0, p1}, Lco/vine/android/ProfileFragment;->hasPendingRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    :goto_0
    return-void

    .line 331
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 345
    :pswitch_0
    const/4 v7, 0x1

    .line 350
    .local v7, pageType:I
    :goto_1
    iget v0, p0, Lco/vine/android/ProfileFragment;->mFetchFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lco/vine/android/ProfileFragment;->mFetchFlags:I

    .line 351
    iget-object v0, p0, Lco/vine/android/ProfileFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p0, Lco/vine/android/ProfileFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v1

    iget-wide v3, p0, Lco/vine/android/ProfileFragment;->mUserId:J

    const/4 v5, 0x2

    iget-wide v8, p0, Lco/vine/android/ProfileFragment;->mUserId:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    move v8, p3

    invoke-virtual/range {v0 .. v8}, Lco/vine/android/client/AppController;->fetchPosts(Lco/vine/android/client/Session;IJILjava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lco/vine/android/ProfileFragment;->addRequest(Ljava/lang/String;I)V

    .line 355
    iget v0, p0, Lco/vine/android/ProfileFragment;->mFetchFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lco/vine/android/ProfileFragment;->mFetchFlags:I

    .line 356
    iget-object v0, p0, Lco/vine/android/ProfileFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p0, Lco/vine/android/ProfileFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v1

    iget-wide v3, p0, Lco/vine/android/ProfileFragment;->mUserId:J

    const/4 v5, 0x3

    iget-wide v8, p0, Lco/vine/android/ProfileFragment;->mUserId:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    move v8, p3

    invoke-virtual/range {v0 .. v8}, Lco/vine/android/client/AppController;->fetchPosts(Lco/vine/android/client/Session;IJILjava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lco/vine/android/ProfileFragment;->addRequest(Ljava/lang/String;I)V

    goto :goto_0

    .line 334
    .end local v7           #pageType:I
    :pswitch_1
    const/4 v7, 0x2

    .line 335
    .restart local v7       #pageType:I
    invoke-virtual {p0, p1}, Lco/vine/android/ProfileFragment;->showProgress(I)V

    goto :goto_1

    .line 339
    .end local v7           #pageType:I
    :pswitch_2
    const/4 v7, 0x3

    .line 340
    .restart local v7       #pageType:I
    invoke-virtual {p0, p1}, Lco/vine/android/ProfileFragment;->showProgress(I)V

    goto :goto_1

    .line 331
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setup()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 281
    iget-object v1, p0, Lco/vine/android/ProfileFragment;->mSectionAdapter:Lco/vine/android/widget/SectionAdapter;

    if-nez v1, :cond_1

    .line 282
    new-instance v0, Lco/vine/android/ProfileFragment$1;

    invoke-direct {v0, p0}, Lco/vine/android/ProfileFragment$1;-><init>(Lco/vine/android/ProfileFragment;)V

    .line 305
    .local v0, spanClickListener:Lco/vine/android/widget/SpanClickListener;
    new-instance v1, Lco/vine/android/ProfileHeaderAdapter;

    invoke-virtual {p0}, Lco/vine/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lco/vine/android/ProfileFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-direct {v1, v2, v3, p0, v0}, Lco/vine/android/ProfileHeaderAdapter;-><init>(Landroid/content/Context;Lco/vine/android/client/AppController;Landroid/view/View$OnClickListener;Lco/vine/android/widget/SpanClickListener;)V

    iput-object v1, p0, Lco/vine/android/ProfileFragment;->mProfileHeaderAdapter:Lco/vine/android/ProfileHeaderAdapter;

    .line 307
    iget-boolean v1, p0, Lco/vine/android/ProfileFragment;->mTakeFocus:Z

    if-eqz v1, :cond_0

    .line 308
    iget-object v1, p0, Lco/vine/android/ProfileFragment;->mFeedAdapter:Lco/vine/android/widget/FeedAdapter;

    invoke-virtual {v1, v5}, Lco/vine/android/widget/FeedAdapter;->onResume(Z)V

    .line 311
    :cond_0
    new-instance v1, Lco/vine/android/widget/SectionAdapter;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/widget/BaseAdapter;

    const/4 v3, 0x0

    iget-object v4, p0, Lco/vine/android/ProfileFragment;->mProfileHeaderAdapter:Lco/vine/android/ProfileHeaderAdapter;

    aput-object v4, v2, v3

    iget-object v3, p0, Lco/vine/android/ProfileFragment;->mFeedAdapter:Lco/vine/android/widget/FeedAdapter;

    aput-object v3, v2, v5

    invoke-direct {v1, v2}, Lco/vine/android/widget/SectionAdapter;-><init>([Landroid/widget/BaseAdapter;)V

    iput-object v1, p0, Lco/vine/android/ProfileFragment;->mSectionAdapter:Lco/vine/android/widget/SectionAdapter;

    .line 315
    iget-object v1, p0, Lco/vine/android/ProfileFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lco/vine/android/ProfileFragment;->mSectionAdapter:Lco/vine/android/widget/SectionAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 316
    iget-object v1, p0, Lco/vine/android/ProfileFragment;->mFeedAdapter:Lco/vine/android/widget/FeedAdapter;

    invoke-virtual {v1, p0}, Lco/vine/android/widget/FeedAdapter;->setOffsetResolver(Lco/vine/android/ViewOffsetResolver;)V

    .line 318
    .end local v0           #spanClickListener:Lco/vine/android/widget/SpanClickListener;
    :cond_1
    return-void
.end method


# virtual methods
.method public changeTab(Landroid/widget/Button;)V
    .locals 5
    .parameter "tab"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 258
    invoke-virtual {p1}, Landroid/widget/Button;->getId()I

    move-result v0

    .line 259
    .local v0, tabId:I
    packed-switch v0, :pswitch_data_0

    .line 277
    :goto_0
    iget-object v1, p0, Lco/vine/android/ProfileFragment;->mProfileHeaderAdapter:Lco/vine/android/ProfileHeaderAdapter;

    invoke-virtual {v1, v0}, Lco/vine/android/ProfileHeaderAdapter;->changeSelectedTab(I)V

    .line 278
    :cond_0
    return-void

    .line 261
    :pswitch_0
    iget v1, p0, Lco/vine/android/ProfileFragment;->mCurrentTab:I

    if-eq v1, v3, :cond_0

    .line 264
    invoke-virtual {p0}, Lco/vine/android/ProfileFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v3, v4, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 265
    iput v3, p0, Lco/vine/android/ProfileFragment;->mCurrentTab:I

    goto :goto_0

    .line 269
    :pswitch_1
    iget v1, p0, Lco/vine/android/ProfileFragment;->mCurrentTab:I

    if-eq v1, v2, :cond_0

    .line 272
    invoke-virtual {p0}, Lco/vine/android/ProfileFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v2, v4, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 273
    iput v2, p0, Lco/vine/android/ProfileFragment;->mCurrentTab:I

    goto :goto_0

    .line 259
    :pswitch_data_0
    .packed-switch 0x7f09006d
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected fetchContent(IZ)V
    .locals 1
    .parameter "fetchType"
    .parameter "userInitiated"

    .prologue
    .line 322
    iget v0, p0, Lco/vine/android/ProfileFragment;->mCurrentTab:I

    invoke-direct {p0, p1, v0, p2}, Lco/vine/android/ProfileFragment;->fetchContent(IIZ)V

    .line 323
    return-void
.end method

.method protected fetchPosts(IZ)Ljava/lang/String;
    .locals 2
    .parameter "pageType"
    .parameter "userInitiated"

    .prologue
    .line 132
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Don\'t call fetch posts for ProfileFragment, this fragment handles its own fetching."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOffset(Landroid/widget/BaseAdapter;)I
    .locals 2
    .parameter "me"

    .prologue
    .line 384
    iget-object v0, p0, Lco/vine/android/ProfileFragment;->mSectionAdapter:Lco/vine/android/widget/SectionAdapter;

    iget-object v1, p0, Lco/vine/android/ProfileFragment;->mSectionAdapter:Lco/vine/android/widget/SectionAdapter;

    invoke-virtual {v1, p1}, Lco/vine/android/widget/SectionAdapter;->getMyAdapterIndex(Landroid/widget/BaseAdapter;)I

    move-result v1

    invoke-virtual {v0, v1}, Lco/vine/android/widget/SectionAdapter;->getPositionOffset(I)I

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 152
    invoke-super {p0, p1}, Lco/vine/android/BaseTimelineFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 153
    invoke-direct {p0}, Lco/vine/android/ProfileFragment;->setup()V

    .line 154
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 363
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 376
    invoke-super {p0, p1}, Lco/vine/android/BaseTimelineFragment;->onClick(Landroid/view/View;)V

    .line 380
    .end local p1
    :goto_0
    return-void

    .line 366
    .restart local p1
    :sswitch_0
    iget-object v0, p0, Lco/vine/android/ProfileFragment;->mProfileHeaderAdapter:Lco/vine/android/ProfileHeaderAdapter;

    invoke-virtual {v0, p1}, Lco/vine/android/ProfileHeaderAdapter;->onProfileHeaderClick(Landroid/view/View;)V

    goto :goto_0

    .line 371
    :sswitch_1
    iget-object v0, p0, Lco/vine/android/ProfileFragment;->mProfileHeaderAdapter:Lco/vine/android/ProfileHeaderAdapter;

    invoke-virtual {v0, p1}, Lco/vine/android/ProfileHeaderAdapter;->onProfileHeaderClick(Landroid/view/View;)V

    .line 372
    check-cast p1, Landroid/widget/Button;

    .end local p1
    invoke-virtual {p0, p1}, Lco/vine/android/ProfileFragment;->changeTab(Landroid/widget/Button;)V

    goto :goto_0

    .line 363
    :sswitch_data_0
    .sparse-switch
        0x7f09000b -> :sswitch_0
        0x7f09006b -> :sswitch_0
        0x7f09006d -> :sswitch_1
        0x7f09006e -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 75
    invoke-super {p0, p1}, Lco/vine/android/BaseTimelineFragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lco/vine/android/ProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 78
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "user_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lco/vine/android/ProfileFragment;->mUserId:J

    .line 79
    const-string v1, "take_focus"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lco/vine/android/ProfileFragment;->mTakeFocus:Z

    .line 80
    iget-boolean v1, p0, Lco/vine/android/ProfileFragment;->mTakeFocus:Z

    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {p0, v2}, Lco/vine/android/ProfileFragment;->setFocused(Z)V

    .line 83
    :cond_0
    iget-wide v4, p0, Lco/vine/android/ProfileFragment;->mUserId:J

    iget-object v1, p0, Lco/vine/android/ProfileFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lco/vine/android/ProfileFragment;->mIsMe:Z

    .line 84
    new-instance v1, Lco/vine/android/ProfileFragment$ProfileListener;

    invoke-direct {v1, p0}, Lco/vine/android/ProfileFragment$ProfileListener;-><init>(Lco/vine/android/ProfileFragment;)V

    iput-object v1, p0, Lco/vine/android/ProfileFragment;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    .line 86
    if-eqz p1, :cond_2

    .line 87
    const-string v1, "state_tab"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lco/vine/android/ProfileFragment;->mCurrentTab:I

    .line 92
    :goto_1
    invoke-virtual {p0, v3}, Lco/vine/android/ProfileFragment;->showSadface(Z)V

    .line 93
    return-void

    :cond_1
    move v1, v3

    .line 83
    goto :goto_0

    .line 89
    :cond_2
    iput v2, p0, Lco/vine/android/ProfileFragment;->mCurrentTab:I

    goto :goto_1
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 7
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 164
    packed-switch p1, :pswitch_data_0

    .line 176
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find loader with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :pswitch_0
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lco/vine/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lco/vine/android/provider/Vine$PostCommentsLikesView;->CONTENT_URI_ALL_TIMELINE_USER:Landroid/net/Uri;

    iget-wide v4, p0, Lco/vine/android/ProfileFragment;->mUserId:J

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lco/vine/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lco/vine/android/provider/Vine$PostCommentsLikesView;->CONTENT_URI_ALL_TIMELINE_USER_LIKES:Landroid/net/Uri;

    iget-wide v4, p0, Lco/vine/android/ProfileFragment;->mUserId:J

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 6
    .parameter
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x3

    .line 201
    iget-object v1, p0, Lco/vine/android/ProfileFragment;->mFeedAdapter:Lco/vine/android/widget/FeedAdapter;

    invoke-virtual {v1}, Lco/vine/android/widget/FeedAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 202
    .local v0, oldCursor:Landroid/database/Cursor;
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 204
    :pswitch_0
    iget v1, p0, Lco/vine/android/ProfileFragment;->mCurrentTab:I

    if-ne v1, v4, :cond_0

    .line 205
    if-eqz v0, :cond_1

    .line 206
    iget-object v1, p0, Lco/vine/android/ProfileFragment;->mChangeObserver:Lco/vine/android/BaseListFragment$ChangeObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 208
    :cond_1
    if-eqz p2, :cond_2

    .line 209
    iget-object v1, p0, Lco/vine/android/ProfileFragment;->mChangeObserver:Lco/vine/android/BaseListFragment$ChangeObserver;

    invoke-interface {p2, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 211
    :cond_2
    iget-object v1, p0, Lco/vine/android/ProfileFragment;->mFeedAdapter:Lco/vine/android/widget/FeedAdapter;

    invoke-virtual {v1, p2}, Lco/vine/android/widget/FeedAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 212
    iget-object v1, p0, Lco/vine/android/ProfileFragment;->mFeedAdapter:Lco/vine/android/widget/FeedAdapter;

    invoke-virtual {v1}, Lco/vine/android/widget/FeedAdapter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lco/vine/android/ProfileFragment;->mFetchFlags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    .line 213
    iget v1, p0, Lco/vine/android/ProfileFragment;->mCurrentTab:I

    invoke-direct {p0, v3, v1, v4}, Lco/vine/android/ProfileFragment;->fetchContent(IIZ)V

    goto :goto_0

    .line 215
    :cond_3
    invoke-virtual {p0, v3}, Lco/vine/android/ProfileFragment;->hideProgress(I)V

    .line 216
    iget-object v1, p0, Lco/vine/android/ProfileFragment;->mFeedAdapter:Lco/vine/android/widget/FeedAdapter;

    invoke-virtual {v1}, Lco/vine/android/widget/FeedAdapter;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 217
    invoke-virtual {p0, v5}, Lco/vine/android/ProfileFragment;->showSadface(Z)V

    goto :goto_0

    .line 224
    :pswitch_1
    iget v1, p0, Lco/vine/android/ProfileFragment;->mCurrentTab:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 225
    if-eqz v0, :cond_4

    .line 226
    iget-object v1, p0, Lco/vine/android/ProfileFragment;->mChangeObserver:Lco/vine/android/BaseListFragment$ChangeObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 228
    :cond_4
    if-eqz p2, :cond_5

    .line 229
    iget-object v1, p0, Lco/vine/android/ProfileFragment;->mChangeObserver:Lco/vine/android/BaseListFragment$ChangeObserver;

    invoke-interface {p2, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 231
    :cond_5
    iget-object v1, p0, Lco/vine/android/ProfileFragment;->mFeedAdapter:Lco/vine/android/widget/FeedAdapter;

    invoke-virtual {v1, p2}, Lco/vine/android/widget/FeedAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 232
    iget-object v1, p0, Lco/vine/android/ProfileFragment;->mFeedAdapter:Lco/vine/android/widget/FeedAdapter;

    invoke-virtual {v1}, Lco/vine/android/widget/FeedAdapter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lco/vine/android/ProfileFragment;->mFetchFlags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_6

    .line 233
    iget v1, p0, Lco/vine/android/ProfileFragment;->mCurrentTab:I

    invoke-direct {p0, v3, v1, v4}, Lco/vine/android/ProfileFragment;->fetchContent(IIZ)V

    goto :goto_0

    .line 235
    :cond_6
    invoke-virtual {p0, v3}, Lco/vine/android/ProfileFragment;->hideProgress(I)V

    .line 236
    iget-object v1, p0, Lco/vine/android/ProfileFragment;->mFeedAdapter:Lco/vine/android/widget/FeedAdapter;

    invoke-virtual {v1}, Lco/vine/android/widget/FeedAdapter;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 237
    invoke-virtual {p0, v5}, Lco/vine/android/ProfileFragment;->showSadface(Z)V

    goto :goto_0

    .line 202
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lco/vine/android/ProfileFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 248
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 255
    :goto_0
    return-void

    .line 251
    :pswitch_0
    iget-object v0, p0, Lco/vine/android/ProfileFragment;->mFeedAdapter:Lco/vine/android/widget/FeedAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lco/vine/android/widget/FeedAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_0

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onMoveTo(I)V
    .locals 0
    .parameter "oldPosition"

    .prologue
    .line 138
    invoke-super {p0, p1}, Lco/vine/android/BaseTimelineFragment;->onMoveTo(I)V

    .line 139
    invoke-direct {p0}, Lco/vine/android/ProfileFragment;->setup()V

    .line 140
    return-void
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 97
    invoke-super {p0}, Lco/vine/android/BaseTimelineFragment;->onResume()V

    .line 98
    invoke-virtual {p0, v6}, Lco/vine/android/ProfileFragment;->showProgress(I)V

    .line 99
    iget-object v2, p0, Lco/vine/android/ProfileFragment;->mFeedAdapter:Lco/vine/android/widget/FeedAdapter;

    invoke-virtual {v2}, Lco/vine/android/widget/FeedAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_0

    .line 100
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lco/vine/android/ProfileFragment;->initLoader(I)V

    .line 101
    invoke-virtual {p0, v5}, Lco/vine/android/ProfileFragment;->initLoader(I)V

    .line 103
    :cond_0
    iget-object v2, p0, Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;

    if-eqz v2, :cond_3

    .line 104
    iget-boolean v2, p0, Lco/vine/android/ProfileFragment;->mIsMe:Z

    if-eqz v2, :cond_1

    .line 105
    invoke-virtual {p0}, Lco/vine/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 107
    .local v0, pref:Landroid/content/SharedPreferences;
    iget-object v2, p0, Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;

    const-string v3, "settings_profile_name"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lco/vine/android/api/VineUser;->username:Ljava/lang/String;

    .line 108
    iget-object v2, p0, Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;

    const-string v3, "settings_profile_description"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lco/vine/android/api/VineUser;->description:Ljava/lang/String;

    .line 109
    iget-object v2, p0, Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;

    const-string v3, "settings_profile_location"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lco/vine/android/api/VineUser;->location:Ljava/lang/String;

    .line 110
    iget-object v2, p0, Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;

    const-string v3, "settings_profile_email"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lco/vine/android/api/VineUser;->email:Ljava/lang/String;

    .line 111
    iget-object v2, p0, Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;

    const-string v3, "settings_profile_phone"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lco/vine/android/api/VineUser;->phoneNumber:Ljava/lang/String;

    .line 112
    iget-object v2, p0, Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;

    const-string v3, "settings_profile_avatar"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lco/vine/android/api/VineUser;->avatarUrl:Ljava/lang/String;

    .line 114
    .end local v0           #pref:Landroid/content/SharedPreferences;
    :cond_1
    iget-object v2, p0, Lco/vine/android/ProfileFragment;->mProfileHeaderAdapter:Lco/vine/android/ProfileHeaderAdapter;

    iget-object v3, p0, Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;

    invoke-virtual {v2, v3}, Lco/vine/android/ProfileHeaderAdapter;->bindUser(Lco/vine/android/api/VineUser;)V

    .line 115
    invoke-virtual {p0, v6}, Lco/vine/android/ProfileFragment;->hideProgress(I)V

    .line 124
    :goto_0
    iget-object v2, p0, Lco/vine/android/ProfileFragment;->mProfileHeaderAdapter:Lco/vine/android/ProfileHeaderAdapter;

    if-eqz v2, :cond_2

    .line 125
    iget v2, p0, Lco/vine/android/ProfileFragment;->mCurrentTab:I

    if-ne v2, v5, :cond_5

    const v1, 0x7f09006e

    .line 126
    .local v1, tabId:I
    :goto_1
    iget-object v2, p0, Lco/vine/android/ProfileFragment;->mProfileHeaderAdapter:Lco/vine/android/ProfileHeaderAdapter;

    invoke-virtual {v2, v1}, Lco/vine/android/ProfileHeaderAdapter;->changeSelectedTab(I)V

    .line 128
    .end local v1           #tabId:I
    :cond_2
    return-void

    .line 117
    :cond_3
    iget v2, p0, Lco/vine/android/ProfileFragment;->mFetchFlags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lco/vine/android/ProfileFragment;->mFetchFlags:I

    .line 118
    iget-boolean v2, p0, Lco/vine/android/ProfileFragment;->mIsMe:Z

    if-eqz v2, :cond_4

    .line 119
    iget-object v2, p0, Lco/vine/android/ProfileFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-wide v3, p0, Lco/vine/android/ProfileFragment;->mUserId:J

    invoke-virtual {v2, v3, v4}, Lco/vine/android/client/AppController;->fetchUsersMe(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lco/vine/android/ProfileFragment;->addRequest(Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_4
    iget-object v2, p0, Lco/vine/android/ProfileFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-wide v3, p0, Lco/vine/android/ProfileFragment;->mUserId:J

    invoke-virtual {v2, v3, v4}, Lco/vine/android/client/AppController;->fetchUser(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lco/vine/android/ProfileFragment;->addRequest(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_5
    const v1, 0x7f09006d

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 158
    invoke-super {p0, p1}, Lco/vine/android/BaseTimelineFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 159
    const-string v0, "state_tab"

    iget v1, p0, Lco/vine/android/ProfileFragment;->mCurrentTab:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 160
    return-void
.end method

.method protected onScrollLastItem(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    const/4 v3, 0x1

    .line 190
    iget-object v1, p0, Lco/vine/android/ProfileFragment;->mFeedAdapter:Lco/vine/android/widget/FeedAdapter;

    invoke-virtual {v1}, Lco/vine/android/widget/FeedAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object p1

    .line 191
    iget-boolean v1, p0, Lco/vine/android/ProfileFragment;->mRefreshable:Z

    if-eqz v1, :cond_0

    .line 192
    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "is_last"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 193
    .local v0, isLast:Z
    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/16 v2, 0x190

    if-gt v1, v2, :cond_0

    .line 194
    iget v1, p0, Lco/vine/android/ProfileFragment;->mCurrentTab:I

    invoke-direct {p0, v3, v1, v3}, Lco/vine/android/ProfileFragment;->fetchContent(IIZ)V

    .line 197
    .end local v0           #isLast:Z
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 144
    invoke-super {p0, p1, p2}, Lco/vine/android/BaseTimelineFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 145
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lco/vine/android/ProfileFragment;->setRefreshableHeaderOffset(I)V

    .line 146
    iget-object v0, p0, Lco/vine/android/ProfileFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 147
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lco/vine/android/ProfileFragment;->showProgress(I)V

    .line 148
    return-void
.end method

.method protected refresh()V
    .locals 3

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 183
    invoke-direct {p0, v1, v0, v0}, Lco/vine/android/ProfileFragment;->fetchContent(IIZ)V

    .line 184
    invoke-direct {p0, v1, v1, v0}, Lco/vine/android/ProfileFragment;->fetchContent(IIZ)V

    .line 185
    iget-object v0, p0, Lco/vine/android/ProfileFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p0, Lco/vine/android/ProfileFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lco/vine/android/client/AppController;->fetchUsersMe(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lco/vine/android/ProfileFragment;->addRequest(Ljava/lang/String;)V

    .line 186
    return-void
.end method
