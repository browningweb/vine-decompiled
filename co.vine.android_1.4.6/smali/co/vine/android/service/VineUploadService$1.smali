.class Lco/vine/android/service/VineUploadService$1;
.super Ljava/lang/Object;
.source "VineUploadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/service/VineUploadService;->executeNext()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/service/VineUploadService;


# direct methods
.method constructor <init>(Lco/vine/android/service/VineUploadService;)V
    .locals 0
    .parameter

    .prologue
    .line 481
    iput-object p1, p0, Lco/vine/android/service/VineUploadService$1;->this$0:Lco/vine/android/service/VineUploadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lco/vine/android/service/VineUploadService$1;->this$0:Lco/vine/android/service/VineUploadService;

    #calls: Lco/vine/android/service/VineUploadService;->stopIfNoTaskLeft()V
    invoke-static {v0}, Lco/vine/android/service/VineUploadService;->access$000(Lco/vine/android/service/VineUploadService;)V

    .line 485
    return-void
.end method
