.class public Lcom/googlecode/javacv/cpp/avcodec$AVCodecParserContext;
.super Lcom/googlecode/javacpp/Pointer;
.source "avcodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/avcodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AVCodecParserContext"
.end annotation


# static fields
.field public static final AV_PARSER_PTS_NB:I = 0x4

.field public static final PARSER_FLAG_COMPLETE_FRAMES:I = 0x1

.field public static final PARSER_FLAG_FETCHED_OFFSET:I = 0x4

.field public static final PARSER_FLAG_ONCE:I = 0x2

.field public static final PARSER_FLAG_USE_CODEC_TS:I = 0x1000


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 4216
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4217
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecParserContext;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 4218
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecParserContext;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 4219
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native convergence_duration()J
.end method

.method public native convergence_duration(J)Lcom/googlecode/javacv/cpp/avcodec$AVCodecParserContext;
.end method

.method public native cur_frame_dts(I)J
.end method

.method public native cur_frame_dts(IJ)Lcom/googlecode/javacv/cpp/avcodec$AVCodecParserContext;
.end method

.method public native cur_frame_end(I)J
.end method

.method public native cur_frame_end(IJ)Lcom/googlecode/javacv/cpp/avcodec$AVCodecParserContext;
.end method

.method public native cur_frame_offset(I)J
.end method

.method public native cur_frame_offset(IJ)Lcom/googlecode/javacv/cpp/avcodec$AVCodecParserContext;
.end method

.method public native cur_frame_pos(I)J
.end method

.method public native cur_frame_pos(IJ)Lcom/googlecode/javacv/cpp/avcodec$AVCodecParserContext;
.end method

.method public native cur_frame_pts(I)J
.end method

.method public native cur_frame_pts(IJ)Lcom/googlecode/javacv/cpp/avcodec$AVCodecParserContext;
.end method

.method public native cur_frame_start_index()I
.end method

.method public native cur_frame_start_index(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecParserContext;
.end method

.method public native cur_offset()J
.end method

.method public native cur_offset(J)Lcom/googlecode/javacv/cpp/avcodec$AVCodecParserContext;
.end method

.method public native dts()J
.end method

.method public native dts(J)Lcom/googlecode/javacv/cpp/avcodec$AVCodecParserContext;
.end method

.method public native dts_ref_dts_delta()I
.end method

.method public native dts_ref_dts_delta(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecParserContext;
.end method

.method public native dts_sync_point()I
.end method

.method public native dts_sync_point(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecParserContext;
.end method

.method public native duration()I
.end method

.method public native duration(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecParserContext;
.end method

.method public native fetch_timestamp()I
.end method

.method public native fetch_timestamp(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecParserContext;
.end method

.method public native flags()I
.end method

.method public native flags(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecParserContext;
.end method

.method public native frame_offset()J
.end method

.method public native frame_offset(J)Lcom/googlecode/javacv/cpp/avcodec$AVCodecParserContext;
.end method

.method public native key_frame()I
.end method

.method public native key_frame(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecParserContext;
.end method

.method public native last_dts()J
.end method

.method public native last_dts(J)Lcom/googlecode/javacv/cpp/avcodec$AVCodecParserContext;
.end method

.method public native last_pos()J
.end method

.method public native last_pos(J)Lcom/googlecode/javacv/cpp/avcodec$AVCodecParserContext;
.end method

.method public native last_pts()J
.end method

.method public native last_pts(J)Lcom/googlecode/javacv/cpp/avcodec$AVCodecParserContext;
.end method

.method public native next_frame_offset()J
.end method

.method public native next_frame_offset(J)Lcom/googlecode/javacv/cpp/avcodec$AVCodecParserContext;
.end method

.method public native offset()J
.end method

.method public native offset(J)Lcom/googlecode/javacv/cpp/avcodec$AVCodecParserContext;
.end method

.method public native parser()Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser;
.end method

.method public native parser(Lcom/googlecode/javacv/cpp/avcodec$AVCodecParser;)Lcom/googlecode/javacv/cpp/avcodec$AVCodecParserContext;
.end method

.method public native pict_type()I
.end method

.method public native pict_type(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecParserContext;
.end method

.method public native pos()J
.end method

.method public native pos(J)Lcom/googlecode/javacv/cpp/avcodec$AVCodecParserContext;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4215
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecParserContext;->position(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecParserContext;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecParserContext;
    .locals 1
    .parameter "position"

    .prologue
    .line 4224
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/avcodec$AVCodecParserContext;

    return-object v0
.end method

.method public native priv_data()Lcom/googlecode/javacpp/Pointer;
.end method

.method public native priv_data(Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacv/cpp/avcodec$AVCodecParserContext;
.end method

.method public native pts()J
.end method

.method public native pts(J)Lcom/googlecode/javacv/cpp/avcodec$AVCodecParserContext;
.end method

.method public native pts_dts_delta()I
.end method

.method public native pts_dts_delta(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecParserContext;
.end method

.method public native repeat_pict()I
.end method

.method public native repeat_pict(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecParserContext;
.end method
