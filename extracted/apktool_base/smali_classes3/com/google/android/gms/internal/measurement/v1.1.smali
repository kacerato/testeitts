.class public final Lcom/google/android/gms/internal/measurement/v1;
.super Lcom/google/android/gms/internal/measurement/w1;
.source "SourceFile"


# instance fields
.field public final synthetic f:Ljava/lang/Long;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Landroid/os/Bundle;

.field public final synthetic j:Z

.field public final synthetic k:Z

.field public final synthetic l:Lcom/google/android/gms/internal/measurement/I1;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/I1;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZ)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/v1;->f:Ljava/lang/Long;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/v1;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/v1;->h:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/v1;->i:Landroid/os/Bundle;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/measurement/v1;->j:Z

    iput-boolean p7, p0, Lcom/google/android/gms/internal/measurement/v1;->k:Z

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/v1;->l:Lcom/google/android/gms/internal/measurement/I1;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/w1;-><init>(Lcom/google/android/gms/internal/measurement/I1;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/v1;->f:Ljava/lang/Long;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/w1;->b:J

    :goto_0
    move-wide v8, v0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/v1;->l:Lcom/google/android/gms/internal/measurement/I1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/I1;->q()Lcom/google/android/gms/internal/measurement/w0;

    move-result-object v0

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/measurement/w0;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/v1;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/v1;->h:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/v1;->i:Landroid/os/Bundle;

    iget-boolean v6, p0, Lcom/google/android/gms/internal/measurement/v1;->j:Z

    iget-boolean v7, p0, Lcom/google/android/gms/internal/measurement/v1;->k:Z

    invoke-interface/range {v2 .. v9}, Lcom/google/android/gms/internal/measurement/w0;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    return-void
.end method
