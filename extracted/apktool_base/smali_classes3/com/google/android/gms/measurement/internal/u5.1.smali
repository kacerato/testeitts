.class public final Lcom/google/android/gms/measurement/internal/u5;
.super Lcom/google/android/gms/measurement/internal/h2;
.source "SourceFile"


# instance fields
.field public volatile c:Lcom/google/android/gms/measurement/internal/m5;

.field public volatile d:Lcom/google/android/gms/measurement/internal/m5;

.field public e:Lcom/google/android/gms/measurement/internal/m5;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public final f:Ljava/util/Map;

.field public g:Lcom/google/android/gms/internal/measurement/K0;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "activityLock"
    .end annotation
.end field

.field public volatile h:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "activityLock"
    .end annotation
.end field

.field public volatile i:Lcom/google/android/gms/measurement/internal/m5;

.field public j:Lcom/google/android/gms/measurement/internal/m5;

.field public k:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "activityLock"
    .end annotation
.end field

.field public final l:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/p3;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/h2;-><init>(Lcom/google/android/gms/measurement/internal/p3;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/u5;->l:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/u5;->f:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final synthetic A(Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/m5;Lcom/google/android/gms/measurement/internal/m5;J)V
    .locals 8

    const-string v0, "screen_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v0, "screen_class"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->C()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-string v2, "screen_view"

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/m7;->t(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)Landroid/os/Bundle;

    move-result-object v7

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/u5;->G(Lcom/google/android/gms/measurement/internal/m5;Lcom/google/android/gms/measurement/internal/m5;JZLandroid/os/Bundle;)V

    return-void
.end method

.method public final synthetic B(Lcom/google/android/gms/measurement/internal/m5;Lcom/google/android/gms/measurement/internal/m5;JZLandroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/u5;->G(Lcom/google/android/gms/measurement/internal/m5;Lcom/google/android/gms/measurement/internal/m5;JZLandroid/os/Bundle;)V

    return-void
.end method

.method public final synthetic C(Lcom/google/android/gms/measurement/internal/m5;ZJ)V
    .locals 0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/u5;->o(Lcom/google/android/gms/measurement/internal/m5;ZJ)V

    return-void
.end method

.method public final synthetic D()Lcom/google/android/gms/measurement/internal/m5;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/u5;->j:Lcom/google/android/gms/measurement/internal/m5;

    return-object v0
.end method

.method public final synthetic E(Lcom/google/android/gms/measurement/internal/m5;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/u5;->j:Lcom/google/android/gms/measurement/internal/m5;

    return-void
.end method

.method public final F(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/m5;Z)V
    .locals 16
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/u5;->c:Lcom/google/android/gms/measurement/internal/m5;

    if-nez v2, :cond_0

    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/u5;->d:Lcom/google/android/gms/measurement/internal/m5;

    :goto_0
    move-object v3, v2

    goto :goto_1

    :cond_0
    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/u5;->c:Lcom/google/android/gms/measurement/internal/m5;

    goto :goto_0

    :goto_1
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/m5;->b:Ljava/lang/String;

    if-nez v2, :cond_2

    if-eqz v0, :cond_1

    const-string v2, "Activity"

    invoke-virtual {v7, v0, v2}, Lcom/google/android/gms/measurement/internal/u5;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v10, v0

    goto :goto_3

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :goto_3
    new-instance v0, Lcom/google/android/gms/measurement/internal/m5;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/m5;->a:Ljava/lang/String;

    iget-wide v11, v1, Lcom/google/android/gms/measurement/internal/m5;->c:J

    iget-boolean v13, v1, Lcom/google/android/gms/measurement/internal/m5;->e:Z

    iget-wide v14, v1, Lcom/google/android/gms/measurement/internal/m5;->f:J

    move-object v8, v0

    invoke-direct/range {v8 .. v15}, Lcom/google/android/gms/measurement/internal/m5;-><init>(Ljava/lang/String;Ljava/lang/String;JZJ)V

    move-object v2, v0

    goto :goto_4

    :cond_2
    move-object v2, v1

    :goto_4
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/u5;->c:Lcom/google/android/gms/measurement/internal/m5;

    iput-object v0, v7, Lcom/google/android/gms/measurement/internal/u5;->d:Lcom/google/android/gms/measurement/internal/m5;

    iput-object v2, v7, Lcom/google/android/gms/measurement/internal/u5;->c:Lcom/google/android/gms/measurement/internal/m5;

    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->e()LT0/g;

    move-result-object v1

    invoke-interface {v1}, LT0/g;->c()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v8

    new-instance v9, Lcom/google/android/gms/measurement/internal/o5;

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/o5;-><init>(Lcom/google/android/gms/measurement/internal/u5;Lcom/google/android/gms/measurement/internal/m5;Lcom/google/android/gms/measurement/internal/m5;JZ)V

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/h3;->t(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final G(Lcom/google/android/gms/measurement/internal/m5;Lcom/google/android/gms/measurement/internal/m5;JZLandroid/os/Bundle;)V
    .locals 15
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_0

    iget-wide v8, v1, Lcom/google/android/gms/measurement/internal/m5;->c:J

    iget-wide v10, v2, Lcom/google/android/gms/measurement/internal/m5;->c:J

    cmp-long v8, v10, v8

    if-nez v8, :cond_0

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/m5;->b:Ljava/lang/String;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/m5;->b:Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/m5;->a:Ljava/lang/String;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/m5;->a:Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    move v8, v7

    goto :goto_0

    :cond_1
    move v8, v6

    :goto_0
    if-eqz p5, :cond_2

    iget-object v9, v0, Lcom/google/android/gms/measurement/internal/u5;->e:Lcom/google/android/gms/measurement/internal/m5;

    if-eqz v9, :cond_2

    move v6, v7

    :cond_2
    if-eqz v8, :cond_c

    if-eqz v5, :cond_3

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_1
    move-object v14, v8

    goto :goto_2

    :cond_3
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    goto :goto_1

    :goto_2
    invoke-static {v1, v14, v7}, Lcom/google/android/gms/measurement/internal/m7;->k0(Lcom/google/android/gms/measurement/internal/m5;Landroid/os/Bundle;Z)V

    if-eqz v2, :cond_6

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/m5;->a:Ljava/lang/String;

    if-eqz v5, :cond_4

    const-string v8, "_pn"

    invoke-virtual {v14, v8, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/m5;->b:Ljava/lang/String;

    if-eqz v5, :cond_5

    const-string v8, "_pc"

    invoke-virtual {v14, v8, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-wide v8, v2, Lcom/google/android/gms/measurement/internal/m5;->c:J

    const-string v2, "_pi"

    invoke-virtual {v14, v2, v8, v9}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_6
    const-wide/16 v8, 0x0

    if-eqz v6, :cond_7

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->z()Lcom/google/android/gms/measurement/internal/x6;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/x6;->f:Lcom/google/android/gms/measurement/internal/u6;

    iget-wide v10, v2, Lcom/google/android/gms/measurement/internal/u6;->b:J

    sub-long v10, v3, v10

    iput-wide v3, v2, Lcom/google/android/gms/measurement/internal/u6;->b:J

    cmp-long v2, v10, v8

    if-lez v2, :cond_7

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->C()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v2

    invoke-virtual {v2, v14, v10, v11}, Lcom/google/android/gms/measurement/internal/m7;->Z(Landroid/os/Bundle;J)V

    :cond_7
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/m;->N()Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "_mst"

    const-wide/16 v10, 0x1

    invoke-virtual {v14, v5, v10, v11}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_8
    iget-boolean v5, v1, Lcom/google/android/gms/measurement/internal/m5;->e:Z

    if-eq v7, v5, :cond_9

    const-string v10, "auto"

    goto :goto_3

    :cond_9
    const-string v10, "app"

    :goto_3
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->e()LT0/g;

    move-result-object v2

    invoke-interface {v2}, LT0/g;->a()J

    move-result-wide v11

    if-eqz v5, :cond_b

    move-wide/from16 p5, v11

    iget-wide v11, v1, Lcom/google/android/gms/measurement/internal/m5;->f:J

    cmp-long v2, v11, v8

    if-nez v2, :cond_a

    goto :goto_4

    :cond_a
    move-wide v12, v11

    goto :goto_5

    :cond_b
    move-wide/from16 p5, v11

    :goto_4
    move-wide/from16 v12, p5

    :goto_5
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    const-string v11, "_vs"

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->B()Lcom/google/android/gms/measurement/internal/b5;

    move-result-object v9

    invoke-virtual/range {v9 .. v14}, Lcom/google/android/gms/measurement/internal/b5;->u(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    :cond_c
    if-eqz v6, :cond_d

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/u5;->e:Lcom/google/android/gms/measurement/internal/m5;

    invoke-virtual {p0, v2, v7, v3, v4}, Lcom/google/android/gms/measurement/internal/u5;->o(Lcom/google/android/gms/measurement/internal/m5;ZJ)V

    :cond_d
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/u5;->e:Lcom/google/android/gms/measurement/internal/m5;

    iget-boolean v2, v1, Lcom/google/android/gms/measurement/internal/m5;->e:Z

    if-eqz v2, :cond_e

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/u5;->j:Lcom/google/android/gms/measurement/internal/m5;

    :cond_e
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->J()Lcom/google/android/gms/measurement/internal/f6;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/f6;->u(Lcom/google/android/gms/measurement/internal/m5;)V

    return-void
.end method

.method public final m()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final o(Lcom/google/android/gms/measurement/internal/m5;ZJ)V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->M()Lcom/google/android/gms/measurement/internal/E0;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->e()LT0/g;

    move-result-object v2

    invoke-interface {v2}, LT0/g;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/E0;->k(J)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-boolean v2, p1, Lcom/google/android/gms/measurement/internal/m5;->d:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->z()Lcom/google/android/gms/measurement/internal/x6;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/x6;->f:Lcom/google/android/gms/measurement/internal/u6;

    invoke-virtual {v0, v2, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/u6;->d(ZZJ)Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    iput-boolean v1, p1, Lcom/google/android/gms/measurement/internal/m5;->d:Z

    :cond_1
    return-void
.end method

.method public final p(Lcom/google/android/gms/internal/measurement/K0;)Lcom/google/android/gms/measurement/internal/m5;
    .locals 6
    .param p1    # Lcom/google/android/gms/internal/measurement/K0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p1, Lcom/google/android/gms/internal/measurement/K0;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/u5;->f:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/m5;

    if-nez v2, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/K0;->c:Ljava/lang/String;

    const-string v2, "Activity"

    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/measurement/internal/u5;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    new-instance v3, Lcom/google/android/gms/measurement/internal/m5;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->C()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/m7;->p0()J

    move-result-wide v4

    const/4 v2, 0x0

    invoke-direct {v3, v2, p1, v4, v5}, Lcom/google/android/gms/measurement/internal/m5;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v3

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/u5;->i:Lcom/google/android/gms/measurement/internal/m5;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/u5;->i:Lcom/google/android/gms/measurement/internal/m5;

    return-object p1

    :cond_1
    return-object v2
.end method

.method public final q(Z)Lcom/google/android/gms/measurement/internal/m5;
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/h2;->j()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/u5;->e:Lcom/google/android/gms/measurement/internal/m5;

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/u5;->e:Lcom/google/android/gms/measurement/internal/m5;

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/u5;->j:Lcom/google/android/gms/measurement/internal/m5;

    return-object p1
.end method

.method public final r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "Activity"

    return-object p1

    :cond_0
    const-string p2, "\\."

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    if-lez p2, :cond_1

    add-int/lit8 p2, p2, -0x1

    aget-object p1, p1, p2

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/m;->x(Ljava/lang/String;Z)I

    move-result v1

    if-le v0, v1, :cond_2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object p2

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/measurement/internal/m;->x(Ljava/lang/String;Z)I

    move-result p2

    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method public final s(Landroid/os/Bundle;J)V
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/u5;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/u5;->k:Z

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/B2;->t()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p1

    const-string p2, "Cannot log screen view event when the app is in the background."

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    const-string v1, "screen_name"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Lcom/google/android/gms/measurement/internal/m;->x(Ljava/lang/String;Z)I

    move-result v5

    if-le v4, v5, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/B2;->t()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p1

    const-string p2, "Invalid screen name length for screen view. Length"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :cond_2
    const-string v4, "screen_class"

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Lcom/google/android/gms/measurement/internal/m;->x(Ljava/lang/String;Z)I

    move-result v1

    if-le v5, v1, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/B2;->t()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p1

    const-string p2, "Invalid screen class length for screen view. Length"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :cond_4
    if-nez v4, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/u5;->g:Lcom/google/android/gms/internal/measurement/K0;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/K0;->c:Ljava/lang/String;

    const-string v4, "Activity"

    invoke-virtual {p0, v1, v4}, Lcom/google/android/gms/measurement/internal/u5;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v4, v1

    goto :goto_1

    :cond_5
    const-string v1, "Activity"

    goto :goto_0

    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/u5;->c:Lcom/google/android/gms/measurement/internal/m5;

    iget-boolean v5, p0, Lcom/google/android/gms/measurement/internal/u5;->h:Z

    if-eqz v5, :cond_7

    if-eqz v1, :cond_7

    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/u5;->h:Z

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/m5;->b:Ljava/lang/String;

    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/m5;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v2, :cond_7

    if-eqz v1, :cond_7

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/B2;->t()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p1

    const-string p2, "Ignoring call to log screen view event with duplicate parameters."

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    if-nez v3, :cond_8

    const-string v2, "null"

    goto :goto_2

    :cond_8
    move-object v2, v3

    :goto_2
    if-nez v4, :cond_9

    const-string v5, "null"

    goto :goto_3

    :cond_9
    move-object v5, v4

    :goto_3
    const-string v6, "Logging screen view with name, class"

    invoke-virtual {v1, v6, v2, v5}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/u5;->c:Lcom/google/android/gms/measurement/internal/m5;

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/u5;->d:Lcom/google/android/gms/measurement/internal/m5;

    goto :goto_4

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/u5;->c:Lcom/google/android/gms/measurement/internal/m5;

    :goto_4
    new-instance v10, Lcom/google/android/gms/measurement/internal/m5;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->C()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/m7;->p0()J

    move-result-wide v5

    const/4 v7, 0x1

    move-object v2, v10

    move-wide v8, p2

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/measurement/internal/m5;-><init>(Ljava/lang/String;Ljava/lang/String;JZJ)V

    iput-object v10, p0, Lcom/google/android/gms/measurement/internal/u5;->c:Lcom/google/android/gms/measurement/internal/m5;

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/u5;->d:Lcom/google/android/gms/measurement/internal/m5;

    iput-object v10, p0, Lcom/google/android/gms/measurement/internal/u5;->i:Lcom/google/android/gms/measurement/internal/m5;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->e()LT0/g;

    move-result-object p2

    invoke-interface {p2}, LT0/g;->c()J

    move-result-wide p2

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/measurement/internal/n5;

    move-object v5, v2

    move-object v6, p0

    move-object v7, p1

    move-object v8, v10

    move-object v9, v1

    move-wide v10, p2

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/measurement/internal/n5;-><init>(Lcom/google/android/gms/measurement/internal/u5;Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/m5;Lcom/google/android/gms/measurement/internal/m5;J)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/h3;->t(Ljava/lang/Runnable;)V

    return-void

    :goto_5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final t(Lcom/google/android/gms/internal/measurement/K0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1    # Lcom/google/android/gms/internal/measurement/K0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Size;
            max = 0x24L
            min = 0x1L
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Size;
            max = 0x24L
            min = 0x1L
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/m;->N()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/B2;->t()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p1

    const-string p2, "setCurrentScreen cannot be called while screen reporting is disabled."

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/u5;->c:Lcom/google/android/gms/measurement/internal/m5;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/B2;->t()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p1

    const-string p2, "setCurrentScreen cannot be called while no activity active"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/u5;->f:Ljava/util/Map;

    iget v3, p1, Lcom/google/android/gms/internal/measurement/K0;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/B2;->t()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p1

    const-string p2, "setCurrentScreen must be called with an activity in the activity lifecycle"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    return-void

    :cond_2
    if-nez p3, :cond_3

    iget-object p3, p1, Lcom/google/android/gms/internal/measurement/K0;->c:Ljava/lang/String;

    const-string v4, "Activity"

    invoke-virtual {p0, p3, v4}, Lcom/google/android/gms/measurement/internal/u5;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_3
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/m5;->b:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/m5;->a:Ljava/lang/String;

    invoke-static {v4, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v4, :cond_5

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/B2;->t()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p1

    const-string p2, "setCurrentScreen cannot be called with the same class and name"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_0
    const/4 v1, 0x0

    const/4 v4, 0x0

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v6

    invoke-virtual {v6, v4, v1}, Lcom/google/android/gms/measurement/internal/m;->x(Ljava/lang/String;Z)I

    move-result v6

    if-gt v5, v6, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/B2;->t()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "Invalid screen name length in setCurrentScreen. Length"

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_7
    :goto_1
    if-eqz p3, :cond_9

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_8

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v6

    invoke-virtual {v6, v4, v1}, Lcom/google/android/gms/measurement/internal/m;->x(Ljava/lang/String;Z)I

    move-result v1

    if-gt v5, v1, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/B2;->t()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "Invalid class name length in setCurrentScreen. Length"

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_9
    :goto_2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    if-nez p2, :cond_a

    const-string v4, "null"

    goto :goto_3

    :cond_a
    move-object v4, p2

    :goto_3
    const-string v5, "Setting current screen to name, class"

    invoke-virtual {v1, v5, v4, p3}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lcom/google/android/gms/measurement/internal/m5;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->C()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m7;->p0()J

    move-result-wide v4

    invoke-direct {v1, p2, p3, v4, v5}, Lcom/google/android/gms/measurement/internal/m5;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/K0;->c:Ljava/lang/String;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, v1, p2}, Lcom/google/android/gms/measurement/internal/u5;->F(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/m5;Z)V

    return-void
.end method

.method public final u()Lcom/google/android/gms/measurement/internal/m5;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/u5;->c:Lcom/google/android/gms/measurement/internal/m5;

    return-object v0
.end method

.method public final v(Lcom/google/android/gms/internal/measurement/K0;Landroid/os/Bundle;)V
    .locals 5
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m;->N()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const-string v0, "com.google.app_measurement.screen_service"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance v0, Lcom/google/android/gms/measurement/internal/m5;

    const-string v1, "name"

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "referrer_name"

    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {p2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/m5;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/u5;->f:Ljava/util/Map;

    iget p1, p1, Lcom/google/android/gms/internal/measurement/K0;->b:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public final w(Lcom/google/android/gms/internal/measurement/K0;)V
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/u5;->l:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/u5;->k:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/u5;->g:Lcom/google/android/gms/internal/measurement/K0;

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/u5;->g:Lcom/google/android/gms/internal/measurement/K0;

    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/u5;->h:Z

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/m;->N()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/u5;->i:Lcom/google/android/gms/measurement/internal/m5;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/measurement/internal/s5;

    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/s5;-><init>(Lcom/google/android/gms/measurement/internal/u5;)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/h3;->t(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/m;->N()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/u5;->i:Lcom/google/android/gms/measurement/internal/m5;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/u5;->c:Lcom/google/android/gms/measurement/internal/m5;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/measurement/internal/p5;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/p5;-><init>(Lcom/google/android/gms/measurement/internal/u5;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/h3;->t(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/u5;->p(Lcom/google/android/gms/internal/measurement/K0;)Lcom/google/android/gms/measurement/internal/m5;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/K0;->c:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v2}, Lcom/google/android/gms/measurement/internal/u5;->F(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/m5;Z)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p3;->M()Lcom/google/android/gms/measurement/internal/E0;

    move-result-object p1

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->e()LT0/g;

    move-result-object v1

    invoke-interface {v1}, LT0/g;->c()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/measurement/internal/d0;

    invoke-direct {v3, p1, v1, v2}, Lcom/google/android/gms/measurement/internal/d0;-><init>(Lcom/google/android/gms/measurement/internal/E0;J)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/h3;->t(Ljava/lang/Runnable;)V

    return-void

    :goto_1
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public final x(Lcom/google/android/gms/internal/measurement/K0;)V
    .locals 5
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/u5;->l:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/u5;->k:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/u5;->h:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->e()LT0/g;

    move-result-object v1

    invoke-interface {v1}, LT0/g;->c()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/m;->N()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/u5;->c:Lcom/google/android/gms/measurement/internal/m5;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/measurement/internal/q5;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/measurement/internal/q5;-><init>(Lcom/google/android/gms/measurement/internal/u5;J)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/h3;->t(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/u5;->p(Lcom/google/android/gms/internal/measurement/K0;)Lcom/google/android/gms/measurement/internal/m5;

    move-result-object p1

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/u5;->c:Lcom/google/android/gms/measurement/internal/m5;

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/u5;->d:Lcom/google/android/gms/measurement/internal/m5;

    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/u5;->c:Lcom/google/android/gms/measurement/internal/m5;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/measurement/internal/r5;

    invoke-direct {v3, p0, p1, v1, v2}, Lcom/google/android/gms/measurement/internal/r5;-><init>(Lcom/google/android/gms/measurement/internal/u5;Lcom/google/android/gms/measurement/internal/m5;J)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/h3;->t(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final y(Lcom/google/android/gms/internal/measurement/K0;Landroid/os/Bundle;)V
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m;->N()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/u5;->f:Ljava/util/Map;

    iget p1, p1, Lcom/google/android/gms/internal/measurement/K0;->b:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/m5;

    if-eqz p1, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "id"

    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/m5;->c:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "name"

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/m5;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "referrer_name"

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/m5;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "com.google.app_measurement.screen_service"

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final z(Lcom/google/android/gms/internal/measurement/K0;)V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/u5;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/u5;->g:Lcom/google/android/gms/internal/measurement/K0;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/u5;->g:Lcom/google/android/gms/internal/measurement/K0;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m;->N()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/u5;->f:Ljava/util/Map;

    iget p1, p1, Lcom/google/android/gms/internal/measurement/K0;->b:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
