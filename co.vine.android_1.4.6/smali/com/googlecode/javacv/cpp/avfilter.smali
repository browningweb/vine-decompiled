.class public Lcom/googlecode/javacv/cpp/avfilter;
.super Ljava/lang/Object;
.source "avfilter.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Properties;
    inherit = {
        Lcom/googlecode/javacv/cpp/avformat;,
        Lcom/googlecode/javacv/cpp/postproc;,
        Lcom/googlecode/javacv/cpp/swresample;,
        Lcom/googlecode/javacv/cpp/swscale;
    }
    value = {
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            cinclude = {
                "<libavfilter/avfilter.h>",
                "<libavfilter/buffersink.h>",
                "<libavfilter/buffersrc.h>"
            }
            link = {
                "avfilter@.3"
            }
        .end subannotation,
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            preload = {
                "avfilter-3"
            }
            value = {
                "windows"
            }
        .end subannotation
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/cpp/avfilter$AVABufferSinkParams;,
        Lcom/googlecode/javacv/cpp/avfilter$AVBufferSinkParams;,
        Lcom/googlecode/javacv/cpp/avfilter$AVFilterInOut;,
        Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;,
        Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraphInternal;,
        Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;,
        Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;,
        Lcom/googlecode/javacv/cpp/avfilter$AVFilterInternal;,
        Lcom/googlecode/javacv/cpp/avfilter$AVFilter;,
        Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad;,
        Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRef;,
        Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRefVideoProps;,
        Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRefAudioProps;,
        Lcom/googlecode/javacv/cpp/avfilter$AVFilterBuffer;,
        Lcom/googlecode/javacv/cpp/avfilter$AVFilterFormats;
    }
.end annotation


# static fields
.field public static final AVFILTER_ALIGN:I = 0x10

.field public static final AVFILTER_AUTO_CONVERT_ALL:I = 0x0

.field public static final AVFILTER_AUTO_CONVERT_NONE:I = -0x1

.field public static final AVFILTER_CMD_FLAG_FAST:I = 0x2

.field public static final AVFILTER_CMD_FLAG_ONE:I = 0x1

.field public static final AVFILTER_FLAG_DYNAMIC_INPUTS:I = 0x1

.field public static final AVFILTER_FLAG_DYNAMIC_OUTPUTS:I = 0x2

.field public static final AVFILTER_FLAG_SLICE_THREADS:I = 0x4

.field public static final AVFILTER_FLAG_SUPPORT_TIMELINE:I = 0x30000

.field public static final AVFILTER_FLAG_SUPPORT_TIMELINE_GENERIC:I = 0x10000

.field public static final AVFILTER_FLAG_SUPPORT_TIMELINE_INTERNAL:I = 0x20000

.field public static final AVFILTER_THREAD_SLICE:I = 0x1

.field public static final AV_BUFFERSINK_FLAG_NO_REQUEST:I = 0x2

.field public static final AV_BUFFERSINK_FLAG_PEEK:I = 0x1

.field public static final AV_BUFFERSRC_FLAG_KEEP_REF:I = 0x8

.field public static final AV_BUFFERSRC_FLAG_NO_CHECK_FORMAT:I = 0x1

.field public static final AV_BUFFERSRC_FLAG_NO_COPY:I = 0x2

.field public static final AV_BUFFERSRC_FLAG_PUSH:I = 0x4

.field public static final AV_PERM_ALIGN:I = 0x40

.field public static final AV_PERM_NEG_LINESIZES:I = 0x20

.field public static final AV_PERM_PRESERVE:I = 0x4

.field public static final AV_PERM_READ:I = 0x1

.field public static final AV_PERM_REUSE:I = 0x8

.field public static final AV_PERM_REUSE2:I = 0x10

.field public static final AV_PERM_WRITE:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 44
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2015
    return-void
.end method

.method public static native av_abuffersink_params_alloc()Lcom/googlecode/javacv/cpp/avfilter$AVABufferSinkParams;
.end method

.method public static native av_buffersink_get_buffer_ref(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;Lcom/googlecode/javacpp/PointerPointer;I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVFilterBufferRef**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native av_buffersink_get_buffer_ref(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRef;I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native av_buffersink_get_frame(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;Lcom/googlecode/javacv/cpp/avutil$AVFrame;)I
.end method

.method public static native av_buffersink_get_frame_flags(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;Lcom/googlecode/javacv/cpp/avutil$AVFrame;I)I
.end method

.method public static native av_buffersink_get_frame_rate(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;)Lcom/googlecode/javacv/cpp/avutil$AVRational;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public static native av_buffersink_get_samples(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;Lcom/googlecode/javacv/cpp/avutil$AVFrame;I)I
.end method

.method public static native av_buffersink_params_alloc()Lcom/googlecode/javacv/cpp/avfilter$AVBufferSinkParams;
.end method

.method public static native av_buffersink_poll_frame(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native av_buffersink_read(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;Lcom/googlecode/javacpp/PointerPointer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVFilterBufferRef**"
            }
        .end annotation
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native av_buffersink_read(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRef;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native av_buffersink_read_samples(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;Lcom/googlecode/javacpp/PointerPointer;I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVFilterBufferRef**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native av_buffersink_read_samples(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRef;I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native av_buffersink_set_frame_size(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;I)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned"
            }
        .end annotation
    .end parameter
.end method

.method public static native av_buffersrc_add_frame(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;Lcom/googlecode/javacv/cpp/avutil$AVFrame;)I
.end method

.method public static native av_buffersrc_add_frame_flags(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;Lcom/googlecode/javacv/cpp/avutil$AVFrame;I)I
.end method

.method public static native av_buffersrc_add_ref(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRef;I)I
.end method

.method public static native av_buffersrc_buffer(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRef;)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native av_buffersrc_get_nb_failed_requests(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned"
        }
    .end annotation
.end method

.method public static native av_buffersrc_write_frame(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;Lcom/googlecode/javacv/cpp/avutil$AVFrame;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
.end method

.method public static native av_filter_next(Lcom/googlecode/javacpp/PointerPointer;)Lcom/googlecode/javacpp/PointerPointer;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVFilter**"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVFilter**"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native av_filter_next(Lcom/googlecode/javacv/cpp/avfilter$AVFilter;)Lcom/googlecode/javacv/cpp/avfilter$AVFilter;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native avfilter_config_links(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;)I
.end method

.method public static native avfilter_configuration()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "const char*"
        }
    .end annotation
.end method

.method public static native avfilter_copy_buf_props(Lcom/googlecode/javacv/cpp/avutil$AVFrame;Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRef;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native avfilter_copy_buffer_ref_props(Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRef;Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRef;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native avfilter_copy_frame_props(Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRef;Lcom/googlecode/javacv/cpp/avutil$AVFrame;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native avfilter_free(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;)V
.end method

.method public static native avfilter_get_audio_buffer_ref_from_arrays(Lcom/googlecode/javacpp/BytePointer;IIIIJ)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRef;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint64_t"
            }
        .end annotation
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native avfilter_get_audio_buffer_ref_from_arrays(Lcom/googlecode/javacpp/PointerPointer;IIIIJ)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRef;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint64_t"
            }
        .end annotation
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native avfilter_get_audio_buffer_ref_from_arrays(Ljava/nio/ByteBuffer;IIIIJ)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRef;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint64_t"
            }
        .end annotation
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native avfilter_get_audio_buffer_ref_from_arrays([BIIIIJ)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRef;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint64_t"
            }
        .end annotation
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native avfilter_get_audio_buffer_ref_from_arrays_channels(Lcom/googlecode/javacpp/BytePointer;IIIIIJ)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRef;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint64_t"
            }
        .end annotation
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native avfilter_get_audio_buffer_ref_from_arrays_channels(Lcom/googlecode/javacpp/PointerPointer;IIIIIJ)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRef;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint64_t"
            }
        .end annotation
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native avfilter_get_audio_buffer_ref_from_arrays_channels(Ljava/nio/ByteBuffer;IIIIIJ)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRef;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint64_t"
            }
        .end annotation
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native avfilter_get_audio_buffer_ref_from_arrays_channels([BIIIIIJ)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRef;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVSampleFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint64_t"
            }
        .end annotation
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native avfilter_get_by_name(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avfilter$AVFilter;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
.end method

.method public static native avfilter_get_by_name(Ljava/lang/String;)Lcom/googlecode/javacv/cpp/avfilter$AVFilter;
.end method

.method public static native avfilter_get_class()Lcom/googlecode/javacv/cpp/avutil$AVClass;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public static native avfilter_get_video_buffer_ref_from_arrays(Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/IntPointer;IIII)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRef;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t*const*"
            }
        .end annotation
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
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native avfilter_get_video_buffer_ref_from_arrays(Lcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/IntPointer;IIII)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRef;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t*const*"
            }
        .end annotation
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
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native avfilter_get_video_buffer_ref_from_arrays(Ljava/nio/ByteBuffer;Ljava/nio/IntBuffer;IIII)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRef;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t*const*"
            }
        .end annotation
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
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native avfilter_get_video_buffer_ref_from_arrays([B[IIIII)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRef;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t*const*"
            }
        .end annotation
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
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVPixelFormat"
            }
        .end annotation
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native avfilter_graph_add_filter(Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native avfilter_graph_alloc()Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;
.end method

.method public static native avfilter_graph_alloc_filter(Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;Lcom/googlecode/javacv/cpp/avfilter$AVFilter;Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
.end method

.method public static native avfilter_graph_alloc_filter(Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;Lcom/googlecode/javacv/cpp/avfilter$AVFilter;Ljava/lang/String;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native avfilter_graph_config(Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;Lcom/googlecode/javacpp/Pointer;)I
.end method

.method public static native avfilter_graph_create_filter(Lcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacv/cpp/avfilter$AVFilter;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVFilterContext**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native avfilter_graph_create_filter(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;Lcom/googlecode/javacv/cpp/avfilter$AVFilter;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native avfilter_graph_create_filter(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;Lcom/googlecode/javacv/cpp/avfilter$AVFilter;Ljava/lang/String;Ljava/lang/String;Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
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
    .parameter
    .end parameter
.end method

.method public static native avfilter_graph_dump(Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacpp/BytePointer;
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "char*"
        }
    .end annotation
.end method

.method public static native avfilter_graph_dump(Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "char*"
        }
    .end annotation
.end method

.method public static native avfilter_graph_free(Lcom/googlecode/javacpp/PointerPointer;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVFilterGraph**"
            }
        .end annotation
    .end parameter
.end method

.method public static native avfilter_graph_free(Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native avfilter_graph_get_filter(Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
.end method

.method public static native avfilter_graph_get_filter(Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;Ljava/nio/ByteBuffer;)Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
.end method

.method public static native avfilter_graph_get_filter(Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;[B)Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
.end method

.method public static native avfilter_graph_parse(Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/Pointer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVFilterInOut**"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVFilterInOut**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native avfilter_graph_parse(Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacv/cpp/avfilter$AVFilterInOut;Lcom/googlecode/javacv/cpp/avfilter$AVFilterInOut;Lcom/googlecode/javacpp/Pointer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native avfilter_graph_parse(Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;Ljava/lang/String;Lcom/googlecode/javacv/cpp/avfilter$AVFilterInOut;Lcom/googlecode/javacv/cpp/avfilter$AVFilterInOut;Lcom/googlecode/javacpp/Pointer;)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native avfilter_graph_parse2(Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/PointerPointer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVFilterInOut**"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVFilterInOut**"
            }
        .end annotation
    .end parameter
.end method

.method public static native avfilter_graph_parse2(Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacv/cpp/avfilter$AVFilterInOut;Lcom/googlecode/javacv/cpp/avfilter$AVFilterInOut;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native avfilter_graph_parse2(Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;Ljava/lang/String;Lcom/googlecode/javacv/cpp/avfilter$AVFilterInOut;Lcom/googlecode/javacv/cpp/avfilter$AVFilterInOut;)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native avfilter_graph_parse_ptr(Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/Pointer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVFilterInOut**"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVFilterInOut**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native avfilter_graph_parse_ptr(Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacv/cpp/avfilter$AVFilterInOut;Lcom/googlecode/javacv/cpp/avfilter$AVFilterInOut;Lcom/googlecode/javacpp/Pointer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native avfilter_graph_parse_ptr(Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;Ljava/lang/String;Lcom/googlecode/javacv/cpp/avfilter$AVFilterInOut;Lcom/googlecode/javacv/cpp/avfilter$AVFilterInOut;Lcom/googlecode/javacpp/Pointer;)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native avfilter_graph_queue_command(Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;ID)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native avfilter_graph_queue_command(Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ID)I
.end method

.method public static native avfilter_graph_request_oldest(Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;)I
.end method

.method public static native avfilter_graph_send_command(Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;II)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native avfilter_graph_send_command(Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;Ljava/nio/ByteBuffer;II)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native avfilter_graph_send_command(Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;[BII)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native avfilter_graph_send_command(Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/googlecode/javacpp/BytePointer;II)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native avfilter_graph_send_command(Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/ByteBuffer;II)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native avfilter_graph_send_command(Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BII)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native avfilter_graph_set_auto_convert(Lcom/googlecode/javacv/cpp/avfilter$AVFilterGraph;I)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned"
            }
        .end annotation
    .end parameter
.end method

.method public static native avfilter_init_dict(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;Lcom/googlecode/javacpp/PointerPointer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVDictionary**"
            }
        .end annotation
    .end parameter
.end method

.method public static native avfilter_init_dict(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;Lcom/googlecode/javacv/cpp/avutil$AVDictionary;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native avfilter_init_filter(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/Pointer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native avfilter_init_filter(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;Ljava/lang/String;Lcom/googlecode/javacpp/Pointer;)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native avfilter_init_str(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;Lcom/googlecode/javacpp/BytePointer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
.end method

.method public static native avfilter_init_str(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;Ljava/lang/String;)I
.end method

.method public static native avfilter_inout_alloc()Lcom/googlecode/javacv/cpp/avfilter$AVFilterInOut;
.end method

.method public static native avfilter_inout_free(Lcom/googlecode/javacpp/PointerPointer;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVFilterInOut**"
            }
        .end annotation
    .end parameter
.end method

.method public static native avfilter_inout_free(Lcom/googlecode/javacv/cpp/avfilter$AVFilterInOut;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native avfilter_insert_filter(Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;II)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned"
            }
        .end annotation
    .end parameter
.end method

.method public static native avfilter_license()Lcom/googlecode/javacpp/BytePointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "const char*"
        }
    .end annotation
.end method

.method public static native avfilter_link(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;ILcom/googlecode/javacv/cpp/avfilter$AVFilterContext;I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned"
            }
        .end annotation
    .end parameter
.end method

.method public static native avfilter_link_free(Lcom/googlecode/javacpp/PointerPointer;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVFilterLink**"
            }
        .end annotation
    .end parameter
.end method

.method public static native avfilter_link_free(Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native avfilter_link_get_channels(Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;)I
.end method

.method public static native avfilter_link_set_closed(Lcom/googlecode/javacv/cpp/avfilter$AVFilterLink;I)V
.end method

.method public static native avfilter_next(Lcom/googlecode/javacv/cpp/avfilter$AVFilter;)Lcom/googlecode/javacv/cpp/avfilter$AVFilter;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public static native avfilter_open(Lcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacv/cpp/avfilter$AVFilter;Lcom/googlecode/javacpp/BytePointer;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVFilterContext**"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native avfilter_open(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;Lcom/googlecode/javacv/cpp/avfilter$AVFilter;Lcom/googlecode/javacpp/BytePointer;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native avfilter_open(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;Lcom/googlecode/javacv/cpp/avfilter$AVFilter;Ljava/lang/String;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native avfilter_pad_count(Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
.end method

.method public static native avfilter_pad_get_name(Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad;I)Lcom/googlecode/javacpp/BytePointer;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "const char*"
        }
    .end annotation
.end method

.method public static native avfilter_pad_get_type(Lcom/googlecode/javacv/cpp/avfilter$AVFilterPad;I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "AVMediaType"
        }
    .end annotation
.end method

.method public static native avfilter_process_command(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;II)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native avfilter_process_command(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;Ljava/nio/ByteBuffer;II)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native avfilter_process_command(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;[BII)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native avfilter_process_command(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;Ljava/lang/String;Ljava/lang/String;Lcom/googlecode/javacpp/BytePointer;II)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native avfilter_process_command(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;Ljava/lang/String;Ljava/lang/String;Ljava/nio/ByteBuffer;II)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native avfilter_process_command(Lcom/googlecode/javacv/cpp/avfilter$AVFilterContext;Ljava/lang/String;Ljava/lang/String;[BII)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native avfilter_ref_buffer(Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRef;I)Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRef;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native avfilter_ref_get_channels(Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRef;)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native avfilter_register(Lcom/googlecode/javacv/cpp/avfilter$AVFilter;)I
.end method

.method public static native avfilter_register_all()V
.end method

.method public static native avfilter_uninit()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native avfilter_unref_buffer(Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRef;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native avfilter_unref_bufferp(Lcom/googlecode/javacpp/PointerPointer;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "AVFilterBufferRef**"
            }
        .end annotation
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native avfilter_unref_bufferp(Lcom/googlecode/javacv/cpp/avfilter$AVFilterBufferRef;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native avfilter_version()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "unsigned"
        }
    .end annotation
.end method
