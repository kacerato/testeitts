.class public final Lcom/android/tools/r8/synthesis/J;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final a:I

.field public final b:Lcom/android/tools/r8/synthesis/S;

.field public final c:Lcom/android/tools/r8/synthesis/d;

.field public final d:Lcom/android/tools/r8/synthesis/F;

.field public final e:Lcom/android/tools/r8/synthesis/A;

.field public final f:Lcom/android/tools/r8/synthesis/E;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/synthesis/b;)V
    .locals 3

    iget v0, p1, Lcom/android/tools/r8/synthesis/b;->b:I

    iget-object v1, p1, Lcom/android/tools/r8/synthesis/b;->c:Lcom/android/tools/r8/synthesis/d;

    iget-object p1, p1, Lcom/android/tools/r8/synthesis/b;->e:Lcom/android/tools/r8/synthesis/E;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/android/tools/r8/synthesis/F;

    invoke-direct {v2}, Lcom/android/tools/r8/synthesis/F;-><init>()V

    iput-object v2, p0, Lcom/android/tools/r8/synthesis/J;->d:Lcom/android/tools/r8/synthesis/F;

    iput v0, p0, Lcom/android/tools/r8/synthesis/J;->a:I

    iput-object v1, p0, Lcom/android/tools/r8/synthesis/J;->c:Lcom/android/tools/r8/synthesis/d;

    iget-object v0, v1, Lcom/android/tools/r8/synthesis/d;->a:Lcom/android/tools/r8/synthesis/S;

    iput-object v0, p0, Lcom/android/tools/r8/synthesis/J;->b:Lcom/android/tools/r8/synthesis/S;

    invoke-interface {p1}, Lcom/android/tools/r8/synthesis/E;->a()Lcom/android/tools/r8/synthesis/A;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/synthesis/J;->e:Lcom/android/tools/r8/synthesis/A;

    iput-object p1, p0, Lcom/android/tools/r8/synthesis/J;->f:Lcom/android/tools/r8/synthesis/E;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/synthesis/a0;Lcom/android/tools/r8/synthesis/a0;)I
    .locals 0

    .line 332
    invoke-virtual {p0}, Lcom/android/tools/r8/synthesis/a0;->b()Lcom/android/tools/r8/graph/J2;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/tools/r8/synthesis/a0;->b()Lcom/android/tools/r8/graph/J2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/J2;->b(Lcom/android/tools/r8/graph/J2;)I

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 137
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/naming/r0;->b(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/synthesis/l;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 419
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/android/tools/r8/synthesis/S;->a(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/internal/Gf;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/synthesis/l;)Lcom/android/tools/r8/graph/M2;
    .locals 1

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Gf;->b(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 140
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 141
    sget-boolean v0, Lcom/android/tools/r8/synthesis/S;->a0:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/synthesis/S$b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 142
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ;->E0:Z

    if-eqz v0, :cond_2

    .line 143
    iget-object p3, p3, Lcom/android/tools/r8/synthesis/l;->c:Lcom/android/tools/r8/graph/M2;

    goto :goto_1

    .line 144
    :cond_2
    iget-object p3, p3, Lcom/android/tools/r8/synthesis/l;->b:Lcom/android/tools/r8/graph/M2;

    .line 145
    :goto_1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    .line 146
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/M2;->w0()Ljava/lang/String;

    move-result-object p3

    const-string v0, "$$InternalSynthetic"

    invoke-static {v0, p0, p3, p1}, Lcom/android/tools/r8/synthesis/S;->a(Ljava/lang/String;Lcom/android/tools/r8/synthesis/S$b;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/I0;)Lcom/android/tools/r8/graph/e0;
    .locals 8

    .line 481
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-virtual {p5}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p0}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    .line 482
    new-instance v6, Lcom/android/tools/r8/synthesis/i0;

    invoke-direct {v6, p4}, Lcom/android/tools/r8/synthesis/i0;-><init>(Ljava/util/function/Consumer;)V

    .line 483
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v7

    move-object v3, p5

    move-object v4, p2

    move-object v5, p3

    .line 484
    invoke-static/range {v2 .. v7}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/j1;

    move-result-object p0

    .line 485
    new-instance p1, Lcom/android/tools/r8/graph/e0;

    invoke-direct {p1, p5, p0}, Lcom/android/tools/r8/graph/e0;-><init>(Lcom/android/tools/r8/graph/I0;Lcom/android/tools/r8/graph/j1;)V

    return-object p1
.end method

.method public static a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/j1;
    .locals 4

    .line 486
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object v0

    .line 487
    monitor-enter v0

    .line 488
    :try_start_0
    iget-object v1, v0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/graph/O4;->a(Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 489
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 490
    :cond_0
    new-instance v1, Lcom/android/tools/r8/synthesis/N;

    .line 491
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-direct {v1, p3, v2, p2}, Lcom/android/tools/r8/synthesis/N;-><init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/S$b;)V

    .line 492
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/android/tools/r8/synthesis/N;->a(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/synthesis/N;

    .line 493
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object p0

    .line 494
    iput-object p0, v1, Lcom/android/tools/r8/synthesis/N;->e:Lcom/android/tools/r8/graph/I2;

    .line 495
    invoke-interface {p4, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 496
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->S0()Lcom/android/tools/r8/graph/V;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/tools/r8/synthesis/N;->a(Lcom/android/tools/r8/graph/V;)Lcom/android/tools/r8/graph/j1;

    move-result-object p0

    .line 497
    sget-object p2, Lcom/android/tools/r8/graph/j1;->v:Lcom/android/tools/r8/graph/j1;

    iput-object p2, v0, Lcom/android/tools/r8/graph/N4;->c:Lcom/android/tools/r8/graph/j1;

    .line 498
    iget-object p2, v0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    invoke-virtual {p2, p0}, Lcom/android/tools/r8/graph/O4;->b(Lcom/android/tools/r8/graph/j1;)V

    .line 499
    invoke-static {p1, p0}, Lcom/android/tools/r8/graph/H0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    invoke-interface {p5, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 500
    monitor-exit v0

    return-object p0

    .line 501
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->i:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/O5;Lcom/android/tools/r8/synthesis/F;Lcom/android/tools/r8/synthesis/A;Lcom/android/tools/r8/synthesis/d;ILcom/android/tools/r8/synthesis/E;)Lcom/android/tools/r8/synthesis/b;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 16
    iget-object v2, v0, Lcom/android/tools/r8/graph/O5;->a:Lcom/android/tools/r8/graph/x0;

    .line 17
    iget-object v3, v0, Lcom/android/tools/r8/graph/O5;->d:Ljava/util/Set;

    .line 18
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    new-instance v4, Lcom/android/tools/r8/synthesis/c;

    move-object/from16 v5, p3

    invoke-direct {v4, v5}, Lcom/android/tools/r8/synthesis/c;-><init>(Lcom/android/tools/r8/synthesis/d;)V

    .line 20
    iget-object v5, v1, Lcom/android/tools/r8/synthesis/F;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 21
    sget v1, Lcom/android/tools/r8/internal/hC;->c:I

    .line 22
    sget-object v1, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    :goto_0
    move-object v11, v1

    move-object v9, v2

    goto/16 :goto_5

    .line 23
    :cond_0
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/x0;->c()Lcom/android/tools/r8/graph/w0;

    move-result-object v2

    .line 24
    sget v5, Lcom/android/tools/r8/internal/hC;->c:I

    const/4 v5, 0x4

    .line 25
    new-array v5, v5, [Ljava/lang/Object;

    .line 26
    iget-object v1, v1, Lcom/android/tools/r8/synthesis/F;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v7, v6

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/synthesis/t;

    .line 27
    invoke-virtual {v8}, Lcom/android/tools/r8/synthesis/t;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 28
    invoke-virtual {v8}, Lcom/android/tools/r8/synthesis/t;->e()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 29
    invoke-virtual {v8}, Lcom/android/tools/r8/synthesis/t;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    .line 30
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v10, v7, 0x1

    .line 31
    array-length v11, v5

    if-ge v11, v10, :cond_2

    .line 32
    array-length v11, v5

    invoke-static {v11, v10}, Lcom/android/tools/r8/internal/WB;->a(II)I

    move-result v11

    invoke-static {v5, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    .line 33
    :cond_2
    aput-object v9, v5, v7

    .line 34
    iget-object v7, v8, Lcom/android/tools/r8/synthesis/t;->a:Lcom/android/tools/r8/synthesis/S$b;

    .line 35
    invoke-virtual {v7}, Lcom/android/tools/r8/synthesis/S$b;->e()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 36
    invoke-virtual {v8}, Lcom/android/tools/r8/synthesis/t;->c()Lcom/android/tools/r8/synthesis/Z;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/tools/r8/synthesis/Z;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v7

    .line 37
    invoke-virtual {v2, v7}, Lcom/android/tools/r8/graph/w0;->a(Lcom/android/tools/r8/graph/H2;)V

    goto :goto_2

    .line 38
    :cond_3
    invoke-virtual {v8}, Lcom/android/tools/r8/synthesis/t;->c()Lcom/android/tools/r8/synthesis/Z;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/tools/r8/synthesis/Z;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v7

    monitor-enter v2

    .line 39
    :try_start_0
    iget-object v9, v2, Lcom/android/tools/r8/graph/w0;->a:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    move v7, v10

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 41
    monitor-exit v2

    throw v0

    .line 42
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    instance-of v9, v2, Lcom/android/tools/r8/graph/g3$a;

    if-eqz v9, :cond_7

    .line 44
    sget-boolean v9, Lcom/android/tools/r8/synthesis/J;->g:Z

    if-nez v9, :cond_6

    .line 45
    instance-of v9, v8, Lcom/android/tools/r8/synthesis/q;

    if-eqz v9, :cond_5

    goto :goto_3

    .line 46
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 47
    :cond_6
    :goto_3
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/w0;->a()Lcom/android/tools/r8/graph/g3$a;

    move-result-object v9

    invoke-virtual {v8}, Lcom/android/tools/r8/synthesis/t;->a()Lcom/android/tools/r8/synthesis/s;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/synthesis/q;

    .line 48
    iget-object v10, v10, Lcom/android/tools/r8/synthesis/n;->d:Lcom/android/tools/r8/graph/E0;

    .line 49
    check-cast v10, Lcom/android/tools/r8/graph/I0;

    .line 50
    iget-object v9, v9, Lcom/android/tools/r8/graph/g3$a;->j:Ljava/util/ArrayList;

    .line 51
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_7
    :goto_4
    invoke-virtual {v4, v8}, Lcom/android/tools/r8/synthesis/c;->a(Lcom/android/tools/r8/synthesis/t;)V

    goto/16 :goto_1

    :cond_8
    move-object/from16 v8, p2

    .line 53
    invoke-virtual {v4, v8}, Lcom/android/tools/r8/synthesis/c;->a(Lcom/android/tools/r8/synthesis/A;)V

    .line 54
    invoke-static {v7, v5}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v1

    .line 55
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/w0;->b()Lcom/android/tools/r8/graph/x0;

    move-result-object v2

    goto/16 :goto_0

    .line 56
    :goto_5
    new-instance v1, Lcom/android/tools/r8/synthesis/b;

    .line 57
    invoke-virtual {v4}, Lcom/android/tools/r8/synthesis/c;->a()Lcom/android/tools/r8/synthesis/d;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    iget-object v3, v0, Lcom/android/tools/r8/graph/O5;->d:Ljava/util/Set;

    .line 59
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    goto/16 :goto_a

    .line 60
    :cond_9
    iget-object v13, v2, Lcom/android/tools/r8/synthesis/d;->a:Lcom/android/tools/r8/synthesis/S;

    .line 61
    new-instance v4, Lcom/android/tools/r8/synthesis/d;

    .line 62
    sget-object v16, Lcom/android/tools/r8/internal/bf0;->i:Lcom/android/tools/r8/internal/bf0;

    sget v5, Lcom/android/tools/r8/internal/QC;->c:I

    .line 63
    sget-object v17, Lcom/android/tools/r8/internal/ef0;->j:Lcom/android/tools/r8/internal/ef0;

    move-object v12, v4

    move-object/from16 v14, v16

    move-object/from16 v15, v16

    .line 64
    invoke-direct/range {v12 .. v17}, Lcom/android/tools/r8/synthesis/d;-><init>(Lcom/android/tools/r8/synthesis/S;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/QC;)V

    .line 65
    new-instance v5, Lcom/android/tools/r8/synthesis/c;

    invoke-direct {v5, v4}, Lcom/android/tools/r8/synthesis/c;-><init>(Lcom/android/tools/r8/synthesis/d;)V

    .line 66
    iget-object v4, v2, Lcom/android/tools/r8/synthesis/d;->b:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/nC;->q()Lcom/android/tools/r8/internal/XB;

    move-result-object v4

    invoke-static {v4}, Lcom/android/tools/r8/internal/qK;->b(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/synthesis/P;

    .line 67
    iget-object v10, v7, Lcom/android/tools/r8/synthesis/P;->d:Lcom/android/tools/r8/graph/A2;

    .line 68
    iget-object v10, v10, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 69
    invoke-interface {v3, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    move v6, v8

    goto :goto_6

    .line 70
    :cond_a
    invoke-virtual {v5, v7}, Lcom/android/tools/r8/synthesis/c;->a(Lcom/android/tools/r8/synthesis/P;)Lcom/android/tools/r8/synthesis/c;

    goto :goto_6

    .line 71
    :cond_b
    iget-object v4, v2, Lcom/android/tools/r8/synthesis/d;->c:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/nC;->q()Lcom/android/tools/r8/internal/XB;

    move-result-object v4

    invoke-static {v4}, Lcom/android/tools/r8/internal/qK;->b(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/synthesis/Y;

    .line 72
    iget-object v10, v7, Lcom/android/tools/r8/synthesis/o;->d:Lcom/android/tools/r8/graph/M2;

    .line 73
    invoke-interface {v3, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    move v6, v8

    goto :goto_7

    .line 74
    :cond_c
    invoke-virtual {v5, v7}, Lcom/android/tools/r8/synthesis/c;->a(Lcom/android/tools/r8/synthesis/Y;)Lcom/android/tools/r8/synthesis/c;

    goto :goto_7

    .line 75
    :cond_d
    iget-object v4, v2, Lcom/android/tools/r8/synthesis/d;->e:Lcom/android/tools/r8/internal/QC;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/XB;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/M2;

    .line 76
    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    move v6, v8

    goto :goto_8

    .line 77
    :cond_e
    iget-object v10, v5, Lcom/android/tools/r8/synthesis/c;->d:Lcom/android/tools/r8/internal/IC;

    if-nez v10, :cond_f

    .line 78
    sget v10, Lcom/android/tools/r8/internal/QC;->c:I

    .line 79
    new-instance v10, Lcom/android/tools/r8/internal/IC;

    invoke-direct {v10}, Lcom/android/tools/r8/internal/IC;-><init>()V

    .line 80
    iput-object v10, v5, Lcom/android/tools/r8/synthesis/c;->d:Lcom/android/tools/r8/internal/IC;

    .line 81
    :cond_f
    iget-object v10, v5, Lcom/android/tools/r8/synthesis/c;->d:Lcom/android/tools/r8/internal/IC;

    .line 82
    invoke-virtual {v10, v7}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    goto :goto_8

    .line 83
    :cond_10
    sget-boolean v3, Lcom/android/tools/r8/synthesis/d;->f:Z

    if-nez v3, :cond_12

    iget-object v3, v2, Lcom/android/tools/r8/synthesis/d;->d:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nC;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_12

    .line 84
    iget-object v3, v0, Lcom/android/tools/r8/graph/O5;->d:Ljava/util/Set;

    .line 85
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    .line 86
    iget-object v0, v0, Lcom/android/tools/r8/graph/O5;->e:Ljava/util/Set;

    .line 87
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v3, v0, :cond_11

    goto :goto_9

    .line 88
    :cond_11
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_12
    :goto_9
    if-eqz v6, :cond_13

    .line 89
    invoke-virtual {v5}, Lcom/android/tools/r8/synthesis/c;->a()Lcom/android/tools/r8/synthesis/d;

    move-result-object v0

    move-object v10, v0

    goto :goto_b

    :cond_13
    :goto_a
    move-object v10, v2

    :goto_b
    move-object v7, v1

    move/from16 v8, p4

    move-object/from16 v12, p5

    .line 90
    invoke-direct/range {v7 .. v12}, Lcom/android/tools/r8/synthesis/b;-><init>(ILcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/synthesis/d;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/synthesis/E;)V

    return-object v1
.end method

.method public static a(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/synthesis/E;)Lcom/android/tools/r8/synthesis/b;
    .locals 13

    .line 124
    new-instance v6, Lcom/android/tools/r8/synthesis/b;

    .line 125
    iget-object v0, p0, Lcom/android/tools/r8/graph/x0;->e:Lcom/android/tools/r8/graph/u1;

    .line 126
    iget-object v8, v0, Lcom/android/tools/r8/graph/u1;->r6:Lcom/android/tools/r8/synthesis/S;

    .line 127
    new-instance v3, Lcom/android/tools/r8/synthesis/d;

    .line 128
    sget-object v11, Lcom/android/tools/r8/internal/bf0;->i:Lcom/android/tools/r8/internal/bf0;

    sget v0, Lcom/android/tools/r8/internal/QC;->c:I

    .line 129
    sget-object v12, Lcom/android/tools/r8/internal/ef0;->j:Lcom/android/tools/r8/internal/ef0;

    move-object v7, v3

    move-object v9, v11

    move-object v10, v11

    .line 130
    invoke-direct/range {v7 .. v12}, Lcom/android/tools/r8/synthesis/d;-><init>(Lcom/android/tools/r8/synthesis/S;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/QC;)V

    .line 131
    sget-object v4, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    const/4 v1, 0x1

    move-object v0, v6

    move-object v2, p0

    move-object v5, p1

    .line 132
    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/synthesis/b;-><init>(ILcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/synthesis/d;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/synthesis/E;)V

    return-object v6
.end method

.method public static a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/synthesis/L;Ljava/util/Map;Lcom/android/tools/r8/synthesis/c;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/synthesis/l;
    .locals 1

    .line 165
    sget-boolean p5, Lcom/android/tools/r8/synthesis/J;->g:Z

    if-nez p5, :cond_1

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p5

    iget-boolean p5, p5, Lcom/android/tools/r8/internal/nJ;->E0:Z

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 166
    :cond_1
    :goto_0
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p5

    .line 167
    iget-object v0, p1, Lcom/android/tools/r8/synthesis/L;->b:Lcom/android/tools/r8/synthesis/l;

    .line 168
    iget-object v0, v0, Lcom/android/tools/r8/synthesis/l;->b:Lcom/android/tools/r8/graph/M2;

    .line 169
    invoke-virtual {p5, v0}, Lcom/android/tools/r8/graph/h;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p5

    .line 170
    invoke-static {p5}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p5

    if-nez p5, :cond_2

    .line 171
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p2

    iget-object p2, p2, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 172
    new-instance p4, Lcom/android/tools/r8/utils/StringDiagnostic;

    const-string p5, "Attempt at compiling intermediate artifact without its context"

    .line 173
    iget-object v0, p0, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    .line 174
    invoke-direct {p4, p5, v0}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    .line 175
    invoke-virtual {p2, p4}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    .line 176
    iget-object p2, p1, Lcom/android/tools/r8/synthesis/L;->b:Lcom/android/tools/r8/synthesis/l;

    goto :goto_1

    .line 177
    :cond_2
    invoke-static {p2, p3, p4, p5}, Lcom/android/tools/r8/synthesis/J;->a(Ljava/util/Map;Lcom/android/tools/r8/synthesis/c;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/synthesis/l;

    move-result-object p2

    if-eqz p2, :cond_3

    goto :goto_1

    .line 178
    :cond_3
    iget-object p2, p1, Lcom/android/tools/r8/synthesis/L;->b:Lcom/android/tools/r8/synthesis/l;

    .line 179
    :goto_1
    invoke-static {p0, p1, p2, p3}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/synthesis/L;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/synthesis/c;)V

    return-object p2
.end method

.method public static a(Ljava/util/Map;Lcom/android/tools/r8/synthesis/c;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/synthesis/l;
    .locals 8

    .line 157
    invoke-static {p3, p2}, Lcom/android/tools/r8/synthesis/L;->b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/synthesis/L;

    move-result-object v2

    .line 158
    sget-boolean v0, Lcom/android/tools/r8/synthesis/L;->d:Z

    if-nez v0, :cond_1

    .line 159
    iget-object v0, v2, Lcom/android/tools/r8/synthesis/L;->b:Lcom/android/tools/r8/synthesis/l;

    if-nez v0, :cond_1

    .line 160
    sget-object v0, Lcom/android/tools/r8/synthesis/L;->c:Lcom/android/tools/r8/synthesis/L;

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 161
    :cond_1
    :goto_0
    iget-object v0, v2, Lcom/android/tools/r8/synthesis/L;->b:Lcom/android/tools/r8/synthesis/l;

    if-eqz v0, :cond_2

    .line 162
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    new-instance v7, Lcom/android/tools/r8/synthesis/H0;

    move-object v0, v7

    move-object v1, p3

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/synthesis/H0;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/synthesis/L;Ljava/util/Map;Lcom/android/tools/r8/synthesis/c;Lcom/android/tools/r8/graph/y;)V

    .line 163
    invoke-interface {p0, v6, v7}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/synthesis/l;

    return-object p0

    .line 164
    :cond_2
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/synthesis/l;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/E0;Ljava/lang/String;Lcom/android/tools/r8/graph/y;)V
    .locals 3

    .line 451
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v0

    if-nez v0, :cond_1

    .line 452
    instance-of v0, p0, Lcom/android/tools/r8/graph/I0;

    if-eqz v0, :cond_0

    .line 453
    const-string v0, "classpath"

    goto :goto_0

    :cond_0
    const-string v0, "library"

    goto :goto_0

    .line 454
    :cond_1
    const-string v0, "program"

    .line 455
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p2

    .line 456
    iget-object p2, p2, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 457
    iget-object p0, p0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot ensure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " as a synthetic "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " class, because it is already a "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " class."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 458
    invoke-virtual {p2, p0}, Lcom/android/tools/r8/internal/Ef0;->b(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/synthesis/L;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/synthesis/c;)V
    .locals 1

    .line 97
    iget-object v0, p1, Lcom/android/tools/r8/synthesis/L;->a:Lcom/android/tools/r8/synthesis/S$b;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/android/tools/r8/synthesis/S$b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    new-instance v0, Lcom/android/tools/r8/synthesis/m0;

    invoke-direct {v0, p3, p1, p2}, Lcom/android/tools/r8/synthesis/m0;-><init>(Lcom/android/tools/r8/synthesis/c;Lcom/android/tools/r8/synthesis/L;Lcom/android/tools/r8/synthesis/l;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/H2;->l(Ljava/util/function/Consumer;)V

    return-void

    .line 100
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/synthesis/L;->a:Lcom/android/tools/r8/synthesis/S$b;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/tools/r8/synthesis/S$b;->g()Z

    move-result v0

    if-nez v0, :cond_5

    .line 101
    iget-object p1, p1, Lcom/android/tools/r8/synthesis/L;->a:Lcom/android/tools/r8/synthesis/S$b;

    .line 102
    sget-boolean v0, Lcom/android/tools/r8/synthesis/t;->c:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_2
    :goto_0
    if-nez v0, :cond_4

    if-eqz p2, :cond_3

    goto :goto_1

    .line 103
    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 104
    :cond_4
    :goto_1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    new-instance v0, Lcom/android/tools/r8/synthesis/Y;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    invoke-direct {v0, p1, p2, p0}, Lcom/android/tools/r8/synthesis/Y;-><init>(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/graph/M2;)V

    .line 106
    invoke-virtual {p3, v0}, Lcom/android/tools/r8/synthesis/c;->a(Lcom/android/tools/r8/synthesis/Y;)Lcom/android/tools/r8/synthesis/c;

    :cond_5
    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/M2;Ljava/util/Set;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/P;)V
    .locals 0

    .line 6
    iget-object p3, p3, Lcom/android/tools/r8/synthesis/a0;->b:Lcom/android/tools/r8/synthesis/l;

    .line 7
    iget-object p3, p3, Lcom/android/tools/r8/synthesis/l;->b:Lcom/android/tools/r8/graph/M2;

    if-ne p3, p0, :cond_0

    .line 8
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/M2;Ljava/util/Set;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/Y;)V
    .locals 0

    .line 9
    iget-object p3, p3, Lcom/android/tools/r8/synthesis/a0;->b:Lcom/android/tools/r8/synthesis/l;

    .line 10
    iget-object p3, p3, Lcom/android/tools/r8/synthesis/l;->b:Lcom/android/tools/r8/graph/M2;

    if-ne p3, p0, :cond_0

    .line 11
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/M2;Ljava/util/Set;Lcom/android/tools/r8/graph/M2;Ljava/util/List;)V
    .locals 1

    .line 123
    new-instance v0, Lcom/android/tools/r8/synthesis/v0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/synthesis/v0;-><init>(Lcom/android/tools/r8/graph/M2;Ljava/util/Set;Lcom/android/tools/r8/graph/M2;)V

    invoke-interface {p3, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;)V
    .locals 12

    .line 244
    iget-object v0, p0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 245
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    .line 246
    sget-boolean v1, Lcom/android/tools/r8/synthesis/J;->g:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_4

    iget-object v4, v0, Lcom/android/tools/r8/synthesis/J;->c:Lcom/android/tools/r8/synthesis/d;

    .line 247
    iget-object v5, v4, Lcom/android/tools/r8/synthesis/d;->b:Lcom/android/tools/r8/internal/nC;

    .line 248
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/nC;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/android/tools/r8/synthesis/d;->c:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/nC;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v2

    .line 249
    :goto_0
    sget-boolean v6, Lcom/android/tools/r8/synthesis/d;->f:Z

    if-nez v6, :cond_2

    if-eqz v5, :cond_2

    iget-object v4, v4, Lcom/android/tools/r8/synthesis/d;->e:Lcom/android/tools/r8/internal/QC;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_2
    :goto_1
    if-eqz v5, :cond_3

    goto :goto_2

    .line 250
    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_4
    :goto_2
    if-nez v1, :cond_6

    .line 251
    iget-object v1, v0, Lcom/android/tools/r8/synthesis/J;->d:Lcom/android/tools/r8/synthesis/F;

    .line 252
    iget-object v1, v1, Lcom/android/tools/r8/synthesis/F;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 253
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    .line 254
    :cond_5
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 255
    :cond_6
    :goto_3
    iget-object v1, v0, Lcom/android/tools/r8/synthesis/J;->c:Lcom/android/tools/r8/synthesis/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    new-instance v4, Lcom/android/tools/r8/synthesis/c;

    invoke-direct {v4, v1}, Lcom/android/tools/r8/synthesis/c;-><init>(Lcom/android/tools/r8/synthesis/d;)V

    .line 257
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/tools/r8/internal/nJ;->E0:Z

    if-eqz v1, :cond_7

    .line 258
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    .line 259
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v1

    new-instance v5, Lcom/android/tools/r8/synthesis/o0;

    invoke-direct {v5, p0, v4}, Lcom/android/tools/r8/synthesis/o0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/synthesis/c;)V

    .line 260
    invoke-interface {v1, v5}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_4

    .line 261
    :cond_7
    invoke-static {p0, v4}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/synthesis/c;)V

    .line 262
    :goto_4
    iget-object v1, v4, Lcom/android/tools/r8/synthesis/c;->b:Ljava/util/IdentityHashMap;

    if-eqz v1, :cond_9

    .line 263
    iget-object v1, v4, Lcom/android/tools/r8/synthesis/c;->d:Lcom/android/tools/r8/internal/IC;

    if-nez v1, :cond_8

    .line 264
    sget v1, Lcom/android/tools/r8/internal/QC;->c:I

    .line 265
    new-instance v1, Lcom/android/tools/r8/internal/IC;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/IC;-><init>()V

    .line 266
    iput-object v1, v4, Lcom/android/tools/r8/synthesis/c;->d:Lcom/android/tools/r8/internal/IC;

    .line 267
    :cond_8
    iget-object v1, v4, Lcom/android/tools/r8/synthesis/c;->d:Lcom/android/tools/r8/internal/IC;

    .line 268
    iget-object v5, v4, Lcom/android/tools/r8/synthesis/c;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v5}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 269
    invoke-virtual {v1, v5}, Lcom/android/tools/r8/internal/WB;->a(Ljava/lang/Iterable;)V

    .line 270
    :cond_9
    iget-object v1, v4, Lcom/android/tools/r8/synthesis/c;->c:Ljava/util/IdentityHashMap;

    if-eqz v1, :cond_b

    .line 271
    iget-object v1, v4, Lcom/android/tools/r8/synthesis/c;->d:Lcom/android/tools/r8/internal/IC;

    if-nez v1, :cond_a

    .line 272
    sget v1, Lcom/android/tools/r8/internal/QC;->c:I

    .line 273
    new-instance v1, Lcom/android/tools/r8/internal/IC;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/IC;-><init>()V

    .line 274
    iput-object v1, v4, Lcom/android/tools/r8/synthesis/c;->d:Lcom/android/tools/r8/internal/IC;

    .line 275
    :cond_a
    iget-object v1, v4, Lcom/android/tools/r8/synthesis/c;->d:Lcom/android/tools/r8/internal/IC;

    .line 276
    iget-object v5, v4, Lcom/android/tools/r8/synthesis/c;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v5}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 277
    invoke-virtual {v1, v5}, Lcom/android/tools/r8/internal/WB;->a(Ljava/lang/Iterable;)V

    .line 278
    :cond_b
    invoke-virtual {v4}, Lcom/android/tools/r8/synthesis/c;->a()Lcom/android/tools/r8/synthesis/d;

    move-result-object v9

    .line 279
    iget-object v1, v9, Lcom/android/tools/r8/synthesis/d;->b:Lcom/android/tools/r8/internal/nC;

    .line 280
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nC;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, v9, Lcom/android/tools/r8/synthesis/d;->c:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nC;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    move v2, v3

    .line 281
    :cond_c
    sget-boolean v1, Lcom/android/tools/r8/synthesis/d;->f:Z

    if-nez v1, :cond_e

    if-eqz v2, :cond_e

    iget-object v1, v9, Lcom/android/tools/r8/synthesis/d;->e:Lcom/android/tools/r8/internal/QC;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_5

    :cond_d
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_e
    :goto_5
    if-eqz v2, :cond_f

    return-void

    .line 282
    :cond_f
    new-instance v1, Lcom/android/tools/r8/synthesis/b;

    iget v7, v0, Lcom/android/tools/r8/synthesis/J;->a:I

    .line 283
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->a()Lcom/android/tools/r8/graph/x0;

    move-result-object v8

    .line 284
    sget v2, Lcom/android/tools/r8/internal/hC;->c:I

    .line 285
    sget-object v10, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    .line 286
    iget-object v11, v0, Lcom/android/tools/r8/synthesis/J;->f:Lcom/android/tools/r8/synthesis/E;

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Lcom/android/tools/r8/synthesis/b;-><init>(ILcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/synthesis/d;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/synthesis/E;)V

    .line 287
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 288
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object v0

    .line 289
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->l()Lcom/android/tools/r8/graph/j;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/synthesis/b;)Lcom/android/tools/r8/graph/j;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/graph/y;->b(Lcom/android/tools/r8/graph/h;)Lcom/android/tools/r8/graph/y;

    return-void

    .line 290
    :cond_10
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->N()Lcom/android/tools/r8/graph/y;

    move-result-object v0

    .line 291
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/graph/h;->a(Lcom/android/tools/r8/synthesis/b;)Lcom/android/tools/r8/graph/h;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/graph/y;->b(Lcom/android/tools/r8/graph/h;)Lcom/android/tools/r8/graph/y;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/synthesis/c;)V
    .locals 3

    .line 153
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 154
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    .line 155
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/synthesis/y0;

    invoke-direct {v2, v0, p1, p0}, Lcom/android/tools/r8/synthesis/y0;-><init>(Ljava/util/Map;Lcom/android/tools/r8/synthesis/c;Lcom/android/tools/r8/graph/y;)V

    .line 156
    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/synthesis/c;Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    .line 147
    invoke-static {p2, p0}, Lcom/android/tools/r8/synthesis/L;->b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/synthesis/L;

    move-result-object p0

    .line 148
    sget-boolean v0, Lcom/android/tools/r8/synthesis/L;->d:Z

    if-nez v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/L;->b:Lcom/android/tools/r8/synthesis/l;

    if-nez v0, :cond_1

    .line 150
    sget-object v0, Lcom/android/tools/r8/synthesis/L;->c:Lcom/android/tools/r8/synthesis/L;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 151
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/L;->b:Lcom/android/tools/r8/synthesis/l;

    if-eqz v0, :cond_2

    .line 152
    invoke-static {p2, p0, v0, p1}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/synthesis/L;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/synthesis/c;)V

    :cond_2
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/synthesis/l;)V
    .locals 1

    .line 302
    sget-boolean v0, Lcom/android/tools/r8/synthesis/J;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 303
    :cond_1
    :goto_0
    iget-boolean p1, p1, Lcom/android/tools/r8/internal/nJ;->E0:Z

    if-eqz p1, :cond_2

    .line 304
    iget-object p1, p2, Lcom/android/tools/r8/synthesis/l;->c:Lcom/android/tools/r8/graph/M2;

    goto :goto_1

    .line 305
    :cond_2
    iget-object p1, p2, Lcom/android/tools/r8/synthesis/l;->b:Lcom/android/tools/r8/graph/M2;

    .line 306
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/C7;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/eC;Lcom/android/tools/r8/synthesis/l;)V
    .locals 0

    .line 91
    iget-object p1, p1, Lcom/android/tools/r8/synthesis/l;->b:Lcom/android/tools/r8/graph/M2;

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/synthesis/N;)V
    .locals 2

    .line 541
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/N;->a:Lcom/android/tools/r8/graph/u1;

    .line 542
    const-string v1, "m"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/synthesis/N;->a(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/synthesis/N;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/synthesis/c;Lcom/android/tools/r8/synthesis/L;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 116
    iget-object p1, p1, Lcom/android/tools/r8/synthesis/L;->a:Lcom/android/tools/r8/synthesis/S$b;

    .line 117
    sget-boolean v0, Lcom/android/tools/r8/synthesis/t;->c:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    .line 118
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 119
    :cond_3
    :goto_1
    sget-boolean v0, Lcom/android/tools/r8/synthesis/O;->e:Z

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/android/tools/r8/synthesis/S$b;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 120
    :cond_5
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    new-instance v0, Lcom/android/tools/r8/synthesis/P;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/A2;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/synthesis/P;-><init>(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/graph/A2;)V

    .line 122
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/synthesis/c;->a(Lcom/android/tools/r8/synthesis/P;)Lcom/android/tools/r8/synthesis/c;

    return-void
.end method

.method public static a(Ljava/util/Map;Lcom/android/tools/r8/SyntheticInfoConsumer;Lcom/android/tools/r8/synthesis/a0;)V
    .locals 2

    .line 562
    invoke-virtual {p2}, Lcom/android/tools/r8/synthesis/a0;->getHolder()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 563
    iget-object p2, p2, Lcom/android/tools/r8/synthesis/a0;->b:Lcom/android/tools/r8/synthesis/l;

    .line 564
    iget-object p2, p2, Lcom/android/tools/r8/synthesis/l;->b:Lcom/android/tools/r8/graph/M2;

    .line 565
    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/M2;

    .line 566
    sget-boolean v1, Lcom/android/tools/r8/synthesis/J;->g:Z

    if-nez v1, :cond_1

    if-eqz p0, :cond_1

    if-ne p0, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez p0, :cond_2

    .line 567
    new-instance p0, Lcom/android/tools/r8/synthesis/H;

    invoke-direct {p0, v0, p2}, Lcom/android/tools/r8/synthesis/H;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V

    invoke-interface {p1, p0}, Lcom/android/tools/r8/SyntheticInfoConsumer;->acceptSyntheticInfo(Lcom/android/tools/r8/SyntheticInfoConsumerData;)V

    :cond_2
    return-void
.end method

.method public static synthetic a(Ljava/util/Map;Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;Ljava/util/Set;)V
    .locals 1

    .line 133
    invoke-virtual {p1, p2, p3}, Lcom/android/tools/r8/naming/r0;->b(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    new-instance v0, Lcom/android/tools/r8/synthesis/K0;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/synthesis/K0;-><init>(Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/graph/u1;)V

    .line 134
    invoke-static {p4, v0}, Lcom/android/tools/r8/internal/Al0;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/Set;

    move-result-object p1

    .line 135
    invoke-interface {p0, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    .line 136
    sget-boolean p1, Lcom/android/tools/r8/synthesis/J;->g:Z

    if-nez p1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Ljava/util/function/Consumer;Lcom/android/tools/r8/synthesis/N;)V
    .locals 1

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p1, Lcom/android/tools/r8/synthesis/N;->q:Z

    .line 94
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Ljava/util/function/Consumer;Lcom/android/tools/r8/synthesis/W;)V
    .locals 1

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p1, Lcom/android/tools/r8/synthesis/m;->l:Z

    .line 96
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static a(ZLcom/android/tools/r8/synthesis/a0;)Z
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/android/tools/r8/synthesis/a0;->a:Lcom/android/tools/r8/synthesis/S$b;

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/synthesis/S$b;->f()Z

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/synthesis/l;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 34
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/android/tools/r8/synthesis/S;->a(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/M2;Ljava/util/Set;Lcom/android/tools/r8/graph/M2;Ljava/util/List;)V
    .locals 1

    .line 13
    new-instance v0, Lcom/android/tools/r8/synthesis/D0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/synthesis/D0;-><init>(Lcom/android/tools/r8/graph/M2;Ljava/util/Set;Lcom/android/tools/r8/graph/M2;)V

    invoke-interface {p3, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static b(Lcom/android/tools/r8/internal/eC;Lcom/android/tools/r8/synthesis/l;)V
    .locals 0

    .line 11
    iget-object p1, p1, Lcom/android/tools/r8/synthesis/l;->d:Lcom/android/tools/r8/origin/Origin;

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    return-void
.end method

.method public static synthetic b(Ljava/util/Map;Lcom/android/tools/r8/synthesis/c;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H2;)V
    .locals 0

    .line 24
    invoke-static {p0, p1, p2, p3}, Lcom/android/tools/r8/synthesis/J;->a(Ljava/util/Map;Lcom/android/tools/r8/synthesis/c;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/synthesis/l;

    return-void
.end method

.method public static synthetic c(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/synthesis/l;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/android/tools/r8/synthesis/S;->a(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/FeatureSplit;)Lcom/android/tools/r8/FeatureSplit;
    .locals 4

    .line 227
    sget-boolean v0, Lcom/android/tools/r8/synthesis/J;->g:Z

    if-nez v0, :cond_1

    .line 228
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/synthesis/J;->g(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 229
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 230
    :cond_1
    :goto_0
    new-instance v1, Lcom/android/tools/r8/synthesis/A0;

    invoke-direct {v1}, Lcom/android/tools/r8/synthesis/A0;-><init>()V

    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/I;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 231
    sget-object p1, Lcom/android/tools/r8/FeatureSplit;->BASE:Lcom/android/tools/r8/FeatureSplit;

    return-object p1

    .line 232
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/synthesis/J;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/hC;

    move-result-object v1

    .line 233
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_3

    return-object p2

    .line 234
    :cond_3
    new-instance p2, Ljava/lang/AssertionError;

    .line 235
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->D0()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected synthetic to have at least one synthesizing context: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    :cond_4
    const/4 p1, 0x0

    if-nez v0, :cond_9

    .line 236
    new-instance p2, Lcom/android/tools/r8/synthesis/B0;

    invoke-direct {p2}, Lcom/android/tools/r8/synthesis/B0;-><init>()V

    if-nez v0, :cond_6

    .line 237
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 238
    :cond_6
    :goto_1
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/FeatureSplit;

    const/4 v2, 0x1

    .line 239
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 240
    sget-boolean v3, Lcom/android/tools/r8/synthesis/J;->g:Z

    if-nez v3, :cond_8

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v0, v3, :cond_7

    goto :goto_3

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_8
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 241
    :cond_9
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/synthesis/l;

    .line 242
    iget-object p1, p1, Lcom/android/tools/r8/synthesis/l;->e:Lcom/android/tools/r8/FeatureSplit;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H2;
    .locals 2

    .line 420
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/J;->b:Lcom/android/tools/r8/synthesis/S;

    invoke-interface {p1, v0}, Lcom/android/tools/r8/synthesis/I;->a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object p1

    .line 421
    sget-boolean v0, Lcom/android/tools/r8/synthesis/J;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/synthesis/S$b;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 422
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 423
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    .line 424
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    .line 425
    iget-object v1, v1, Lcom/android/tools/r8/graph/h;->b:Lcom/android/tools/r8/internal/Zd;

    .line 426
    invoke-virtual {p0, p2, v1}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/internal/Zd;)Lcom/android/tools/r8/synthesis/l;

    move-result-object p2

    goto :goto_1

    .line 427
    :cond_2
    invoke-interface {p2}, Lcom/android/tools/r8/graph/o0;->z()Lcom/android/tools/r8/graph/f0;

    move-result-object p2

    invoke-static {p2}, Lcom/android/tools/r8/synthesis/l;->a(Lcom/android/tools/r8/graph/f0;)Lcom/android/tools/r8/synthesis/l;

    move-result-object p2

    .line 428
    :goto_1
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/android/tools/r8/synthesis/S;->a(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 429
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    if-nez v0, :cond_4

    if-eqz p2, :cond_3

    goto :goto_2

    .line 430
    :cond_3
    new-instance p2, Ljava/lang/AssertionError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Missing existing fixed class "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    :cond_4
    :goto_2
    if-nez v0, :cond_6

    .line 431
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/synthesis/J;->g(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    .line 432
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_3
    if-nez v0, :cond_8

    .line 433
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 434
    :cond_8
    :goto_4
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H2;
    .locals 8

    .line 435
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/J;->b:Lcom/android/tools/r8/synthesis/S;

    invoke-interface {p1, v0}, Lcom/android/tools/r8/synthesis/I;->a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v2

    .line 436
    sget-boolean p1, Lcom/android/tools/r8/synthesis/J;->g:Z

    if-nez p1, :cond_1

    invoke-virtual {v2}, Lcom/android/tools/r8/synthesis/S$b;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 437
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v5

    .line 438
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 439
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    .line 440
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p2

    .line 441
    iget-object p2, p2, Lcom/android/tools/r8/graph/h;->b:Lcom/android/tools/r8/internal/Zd;

    .line 442
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/internal/Zd;)Lcom/android/tools/r8/synthesis/l;

    move-result-object p1

    :goto_1
    move-object v6, p1

    goto :goto_2

    .line 443
    :cond_2
    invoke-interface {p2}, Lcom/android/tools/r8/graph/o0;->z()Lcom/android/tools/r8/graph/f0;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/synthesis/l;->a(Lcom/android/tools/r8/graph/f0;)Lcom/android/tools/r8/synthesis/l;

    move-result-object p1

    goto :goto_1

    :goto_2
    move-object v1, p0

    move-object v3, p4

    move-object v4, p5

    move-object v7, p3

    .line 444
    invoke-virtual/range {v1 .. v7}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/synthesis/S$b;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H2;
    .locals 7

    .line 395
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/J;->b:Lcom/android/tools/r8/synthesis/S;

    invoke-interface {p1, v0}, Lcom/android/tools/r8/synthesis/I;->a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object p1

    .line 396
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H2;->e0()Z

    .line 397
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H2;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    .line 398
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    .line 399
    iget-object v0, v0, Lcom/android/tools/r8/graph/h;->b:Lcom/android/tools/r8/internal/Zd;

    .line 400
    invoke-virtual {p0, p2, v0}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/internal/Zd;)Lcom/android/tools/r8/synthesis/l;

    move-result-object p2

    .line 401
    new-instance v0, Lcom/android/tools/r8/synthesis/w0;

    invoke-direct {v0, p1, p3}, Lcom/android/tools/r8/synthesis/w0;-><init>(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/graph/y;)V

    .line 402
    invoke-interface {v0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    .line 403
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/WR;->b()Lcom/android/tools/r8/internal/zm;

    move-result-object v2

    .line 404
    iget-object v3, p2, Lcom/android/tools/r8/synthesis/l;->b:Lcom/android/tools/r8/graph/M2;

    .line 405
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/zm;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 406
    :cond_0
    new-instance v4, Lcom/android/tools/r8/synthesis/l;

    invoke-static {}, Lcom/android/tools/r8/origin/c;->a()Lcom/android/tools/r8/origin/Origin;

    move-result-object v5

    sget-object v6, Lcom/android/tools/r8/FeatureSplit;->BASE:Lcom/android/tools/r8/FeatureSplit;

    invoke-direct {v4, v3, v3, v5, v6}, Lcom/android/tools/r8/synthesis/l;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/FeatureSplit;)V

    .line 407
    invoke-interface {v0, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/M2;

    .line 408
    invoke-virtual {v2, v1, v0}, Lcom/android/tools/r8/internal/zm;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V

    .line 409
    :goto_0
    new-instance v0, Lcom/android/tools/r8/synthesis/W;

    .line 410
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p3

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/android/tools/r8/synthesis/W;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/graph/u1;)V

    .line 411
    invoke-interface {p4, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 412
    invoke-virtual {v0}, Lcom/android/tools/r8/synthesis/m;->a()Lcom/android/tools/r8/graph/E0;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/H2;

    .line 413
    sget-boolean p4, Lcom/android/tools/r8/synthesis/W;->t:Z

    if-nez p4, :cond_2

    .line 414
    iget-object p4, p3, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    .line 415
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/g;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/Q;->I()Z

    move-result p4

    if-nez p4, :cond_1

    goto :goto_1

    .line 416
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 417
    :cond_2
    :goto_1
    new-instance p4, Lcom/android/tools/r8/synthesis/X;

    invoke-direct {p4, p1, p2, p3}, Lcom/android/tools/r8/synthesis/X;-><init>(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/graph/H2;)V

    .line 418
    iget-object p1, p0, Lcom/android/tools/r8/synthesis/J;->d:Lcom/android/tools/r8/synthesis/F;

    iget-object p1, p1, Lcom/android/tools/r8/synthesis/F;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p4}, Lcom/android/tools/r8/synthesis/n;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p1, p2, p4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p3
.end method

.method public final a(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/internal/Gf;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H2;
    .locals 7

    .line 372
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/J;->b:Lcom/android/tools/r8/synthesis/S;

    invoke-interface {p1, v0}, Lcom/android/tools/r8/synthesis/I;->a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object p1

    .line 373
    iget-object v0, p2, Lcom/android/tools/r8/internal/Gf;->b:Lcom/android/tools/r8/graph/H2;

    .line 374
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    .line 375
    iget-object v1, v1, Lcom/android/tools/r8/graph/h;->b:Lcom/android/tools/r8/internal/Zd;

    .line 376
    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/internal/Zd;)Lcom/android/tools/r8/synthesis/l;

    move-result-object v0

    .line 377
    new-instance v1, Lcom/android/tools/r8/synthesis/x0;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/tools/r8/synthesis/x0;-><init>(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/internal/Gf;Lcom/android/tools/r8/graph/y;)V

    .line 378
    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/M2;

    .line 379
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/WR;->b()Lcom/android/tools/r8/internal/zm;

    move-result-object v2

    .line 380
    iget-object v3, v0, Lcom/android/tools/r8/synthesis/l;->b:Lcom/android/tools/r8/graph/M2;

    .line 381
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/zm;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 382
    :cond_0
    new-instance v4, Lcom/android/tools/r8/synthesis/l;

    invoke-static {}, Lcom/android/tools/r8/origin/c;->a()Lcom/android/tools/r8/origin/Origin;

    move-result-object v5

    sget-object v6, Lcom/android/tools/r8/FeatureSplit;->BASE:Lcom/android/tools/r8/FeatureSplit;

    invoke-direct {v4, v3, v3, v5, v6}, Lcom/android/tools/r8/synthesis/l;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/FeatureSplit;)V

    .line 383
    invoke-interface {v1, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    .line 384
    invoke-virtual {v2, p2, v1}, Lcom/android/tools/r8/internal/zm;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V

    .line 385
    :goto_0
    new-instance v1, Lcom/android/tools/r8/synthesis/W;

    .line 386
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p3

    invoke-direct {v1, p2, p1, v0, p3}, Lcom/android/tools/r8/synthesis/W;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/graph/u1;)V

    .line 387
    invoke-interface {p4, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 388
    invoke-virtual {v1}, Lcom/android/tools/r8/synthesis/m;->a()Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/H2;

    .line 389
    sget-boolean p3, Lcom/android/tools/r8/synthesis/W;->t:Z

    if-nez p3, :cond_2

    .line 390
    iget-object p3, p2, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    .line 391
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/g;->o()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/Q;->I()Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_1

    .line 392
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 393
    :cond_2
    :goto_1
    new-instance p3, Lcom/android/tools/r8/synthesis/X;

    invoke-direct {p3, p1, v0, p2}, Lcom/android/tools/r8/synthesis/X;-><init>(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/graph/H2;)V

    .line 394
    iget-object p1, p0, Lcom/android/tools/r8/synthesis/J;->d:Lcom/android/tools/r8/synthesis/F;

    iget-object p1, p1, Lcom/android/tools/r8/synthesis/F;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3}, Lcom/android/tools/r8/synthesis/n;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p4

    invoke-virtual {p1, p4, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/synthesis/S$b;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H2;
    .locals 7

    .line 333
    new-instance v0, Lcom/android/tools/r8/synthesis/E0;

    invoke-direct {v0, p1, p6}, Lcom/android/tools/r8/synthesis/E0;-><init>(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/graph/y;)V

    .line 334
    invoke-interface {v0, p5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    .line 335
    invoke-virtual {p6, v1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto :goto_0

    .line 336
    :cond_0
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 337
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    goto :goto_1

    .line 338
    :cond_1
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {p1}, Lcom/android/tools/r8/synthesis/S$b;->d()Z

    move-result v4

    if-eqz v4, :cond_c

    :goto_0
    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_2

    .line 339
    invoke-interface {p3, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-object v2

    .line 340
    :cond_2
    monitor-enter v1

    .line 341
    :try_start_0
    invoke-virtual {p6, v1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_2

    .line 342
    :cond_3
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 343
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v3

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    .line 344
    :cond_4
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {p1}, Lcom/android/tools/r8/synthesis/S$b;->d()Z

    move-result v4

    if-eqz v4, :cond_b

    :goto_2
    if-eqz v3, :cond_5

    .line 345
    monitor-exit v1

    return-object v3

    .line 346
    :cond_5
    sget-boolean v2, Lcom/android/tools/r8/synthesis/J;->g:Z

    if-nez v2, :cond_7

    .line 347
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/synthesis/J;->g(Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_3

    .line 348
    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 349
    :cond_7
    :goto_3
    new-instance v2, Lcom/android/tools/r8/synthesis/F0;

    invoke-direct {v2, p2}, Lcom/android/tools/r8/synthesis/F0;-><init>(Ljava/util/function/Consumer;)V

    .line 350
    invoke-virtual {p6}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/WR;->b()Lcom/android/tools/r8/internal/zm;

    move-result-object p2

    .line 351
    iget-object v3, p5, Lcom/android/tools/r8/synthesis/l;->b:Lcom/android/tools/r8/graph/M2;

    .line 352
    invoke-virtual {p2, v3}, Lcom/android/tools/r8/internal/zm;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    if-nez v3, :cond_8

    goto :goto_4

    .line 353
    :cond_8
    new-instance v4, Lcom/android/tools/r8/synthesis/l;

    invoke-static {}, Lcom/android/tools/r8/origin/c;->a()Lcom/android/tools/r8/origin/Origin;

    move-result-object v5

    sget-object v6, Lcom/android/tools/r8/FeatureSplit;->BASE:Lcom/android/tools/r8/FeatureSplit;

    invoke-direct {v4, v3, v3, v5, v6}, Lcom/android/tools/r8/synthesis/l;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/FeatureSplit;)V

    .line 354
    invoke-interface {v0, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/M2;

    .line 355
    invoke-virtual {p2, v1, v0}, Lcom/android/tools/r8/internal/zm;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V

    .line 356
    :goto_4
    new-instance p2, Lcom/android/tools/r8/synthesis/W;

    .line 357
    invoke-virtual {p6}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p6

    invoke-direct {p2, v1, p1, p5, p6}, Lcom/android/tools/r8/synthesis/W;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/graph/u1;)V

    .line 358
    invoke-interface {v2, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 359
    invoke-virtual {p2}, Lcom/android/tools/r8/synthesis/m;->a()Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/H2;

    .line 360
    sget-boolean p6, Lcom/android/tools/r8/synthesis/W;->t:Z

    if-nez p6, :cond_a

    .line 361
    iget-object p6, p2, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    .line 362
    invoke-virtual {p6}, Lcom/android/tools/r8/graph/g;->o()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p6}, Lcom/android/tools/r8/graph/Q;->I()Z

    move-result p6

    if-nez p6, :cond_9

    goto :goto_5

    .line 363
    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 364
    :cond_a
    :goto_5
    new-instance p6, Lcom/android/tools/r8/synthesis/X;

    invoke-direct {p6, p1, p5, p2}, Lcom/android/tools/r8/synthesis/X;-><init>(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/graph/H2;)V

    .line 365
    iget-object p1, p0, Lcom/android/tools/r8/synthesis/J;->d:Lcom/android/tools/r8/synthesis/F;

    iget-object p1, p1, Lcom/android/tools/r8/synthesis/F;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p6}, Lcom/android/tools/r8/synthesis/n;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object p5

    invoke-virtual {p5}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p5

    invoke-virtual {p1, p5, p6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    invoke-interface {p3, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 367
    invoke-interface {p4, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 368
    monitor-exit v1

    return-object p2

    .line 369
    :cond_b
    const-string p1, "program"

    invoke-static {v2, p1, p6}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/E0;Ljava/lang/String;Lcom/android/tools/r8/graph/y;)V

    throw v3

    .line 370
    :goto_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 371
    :cond_c
    const-string p1, "program"

    invoke-static {v2, p1, p6}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/E0;Ljava/lang/String;Lcom/android/tools/r8/graph/y;)V

    throw v3
.end method

.method public final a(Ljava/util/function/Supplier;Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/graph/M2;Ljava/util/Collection;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H2;
    .locals 8

    move-object v7, p0

    .line 502
    iget-object v0, v7, Lcom/android/tools/r8/synthesis/J;->b:Lcom/android/tools/r8/synthesis/S;

    move-object v1, p2

    invoke-interface {p2, v0}, Lcom/android/tools/r8/synthesis/I;->a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v1

    .line 503
    sget-boolean v0, Lcom/android/tools/r8/synthesis/J;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lcom/android/tools/r8/synthesis/S$b;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 504
    invoke-interface {p4}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 505
    :cond_3
    :goto_1
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ;->E0:Z

    if-eqz v0, :cond_5

    invoke-virtual {p5}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 506
    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->n:Lcom/android/tools/r8/GlobalSyntheticsConsumer;

    if-eqz v0, :cond_4

    goto :goto_2

    .line 507
    :cond_4
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 508
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/Diagnostic;

    const/4 v2, 0x0

    .line 509
    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 510
    iget-object v0, v0, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw v0

    .line 511
    :cond_5
    :goto_2
    new-instance v5, Lcom/android/tools/r8/synthesis/l;

    invoke-static {}, Lcom/android/tools/r8/origin/c;->a()Lcom/android/tools/r8/origin/Origin;

    move-result-object v0

    sget-object v2, Lcom/android/tools/r8/FeatureSplit;->BASE:Lcom/android/tools/r8/FeatureSplit;

    move-object v3, p3

    invoke-direct {v5, p3, p3, v0, v2}, Lcom/android/tools/r8/synthesis/l;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/FeatureSplit;)V

    move-object v0, p0

    move-object v2, p6

    move-object/from16 v3, p8

    move-object v4, p7

    move-object v6, p5

    .line 512
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/synthesis/S$b;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    .line 513
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ$p;->H:Ljava/util/function/Consumer;

    if-eqz v1, :cond_6

    .line 514
    invoke-interface {v1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 515
    :cond_6
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 516
    iget-object v2, v7, Lcom/android/tools/r8/synthesis/J;->e:Lcom/android/tools/r8/synthesis/A;

    move-object v3, p4

    invoke-interface {v2, v1, p4}, Lcom/android/tools/r8/synthesis/A;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/Collection;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/graph/J5;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H5;
    .locals 13

    move-object v6, p0

    .line 445
    iget-object v0, v6, Lcom/android/tools/r8/synthesis/J;->b:Lcom/android/tools/r8/synthesis/S;

    move-object/from16 v1, p3

    invoke-interface {v1, v0}, Lcom/android/tools/r8/synthesis/I;->a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object v9

    .line 446
    invoke-interface/range {p4 .. p4}, Lcom/android/tools/r8/graph/o0;->a()Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v5

    move-object v0, p0

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    .line 447
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    .line 448
    invoke-virtual/range {p5 .. p5}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    invoke-virtual {v1, v2, p2, p1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v7

    move-object v8, v0

    move-object/from16 v10, p5

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    .line 449
    invoke-static/range {v7 .. v12}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/j1;

    move-result-object v1

    .line 450
    new-instance v2, Lcom/android/tools/r8/graph/H5;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/graph/H5;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)V

    return-object v2
.end method

.method public final a(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;Ljava/util/function/Supplier;)Lcom/android/tools/r8/graph/H5;
    .locals 3

    .line 517
    sget-boolean v0, Lcom/android/tools/r8/synthesis/J;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/synthesis/J;->c()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 518
    :cond_1
    :goto_0
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    .line 519
    iget-object v0, v0, Lcom/android/tools/r8/graph/h;->b:Lcom/android/tools/r8/internal/Zd;

    .line 520
    invoke-virtual {p0, p2, v0}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/internal/Zd;)Lcom/android/tools/r8/synthesis/l;

    move-result-object p2

    .line 521
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/J;->b:Lcom/android/tools/r8/synthesis/S;

    invoke-interface {p1, v0}, Lcom/android/tools/r8/synthesis/I;->a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object p1

    .line 522
    invoke-interface {p5}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 523
    sget-boolean v0, Lcom/android/tools/r8/synthesis/S;->a0:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/synthesis/S$b;->c()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 524
    :cond_3
    :goto_1
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ;->E0:Z

    if-eqz v0, :cond_4

    .line 525
    iget-object v0, p2, Lcom/android/tools/r8/synthesis/l;->c:Lcom/android/tools/r8/graph/M2;

    goto :goto_2

    .line 526
    :cond_4
    iget-object v0, p2, Lcom/android/tools/r8/synthesis/l;->b:Lcom/android/tools/r8/graph/M2;

    .line 527
    :goto_2
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    .line 528
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->w0()Ljava/lang/String;

    move-result-object v0

    const-string v2, "$$InternalSynthetic"

    invoke-static {v2, p1, v0, p5}, Lcom/android/tools/r8/synthesis/S;->a(Ljava/lang/String;Lcom/android/tools/r8/synthesis/S$b;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, p5}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p5

    .line 529
    new-instance v0, Lcom/android/tools/r8/synthesis/W;

    .line 530
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p3

    invoke-direct {v0, p5, p1, p2, p3}, Lcom/android/tools/r8/synthesis/W;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/graph/u1;)V

    .line 531
    new-instance p3, Lcom/android/tools/r8/synthesis/C0;

    invoke-direct {p3}, Lcom/android/tools/r8/synthesis/C0;-><init>()V

    .line 532
    invoke-interface {p4, p3}, Ljava/util/function/Consumer;->andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/android/tools/r8/synthesis/m;->a(Ljava/util/function/Consumer;)Lcom/android/tools/r8/synthesis/m;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/synthesis/W;

    .line 533
    invoke-virtual {p3}, Lcom/android/tools/r8/synthesis/m;->a()Lcom/android/tools/r8/graph/E0;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/H2;

    .line 534
    sget-boolean p4, Lcom/android/tools/r8/synthesis/W;->t:Z

    if-nez p4, :cond_6

    .line 535
    iget-object p4, p3, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    .line 536
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/g;->o()Z

    move-result p5

    if-eqz p5, :cond_5

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/Q;->I()Z

    move-result p4

    if-nez p4, :cond_5

    goto :goto_3

    .line 537
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 538
    :cond_6
    :goto_3
    new-instance p4, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/E0;->z1()Ljava/lang/Iterable;

    move-result-object p5

    invoke-interface {p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/tools/r8/graph/j1;

    invoke-direct {p4, p3, p5}, Lcom/android/tools/r8/graph/H5;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)V

    .line 539
    new-instance p3, Lcom/android/tools/r8/synthesis/O;

    invoke-direct {p3, p1, p2, p4}, Lcom/android/tools/r8/synthesis/O;-><init>(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/graph/H5;)V

    .line 540
    iget-object p1, p0, Lcom/android/tools/r8/synthesis/J;->d:Lcom/android/tools/r8/synthesis/F;

    iget-object p1, p1, Lcom/android/tools/r8/synthesis/F;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3}, Lcom/android/tools/r8/synthesis/O;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p4
.end method

.method public final a(Lcom/android/tools/r8/synthesis/S$b;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/I0;
    .locals 7

    .line 459
    new-instance v0, Lcom/android/tools/r8/synthesis/n0;

    invoke-direct {v0, p1, p5}, Lcom/android/tools/r8/synthesis/n0;-><init>(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/graph/y;)V

    .line 460
    invoke-interface {v0, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    .line 461
    monitor-enter v1

    .line 462
    :try_start_0
    invoke-virtual {p5, v1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 463
    instance-of p1, v2, Lcom/android/tools/r8/graph/I0;

    if-eqz p1, :cond_0

    .line 464
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->k()Lcom/android/tools/r8/graph/I0;

    move-result-object p1

    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 465
    :cond_0
    const-string p1, "classpath"

    invoke-static {v2, p1, p5}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/E0;Ljava/lang/String;Lcom/android/tools/r8/graph/y;)V

    const/4 p1, 0x0

    throw p1

    .line 466
    :cond_1
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/WR;->b()Lcom/android/tools/r8/internal/zm;

    move-result-object v2

    .line 467
    iget-object v3, p4, Lcom/android/tools/r8/synthesis/l;->b:Lcom/android/tools/r8/graph/M2;

    .line 468
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/zm;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 469
    :cond_2
    new-instance v4, Lcom/android/tools/r8/synthesis/l;

    invoke-static {}, Lcom/android/tools/r8/origin/c;->a()Lcom/android/tools/r8/origin/Origin;

    move-result-object v5

    sget-object v6, Lcom/android/tools/r8/FeatureSplit;->BASE:Lcom/android/tools/r8/FeatureSplit;

    invoke-direct {v4, v3, v3, v5, v6}, Lcom/android/tools/r8/synthesis/l;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/FeatureSplit;)V

    .line 470
    invoke-interface {v0, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/M2;

    .line 471
    invoke-virtual {v2, v1, v0}, Lcom/android/tools/r8/internal/zm;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V

    .line 472
    :goto_0
    new-instance v0, Lcom/android/tools/r8/synthesis/p;

    .line 473
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p5

    invoke-direct {v0, v1, p1, p4, p5}, Lcom/android/tools/r8/synthesis/p;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/graph/u1;)V

    .line 474
    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 475
    invoke-virtual {v0}, Lcom/android/tools/r8/synthesis/m;->a()Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/I0;

    .line 476
    new-instance p5, Lcom/android/tools/r8/synthesis/q;

    invoke-direct {p5, p1, p4, p2}, Lcom/android/tools/r8/synthesis/q;-><init>(Lcom/android/tools/r8/synthesis/S$b;Lcom/android/tools/r8/synthesis/l;Lcom/android/tools/r8/graph/I0;)V

    .line 477
    iget-object p1, p0, Lcom/android/tools/r8/synthesis/J;->d:Lcom/android/tools/r8/synthesis/F;

    iget-object p1, p1, Lcom/android/tools/r8/synthesis/F;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p5}, Lcom/android/tools/r8/synthesis/n;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p4

    invoke-virtual {p1, p4, p5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    invoke-interface {p3, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 479
    monitor-exit v1

    return-object p2

    .line 480
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 2

    .line 298
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/synthesis/J;->g(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 299
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/C7;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/C7;-><init>(Ljava/lang/Object;)V

    .line 300
    new-instance v1, Lcom/android/tools/r8/synthesis/z0;

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/synthesis/z0;-><init>(Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/internal/nJ;)V

    invoke-virtual {p0, p2, v1}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;)V

    .line 301
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    return-object p1
.end method

.method public final a(Ljava/util/function/Function;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/b0;
    .locals 6

    .line 180
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/J;->d:Lcom/android/tools/r8/synthesis/F;

    iget-object v0, v0, Lcom/android/tools/r8/synthesis/F;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/synthesis/t;

    if-eqz v0, :cond_3

    .line 181
    invoke-virtual {v0}, Lcom/android/tools/r8/synthesis/t;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    .line 182
    iget-object v2, v0, Lcom/android/tools/r8/synthesis/t;->a:Lcom/android/tools/r8/synthesis/S$b;

    .line 183
    sget-boolean v3, Lcom/android/tools/r8/synthesis/J;->g:Z

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v4

    invoke-virtual {v0}, Lcom/android/tools/r8/synthesis/t;->e()Z

    move-result v5

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v3, :cond_4

    .line 184
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    instance-of v3, v1, Lcom/android/tools/r8/graph/I0;

    .line 186
    instance-of v0, v0, Lcom/android/tools/r8/synthesis/q;

    if-ne v3, v0, :cond_2

    goto :goto_1

    .line 187
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    const/4 v1, 0x0

    move-object v2, v1

    :cond_4
    :goto_1
    if-eqz v1, :cond_9

    .line 188
    sget-boolean v0, Lcom/android/tools/r8/synthesis/J;->g:Z

    if-nez v0, :cond_6

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_2
    if-nez v0, :cond_8

    .line 189
    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/b0;

    invoke-interface {p1}, Lcom/android/tools/r8/graph/b0;->X()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 190
    invoke-virtual {v2}, Lcom/android/tools/r8/synthesis/S$b;->e()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_3

    .line 191
    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pending synthetic definition also present in the active program: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_8
    :goto_3
    return-object v1

    .line 192
    :cond_9
    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/b0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/x0;)Lcom/android/tools/r8/synthesis/b;
    .locals 7

    .line 12
    new-instance v0, Lcom/android/tools/r8/graph/M5;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/M5;-><init>()V

    .line 13
    iput-object p1, v0, Lcom/android/tools/r8/graph/M5;->a:Lcom/android/tools/r8/graph/x0;

    .line 14
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M5;->a()Lcom/android/tools/r8/graph/O5;

    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/android/tools/r8/synthesis/J;->d:Lcom/android/tools/r8/synthesis/F;

    iget-object v3, p0, Lcom/android/tools/r8/synthesis/J;->e:Lcom/android/tools/r8/synthesis/A;

    iget-object v4, p0, Lcom/android/tools/r8/synthesis/J;->c:Lcom/android/tools/r8/synthesis/d;

    iget v5, p0, Lcom/android/tools/r8/synthesis/J;->a:I

    iget-object v6, p0, Lcom/android/tools/r8/synthesis/J;->f:Lcom/android/tools/r8/synthesis/E;

    invoke-static/range {v1 .. v6}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/O5;Lcom/android/tools/r8/synthesis/F;Lcom/android/tools/r8/synthesis/A;Lcom/android/tools/r8/synthesis/d;ILcom/android/tools/r8/synthesis/E;)Lcom/android/tools/r8/synthesis/b;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/synthesis/b;
    .locals 11

    .line 543
    const-string v0, "Rewrite SyntheticItems"

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 544
    sget-boolean v0, Lcom/android/tools/r8/synthesis/J;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/J;->d:Lcom/android/tools/r8/synthesis/F;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/synthesis/F;->a(Lcom/android/tools/r8/internal/R00;)V

    .line 545
    :cond_0
    new-instance v0, Lcom/android/tools/r8/graph/M5;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/M5;-><init>()V

    .line 546
    iput-object p1, v0, Lcom/android/tools/r8/graph/M5;->a:Lcom/android/tools/r8/graph/x0;

    .line 547
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M5;->a()Lcom/android/tools/r8/graph/O5;

    move-result-object v1

    .line 548
    iget-object v2, p0, Lcom/android/tools/r8/synthesis/J;->d:Lcom/android/tools/r8/synthesis/F;

    iget-object v3, p0, Lcom/android/tools/r8/synthesis/J;->e:Lcom/android/tools/r8/synthesis/A;

    iget-object p1, p0, Lcom/android/tools/r8/synthesis/J;->c:Lcom/android/tools/r8/synthesis/d;

    .line 549
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 550
    sget v0, Lcom/android/tools/r8/internal/QC;->c:I

    .line 551
    new-instance v0, Lcom/android/tools/r8/internal/IC;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/IC;-><init>()V

    .line 552
    new-instance v10, Lcom/android/tools/r8/synthesis/d;

    iget-object v5, p1, Lcom/android/tools/r8/synthesis/d;->a:Lcom/android/tools/r8/synthesis/S;

    iget-object v4, p1, Lcom/android/tools/r8/synthesis/d;->b:Lcom/android/tools/r8/internal/nC;

    .line 553
    invoke-virtual {p1, v4, p2, v0}, Lcom/android/tools/r8/synthesis/d;->a(Ljava/util/Map;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/IC;)Lcom/android/tools/r8/internal/nC;

    move-result-object v6

    iget-object v4, p1, Lcom/android/tools/r8/synthesis/d;->c:Lcom/android/tools/r8/internal/nC;

    .line 554
    invoke-virtual {p1, v4, p2, v0}, Lcom/android/tools/r8/synthesis/d;->a(Ljava/util/Map;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/IC;)Lcom/android/tools/r8/internal/nC;

    move-result-object v7

    iget-object v8, p1, Lcom/android/tools/r8/synthesis/d;->d:Lcom/android/tools/r8/internal/nC;

    .line 555
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object v9

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/android/tools/r8/synthesis/d;-><init>(Lcom/android/tools/r8/synthesis/S;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/QC;)V

    .line 556
    iget v5, p0, Lcom/android/tools/r8/synthesis/J;->a:I

    iget-object v6, p0, Lcom/android/tools/r8/synthesis/J;->f:Lcom/android/tools/r8/synthesis/E;

    .line 557
    invoke-static/range {v1 .. v6}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/O5;Lcom/android/tools/r8/synthesis/F;Lcom/android/tools/r8/synthesis/A;Lcom/android/tools/r8/synthesis/d;ILcom/android/tools/r8/synthesis/E;)Lcom/android/tools/r8/synthesis/b;

    move-result-object p1

    .line 558
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/internal/Zd;)Lcom/android/tools/r8/synthesis/l;
    .locals 3

    .line 316
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 317
    iget-object v1, p0, Lcom/android/tools/r8/synthesis/J;->d:Lcom/android/tools/r8/synthesis/F;

    iget-object v1, v1, Lcom/android/tools/r8/synthesis/F;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/synthesis/t;

    if-eqz v1, :cond_0

    .line 318
    iget-object p1, v1, Lcom/android/tools/r8/synthesis/t;->b:Lcom/android/tools/r8/synthesis/l;

    return-object p1

    .line 319
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/synthesis/J;->c:Lcom/android/tools/r8/synthesis/d;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/synthesis/d;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Ux;

    move-result-object v0

    .line 320
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_1

    .line 321
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    goto :goto_0

    .line 322
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ux;->iterator()Ljava/util/Iterator;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/GK;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/GK;->hasNext()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    :goto_0
    if-nez v1, :cond_5

    .line 323
    new-instance p1, Lcom/android/tools/r8/synthesis/p0;

    invoke-direct {p1}, Lcom/android/tools/r8/synthesis/p0;-><init>()V

    .line 324
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ux;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :cond_2
    :goto_1
    move-object v1, p2

    check-cast v1, Lcom/android/tools/r8/internal/GK;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/GK;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/GK;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v0, :cond_3

    .line 325
    invoke-interface {p1, v1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_2

    :cond_3
    move-object v0, v1

    goto :goto_1

    .line 326
    :cond_4
    check-cast v0, Lcom/android/tools/r8/synthesis/a0;

    .line 327
    iget-object p1, v0, Lcom/android/tools/r8/synthesis/a0;->b:Lcom/android/tools/r8/synthesis/l;

    return-object p1

    .line 328
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 329
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object v0

    invoke-virtual {p2, v0, p0}, Lcom/android/tools/r8/internal/Zd;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/synthesis/J;)Lcom/android/tools/r8/FeatureSplit;

    move-result-object p2

    .line 330
    new-instance v0, Lcom/android/tools/r8/synthesis/l;

    .line 331
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/android/tools/r8/synthesis/l;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/FeatureSplit;)V

    return-object v0
.end method

.method public final a()Ljava/util/List;
    .locals 4

    .line 193
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/J;->d:Lcom/android/tools/r8/synthesis/F;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/tools/r8/synthesis/F;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 195
    iget-object v0, v0, Lcom/android/tools/r8/synthesis/F;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/synthesis/t;

    .line 196
    invoke-virtual {v2}, Lcom/android/tools/r8/synthesis/t;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 197
    invoke-virtual {v2}, Lcom/android/tools/r8/synthesis/t;->c()Lcom/android/tools/r8/synthesis/Z;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/tools/r8/synthesis/Z;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 198
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Ljava/util/Set;
    .locals 3

    .line 107
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/android/tools/r8/synthesis/J;->c:Lcom/android/tools/r8/synthesis/d;

    .line 109
    iget-object v1, v1, Lcom/android/tools/r8/synthesis/d;->b:Lcom/android/tools/r8/internal/nC;

    .line 110
    new-instance v2, Lcom/android/tools/r8/synthesis/q0;

    invoke-direct {v2, p1, v0}, Lcom/android/tools/r8/synthesis/q0;-><init>(Lcom/android/tools/r8/graph/M2;Ljava/util/Set;)V

    .line 111
    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 112
    iget-object v1, p0, Lcom/android/tools/r8/synthesis/J;->c:Lcom/android/tools/r8/synthesis/d;

    .line 113
    iget-object v1, v1, Lcom/android/tools/r8/synthesis/d;->c:Lcom/android/tools/r8/internal/nC;

    .line 114
    new-instance v2, Lcom/android/tools/r8/synthesis/r0;

    invoke-direct {v2, p1, v0}, Lcom/android/tools/r8/synthesis/r0;-><init>(Lcom/android/tools/r8/graph/M2;Ljava/util/Set;)V

    .line 115
    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/SyntheticInfoConsumer;)V
    .locals 3

    .line 559
    sget-boolean v0, Lcom/android/tools/r8/synthesis/J;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/synthesis/J;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 560
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 561
    iget-object v1, p0, Lcom/android/tools/r8/synthesis/J;->c:Lcom/android/tools/r8/synthesis/d;

    new-instance v2, Lcom/android/tools/r8/synthesis/J0;

    invoke-direct {v2, v0, p1}, Lcom/android/tools/r8/synthesis/J0;-><init>(Ljava/util/Map;Lcom/android/tools/r8/SyntheticInfoConsumer;)V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/synthesis/d;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/V60;Lcom/android/tools/r8/internal/V60;)V
    .locals 4

    .line 307
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/J;->c:Lcom/android/tools/r8/synthesis/d;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/d;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Ux;

    move-result-object v0

    .line 308
    iget-object v1, p0, Lcom/android/tools/r8/synthesis/J;->d:Lcom/android/tools/r8/synthesis/F;

    iget-object v1, v1, Lcom/android/tools/r8/synthesis/F;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/synthesis/t;

    if-eqz v1, :cond_0

    .line 309
    invoke-virtual {v1}, Lcom/android/tools/r8/synthesis/t;->g()Lcom/android/tools/r8/synthesis/a0;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/qK;->b(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v1

    const/4 v2, 0x2

    .line 310
    new-array v2, v2, [Ljava/lang/Iterable;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Lcom/android/tools/r8/internal/Vx;->b([Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/Ux;

    move-result-object v0

    .line 311
    :cond_0
    new-instance v1, Lcom/android/tools/r8/synthesis/j0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/synthesis/j0;-><init>(Lcom/android/tools/r8/synthesis/J;)V

    .line 312
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ux;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 313
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/V60;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 314
    sget-boolean p3, Lcom/android/tools/r8/synthesis/J;->g:Z

    if-nez p3, :cond_4

    invoke-interface {p2, p1}, Lcom/android/tools/r8/internal/V60;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 315
    :cond_2
    sget-boolean p2, Lcom/android/tools/r8/synthesis/J;->g:Z

    if-nez p2, :cond_4

    invoke-interface {p3, p1}, Lcom/android/tools/r8/internal/V60;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;)V
    .locals 3

    .line 292
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/J;->c:Lcom/android/tools/r8/synthesis/d;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/synthesis/d;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Ux;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ux;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    move-object v1, v0

    check-cast v1, Lcom/android/tools/r8/internal/GK;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/GK;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/GK;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/synthesis/a0;

    .line 293
    iget-object v1, v1, Lcom/android/tools/r8/synthesis/a0;->b:Lcom/android/tools/r8/synthesis/l;

    .line 294
    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/J;->d:Lcom/android/tools/r8/synthesis/F;

    iget-object v0, v0, Lcom/android/tools/r8/synthesis/F;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/synthesis/t;

    if-eqz p1, :cond_1

    .line 296
    iget-object p1, p1, Lcom/android/tools/r8/synthesis/t;->b:Lcom/android/tools/r8/synthesis/l;

    .line 297
    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)Z
    .locals 3

    .line 199
    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/synthesis/J;->g(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 200
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/synthesis/J;->f(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 201
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 202
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/J;->c:Lcom/android/tools/r8/synthesis/d;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/synthesis/d;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Ux;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ux;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/GK;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/GK;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/GK;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/synthesis/a0;

    .line 203
    iget-object p1, p1, Lcom/android/tools/r8/synthesis/a0;->b:Lcom/android/tools/r8/synthesis/l;

    .line 204
    iget-object p1, p1, Lcom/android/tools/r8/synthesis/l;->b:Lcom/android/tools/r8/graph/M2;

    .line 205
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/synthesis/J;->f(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    return p1

    .line 206
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/J;->d:Lcom/android/tools/r8/synthesis/F;

    iget-object v0, v0, Lcom/android/tools/r8/synthesis/F;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/synthesis/t;

    if-eqz p1, :cond_3

    .line 207
    iget-object p1, p1, Lcom/android/tools/r8/synthesis/t;->b:Lcom/android/tools/r8/synthesis/l;

    .line 208
    iget-object p1, p1, Lcom/android/tools/r8/synthesis/l;->b:Lcom/android/tools/r8/graph/M2;

    .line 209
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/synthesis/J;->f(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/I;)Z
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/J;->b:Lcom/android/tools/r8/synthesis/S;

    invoke-interface {p2, v0}, Lcom/android/tools/r8/synthesis/I;->a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;

    move-result-object p2

    .line 215
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/J;->d:Lcom/android/tools/r8/synthesis/F;

    .line 216
    iget-object v0, v0, Lcom/android/tools/r8/synthesis/F;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 217
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/synthesis/t;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, v0, Lcom/android/tools/r8/synthesis/t;->a:Lcom/android/tools/r8/synthesis/S$b;

    if-ne v0, p2, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/J;->c:Lcom/android/tools/r8/synthesis/d;

    .line 220
    iget-object v1, v0, Lcom/android/tools/r8/synthesis/d;->c:Lcom/android/tools/r8/internal/nC;

    .line 221
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_3

    .line 222
    iget-object v0, v0, Lcom/android/tools/r8/synthesis/d;->b:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_1

    goto :goto_1

    .line 223
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/synthesis/P;

    .line 224
    iget-object v0, v0, Lcom/android/tools/r8/synthesis/a0;->a:Lcom/android/tools/r8/synthesis/S$b;

    if-ne v0, p2, :cond_2

    goto :goto_0

    .line 225
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/synthesis/Y;

    .line 226
    iget-object v0, v0, Lcom/android/tools/r8/synthesis/a0;->a:Lcom/android/tools/r8/synthesis/S$b;

    if-ne v0, p2, :cond_4

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Ljava/util/function/BiPredicate;)Z
    .locals 1

    .line 210
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/synthesis/J;->e(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Vx;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/synthesis/k0;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/synthesis/k0;-><init>(Lcom/android/tools/r8/synthesis/J;Ljava/util/function/BiPredicate;)V

    .line 211
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 212
    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/V60;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/synthesis/a0;)Z
    .locals 1

    .line 3
    iget-object p1, p1, Lcom/android/tools/r8/synthesis/a0;->a:Lcom/android/tools/r8/synthesis/S$b;

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/J;->b:Lcom/android/tools/r8/synthesis/S;

    iget-object v0, v0, Lcom/android/tools/r8/synthesis/S;->r:Lcom/android/tools/r8/synthesis/S$b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/ev;->a(Lcom/android/tools/r8/internal/ev;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic a(Ljava/util/function/BiPredicate;Lcom/android/tools/r8/synthesis/S$b;)Z
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/J;->b:Lcom/android/tools/r8/synthesis/S;

    invoke-interface {p1, p2, v0}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/internal/Gf;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H5;
    .locals 6

    .line 21
    iget-object v2, p2, Lcom/android/tools/r8/internal/Gf;->b:Lcom/android/tools/r8/graph/H2;

    .line 22
    new-instance v5, Lcom/android/tools/r8/synthesis/u0;

    invoke-direct {v5, p2}, Lcom/android/tools/r8/synthesis/u0;-><init>(Lcom/android/tools/r8/internal/Gf;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    .line 23
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/synthesis/I;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;Ljava/util/function/Supplier;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/hC;
    .locals 2

    .line 29
    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    .line 30
    new-instance v0, Lcom/android/tools/r8/internal/eC;

    .line 31
    invoke-direct {v0}, Lcom/android/tools/r8/internal/eC;-><init>()V

    .line 32
    new-instance v1, Lcom/android/tools/r8/synthesis/I0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/synthesis/I0;-><init>(Lcom/android/tools/r8/internal/eC;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;)V

    .line 33
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/y;)Ljava/util/IdentityHashMap;
    .locals 4

    .line 14
    sget-boolean v0, Lcom/android/tools/r8/synthesis/J;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/synthesis/J;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 15
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/android/tools/r8/synthesis/J;->c:Lcom/android/tools/r8/synthesis/d;

    .line 17
    iget-object v1, v1, Lcom/android/tools/r8/synthesis/d;->d:Lcom/android/tools/r8/internal/nC;

    .line 18
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->s()Lcom/android/tools/r8/naming/r0;

    move-result-object p1

    .line 19
    new-instance v2, Ljava/util/IdentityHashMap;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 20
    new-instance v3, Lcom/android/tools/r8/synthesis/l0;

    invoke-direct {v3, v2, p1, v0}, Lcom/android/tools/r8/synthesis/l0;-><init>(Ljava/util/Map;Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/graph/u1;)V

    invoke-interface {v1, v3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-object v2
.end method

.method public final synthetic b(Lcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;)V
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/J;->d:Lcom/android/tools/r8/synthesis/F;

    .line 26
    iget-object v0, v0, Lcom/android/tools/r8/synthesis/F;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 27
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final b(Lcom/android/tools/r8/graph/H2;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/J;->d:Lcom/android/tools/r8/synthesis/F;

    iget-object v0, v0, Lcom/android/tools/r8/synthesis/F;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/synthesis/t;

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, v0, Lcom/android/tools/r8/synthesis/t;->a:Lcom/android/tools/r8/synthesis/S$b;

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/synthesis/S$b;->f()Z

    move-result p1

    return p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/J;->c:Lcom/android/tools/r8/synthesis/d;

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/synthesis/d;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Ux;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ux;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 6
    check-cast v0, Lcom/android/tools/r8/internal/GK;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/GK;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/GK;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/synthesis/a0;

    .line 8
    iget-object v0, v0, Lcom/android/tools/r8/synthesis/a0;->a:Lcom/android/tools/r8/synthesis/S$b;

    .line 9
    invoke-virtual {v0}, Lcom/android/tools/r8/synthesis/S$b;->f()Z

    move-result v0

    .line 10
    sget-boolean v1, Lcom/android/tools/r8/synthesis/J;->g:Z

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/tools/r8/synthesis/s0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/synthesis/s0;-><init>(Z)V

    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    return v0

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public final c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/hC;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/synthesis/h0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/synthesis/h0;-><init>(Lcom/android/tools/r8/synthesis/J;Lcom/android/tools/r8/graph/M2;)V

    invoke-static {v0}, Lcom/android/tools/r8/internal/AT;->b(Lcom/android/tools/r8/internal/Yx;)Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    return-object p1
.end method

.method public final c()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/tools/r8/synthesis/J;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d(Lcom/android/tools/r8/graph/M2;)Ljava/util/List;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/synthesis/J;->g(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    :cond_0
    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    new-instance v0, Lcom/android/tools/r8/internal/eC;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/eC;-><init>()V

    new-instance v1, Lcom/android/tools/r8/synthesis/G0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/synthesis/G0;-><init>(Lcom/android/tools/r8/internal/eC;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Vx;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/J;->c:Lcom/android/tools/r8/synthesis/d;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/synthesis/d;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Ux;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/synthesis/t0;

    invoke-direct {v1}, Lcom/android/tools/r8/synthesis/t0;-><init>()V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/qK;->b(Ljava/lang/Iterable;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/sK;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/synthesis/J;->d:Lcom/android/tools/r8/synthesis/F;

    iget-object v1, v1, Lcom/android/tools/r8/synthesis/F;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/synthesis/t;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/tools/r8/synthesis/t;->a:Lcom/android/tools/r8/synthesis/S$b;

    invoke-static {p1}, Lcom/android/tools/r8/internal/qK;->b(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Iterable;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    invoke-static {v1}, Lcom/android/tools/r8/internal/Vx;->b([Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/Ux;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public final f(Lcom/android/tools/r8/graph/M2;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/J;->d:Lcom/android/tools/r8/synthesis/F;

    iget-object v0, v0, Lcom/android/tools/r8/synthesis/F;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/synthesis/t;

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/android/tools/r8/synthesis/t;->a:Lcom/android/tools/r8/synthesis/S$b;

    invoke-virtual {p1}, Lcom/android/tools/r8/synthesis/S$b;->d()Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/J;->c:Lcom/android/tools/r8/synthesis/d;

    iget-object v0, v0, Lcom/android/tools/r8/synthesis/d;->c:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/synthesis/Y;

    iget-object v1, v1, Lcom/android/tools/r8/synthesis/a0;->a:Lcom/android/tools/r8/synthesis/S$b;

    invoke-virtual {v1}, Lcom/android/tools/r8/synthesis/S$b;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    sget-boolean v1, Lcom/android/tools/r8/synthesis/J;->g:Z

    if-nez v1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/synthesis/Y;

    sget-boolean v2, Lcom/android/tools/r8/synthesis/J;->g:Z

    if-nez v2, :cond_3

    iget-object v1, v1, Lcom/android/tools/r8/synthesis/a0;->a:Lcom/android/tools/r8/synthesis/S$b;

    invoke-virtual {v1}, Lcom/android/tools/r8/synthesis/S$b;->d()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    return v0
.end method

.method public final g(Lcom/android/tools/r8/graph/M2;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/J;->c:Lcom/android/tools/r8/synthesis/d;

    iget-object v1, v0, Lcom/android/tools/r8/synthesis/d;->b:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/nC;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, v0, Lcom/android/tools/r8/synthesis/d;->c:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/nC;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/J;->d:Lcom/android/tools/r8/synthesis/F;

    iget-object v0, v0, Lcom/android/tools/r8/synthesis/F;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
