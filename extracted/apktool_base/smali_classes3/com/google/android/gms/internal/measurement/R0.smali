.class public final Lcom/google/android/gms/internal/measurement/R0;
.super Lcom/google/android/gms/internal/measurement/w1;
.source "SourceFile"


# instance fields
.field public final synthetic f:Lcom/google/android/gms/internal/measurement/K0;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Lcom/google/android/gms/internal/measurement/I1;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/I1;Lcom/google/android/gms/internal/measurement/K0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/R0;->f:Lcom/google/android/gms/internal/measurement/K0;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/R0;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/R0;->h:Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/R0;->i:Lcom/google/android/gms/internal/measurement/I1;

    const/4 p2, 0x1

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

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/R0;->i:Lcom/google/android/gms/internal/measurement/I1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/I1;->q()Lcom/google/android/gms/internal/measurement/w0;

    move-result-object v0

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/measurement/w0;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/R0;->f:Lcom/google/android/gms/internal/measurement/K0;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/R0;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/R0;->h:Ljava/lang/String;

    iget-wide v5, p0, Lcom/google/android/gms/internal/measurement/w1;->b:J

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/w0;->setCurrentScreenByScionActivityInfo(Lcom/google/android/gms/internal/measurement/K0;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
