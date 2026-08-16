.class public final Lcom/google/android/gms/internal/measurement/i1;
.super Lcom/google/android/gms/internal/measurement/w1;
.source "SourceFile"


# instance fields
.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Lcom/google/android/gms/internal/measurement/I1;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/I1;ZILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/i1;->f:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/i1;->g:Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/i1;->h:Lcom/google/android/gms/internal/measurement/I1;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/w1;-><init>(Lcom/google/android/gms/internal/measurement/I1;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/i1;->h:Lcom/google/android/gms/internal/measurement/I1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/I1;->q()Lcom/google/android/gms/internal/measurement/w0;

    move-result-object v0

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/measurement/w0;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/i1;->g:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/i1;->f:Ljava/lang/String;

    invoke-static {v0}, LW0/f;->l0(Ljava/lang/Object;)LW0/d;

    move-result-object v4

    const/4 v0, 0x0

    invoke-static {v0}, LW0/f;->l0(Ljava/lang/Object;)LW0/d;

    move-result-object v5

    invoke-static {v0}, LW0/f;->l0(Ljava/lang/Object;)LW0/d;

    move-result-object v6

    const/4 v2, 0x5

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/w0;->logHealthData(ILjava/lang/String;LW0/d;LW0/d;LW0/d;)V

    return-void
.end method
