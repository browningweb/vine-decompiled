.class public Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext$Draw_horiz_band_AVCodecContext_AVFrame_IntPointer_int_int_int;
.super Lcom/googlecode/javacpp/FunctionPointer;
.source "avcodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Draw_horiz_band_AVCodecContext_AVFrame_IntPointer_int_int_int"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1680
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 1682
    invoke-direct {p0}, Lcom/googlecode/javacpp/FunctionPointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext$Draw_horiz_band_AVCodecContext_AVFrame_IntPointer_int_int_int;->allocate()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 1681
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/FunctionPointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method


# virtual methods
.method public native call(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;Lcom/googlecode/javacv/cpp/avutil$AVFrame;Lcom/googlecode/javacpp/IntPointer;III)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method
