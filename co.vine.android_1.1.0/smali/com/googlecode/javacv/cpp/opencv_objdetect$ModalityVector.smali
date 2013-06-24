.class public Lcom/googlecode/javacv/cpp/opencv_objdetect$ModalityVector;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_objdetect.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Name;
    value = {
        "std::vector<cv::Ptr<cv::linemod::Modality> >"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_objdetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModalityVector"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 833
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 835
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_objdetect$ModalityVector;->allocate()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .parameter "n"

    .prologue
    .line 836
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/googlecode/javacv/cpp/opencv_objdetect$ModalityVector;->allocate(J)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 837
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public varargs constructor <init>([Lcom/googlecode/javacv/cpp/opencv_objdetect$Modality;)V
    .locals 2
    .parameter "array"

    .prologue
    .line 834
    array-length v0, p1

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/googlecode/javacv/cpp/opencv_objdetect$ModalityVector;-><init>(J)V

    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_objdetect$ModalityVector;->put([Lcom/googlecode/javacv/cpp/opencv_objdetect$Modality;)Lcom/googlecode/javacv/cpp/opencv_objdetect$ModalityVector;

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(J)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "size_t"
            }
        .end annotation
    .end parameter
.end method


# virtual methods
.method public native get(J)Lcom/googlecode/javacv/cpp/opencv_objdetect$Modality;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "size_t"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Index;
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
    .end annotation
.end method

.method public native put(JLcom/googlecode/javacv/cpp/opencv_objdetect$Modality;)Lcom/googlecode/javacv/cpp/opencv_objdetect$ModalityVector;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "size_t"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public varargs put([Lcom/googlecode/javacv/cpp/opencv_objdetect$Modality;)Lcom/googlecode/javacv/cpp/opencv_objdetect$ModalityVector;
    .locals 5
    .parameter "array"

    .prologue
    .line 848
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_objdetect$ModalityVector;->size()J

    move-result-wide v1

    array-length v3, p1

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    array-length v1, p1

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_objdetect$ModalityVector;->resize(J)V

    .line 849
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 850
    int-to-long v1, v0

    aget-object v3, p1, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_objdetect$ModalityVector;->put(JLcom/googlecode/javacv/cpp/opencv_objdetect$Modality;)Lcom/googlecode/javacv/cpp/opencv_objdetect$ModalityVector;

    .line 849
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 852
    :cond_1
    return-object p0
.end method

.method public native resize(J)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "size_t"
            }
        .end annotation
    .end parameter
.end method

.method public native size()J
.end method