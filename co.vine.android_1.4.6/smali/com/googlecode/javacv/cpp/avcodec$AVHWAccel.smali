.class public Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel;
.super Lcom/googlecode/javacpp/Pointer;
.source "avcodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/avcodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AVHWAccel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel$End_frame_AVCodecContext;,
        Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel$Decode_slice_AVCodecContext_BytePointer_int;,
        Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel$Start_frame_AVCodecContext_BytePointer_int;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 3474
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3475
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 3476
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 3477
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native capabilities()I
.end method

.method public native capabilities(I)Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel;
.end method

.method public native decode_slice()Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel$Decode_slice_AVCodecContext_BytePointer_int;
.end method

.method public native decode_slice(Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel$Decode_slice_AVCodecContext_BytePointer_int;)Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel;
.end method

.method public native end_frame()Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel$End_frame_AVCodecContext;
.end method

.method public native end_frame(Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel$End_frame_AVCodecContext;)Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel;
.end method

.method public native id()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVCodecID"
        }
    .end annotation
.end method

.method public native id(I)Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel;
.end method

.method public native name()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "const char*"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public native next()Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel;
.end method

.method public native next(Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel;)Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel;
.end method

.method public native pix_fmt()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVPixelFormat"
        }
    .end annotation
.end method

.method public native pix_fmt(I)Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3473
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel;->position(I)Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel;
    .locals 1
    .parameter "position"

    .prologue
    .line 3481
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel;

    return-object v0
.end method

.method public native priv_data_size()I
.end method

.method public native priv_data_size(I)Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel;
.end method

.method public native start_frame()Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel$Start_frame_AVCodecContext_BytePointer_int;
.end method

.method public native start_frame(Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel$Start_frame_AVCodecContext_BytePointer_int;)Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel;
.end method

.method public native type()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVMediaType"
        }
    .end annotation
.end method

.method public native type(I)Lcom/googlecode/javacv/cpp/avcodec$AVHWAccel;
.end method
