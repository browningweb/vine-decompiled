.class public Lco/vine/android/recorder/ConcurrentData$VideoData;
.super Lco/vine/android/recorder/ConcurrentData;
.source "ConcurrentData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/recorder/ConcurrentData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoData"
.end annotation


# instance fields
.field cameraInfo:Lco/vine/android/recorder/ConcurrentData$CameraInfo;

.field data:[B

.field timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lco/vine/android/recorder/ConcurrentData;-><init>(Lco/vine/android/recorder/ConcurrentData$1;)V

    .line 69
    return-void
.end method


# virtual methods
.method public clone()Lco/vine/android/recorder/ConcurrentData$VideoData;
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lco/vine/android/recorder/ConcurrentData$VideoData;

    invoke-direct {v0}, Lco/vine/android/recorder/ConcurrentData$VideoData;-><init>()V

    return-object v0
.end method

.method public bridge synthetic clone()Lco/vine/android/recorder/ConcurrentData;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lco/vine/android/recorder/ConcurrentData$VideoData;->clone()Lco/vine/android/recorder/ConcurrentData$VideoData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p0}, Lco/vine/android/recorder/ConcurrentData$VideoData;->clone()Lco/vine/android/recorder/ConcurrentData$VideoData;

    move-result-object v0

    return-object v0
.end method

.method public set(J[BLco/vine/android/recorder/ConcurrentData$CameraInfo;)Lco/vine/android/recorder/ConcurrentData$VideoData;
    .locals 0
    .parameter "timestamp"
    .parameter "data"
    .parameter "cameraInfo"

    .prologue
    .line 61
    iput-wide p1, p0, Lco/vine/android/recorder/ConcurrentData$VideoData;->timestamp:J

    .line 62
    iput-object p3, p0, Lco/vine/android/recorder/ConcurrentData$VideoData;->data:[B

    .line 63
    iput-object p4, p0, Lco/vine/android/recorder/ConcurrentData$VideoData;->cameraInfo:Lco/vine/android/recorder/ConcurrentData$CameraInfo;

    .line 64
    return-object p0
.end method