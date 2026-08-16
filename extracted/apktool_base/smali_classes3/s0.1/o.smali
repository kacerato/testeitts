.class public final Ls0/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/q;


# instance fields
.field public final synthetic a:Ls0/b;


# direct methods
.method public constructor <init>(Ls0/b;)V
    .locals 0

    iput-object p1, p0, Ls0/o;->a:Ls0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/auth/f1;->k(Landroid/os/IBinder;)Lcom/google/android/gms/internal/auth/G1;

    move-result-object p1

    iget-object v0, p0, Ls0/o;->a:Ls0/b;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/auth/G1;->x0(Ls0/b;)Ls0/c;

    move-result-object p1

    invoke-static {p1}, Ls0/r;->m(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ls0/c;->n()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
