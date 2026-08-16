.class public final Lcom/google/android/gms/internal/measurement/M0;
.super Lcom/google/android/gms/internal/measurement/w1;
.source "SourceFile"


# instance fields
.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Z

.field public final synthetic j:Lcom/google/android/gms/internal/measurement/I1;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/I1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/M0;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/M0;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/M0;->h:Ljava/lang/Object;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/measurement/M0;->i:Z

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/M0;->j:Lcom/google/android/gms/internal/measurement/I1;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/w1;-><init>(Lcom/google/android/gms/internal/measurement/I1;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/M0;->j:Lcom/google/android/gms/internal/measurement/I1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/I1;->q()Lcom/google/android/gms/internal/measurement/w0;

    move-result-object v0

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/measurement/w0;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/M0;->h:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/M0;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/M0;->g:Ljava/lang/String;

    invoke-static {v0}, LW0/f;->l0(Ljava/lang/Object;)LW0/d;

    move-result-object v4

    iget-boolean v5, p0, Lcom/google/android/gms/internal/measurement/M0;->i:Z

    iget-wide v6, p0, Lcom/google/android/gms/internal/measurement/w1;->b:J

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/w0;->setUserProperty(Ljava/lang/String;Ljava/lang/String;LW0/d;ZJ)V

    return-void
.end method
