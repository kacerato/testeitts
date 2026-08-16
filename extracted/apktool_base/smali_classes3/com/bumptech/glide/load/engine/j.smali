.class public Lcom/bumptech/glide/load/engine/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/l;
.implements LG/j$a;
.implements Lcom/bumptech/glide/load/engine/o$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/j$b;,
        Lcom/bumptech/glide/load/engine/j$a;,
        Lcom/bumptech/glide/load/engine/j$c;,
        Lcom/bumptech/glide/load/engine/j$d;
    }
.end annotation


# static fields
.field public static final i:Ljava/lang/String; = "Engine"

.field public static final j:I = 0x96

.field public static final k:Z


# instance fields
.field public final a:Lcom/bumptech/glide/load/engine/q;

.field public final b:Lcom/bumptech/glide/load/engine/n;

.field public final c:LG/j;

.field public final d:Lcom/bumptech/glide/load/engine/j$b;

.field public final e:Lcom/bumptech/glide/load/engine/w;

.field public final f:Lcom/bumptech/glide/load/engine/j$c;

.field public final g:Lcom/bumptech/glide/load/engine/j$a;

.field public final h:Lcom/bumptech/glide/load/engine/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Engine"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/bumptech/glide/load/engine/j;->k:Z

    return-void
.end method

.method public constructor <init>(LG/j;LG/a$a;LH/a;LH/a;LH/a;LH/a;Lcom/bumptech/glide/load/engine/q;Lcom/bumptech/glide/load/engine/n;Lcom/bumptech/glide/load/engine/a;Lcom/bumptech/glide/load/engine/j$b;Lcom/bumptech/glide/load/engine/j$a;Lcom/bumptech/glide/load/engine/w;Z)V
    .locals 11
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    move-object v7, p0

    move-object v8, p1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v8, v7, Lcom/bumptech/glide/load/engine/j;->c:LG/j;

    .line 4
    new-instance v9, Lcom/bumptech/glide/load/engine/j$c;

    move-object v0, p2

    invoke-direct {v9, p2}, Lcom/bumptech/glide/load/engine/j$c;-><init>(LG/a$a;)V

    iput-object v9, v7, Lcom/bumptech/glide/load/engine/j;->f:Lcom/bumptech/glide/load/engine/j$c;

    if-nez p9, :cond_0

    .line 5
    new-instance v0, Lcom/bumptech/glide/load/engine/a;

    move/from16 v1, p13

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/a;-><init>(Z)V

    goto :goto_0

    :cond_0
    move-object/from16 v0, p9

    .line 6
    :goto_0
    iput-object v0, v7, Lcom/bumptech/glide/load/engine/j;->h:Lcom/bumptech/glide/load/engine/a;

    .line 7
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/engine/a;->g(Lcom/bumptech/glide/load/engine/o$a;)V

    if-nez p8, :cond_1

    .line 8
    new-instance v0, Lcom/bumptech/glide/load/engine/n;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/n;-><init>()V

    goto :goto_1

    :cond_1
    move-object/from16 v0, p8

    .line 9
    :goto_1
    iput-object v0, v7, Lcom/bumptech/glide/load/engine/j;->b:Lcom/bumptech/glide/load/engine/n;

    if-nez p7, :cond_2

    .line 10
    new-instance v0, Lcom/bumptech/glide/load/engine/q;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/q;-><init>()V

    goto :goto_2

    :cond_2
    move-object/from16 v0, p7

    .line 11
    :goto_2
    iput-object v0, v7, Lcom/bumptech/glide/load/engine/j;->a:Lcom/bumptech/glide/load/engine/q;

    if-nez p10, :cond_3

    .line 12
    new-instance v10, Lcom/bumptech/glide/load/engine/j$b;

    move-object v0, v10

    move-object v1, p3

    move-object v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object v5, p0

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/load/engine/j$b;-><init>(LH/a;LH/a;LH/a;LH/a;Lcom/bumptech/glide/load/engine/l;Lcom/bumptech/glide/load/engine/o$a;)V

    goto :goto_3

    :cond_3
    move-object/from16 v10, p10

    .line 13
    :goto_3
    iput-object v10, v7, Lcom/bumptech/glide/load/engine/j;->d:Lcom/bumptech/glide/load/engine/j$b;

    if-nez p11, :cond_4

    .line 14
    new-instance v0, Lcom/bumptech/glide/load/engine/j$a;

    invoke-direct {v0, v9}, Lcom/bumptech/glide/load/engine/j$a;-><init>(Lcom/bumptech/glide/load/engine/g$e;)V

    goto :goto_4

    :cond_4
    move-object/from16 v0, p11

    .line 15
    :goto_4
    iput-object v0, v7, Lcom/bumptech/glide/load/engine/j;->g:Lcom/bumptech/glide/load/engine/j$a;

    if-nez p12, :cond_5

    .line 16
    new-instance v0, Lcom/bumptech/glide/load/engine/w;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/w;-><init>()V

    goto :goto_5

    :cond_5
    move-object/from16 v0, p12

    .line 17
    :goto_5
    iput-object v0, v7, Lcom/bumptech/glide/load/engine/j;->e:Lcom/bumptech/glide/load/engine/w;

    .line 18
    invoke-interface {p1, p0}, LG/j;->d(LG/j$a;)V

    return-void
.end method

.method public constructor <init>(LG/j;LG/a$a;LH/a;LH/a;LH/a;LH/a;Z)V
    .locals 14

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v13, p7

    .line 1
    invoke-direct/range {v0 .. v13}, Lcom/bumptech/glide/load/engine/j;-><init>(LG/j;LG/a$a;LH/a;LH/a;LH/a;LH/a;Lcom/bumptech/glide/load/engine/q;Lcom/bumptech/glide/load/engine/n;Lcom/bumptech/glide/load/engine/a;Lcom/bumptech/glide/load/engine/j$b;Lcom/bumptech/glide/load/engine/j$a;Lcom/bumptech/glide/load/engine/w;Z)V

    return-void
.end method

.method public static k(Ljava/lang/String;JLC/e;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " in "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, LY/g;->a(J)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, "ms, key: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Engine"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/bumptech/glide/load/engine/k;LC/e;Lcom/bumptech/glide/load/engine/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/k<",
            "*>;",
            "LC/e;",
            "Lcom/bumptech/glide/load/engine/o<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3}, Lcom/bumptech/glide/load/engine/o;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j;->h:Lcom/bumptech/glide/load/engine/a;

    invoke-virtual {v0, p2, p3}, Lcom/bumptech/glide/load/engine/a;->a(LC/e;Lcom/bumptech/glide/load/engine/o;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p3, p0, Lcom/bumptech/glide/load/engine/j;->a:Lcom/bumptech/glide/load/engine/q;

    invoke-virtual {p3, p2, p1}, Lcom/bumptech/glide/load/engine/q;->e(LC/e;Lcom/bumptech/glide/load/engine/k;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized b(Lcom/bumptech/glide/load/engine/k;LC/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/k<",
            "*>;",
            "LC/e;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j;->a:Lcom/bumptech/glide/load/engine/q;

    invoke-virtual {v0, p2, p1}, Lcom/bumptech/glide/load/engine/q;->e(LC/e;Lcom/bumptech/glide/load/engine/k;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public c(LC/e;Lcom/bumptech/glide/load/engine/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LC/e;",
            "Lcom/bumptech/glide/load/engine/o<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j;->h:Lcom/bumptech/glide/load/engine/a;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/a;->d(LC/e;)V

    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/o;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j;->c:LG/j;

    invoke-interface {v0, p1, p2}, LG/j;->f(LC/e;Lcom/bumptech/glide/load/engine/t;)Lcom/bumptech/glide/load/engine/t;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/j;->e:Lcom/bumptech/glide/load/engine/w;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/bumptech/glide/load/engine/w;->a(Lcom/bumptech/glide/load/engine/t;Z)V

    :goto_0
    return-void
.end method

.method public d(Lcom/bumptech/glide/load/engine/t;)V
    .locals 2
    .param p1    # Lcom/bumptech/glide/load/engine/t;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/t<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j;->e:Lcom/bumptech/glide/load/engine/w;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/bumptech/glide/load/engine/w;->a(Lcom/bumptech/glide/load/engine/t;Z)V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j;->f:Lcom/bumptech/glide/load/engine/j$c;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/j$c;->a()LG/a;

    move-result-object v0

    invoke-interface {v0}, LG/a;->clear()V

    return-void
.end method

.method public final f(LC/e;)Lcom/bumptech/glide/load/engine/o;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LC/e;",
            ")",
            "Lcom/bumptech/glide/load/engine/o<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j;->c:LG/j;

    invoke-interface {v0, p1}, LG/j;->g(LC/e;)Lcom/bumptech/glide/load/engine/t;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    instance-of v0, v2, Lcom/bumptech/glide/load/engine/o;

    if-eqz v0, :cond_1

    move-object p1, v2

    check-cast p1, Lcom/bumptech/glide/load/engine/o;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/bumptech/glide/load/engine/o;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v1, v0

    move-object v5, p1

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/bumptech/glide/load/engine/o;-><init>(Lcom/bumptech/glide/load/engine/t;ZZLC/e;Lcom/bumptech/glide/load/engine/o$a;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public g(Lcom/bumptech/glide/d;Ljava/lang/Object;LC/e;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/h;Lcom/bumptech/glide/load/engine/i;Ljava/util/Map;ZZLC/h;ZZZZLU/i;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/load/engine/j$d;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/d;",
            "Ljava/lang/Object;",
            "LC/e;",
            "II",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/h;",
            "Lcom/bumptech/glide/load/engine/i;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "LC/l<",
            "*>;>;ZZ",
            "LC/h;",
            "ZZZZ",
            "LU/i;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/bumptech/glide/load/engine/j$d;"
        }
    .end annotation

    move-object/from16 v15, p0

    sget-boolean v0, Lcom/bumptech/glide/load/engine/j;->k:Z

    if-eqz v0, :cond_0

    invoke-static {}, LY/g;->b()J

    move-result-wide v0

    :goto_0
    move-wide v13, v0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v0, v15, Lcom/bumptech/glide/load/engine/j;->b:Lcom/bumptech/glide/load/engine/n;

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p10

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p13

    invoke-virtual/range {v0 .. v8}, Lcom/bumptech/glide/load/engine/n;->a(Ljava/lang/Object;LC/e;IILjava/util/Map;Ljava/lang/Class;Ljava/lang/Class;LC/h;)Lcom/bumptech/glide/load/engine/m;

    move-result-object v0

    monitor-enter p0

    move/from16 v12, p14

    :try_start_0
    invoke-virtual {v15, v0, v12, v13, v14}, Lcom/bumptech/glide/load/engine/j;->j(Lcom/bumptech/glide/load/engine/m;ZJ)Lcom/bumptech/glide/load/engine/o;

    move-result-object v1

    if-nez v1, :cond_1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-wide/from16 v22, v13

    move/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, v0

    invoke-virtual/range {v1 .. v23}, Lcom/bumptech/glide/load/engine/j;->n(Lcom/bumptech/glide/d;Ljava/lang/Object;LC/e;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/h;Lcom/bumptech/glide/load/engine/i;Ljava/util/Map;ZZLC/h;ZZZZLU/i;Ljava/util/concurrent/Executor;Lcom/bumptech/glide/load/engine/m;J)Lcom/bumptech/glide/load/engine/j$d;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, LC/a;->MEMORY_CACHE:LC/a;

    move-object/from16 v2, p18

    invoke-interface {v2, v1, v0}, LU/i;->b(Lcom/bumptech/glide/load/engine/t;LC/a;)V

    const/4 v0, 0x0

    return-object v0

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final h(LC/e;)Lcom/bumptech/glide/load/engine/o;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LC/e;",
            ")",
            "Lcom/bumptech/glide/load/engine/o<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j;->h:Lcom/bumptech/glide/load/engine/a;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/a;->e(LC/e;)Lcom/bumptech/glide/load/engine/o;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/o;->b()V

    :cond_0
    return-object p1
.end method

.method public final i(LC/e;)Lcom/bumptech/glide/load/engine/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LC/e;",
            ")",
            "Lcom/bumptech/glide/load/engine/o<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/j;->f(LC/e;)Lcom/bumptech/glide/load/engine/o;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/o;->b()V

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/j;->h:Lcom/bumptech/glide/load/engine/a;

    invoke-virtual {v1, p1, v0}, Lcom/bumptech/glide/load/engine/a;->a(LC/e;Lcom/bumptech/glide/load/engine/o;)V

    :cond_0
    return-object v0
.end method

.method public final j(Lcom/bumptech/glide/load/engine/m;ZJ)Lcom/bumptech/glide/load/engine/o;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/m;",
            "ZJ)",
            "Lcom/bumptech/glide/load/engine/o<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/j;->h(LC/e;)Lcom/bumptech/glide/load/engine/o;

    move-result-object p2

    if-eqz p2, :cond_2

    sget-boolean v0, Lcom/bumptech/glide/load/engine/j;->k:Z

    if-eqz v0, :cond_1

    const-string v0, "Loaded resource from active resources"

    invoke-static {v0, p3, p4, p1}, Lcom/bumptech/glide/load/engine/j;->k(Ljava/lang/String;JLC/e;)V

    :cond_1
    return-object p2

    :cond_2
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/j;->i(LC/e;)Lcom/bumptech/glide/load/engine/o;

    move-result-object p2

    if-eqz p2, :cond_4

    sget-boolean v0, Lcom/bumptech/glide/load/engine/j;->k:Z

    if-eqz v0, :cond_3

    const-string v0, "Loaded resource from cache"

    invoke-static {v0, p3, p4, p1}, Lcom/bumptech/glide/load/engine/j;->k(Ljava/lang/String;JLC/e;)V

    :cond_3
    return-object p2

    :cond_4
    return-object v0
.end method

.method public l(Lcom/bumptech/glide/load/engine/t;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/t<",
            "*>;)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/bumptech/glide/load/engine/o;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/bumptech/glide/load/engine/o;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/o;->e()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot release anything but an EngineResource"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j;->d:Lcom/bumptech/glide/load/engine/j$b;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/j$b;->b()V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j;->f:Lcom/bumptech/glide/load/engine/j$c;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/j$c;->b()V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j;->h:Lcom/bumptech/glide/load/engine/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/a;->h()V

    return-void
.end method

.method public final n(Lcom/bumptech/glide/d;Ljava/lang/Object;LC/e;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/h;Lcom/bumptech/glide/load/engine/i;Ljava/util/Map;ZZLC/h;ZZZZLU/i;Ljava/util/concurrent/Executor;Lcom/bumptech/glide/load/engine/m;J)Lcom/bumptech/glide/load/engine/j$d;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/d;",
            "Ljava/lang/Object;",
            "LC/e;",
            "II",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/h;",
            "Lcom/bumptech/glide/load/engine/i;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "LC/l<",
            "*>;>;ZZ",
            "LC/h;",
            "ZZZZ",
            "LU/i;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/bumptech/glide/load/engine/m;",
            "J)",
            "Lcom/bumptech/glide/load/engine/j$d;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p18

    move-object/from16 v2, p19

    move-object/from16 v15, p20

    move-wide/from16 v13, p21

    iget-object v3, v0, Lcom/bumptech/glide/load/engine/j;->a:Lcom/bumptech/glide/load/engine/q;

    move/from16 v12, p17

    invoke-virtual {v3, v15, v12}, Lcom/bumptech/glide/load/engine/q;->a(LC/e;Z)Lcom/bumptech/glide/load/engine/k;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, v1, v2}, Lcom/bumptech/glide/load/engine/k;->e(LU/i;Ljava/util/concurrent/Executor;)V

    sget-boolean v2, Lcom/bumptech/glide/load/engine/j;->k:Z

    if-eqz v2, :cond_0

    const-string v2, "Added to existing load"

    invoke-static {v2, v13, v14, v15}, Lcom/bumptech/glide/load/engine/j;->k(Ljava/lang/String;JLC/e;)V

    :cond_0
    new-instance v2, Lcom/bumptech/glide/load/engine/j$d;

    invoke-direct {v2, v0, v1, v3}, Lcom/bumptech/glide/load/engine/j$d;-><init>(Lcom/bumptech/glide/load/engine/j;LU/i;Lcom/bumptech/glide/load/engine/k;)V

    return-object v2

    :cond_1
    iget-object v3, v0, Lcom/bumptech/glide/load/engine/j;->d:Lcom/bumptech/glide/load/engine/j$b;

    move-object/from16 v4, p20

    move/from16 v5, p14

    move/from16 v6, p15

    move/from16 v7, p16

    move/from16 v8, p17

    invoke-virtual/range {v3 .. v8}, Lcom/bumptech/glide/load/engine/j$b;->a(LC/e;ZZZZ)Lcom/bumptech/glide/load/engine/k;

    move-result-object v11

    move-object/from16 v19, v11

    iget-object v3, v0, Lcom/bumptech/glide/load/engine/j;->g:Lcom/bumptech/glide/load/engine/j$a;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p20

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object v1, v11

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object v2, v15

    move/from16 v15, p11

    move/from16 v16, p12

    move/from16 v17, p17

    move-object/from16 v18, p13

    invoke-virtual/range {v3 .. v19}, Lcom/bumptech/glide/load/engine/j$a;->a(Lcom/bumptech/glide/d;Ljava/lang/Object;Lcom/bumptech/glide/load/engine/m;LC/e;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/h;Lcom/bumptech/glide/load/engine/i;Ljava/util/Map;ZZZLC/h;Lcom/bumptech/glide/load/engine/g$b;)Lcom/bumptech/glide/load/engine/g;

    move-result-object v3

    iget-object v4, v0, Lcom/bumptech/glide/load/engine/j;->a:Lcom/bumptech/glide/load/engine/q;

    invoke-virtual {v4, v2, v1}, Lcom/bumptech/glide/load/engine/q;->d(LC/e;Lcom/bumptech/glide/load/engine/k;)V

    move-object v5, v1

    move-object v4, v2

    move-object/from16 v1, p18

    move-object/from16 v2, p19

    invoke-virtual {v5, v1, v2}, Lcom/bumptech/glide/load/engine/k;->e(LU/i;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v5, v3}, Lcom/bumptech/glide/load/engine/k;->t(Lcom/bumptech/glide/load/engine/g;)V

    sget-boolean v2, Lcom/bumptech/glide/load/engine/j;->k:Z

    if-eqz v2, :cond_2

    const-string v2, "Started new load"

    move-wide/from16 v6, p21

    invoke-static {v2, v6, v7, v4}, Lcom/bumptech/glide/load/engine/j;->k(Ljava/lang/String;JLC/e;)V

    :cond_2
    new-instance v2, Lcom/bumptech/glide/load/engine/j$d;

    invoke-direct {v2, v0, v1, v5}, Lcom/bumptech/glide/load/engine/j$d;-><init>(Lcom/bumptech/glide/load/engine/j;LU/i;Lcom/bumptech/glide/load/engine/k;)V

    return-object v2
.end method
