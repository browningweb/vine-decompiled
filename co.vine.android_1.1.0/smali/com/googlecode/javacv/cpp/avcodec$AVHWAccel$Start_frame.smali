.class public Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel$Start_frame;
.super Lcom/googlecode/javacpp/FunctionPointer;
.source "avcodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Start_frame"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 3574
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 3576
    invoke-direct {p0}, Lcom/googlecode/javacpp/FunctionPointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel$Start_frame;->allocate()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 3575
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/FunctionPointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method


# virtual methods
.method public native call(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;Lcom/googlecode/javacpp/BytePointer;I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint32_t"
            }
        .end annotation
    .end parameter
.end method