.class public final Lcom/google/android/gms/internal/dy$i;
.super Lcom/google/android/gms/internal/t$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/dy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "i"
.end annotation


# instance fields
.field private cL:Lcom/google/android/gms/internal/p$d;

.field final synthetic hf:Lcom/google/android/gms/internal/dy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/dy;Lcom/google/android/gms/internal/p$d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/dy$i;->hf:Lcom/google/android/gms/internal/dy;

    invoke-direct {p0}, Lcom/google/android/gms/internal/t$a;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/dy$i;->cL:Lcom/google/android/gms/internal/p$d;

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    const-string v0, "loaded_person"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/dy$i;->hf:Lcom/google/android/gms/internal/dy;

    const-string v1, "loaded_person"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/eq;->d([B)Lcom/google/android/gms/internal/eq;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/dy;->a(Lcom/google/android/gms/internal/dy;Lcom/google/android/gms/plus/model/people/Person;)Lcom/google/android/gms/plus/model/people/Person;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dy$i;->cL:Lcom/google/android/gms/internal/p$d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/p$d;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    return-void
.end method
