.class public Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;
.super Lcom/googlecode/javacpp/Pointer;
.source "avfilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/avfilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AVFilterContext"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 888
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 889
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 890
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 891
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native av_class()Lcom/googlecode/javacv/cpp/avutil$AVClass;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public native command_queue()Lcom/googlecode/javacpp/Pointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVFilterCommand*"
        }
    .end annotation
.end method

.method public native command_queue(Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;
.end method

.method public native enable()Lcom/googlecode/javacpp/Pointer;
.end method

.method public native enable(Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;
.end method

.method public native enable_str()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "char*"
        }
    .end annotation
.end method

.method public native enable_str(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;
.end method

.method public native filter()Lcom/googlecode/javacv/cpp/avfilter$AVFilter;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public native graph(Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;
.end method

.method public native graph()Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;
.end method

.method public native input_pads(Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;
.end method

.method public native input_pads()Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad;
.end method

.method public native inputs()Lcom/googlecode/javacpp/PointerPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVFilterLink**"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public native inputs(ILcom/googlecode/javacv/cpp/avfilter$AVFilterLink;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;
.end method

.method public native inputs(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;
.end method

.method public native internal(Lcom/googlecode/javacv/cpp/avfilter$AVFilterInternal;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;
.end method

.method public native internal()Lcom/googlecode/javacv/cpp/avfilter$AVFilterInternal;
.end method

.method public native is_disabled()I
.end method

.method public native is_disabled(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;
.end method

.method public native name()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "char*"
        }
    .end annotation
.end method

.method public native name(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;
.end method

.method public native nb_inputs()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned"
        }
    .end annotation
.end method

.method public native nb_inputs(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;
.end method

.method public native nb_outputs()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned"
        }
    .end annotation
.end method

.method public native nb_outputs(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;
.end method

.method public native output_pads(Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;
.end method

.method public native output_pads()Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad;
.end method

.method public native outputs()Lcom/googlecode/javacpp/PointerPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVFilterLink**"
        }
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public native outputs(ILcom/googlecode/javacv/cpp/avfilter$AVFilterLink;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;
.end method

.method public native outputs(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 887
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;->position(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;
    .locals 1
    .parameter "position"

    .prologue
    .line 895
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;

    return-object v0
.end method

.method public native priv()Lcom/googlecode/javacpp/Pointer;
.end method

.method public native priv(Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;
.end method

.method public native thread_type()I
.end method

.method public native thread_type(I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;
.end method

.method public native var_values()Lcom/googlecode/javacpp/DoublePointer;
.end method

.method public native var_values(Lcom/googlecode/javacpp/DoublePointer;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;
.end method
