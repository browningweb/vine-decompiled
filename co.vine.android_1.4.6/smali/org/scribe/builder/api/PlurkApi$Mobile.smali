.class public Lorg/scribe/builder/api/PlurkApi$Mobile;
.super Lorg/scribe/builder/api/PlurkApi;
.source "PlurkApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/scribe/builder/api/PlurkApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Mobile"
.end annotation


# static fields
.field private static final AUTHORIZATION_URL:Ljava/lang/String; = "http://www.plurk.com/m/authorize?oauth_token=%s"


# instance fields
.field final synthetic this$0:Lorg/scribe/builder/api/PlurkApi;


# direct methods
.method public constructor <init>(Lorg/scribe/builder/api/PlurkApi;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lorg/scribe/builder/api/PlurkApi$Mobile;->this$0:Lorg/scribe/builder/api/PlurkApi;

    invoke-direct {p0}, Lorg/scribe/builder/api/PlurkApi;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthorizationUrl(Lorg/scribe/model/Token;)Ljava/lang/String;
    .locals 4
    .parameter "requestToken"

    .prologue
    .line 36
    const-string v0, "http://www.plurk.com/m/authorize?oauth_token=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/scribe/model/Token;->getToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
