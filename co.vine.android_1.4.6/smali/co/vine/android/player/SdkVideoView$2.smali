.class Lco/vine/android/player/SdkVideoView$2;
.super Ljava/lang/Object;
.source "SdkVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/player/SdkVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/player/SdkVideoView;


# direct methods
.method constructor <init>(Lco/vine/android/player/SdkVideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 6
    .parameter "mp"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 337
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mAutoPlayOnPrepared:Z
    invoke-static {v1}, Lco/vine/android/player/SdkVideoView;->access$000(Lco/vine/android/player/SdkVideoView;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 338
    invoke-virtual {p1, v3}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 339
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 344
    :goto_0
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    const/4 v2, 0x2

    #calls: Lco/vine/android/player/SdkVideoView;->setCurrentState(I)V
    invoke-static {v1, v2}, Lco/vine/android/player/SdkVideoView;->access$100(Lco/vine/android/player/SdkVideoView;I)V

    .line 345
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    #setter for: Lco/vine/android/player/SdkVideoView;->mIsPrepared:Z
    invoke-static {v1, v4}, Lco/vine/android/player/SdkVideoView;->access$202(Lco/vine/android/player/SdkVideoView;Z)Z

    .line 346
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v1}, Lco/vine/android/player/SdkVideoView;->access$300(Lco/vine/android/player/SdkVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 347
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v1}, Lco/vine/android/player/SdkVideoView;->access$300(Lco/vine/android/player/SdkVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    #calls: Lco/vine/android/player/SdkVideoView;->getPlayer()Landroid/media/MediaPlayer;
    invoke-static {v2}, Lco/vine/android/player/SdkVideoView;->access$400(Lco/vine/android/player/SdkVideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 349
    :cond_0
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v1}, Lco/vine/android/player/SdkVideoView;->access$500(Lco/vine/android/player/SdkVideoView;)Landroid/widget/MediaController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 350
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v1}, Lco/vine/android/player/SdkVideoView;->access$500(Lco/vine/android/player/SdkVideoView;)Landroid/widget/MediaController;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 352
    :cond_1
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    iput v2, v1, Lco/vine/android/player/SdkVideoView;->mVideoWidth:I

    .line 353
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    iput v2, v1, Lco/vine/android/player/SdkVideoView;->mVideoHeight:I

    .line 355
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mSeekWhenPrepared:I
    invoke-static {v1}, Lco/vine/android/player/SdkVideoView;->access$600(Lco/vine/android/player/SdkVideoView;)I

    move-result v0

    .line 356
    .local v0, seekToPosition:I
    if-eqz v0, :cond_2

    .line 357
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v1, v0}, Lco/vine/android/player/SdkVideoView;->seekTo(I)V

    .line 359
    :cond_2
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    iget v1, v1, Lco/vine/android/player/SdkVideoView;->mVideoWidth:I

    if-eqz v1, :cond_7

    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    iget v1, v1, Lco/vine/android/player/SdkVideoView;->mVideoHeight:I

    if-eqz v1, :cond_7

    .line 362
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mSurfaceWidth:I
    invoke-static {v1}, Lco/vine/android/player/SdkVideoView;->access$700(Lco/vine/android/player/SdkVideoView;)I

    move-result v1

    iget-object v2, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    iget v2, v2, Lco/vine/android/player/SdkVideoView;->mVideoWidth:I

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mSurfaceHeight:I
    invoke-static {v1}, Lco/vine/android/player/SdkVideoView;->access$800(Lco/vine/android/player/SdkVideoView;)I

    move-result v1

    iget-object v2, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    iget v2, v2, Lco/vine/android/player/SdkVideoView;->mVideoHeight:I

    if-ne v1, v2, :cond_3

    .line 366
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mTargetState:I
    invoke-static {v1}, Lco/vine/android/player/SdkVideoView;->access$900(Lco/vine/android/player/SdkVideoView;)I

    move-result v1

    if-ne v1, v5, :cond_5

    .line 367
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v1}, Lco/vine/android/player/SdkVideoView;->start()V

    .line 368
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v1}, Lco/vine/android/player/SdkVideoView;->access$500(Lco/vine/android/player/SdkVideoView;)Landroid/widget/MediaController;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 369
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v1}, Lco/vine/android/player/SdkVideoView;->access$500(Lco/vine/android/player/SdkVideoView;)Landroid/widget/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/MediaController;->show()V

    .line 386
    :cond_3
    :goto_1
    return-void

    .line 341
    .end local v0           #seekToPosition:I
    :cond_4
    invoke-virtual {p1, v3}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto/16 :goto_0

    .line 371
    .restart local v0       #seekToPosition:I
    :cond_5
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v1}, Lco/vine/android/player/SdkVideoView;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v0, :cond_6

    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v1}, Lco/vine/android/player/SdkVideoView;->getCurrentPosition()I

    move-result v1

    if-lez v1, :cond_3

    .line 373
    :cond_6
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v1}, Lco/vine/android/player/SdkVideoView;->access$500(Lco/vine/android/player/SdkVideoView;)Landroid/widget/MediaController;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 375
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v1}, Lco/vine/android/player/SdkVideoView;->access$500(Lco/vine/android/player/SdkVideoView;)Landroid/widget/MediaController;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/MediaController;->show(I)V

    goto :goto_1

    .line 382
    :cond_7
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    #getter for: Lco/vine/android/player/SdkVideoView;->mTargetState:I
    invoke-static {v1}, Lco/vine/android/player/SdkVideoView;->access$900(Lco/vine/android/player/SdkVideoView;)I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 383
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView$2;->this$0:Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v1}, Lco/vine/android/player/SdkVideoView;->start()V

    goto :goto_1
.end method
