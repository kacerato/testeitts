.class public final LD0/G;
.super LD0/M;
.source "SourceFile"


# instance fields
.field public final c:Ljava/util/ArrayList;

.field public final synthetic d:Lcom/google/android/gms/common/api/internal/o;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/o;Ljava/util/ArrayList;)V
    .locals 1

    iput-object p1, p0, LD0/G;->d:Lcom/google/android/gms/common/api/internal/o;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LD0/M;-><init>(Lcom/google/android/gms/common/api/internal/o;LD0/L;)V

    iput-object p2, p0, LD0/G;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, LD0/G;->d:Lcom/google/android/gms/common/api/internal/o;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/o;->u(Lcom/google/android/gms/common/api/internal/o;)Lcom/google/android/gms/common/api/internal/s;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/s;->r:Lcom/google/android/gms/common/api/internal/q;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/o;->y(Lcom/google/android/gms/common/api/internal/o;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/common/api/internal/q;->s:Ljava/util/Set;

    iget-object v0, p0, LD0/G;->c:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/a$f;

    iget-object v4, p0, LD0/G;->d:Lcom/google/android/gms/common/api/internal/o;

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/o;->w(Lcom/google/android/gms/common/api/internal/o;)LG0/r;

    move-result-object v5

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/o;->u(Lcom/google/android/gms/common/api/internal/o;)Lcom/google/android/gms/common/api/internal/s;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/s;->r:Lcom/google/android/gms/common/api/internal/q;

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/q;->s:Ljava/util/Set;

    invoke-interface {v3, v5, v4}, Lcom/google/android/gms/common/api/a$f;->t(LG0/r;Ljava/util/Set;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
