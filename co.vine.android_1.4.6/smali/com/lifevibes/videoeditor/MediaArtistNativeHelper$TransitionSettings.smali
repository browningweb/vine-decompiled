.class public Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$TransitionSettings;
.super Ljava/lang/Object;
.source "MediaArtistNativeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lifevibes/videoeditor/MediaArtistNativeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransitionSettings"
.end annotation


# instance fields
.field public alphaSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$AlphaMagicSettings;

.field public audioTransitionType:I

.field public duration:I

.field public slideSettings:Lcom/lifevibes/videoeditor/MediaArtistNativeHelper$SlideTransitionSettings;

.field public transitionBehaviour:I

.field public videoTransitionType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
