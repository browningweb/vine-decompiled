.class public final Lcom/google/android/gms/internal/p$f;
.super Lcom/google/android/gms/internal/p$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/p",
        "<TT;>.b<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aF:Lcom/google/android/gms/internal/p;

.field public final aG:Landroid/os/Bundle;

.field public final aH:Landroid/os/IBinder;

.field public final statusCode:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/p;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/p$f;->aF:Lcom/google/android/gms/internal/p;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/p$b;-><init>(Lcom/google/android/gms/internal/p;Ljava/lang/Object;)V

    iput p2, p0, Lcom/google/android/gms/internal/p$f;->statusCode:I

    iput-object p3, p0, Lcom/google/android/gms/internal/p$f;->aH:Landroid/os/IBinder;

    iput-object p4, p0, Lcom/google/android/gms/internal/p$f;->aG:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Boolean;)V
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/p$f;->statusCode:I

    sparse-switch v1, :sswitch_data_0

    iget-object v1, p0, Lcom/google/android/gms/internal/p$f;->aG:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/p$f;->aG:Landroid/os/Bundle;

    const-string v1, "pendingIntent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/p$f;->aF:Lcom/google/android/gms/internal/p;

    new-instance v2, Lcom/google/android/gms/common/ConnectionResult;

    iget v3, p0, Lcom/google/android/gms/internal/p$f;->statusCode:I

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/p;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :sswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/p$f;->aH:Landroid/os/IBinder;

    invoke-interface {v1}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/p$f;->aF:Lcom/google/android/gms/internal/p;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/p;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/p$f;->aF:Lcom/google/android/gms/internal/p;

    iget-object v2, p0, Lcom/google/android/gms/internal/p$f;->aF:Lcom/google/android/gms/internal/p;

    iget-object v3, p0, Lcom/google/android/gms/internal/p$f;->aH:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/p;->c(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/p;->a(Lcom/google/android/gms/internal/p;Landroid/os/IInterface;)Landroid/os/IInterface;

    iget-object v1, p0, Lcom/google/android/gms/internal/p$f;->aF:Lcom/google/android/gms/internal/p;

    invoke-static {v1}, Lcom/google/android/gms/internal/p;->d(Lcom/google/android/gms/internal/p;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/p$f;->aF:Lcom/google/android/gms/internal/p;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/p;->k()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/p$f;->aF:Lcom/google/android/gms/internal/p;

    invoke-static {v1}, Lcom/google/android/gms/internal/p;->f(Lcom/google/android/gms/internal/p;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/q;->e(Landroid/content/Context;)Lcom/google/android/gms/internal/q;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/p$f;->aF:Lcom/google/android/gms/internal/p;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/p;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/p$f;->aF:Lcom/google/android/gms/internal/p;

    invoke-static {v3}, Lcom/google/android/gms/internal/p;->e(Lcom/google/android/gms/internal/p;)Lcom/google/android/gms/internal/p$e;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/q;->b(Ljava/lang/String;Lcom/google/android/gms/internal/p$e;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/p$f;->aF:Lcom/google/android/gms/internal/p;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/p;->a(Lcom/google/android/gms/internal/p;Lcom/google/android/gms/internal/p$e;)Lcom/google/android/gms/internal/p$e;

    iget-object v1, p0, Lcom/google/android/gms/internal/p$f;->aF:Lcom/google/android/gms/internal/p;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/p;->a(Lcom/google/android/gms/internal/p;Landroid/os/IInterface;)Landroid/os/IInterface;

    iget-object v1, p0, Lcom/google/android/gms/internal/p$f;->aF:Lcom/google/android/gms/internal/p;

    new-instance v2, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v3, 0x8

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/p;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :sswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A fatal developer error has occurred. Check the logs for further information."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/p$f;->a(Ljava/lang/Boolean;)V

    return-void
.end method
