.class public final enum Lco/vine/android/recorder/VineFrameGrabber$ImageMode;
.super Ljava/lang/Enum;
.source "VineFrameGrabber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/recorder/VineFrameGrabber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lco/vine/android/recorder/VineFrameGrabber$ImageMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lco/vine/android/recorder/VineFrameGrabber$ImageMode;

.field public static final enum COLOR:Lco/vine/android/recorder/VineFrameGrabber$ImageMode;

.field public static final enum GRAY:Lco/vine/android/recorder/VineFrameGrabber$ImageMode;

.field public static final enum RAW:Lco/vine/android/recorder/VineFrameGrabber$ImageMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 128
    new-instance v0, Lco/vine/android/recorder/VineFrameGrabber$ImageMode;

    const-string v1, "COLOR"

    invoke-direct {v0, v1, v2}, Lco/vine/android/recorder/VineFrameGrabber$ImageMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/vine/android/recorder/VineFrameGrabber$ImageMode;->COLOR:Lco/vine/android/recorder/VineFrameGrabber$ImageMode;

    new-instance v0, Lco/vine/android/recorder/VineFrameGrabber$ImageMode;

    const-string v1, "GRAY"

    invoke-direct {v0, v1, v3}, Lco/vine/android/recorder/VineFrameGrabber$ImageMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/vine/android/recorder/VineFrameGrabber$ImageMode;->GRAY:Lco/vine/android/recorder/VineFrameGrabber$ImageMode;

    new-instance v0, Lco/vine/android/recorder/VineFrameGrabber$ImageMode;

    const-string v1, "RAW"

    invoke-direct {v0, v1, v4}, Lco/vine/android/recorder/VineFrameGrabber$ImageMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/vine/android/recorder/VineFrameGrabber$ImageMode;->RAW:Lco/vine/android/recorder/VineFrameGrabber$ImageMode;

    .line 127
    const/4 v0, 0x3

    new-array v0, v0, [Lco/vine/android/recorder/VineFrameGrabber$ImageMode;

    sget-object v1, Lco/vine/android/recorder/VineFrameGrabber$ImageMode;->COLOR:Lco/vine/android/recorder/VineFrameGrabber$ImageMode;

    aput-object v1, v0, v2

    sget-object v1, Lco/vine/android/recorder/VineFrameGrabber$ImageMode;->GRAY:Lco/vine/android/recorder/VineFrameGrabber$ImageMode;

    aput-object v1, v0, v3

    sget-object v1, Lco/vine/android/recorder/VineFrameGrabber$ImageMode;->RAW:Lco/vine/android/recorder/VineFrameGrabber$ImageMode;

    aput-object v1, v0, v4

    sput-object v0, Lco/vine/android/recorder/VineFrameGrabber$ImageMode;->$VALUES:[Lco/vine/android/recorder/VineFrameGrabber$ImageMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lco/vine/android/recorder/VineFrameGrabber$ImageMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 127
    const-class v0, Lco/vine/android/recorder/VineFrameGrabber$ImageMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lco/vine/android/recorder/VineFrameGrabber$ImageMode;

    return-object v0
.end method

.method public static values()[Lco/vine/android/recorder/VineFrameGrabber$ImageMode;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lco/vine/android/recorder/VineFrameGrabber$ImageMode;->$VALUES:[Lco/vine/android/recorder/VineFrameGrabber$ImageMode;

    invoke-virtual {v0}, [Lco/vine/android/recorder/VineFrameGrabber$ImageMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lco/vine/android/recorder/VineFrameGrabber$ImageMode;

    return-object v0
.end method
