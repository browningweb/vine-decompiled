.class public Lcom/googlecode/javacv/cpp/avutil$AVComponentDescriptor;
.super Lcom/googlecode/javacpp/Pointer;
.source "avutil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/avutil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AVComponentDescriptor"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 4799
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4800
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avutil$AVComponentDescriptor;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 4801
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/avutil$AVComponentDescriptor;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 4802
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native depth_minus1(S)Lcom/googlecode/javacv/cpp/avutil$AVComponentDescriptor;
.end method

.method public native depth_minus1()S
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "uint16_t"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/NoOffset;
    .end annotation
.end method

.method public native offset_plus1(S)Lcom/googlecode/javacv/cpp/avutil$AVComponentDescriptor;
.end method

.method public native offset_plus1()S
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "uint16_t"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/NoOffset;
    .end annotation
.end method

.method public native plane(S)Lcom/googlecode/javacv/cpp/avutil$AVComponentDescriptor;
.end method

.method public native plane()S
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "uint16_t"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/NoOffset;
    .end annotation
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4798
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/avutil$AVComponentDescriptor;->position(I)Lcom/googlecode/javacv/cpp/avutil$AVComponentDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/avutil$AVComponentDescriptor;
    .locals 1
    .parameter "position"

    .prologue
    .line 4806
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/avutil$AVComponentDescriptor;

    return-object v0
.end method

.method public native shift(S)Lcom/googlecode/javacv/cpp/avutil$AVComponentDescriptor;
.end method

.method public native shift()S
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "uint16_t"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/NoOffset;
    .end annotation
.end method

.method public native step_minus1(S)Lcom/googlecode/javacv/cpp/avutil$AVComponentDescriptor;
.end method

.method public native step_minus1()S
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "uint16_t"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/NoOffset;
    .end annotation
.end method
