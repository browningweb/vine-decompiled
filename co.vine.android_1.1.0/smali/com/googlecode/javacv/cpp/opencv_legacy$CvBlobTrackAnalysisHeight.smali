.class public Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackAnalysisHeight;
.super Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackAnalysis;
.source "opencv_legacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvBlobTrackAnalysisHeight"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 3357
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3358
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackAnalysis;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 3359
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlobTrackAnalysis;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method


# virtual methods
.method public native GetHeight(Lcom/googlecode/javacv/cpp/opencv_legacy$CvBlob;)D
.end method