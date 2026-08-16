.class public final LD0/F;
.super LD0/M;
.source "SourceFile"


# instance fields
.field public final c:Ljava/util/Map;

.field public final synthetic d:Lcom/google/android/gms/common/api/internal/o;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/o;Ljava/util/Map;)V
    .locals 1

    iput-object p1, p0, LD0/F;->d:Lcom/google/android/gms/common/api/internal/o;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LD0/M;-><init>(Lcom/google/android/gms/common/api/internal/o;LD0/L;)V

    iput-object p2, p0, LD0/F;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6
    .annotation build LJ2/a;
        value = "lock"
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, LD0/F;->d:Lcom/google/android/gms/common/api/internal/o;

    new-instance v1, LG0/c0;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/o;->t(Lcom/google/android/gms/common/api/internal/o;)LB0/i;

    move-result-object v0

    invoke-direct {v1, v0}, LG0/c0;-><init>(LB0/i;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, LD0/F;->c:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v4}, Lcom/google/android/gms/common/api/a$f;->q()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, LD0/F;->c:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LD0/C;

    invoke-static {v5}, LD0/C;->a(LD0/C;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    :cond_2
    if-ge v4, v0, :cond_5

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/a$f;

    iget-object v5, p0, LD0/F;->d:Lcom/google/android/gms/common/api/internal/o;

    invoke-static {v5}, Lcom/google/android/gms/common/api/internal/o;->s(Lcom/google/android/gms/common/api/internal/o;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1, v5, v3}, LG0/c0;->b(Landroid/content/Context;Lcom/google/android/gms/common/api/a$f;)I

    move-result v5

    add-int/lit8 v4, v4, 0x1

    if-nez v5, :cond_2

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :cond_4
    if-ge v4, v2, :cond_5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/a$f;

    iget-object v5, p0, LD0/F;->d:Lcom/google/android/gms/common/api/internal/o;

    invoke-static {v5}, Lcom/google/android/gms/common/api/internal/o;->s(Lcom/google/android/gms/common/api/internal/o;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1, v5, v3}, LG0/c0;->b(Landroid/content/Context;Lcom/google/android/gms/common/api/a$f;)I

    move-result v5

    add-int/lit8 v4, v4, 0x1

    if-eqz v5, :cond_4

    :cond_5
    :goto_1
    if-eqz v5, :cond_6

    new-instance v0, LB0/c;

    const/4 v1, 0x0

    invoke-direct {v0, v5, v1}, LB0/c;-><init>(ILandroid/app/PendingIntent;)V

    iget-object v1, p0, LD0/F;->d:Lcom/google/android/gms/common/api/internal/o;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/o;->u(Lcom/google/android/gms/common/api/internal/o;)Lcom/google/android/gms/common/api/internal/s;

    move-result-object v2

    new-instance v3, LD0/D;

    invoke-direct {v3, p0, v1, v0}, LD0/D;-><init>(LD0/F;Lcom/google/android/gms/common/api/internal/r;LB0/c;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/internal/s;->u(LD0/V;)V

    return-void

    :cond_6
    iget-object v0, p0, LD0/F;->d:Lcom/google/android/gms/common/api/internal/o;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/o;->F(Lcom/google/android/gms/common/api/internal/o;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/o;->x(Lcom/google/android/gms/common/api/internal/o;)Ls1/f;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/o;->x(Lcom/google/android/gms/common/api/internal/o;)Ls1/f;

    move-result-object v0

    invoke-interface {v0}, Ls1/f;->d()V

    :cond_7
    iget-object v0, p0, LD0/F;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/a$f;

    iget-object v3, p0, LD0/F;->c:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LG0/f$c;

    invoke-interface {v2}, Lcom/google/android/gms/common/api/a$f;->q()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, LD0/F;->d:Lcom/google/android/gms/common/api/internal/o;

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/o;->s(Lcom/google/android/gms/common/api/internal/o;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, LG0/c0;->b(Landroid/content/Context;Lcom/google/android/gms/common/api/a$f;)I

    move-result v4

    if-eqz v4, :cond_8

    iget-object v2, p0, LD0/F;->d:Lcom/google/android/gms/common/api/internal/o;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/o;->u(Lcom/google/android/gms/common/api/internal/o;)Lcom/google/android/gms/common/api/internal/s;

    move-result-object v4

    new-instance v5, LD0/E;

    invoke-direct {v5, p0, v2, v3}, LD0/E;-><init>(LD0/F;Lcom/google/android/gms/common/api/internal/r;LG0/f$c;)V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/internal/s;->u(LD0/V;)V

    goto :goto_2

    :cond_8
    invoke-interface {v2, v3}, Lcom/google/android/gms/common/api/a$f;->s(LG0/f$c;)V

    goto :goto_2

    :cond_9
    return-void
.end method
