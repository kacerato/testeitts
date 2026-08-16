.class public Lcom/android/tools/r8/R8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic c:Z = true


# instance fields
.field private final a:Lcom/android/tools/r8/internal/ns0;

.field private final b:Lcom/android/tools/r8/internal/nJ;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/nJ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    iget-boolean v0, p1, Lcom/android/tools/r8/internal/nJ;->w:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_0
    sget v0, Lcom/android/tools/r8/internal/ns0;->d:I

    iget-object v0, p1, Lcom/android/tools/r8/internal/nJ;->E1:Lcom/android/tools/r8/internal/qb0;

    if-eqz v0, :cond_1

    iget-object p1, v0, Lcom/android/tools/r8/internal/qb0;->a:Lcom/android/tools/r8/internal/ns0;

    goto :goto_0

    :cond_1
    const-string v0, "R8 8.10.21"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/ns0;->a(Lcom/android/tools/r8/internal/nJ;Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    return-void
.end method

.method public static synthetic A(Lcom/android/tools/r8/graph/y;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/android/tools/r8/R8;->e(Lcom/android/tools/r8/graph/y;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic B(Lcom/android/tools/r8/graph/y;Ljava/util/ArrayList;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/R8;->a(Lcom/android/tools/r8/graph/y;Ljava/util/ArrayList;Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public static synthetic C(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/tools/r8/R8;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic D(Lcom/android/tools/r8/R8;Lcom/android/tools/r8/internal/kB;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/cz;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/R8;->a(Lcom/android/tools/r8/internal/kB;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/cz;)V

    return-void
.end method

.method public static synthetic E(Lcom/android/tools/r8/internal/Oy;)V
    .locals 0

    invoke-static {p0}, Lcom/android/tools/r8/R8;->a(Lcom/android/tools/r8/internal/Oy;)V

    return-void
.end method

.method public static synthetic F(Lcom/android/tools/r8/R8;Lcom/android/tools/r8/graph/H2;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/R8;->a(Lcom/android/tools/r8/graph/H2;)Z

    move-result p0

    return p0
.end method

.method public static synthetic G(Lcom/android/tools/r8/R8;Lcom/android/tools/r8/internal/EW$a;Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/bz;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/R8;->a(Lcom/android/tools/r8/internal/EW$a;Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/bz;)V

    return-void
.end method

.method public static synthetic H(Lcom/android/tools/r8/graph/M2;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/tools/r8/R8;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p0

    return p0
.end method

.method public static synthetic I(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Oa0;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/tools/r8/R8;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Oa0;)V

    return-void
.end method

.method private a(Lcom/android/tools/r8/shaking/g;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/M70;Lcom/android/tools/r8/graph/Y5;Ljava/util/List;)Lcom/android/tools/r8/graph/y;
    .locals 2

    .line 518
    iget-object v0, p0, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    const-string v1, "Set up enqueuer"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 519
    invoke-static {p3, p4, p2, p5}, Lcom/android/tools/r8/shaking/e0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/M70;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/graph/Y5;)Lcom/android/tools/r8/shaking/N;

    move-result-object p5

    .line 520
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 521
    sget-boolean v0, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v0, :cond_1

    iget-object v1, p5, Lcom/android/tools/r8/shaking/N;->b:Lcom/android/tools/r8/shaking/N$a;

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/N$a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p6, :cond_2

    goto :goto_1

    .line 522
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 523
    :cond_3
    :goto_1
    iput-object p6, p5, Lcom/android/tools/r8/shaking/N;->r:Ljava/util/List;

    .line 524
    iput-object p1, p5, Lcom/android/tools/r8/shaking/N;->m:Lcom/android/tools/r8/shaking/g;

    .line 525
    iget-object p1, p0, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 526
    iget-object p1, p0, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    const-string p6, "Trace application"

    invoke-virtual {p1, p6}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 527
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->G()Lcom/android/tools/r8/shaking/D4;

    move-result-object p1

    iget-object p6, p0, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {p5, p1, p2, p6}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/D4;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/shaking/h0;

    move-result-object p1

    .line 528
    sget-boolean p5, Lcom/android/tools/r8/R8;->c:Z

    if-nez p5, :cond_4

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/M70;->c()V

    .line 529
    :cond_4
    iget-object p4, p0, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 530
    iget-object p4, p0, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    const-string p5, "Finalize enqueuer result"

    invoke-virtual {p4, p5}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 531
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/h0;->a()Lcom/android/tools/r8/shaking/i;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/android/tools/r8/graph/y;->b(Lcom/android/tools/r8/graph/h;)Lcom/android/tools/r8/graph/y;

    move-result-object p1

    .line 532
    invoke-static {}, Lcom/android/tools/r8/internal/nJ;->b()Z

    move-result p4

    if-eqz p4, :cond_5

    .line 533
    new-instance p4, Lcom/android/tools/r8/Z2;

    invoke-direct {p4, p1}, Lcom/android/tools/r8/Z2;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 534
    iget-object p5, p1, Lcom/android/tools/r8/graph/y;->C:Lcom/android/tools/r8/internal/Oa0;

    if-eqz p5, :cond_5

    .line 535
    invoke-interface {p4, p5}, Lcom/android/tools/r8/internal/Wr0;->accept(Ljava/lang/Object;)V

    .line 536
    :cond_5
    sget-boolean p4, Lcom/android/tools/r8/internal/EW;->a:Z

    .line 537
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result p5

    if-nez p5, :cond_6

    .line 538
    invoke-static {p3}, Lcom/android/tools/r8/internal/EW;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/EW$a;

    move-result-object p4

    goto :goto_3

    :cond_6
    if-nez p4, :cond_8

    .line 539
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/nJ$p;->b()Z

    move-result p4

    if-eqz p4, :cond_7

    goto :goto_2

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 540
    :cond_8
    :goto_2
    new-instance p4, Lcom/android/tools/r8/internal/EW$a;

    sget-object p5, Lcom/android/tools/r8/internal/FW;->b:Lcom/android/tools/r8/internal/FW;

    invoke-direct {p4, p5}, Lcom/android/tools/r8/internal/EW$a;-><init>(Lcom/android/tools/r8/internal/FW;)V

    .line 541
    :goto_3
    new-instance p5, Lcom/android/tools/r8/b3;

    invoke-direct {p5, p0, p4, p1, p2}, Lcom/android/tools/r8/b3;-><init>(Lcom/android/tools/r8/R8;Lcom/android/tools/r8/internal/EW$a;Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)V

    invoke-virtual {p3, p5}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/internal/Wr0;)V

    .line 542
    iget-object p2, p0, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-object p1
.end method

.method private static a(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/internal/Oy;)Lcom/android/tools/r8/shaking/y;
    .locals 0

    .line 383
    iget-object p0, p0, Lcom/android/tools/r8/shaking/N;->b:Lcom/android/tools/r8/shaking/N$a;

    .line 384
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/Oy;->a(Lcom/android/tools/r8/shaking/N$a;)Lcom/android/tools/r8/shaking/y;

    move-result-object p0

    return-object p0
.end method

.method private synthetic a()Ljava/lang/Boolean;
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$p;->O0:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic a(Lcom/android/tools/r8/shaking/o2;Lcom/android/tools/r8/graph/y;)Ljava/util/Collection;
    .locals 2

    .line 513
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 514
    new-instance v1, Lcom/android/tools/r8/e3;

    invoke-direct {v1, p1, v0}, Lcom/android/tools/r8/e3;-><init>(Lcom/android/tools/r8/graph/y;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/o2;->a(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method private static synthetic a(Lcom/android/tools/r8/R8Command;Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 584
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand;->a()Lcom/android/tools/r8/utils/i;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/R8;->c(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method private static synthetic a(Lcom/android/tools/r8/graph/G5;)V
    .locals 1

    .line 495
    sget-boolean v0, Lcom/android/tools/r8/R8;->c:Z

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/android/tools/r8/graph/G5;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h1;->z0()Lcom/android/tools/r8/androidapi/f;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/tools/r8/androidapi/f;->x()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Every member should have been analyzed"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Oa0;)V
    .locals 1

    .line 543
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/shaking/i;

    .line 544
    iget-object p0, p0, Lcom/android/tools/r8/shaking/i;->j:Ljava/util/Set;

    .line 545
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 546
    invoke-static {}, Lcom/android/tools/r8/internal/nJ;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    iput-object p0, p1, Lcom/android/tools/r8/internal/Oa0;->i:Ljava/util/Set;

    return-void

    .line 548
    :cond_0
    new-instance p0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p0
.end method

.method private static synthetic a(Lcom/android/tools/r8/graph/y;Ljava/util/ArrayList;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 515
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p0

    .line 516
    sget-boolean p2, Lcom/android/tools/r8/R8;->c:Z

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 517
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Lcom/android/tools/r8/graph/y;Ljava/util/List;)V
    .locals 2

    .line 389
    iget-object v0, p0, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    const-string v1, "Read keep specifications"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 390
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    .line 391
    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->k:Ljava/util/List;

    .line 392
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/a2;

    .line 393
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/P2;

    invoke-direct {v1, p2}, Lcom/android/tools/r8/P2;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/a2;->a(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Lcom/android/tools/r8/ResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 394
    iget-object p2, p0, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object p2, p2, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance v0, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    invoke-virtual {p1}, Lcom/android/tools/r8/ResourceException;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    .line 395
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void
.end method

.method private a(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)V
    .locals 11

    .line 496
    iget-object v0, p0, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->G1:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 497
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/R8;->c:Z

    if-nez v0, :cond_2

    .line 498
    iget-object v0, p1, Lcom/android/tools/r8/graph/y;->p:Lcom/android/tools/r8/shaking/B4;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 499
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 500
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->X1:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

    .line 501
    iget-object v1, p1, Lcom/android/tools/r8/graph/y;->p:Lcom/android/tools/r8/shaking/B4;

    .line 502
    iget-object v1, v1, Lcom/android/tools/r8/shaking/D4;->e:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 503
    new-instance v1, Lcom/android/tools/r8/shaking/b5;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/shaking/b5;-><init>(Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;)V

    move-object v5, v1

    move-object v9, v5

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    move-object v5, v0

    move-object v9, v1

    .line 504
    :goto_1
    invoke-static {p1}, Lcom/android/tools/r8/graph/Y5;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/Y5;

    move-result-object v4

    .line 505
    invoke-static {p1}, Lcom/android/tools/r8/internal/M70;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/M70;

    move-result-object v2

    .line 506
    new-instance v10, Lcom/android/tools/r8/shaking/N;

    sget-object v6, Lcom/android/tools/r8/shaking/N$a;->e:Lcom/android/tools/r8/shaking/N$a;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v10

    move-object v1, p1

    move-object v3, p2

    .line 507
    invoke-direct/range {v0 .. v8}, Lcom/android/tools/r8/shaking/N;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/M70;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/graph/Y5;Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;Lcom/android/tools/r8/shaking/N$a;Ljava/util/Set;Lcom/android/tools/r8/shaking/K4;)V

    .line 508
    iget-object v0, p0, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v10, p2, v0}, Lcom/android/tools/r8/shaking/N;->c(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/shaking/o2;

    move-result-object v0

    .line 509
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/shaking/o2;)Lcom/android/tools/r8/graph/j;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/y;->b(Lcom/android/tools/r8/graph/h;)Lcom/android/tools/r8/graph/y;

    .line 510
    iget-object v1, p1, Lcom/android/tools/r8/graph/y;->p:Lcom/android/tools/r8/shaking/B4;

    .line 511
    new-instance v2, Lcom/android/tools/r8/X2;

    invoke-direct {v2, v0, p1}, Lcom/android/tools/r8/X2;-><init>(Lcom/android/tools/r8/shaking/o2;Lcom/android/tools/r8/graph/y;)V

    iget-object v6, p0, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v7, p0, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    const/4 v5, 0x1

    move-object v0, v1

    move-object v1, v2

    move-object v2, v9

    move-object v3, p1

    move-object v4, v10

    move-object v8, p2

    .line 512
    invoke-static/range {v0 .. v8}, Lcom/android/tools/r8/R8;->a(Lcom/android/tools/r8/shaking/D4;Ljava/util/function/Supplier;Lcom/android/tools/r8/shaking/b5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/shaking/N;ZLcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/ns0;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method private static a(Lcom/android/tools/r8/internal/ER;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/AndroidResourceProvider;Lcom/android/tools/r8/FeatureSplit;)V
    .locals 6

    .line 468
    invoke-interface {p2}, Lcom/android/tools/r8/AndroidResourceProvider;->getAndroidResources()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/AndroidResourceInput;

    .line 469
    :try_start_0
    invoke-interface {v0}, Lcom/android/tools/r8/AndroidResourceInput;->getByteStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/E2;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 470
    invoke-interface {v0}, Lcom/android/tools/r8/AndroidResourceInput;->getPath()Lcom/android/tools/r8/ResourcePath;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/tools/r8/ResourcePath;->location()Ljava/lang/String;

    move-result-object v2

    .line 471
    sget-object v3, Lcom/android/tools/r8/a0;->a:[I

    invoke-interface {v0}, Lcom/android/tools/r8/AndroidResourceInput;->getKind()Lcom/android/tools/r8/AndroidResourceInput$Kind;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_6

    const/4 v5, 0x3

    if-eq v3, v5, :cond_5

    const/4 v5, 0x4

    if-eq v3, v5, :cond_4

    const/4 v5, 0x5

    if-eq v3, v5, :cond_2

    const/4 v5, 0x6

    if-eq v3, v5, :cond_0

    goto :goto_0

    .line 472
    :cond_0
    iget-object v3, p0, Lcom/android/tools/r8/internal/ER;->c:Ljava/util/HashMap;

    .line 473
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/FR;

    if-eqz v3, :cond_1

    .line 474
    iput-boolean v4, v3, Lcom/android/tools/r8/internal/FR;->c:Z

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    .line 475
    :cond_1
    iget-object v3, p0, Lcom/android/tools/r8/internal/ER;->c:Ljava/util/HashMap;

    new-instance v4, Lcom/android/tools/r8/internal/FR;

    invoke-direct {v4, v2, v1}, Lcom/android/tools/r8/internal/FR;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 476
    :cond_2
    iget-object v3, p0, Lcom/android/tools/r8/internal/ER;->b:Ljava/util/HashMap;

    .line 477
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/FR;

    if-eqz v3, :cond_3

    .line 478
    iput-boolean v4, v3, Lcom/android/tools/r8/internal/FR;->c:Z

    goto :goto_0

    .line 479
    :cond_3
    iget-object v3, p0, Lcom/android/tools/r8/internal/ER;->b:Ljava/util/HashMap;

    new-instance v4, Lcom/android/tools/r8/internal/FR;

    invoke-direct {v4, v2, v1}, Lcom/android/tools/r8/internal/FR;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 480
    :cond_4
    iget-object v2, p0, Lcom/android/tools/r8/internal/ER;->d:Ljava/util/ArrayList;

    .line 481
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 482
    :cond_5
    iget-object v3, p0, Lcom/android/tools/r8/internal/ER;->f:Ljava/util/HashMap;

    .line 483
    new-instance v4, Lcom/android/tools/r8/internal/FR;

    invoke-direct {v4, v2, v1}, Lcom/android/tools/r8/internal/FR;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v3, v4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    :try_start_1
    sget-object v2, Lcom/android/tools/r8/internal/ci0;->i:Lcom/android/tools/r8/internal/ai0;

    invoke-interface {v2, v1}, Lcom/android/tools/r8/internal/z50;->parseFrom([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/ci0;

    .line 485
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catch Lcom/android/tools/r8/internal/MJ; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_1
    move-exception v1

    .line 486
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 487
    :cond_6
    iget-object v3, p0, Lcom/android/tools/r8/internal/ER;->e:Ljava/util/ArrayList;

    .line 488
    new-instance v4, Lcom/android/tools/r8/internal/FR;

    invoke-direct {v4, v2, v1}, Lcom/android/tools/r8/internal/FR;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 489
    :goto_1
    new-instance v2, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    invoke-interface {v0}, Lcom/android/tools/r8/Resource;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private synthetic a(Lcom/android/tools/r8/internal/EW$a;Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/bz;)V
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {p4, p1, p2, p3, v0}, Lcom/android/tools/r8/internal/bz;->a(Lcom/android/tools/r8/internal/EW$a;Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    return-void
.end method

.method private static a(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/GR;Lcom/android/tools/r8/AndroidResourceProvider;Lcom/android/tools/r8/AndroidResourceConsumer;Lcom/android/tools/r8/FeatureSplit;)V
    .locals 3

    .line 456
    invoke-interface {p2}, Lcom/android/tools/r8/AndroidResourceProvider;->getAndroidResources()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/AndroidResourceInput;

    .line 457
    sget-object v1, Lcom/android/tools/r8/a0;->a:[I

    invoke-interface {v0}, Lcom/android/tools/r8/AndroidResourceInput;->getKind()Lcom/android/tools/r8/AndroidResourceInput$Kind;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 458
    :cond_1
    iget-object v1, p1, Lcom/android/tools/r8/internal/GR;->a:Lcom/android/tools/r8/internal/QC;

    .line 459
    invoke-interface {v0}, Lcom/android/tools/r8/AndroidResourceInput;->getPath()Lcom/android/tools/r8/ResourcePath;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/tools/r8/ResourcePath;->location()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 460
    new-instance v1, Lcom/android/tools/r8/d0;

    invoke-direct {v1, v0, p0}, Lcom/android/tools/r8/d0;-><init>(Lcom/android/tools/r8/AndroidResourceInput;Lcom/android/tools/r8/internal/Ef0;)V

    invoke-interface {p3, v1, p0}, Lcom/android/tools/r8/AndroidResourceConsumer;->accept(Lcom/android/tools/r8/AndroidResourceOutput;Lcom/android/tools/r8/DiagnosticsHandler;)V

    goto :goto_0

    .line 461
    :cond_2
    new-instance v1, Lcom/android/tools/r8/c0;

    .line 462
    iget-object v2, p1, Lcom/android/tools/r8/internal/GR;->b:Ljava/util/AbstractMap;

    .line 463
    invoke-interface {v2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/ci0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/P0;->toByteArray()[B

    move-result-object v2

    .line 464
    invoke-direct {v1, v0, p0, v2}, Lcom/android/tools/r8/c0;-><init>(Lcom/android/tools/r8/AndroidResourceInput;Lcom/android/tools/r8/internal/Ef0;[B)V

    .line 465
    invoke-interface {p3, v1, p0}, Lcom/android/tools/r8/AndroidResourceConsumer;->accept(Lcom/android/tools/r8/AndroidResourceOutput;Lcom/android/tools/r8/DiagnosticsHandler;)V

    goto :goto_0

    .line 466
    :cond_3
    new-instance v1, Lcom/android/tools/r8/d0;

    invoke-direct {v1, v0, p0}, Lcom/android/tools/r8/d0;-><init>(Lcom/android/tools/r8/AndroidResourceInput;Lcom/android/tools/r8/internal/Ef0;)V

    invoke-interface {p3, v1, p0}, Lcom/android/tools/r8/AndroidResourceConsumer;->accept(Lcom/android/tools/r8/AndroidResourceOutput;Lcom/android/tools/r8/DiagnosticsHandler;)V

    goto :goto_0

    .line 467
    :cond_4
    invoke-interface {p3, p0}, Lcom/android/tools/r8/AndroidResourceConsumer;->finished(Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method private static synthetic a(Lcom/android/tools/r8/internal/Oy;)V
    .locals 1

    .line 382
    sget-object v0, Lcom/android/tools/r8/shaking/N$a;->b:Lcom/android/tools/r8/shaking/N$a;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Oy;->a(Lcom/android/tools/r8/shaking/N$a;)Lcom/android/tools/r8/shaking/y;

    return-void
.end method

.method private synthetic a(Lcom/android/tools/r8/internal/kB;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/Oy;)V
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {p3, p1, p2, v0}, Lcom/android/tools/r8/internal/Oy;->a(Lcom/android/tools/r8/internal/kB;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    return-void
.end method

.method private synthetic a(Lcom/android/tools/r8/internal/kB;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/cz;)V
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {p3, p1, p2, v0}, Lcom/android/tools/r8/internal/cz;->a(Lcom/android/tools/r8/internal/kB;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/shaking/D4;Ljava/util/function/Supplier;Lcom/android/tools/r8/shaking/b5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/shaking/N;ZLcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/ns0;Ljava/util/concurrent/ExecutorService;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    if-eqz v1, :cond_0

    .line 550
    iget-object v3, v0, Lcom/android/tools/r8/shaking/D4;->e:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/hC;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/J2;

    move-object/from16 v5, p4

    .line 551
    iget-object v6, v5, Lcom/android/tools/r8/shaking/N;->f0:Lcom/android/tools/r8/shaking/S0;

    .line 552
    invoke-virtual {v6, v4}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/experimental/graphinfo/GraphNode;

    move-result-object v4

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 553
    invoke-virtual {v1, v4, v6}, Lcom/android/tools/r8/shaking/b5;->a(Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Ljava/io/PrintStream;)V

    goto :goto_0

    :cond_0
    move-object/from16 v5, p4

    if-eqz p5, :cond_1

    .line 554
    iget-object v3, v2, Lcom/android/tools/r8/graph/y;->p:Lcom/android/tools/r8/shaking/B4;

    .line 555
    iget-object v3, v3, Lcom/android/tools/r8/shaking/E4;->a:Lcom/android/tools/r8/shaking/C;

    .line 556
    sget-object v4, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    .line 557
    invoke-virtual {v3, v4}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/shaking/d0;)Lcom/android/tools/r8/shaking/s2;

    move-result-object v3

    .line 558
    new-instance v4, Lcom/android/tools/r8/shaking/E;

    invoke-direct {v4, v2, v3}, Lcom/android/tools/r8/shaking/E;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/shaking/s2;)V

    goto :goto_1

    .line 559
    :cond_1
    new-instance v4, Lcom/android/tools/r8/shaking/F;

    invoke-direct {v4, v2}, Lcom/android/tools/r8/shaking/F;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 560
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v4, v3, v12}, Lcom/android/tools/r8/shaking/F;->a(Ljava/util/Collection;Ljava/util/concurrent/ExecutorService;)Ljava/util/ArrayList;

    move-result-object v13

    .line 561
    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    iget-object v3, v3, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v3, v3, Lcom/android/tools/r8/internal/nJ$p;->y0:Z

    if-eqz v3, :cond_3

    .line 562
    sget-boolean v0, Lcom/android/tools/r8/R8;->c:Z

    if-nez v0, :cond_4

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 563
    :cond_3
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    :goto_2
    return-void

    :cond_5
    if-nez v1, :cond_7

    .line 564
    new-instance v14, Lcom/android/tools/r8/shaking/b5;

    const/4 v1, 0x0

    invoke-direct {v14, v1}, Lcom/android/tools/r8/shaking/b5;-><init>(Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;)V

    .line 565
    invoke-static/range {p3 .. p3}, Lcom/android/tools/r8/graph/Y5;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/Y5;

    move-result-object v5

    if-eqz p5, :cond_6

    .line 566
    invoke-static/range {p3 .. p3}, Lcom/android/tools/r8/internal/M70;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/M70;

    move-result-object v3

    .line 567
    new-instance v9, Lcom/android/tools/r8/shaking/N;

    sget-object v6, Lcom/android/tools/r8/shaking/N$a;->e:Lcom/android/tools/r8/shaking/N$a;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object/from16 v1, p3

    move-object v2, v3

    move-object/from16 v3, p8

    move-object v4, v5

    move-object v5, v14

    .line 568
    invoke-direct/range {v0 .. v8}, Lcom/android/tools/r8/shaking/N;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/M70;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/graph/Y5;Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;Lcom/android/tools/r8/shaking/N$a;Ljava/util/Set;Lcom/android/tools/r8/shaking/K4;)V

    .line 569
    invoke-virtual {v9, v12, v11}, Lcom/android/tools/r8/shaking/N;->c(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/shaking/o2;

    goto :goto_3

    .line 570
    :cond_6
    invoke-static/range {p3 .. p3}, Lcom/android/tools/r8/internal/M70;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/M70;

    move-result-object v3

    .line 571
    new-instance v15, Lcom/android/tools/r8/shaking/N;

    sget-object v7, Lcom/android/tools/r8/shaking/N$a;->g:Lcom/android/tools/r8/shaking/N$a;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v15

    move-object/from16 v2, p3

    move-object/from16 v4, p8

    move-object v6, v14

    .line 572
    invoke-direct/range {v1 .. v9}, Lcom/android/tools/r8/shaking/N;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/M70;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/graph/Y5;Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;Lcom/android/tools/r8/shaking/N$a;Ljava/util/Set;Lcom/android/tools/r8/shaking/K4;)V

    .line 573
    invoke-virtual {v15, v0, v12, v11}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/D4;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/shaking/h0;

    move-object v9, v15

    goto :goto_3

    :cond_7
    move-object v14, v1

    move-object v9, v5

    .line 574
    :goto_3
    iget-object v0, v10, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance v1, Lcom/android/tools/r8/errors/c;

    invoke-direct {v1}, Lcom/android/tools/r8/errors/c;-><init>()V

    .line 575
    iget-object v2, v9, Lcom/android/tools/r8/shaking/N;->f0:Lcom/android/tools/r8/shaking/S0;

    .line 576
    invoke-virtual {v1, v13, v2, v14}, Lcom/android/tools/r8/errors/c;->a(Ljava/util/ArrayList;Lcom/android/tools/r8/shaking/S0;Lcom/android/tools/r8/shaking/b5;)Lcom/android/tools/r8/errors/c;

    move-result-object v1

    .line 577
    invoke-virtual {v1}, Lcom/android/tools/r8/errors/c;->a()Lcom/android/tools/r8/errors/CheckDiscardDiagnostic;

    move-result-object v1

    .line 578
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    .line 579
    iget-object v0, v10, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ef0;->a()V

    return-void
.end method

.method private static a(Lcom/android/tools/r8/utils/i;)V
    .locals 1

    .line 2
    iget-object p0, p0, Lcom/android/tools/r8/utils/i;->e:Lcom/android/tools/r8/internal/hC;

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/hC;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/ZI;

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ZI;->close()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/CompilationFailedException;
        }
    .end annotation

    .line 6
    invoke-static {p1}, Lcom/android/tools/r8/internal/Kr0;->a(Lcom/android/tools/r8/internal/nJ;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 7
    iget-object v1, p1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance v2, Lcom/android/tools/r8/f3;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/tools/r8/f3;-><init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;)V

    .line 8
    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/lv;->a(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/lv$a;)V

    return-void
.end method

.method private static synthetic a(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 5
    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/R8;->c(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method private static synthetic a(Ljava/lang/String;)V
    .locals 3

    .line 387
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/util/Collection;)V
    .locals 3

    .line 580
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/H2;

    .line 581
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->z1()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    .line 582
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 583
    sget-boolean v2, Lcom/android/tools/r8/R8;->c:Z

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/i0;->D0()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 4

    .line 410
    iget-object v0, p0, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->T1:Lcom/android/tools/r8/StringConsumer;

    if-nez v0, :cond_0

    goto :goto_2

    .line 411
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 412
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/BN;

    .line 413
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/zq0;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "# Start of content from keep annotations\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 415
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 416
    const-string v3, "# "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 417
    :cond_2
    const-string v0, "# End of content from keep annotations\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    iget-object v0, p0, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v2, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->T1:Lcom/android/tools/r8/StringConsumer;

    .line 419
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 420
    invoke-static {v2, v0, v1}, Lcom/android/tools/r8/internal/lv;->a(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/StringConsumer;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method private a(Ljava/util/concurrent/ConcurrentHashMap;Lcom/android/tools/r8/graph/y;)V
    .locals 6

    .line 421
    iget-object v0, p0, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 422
    :try_start_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->S()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 423
    iget-object p1, p2, Lcom/android/tools/r8/graph/y;->O:Lcom/android/tools/r8/internal/yb0;

    .line 424
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/yb0;->d()Lcom/android/tools/r8/internal/GR;

    move-result-object p1

    goto/16 :goto_2

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :catch_1
    move-exception p1

    goto/16 :goto_4

    :catch_2
    move-exception p1

    goto/16 :goto_4

    :catch_3
    move-exception p1

    goto/16 :goto_4

    .line 425
    :cond_0
    new-instance p2, Lcom/android/tools/r8/internal/ER;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/ER;-><init>()V

    .line 426
    new-instance v1, Lcom/android/tools/r8/c3;

    invoke-direct {v1, p2}, Lcom/android/tools/r8/c3;-><init>(Lcom/android/tools/r8/internal/ER;)V

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 427
    iget-object p1, p0, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->d:Lcom/android/tools/r8/AndroidResourceProvider;

    sget-object v1, Lcom/android/tools/r8/FeatureSplit;->BASE:Lcom/android/tools/r8/FeatureSplit;

    invoke-static {p2, v0, p1, v1}, Lcom/android/tools/r8/R8;->a(Lcom/android/tools/r8/internal/ER;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/AndroidResourceProvider;Lcom/android/tools/r8/FeatureSplit;)V

    .line 428
    iget-object p1, p0, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->I()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 429
    iget-object p1, p0, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    .line 430
    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->s:Lcom/android/tools/r8/internal/Qv;

    .line 431
    iget-object p1, p1, Lcom/android/tools/r8/internal/Qv;->a:Ljava/util/ArrayList;

    .line 432
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :cond_1
    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/FeatureSplit;

    .line 433
    invoke-virtual {v4}, Lcom/android/tools/r8/FeatureSplit;->getAndroidResourceProvider()Lcom/android/tools/r8/AndroidResourceProvider;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 434
    invoke-virtual {v4}, Lcom/android/tools/r8/FeatureSplit;->getAndroidResourceProvider()Lcom/android/tools/r8/AndroidResourceProvider;

    move-result-object v5

    .line 435
    invoke-static {p2, v0, v5, v4}, Lcom/android/tools/r8/R8;->a(Lcom/android/tools/r8/internal/ER;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/AndroidResourceProvider;Lcom/android/tools/r8/FeatureSplit;)V

    goto :goto_0

    .line 436
    :cond_2
    iget-object p1, p0, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v1, p1, Lcom/android/tools/r8/internal/nJ;->f:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 437
    iput-object v1, p2, Lcom/android/tools/r8/internal/ER;->g:Ljava/util/List;

    .line 438
    :cond_3
    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->g:Lcom/android/tools/r8/ResourceShrinkerConfiguration;

    .line 439
    invoke-virtual {p1}, Lcom/android/tools/r8/ResourceShrinkerConfiguration;->getDebugConsumer()Lcom/android/tools/r8/StringConsumer;

    move-result-object p1

    if-nez p1, :cond_4

    .line 440
    sget-object p1, Lcom/android/tools/r8/internal/UZ;->a:Lcom/android/tools/r8/internal/UZ;

    goto :goto_1

    .line 441
    :cond_4
    new-instance v1, Lcom/android/tools/r8/internal/Uf0;

    invoke-direct {v1, p1, v0}, Lcom/android/tools/r8/internal/Uf0;-><init>(Lcom/android/tools/r8/StringConsumer;Lcom/android/tools/r8/DiagnosticsHandler;)V

    move-object p1, v1

    .line 442
    :goto_1
    iput-object p1, p2, Lcom/android/tools/r8/internal/ER;->h:Lcom/android/tools/r8/internal/Tl0;

    .line 443
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ER;->a()Lcom/android/tools/r8/internal/HR;

    move-result-object p1

    .line 444
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/HR;->c()Lcom/android/tools/r8/internal/GR;

    move-result-object p1

    .line 445
    :goto_2
    iget-object p2, p0, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v1, p2, Lcom/android/tools/r8/internal/nJ;->d:Lcom/android/tools/r8/AndroidResourceProvider;

    iget-object p2, p2, Lcom/android/tools/r8/internal/nJ;->e:Lcom/android/tools/r8/AndroidResourceConsumer;

    sget-object v3, Lcom/android/tools/r8/FeatureSplit;->BASE:Lcom/android/tools/r8/FeatureSplit;

    invoke-static {v0, p1, v1, p2, v3}, Lcom/android/tools/r8/R8;->a(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/GR;Lcom/android/tools/r8/AndroidResourceProvider;Lcom/android/tools/r8/AndroidResourceConsumer;Lcom/android/tools/r8/FeatureSplit;)V

    .line 446
    iget-object p2, p0, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/nJ;->I()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 447
    iget-object p2, p0, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    .line 448
    iget-object p2, p2, Lcom/android/tools/r8/internal/nJ;->s:Lcom/android/tools/r8/internal/Qv;

    .line 449
    iget-object p2, p2, Lcom/android/tools/r8/internal/Qv;->a:Ljava/util/ArrayList;

    .line 450
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_5
    :goto_3
    if-ge v2, v1, :cond_6

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/tools/r8/FeatureSplit;

    .line 451
    invoke-virtual {v3}, Lcom/android/tools/r8/FeatureSplit;->getAndroidResourceProvider()Lcom/android/tools/r8/AndroidResourceProvider;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 452
    invoke-virtual {v3}, Lcom/android/tools/r8/FeatureSplit;->getAndroidResourceProvider()Lcom/android/tools/r8/AndroidResourceProvider;

    move-result-object v4

    .line 453
    invoke-virtual {v3}, Lcom/android/tools/r8/FeatureSplit;->getAndroidResourceConsumer()Lcom/android/tools/r8/AndroidResourceConsumer;

    move-result-object v5

    .line 454
    invoke-static {v0, p1, v4, v5, v3}, Lcom/android/tools/r8/R8;->a(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/GR;Lcom/android/tools/r8/AndroidResourceProvider;Lcom/android/tools/r8/AndroidResourceConsumer;Lcom/android/tools/r8/FeatureSplit;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/tools/r8/ResourceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 455
    :goto_4
    new-instance p2, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    :cond_6
    return-void
.end method

.method private static synthetic a([Ljava/lang/String;)V
    .locals 0

    .line 585
    invoke-static {p0}, Lcom/android/tools/r8/R8;->b([Ljava/lang/String;)V

    return-void
.end method

.method private synthetic a(Lcom/android/tools/r8/graph/H2;)Z
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/internal/nJ;)V

    const/4 p1, 0x1

    return p1
.end method

.method private static synthetic a(Lcom/android/tools/r8/graph/M2;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    return p0
.end method

.method private static a(Lcom/android/tools/r8/graph/y;)Z
    .locals 3

    .line 490
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->a()Lcom/android/tools/r8/internal/H2;

    move-result-object v0

    .line 491
    iget-boolean v1, v0, Lcom/android/tools/r8/internal/H2;->a:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 492
    iget-boolean v0, v0, Lcom/android/tools/r8/internal/H2;->g:Z

    if-eqz v0, :cond_0

    .line 493
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/j;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->e()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/H2;

    .line 494
    new-instance v1, Lcom/android/tools/r8/Y2;

    invoke-direct {v1}, Lcom/android/tools/r8/Y2;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/H2;->k(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    return v2
.end method

.method private a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/utils/i;Ljava/util/concurrent/ExecutorService;)Z
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p2

    .line 396
    iget-object v2, v0, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v3, v2, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v3, v3, Lcom/android/tools/r8/internal/nJ$p;->G0:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    return v4

    .line 397
    :cond_0
    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->E1:Lcom/android/tools/r8/internal/qb0;

    if-eqz v2, :cond_1

    return v4

    .line 398
    :cond_1
    new-instance v2, Lcom/android/tools/r8/dex/c;

    .line 399
    new-instance v3, Lcom/android/tools/r8/utils/i;

    .line 400
    iget-object v6, v1, Lcom/android/tools/r8/utils/i;->a:Lcom/android/tools/r8/internal/hC;

    .line 401
    iget-object v7, v1, Lcom/android/tools/r8/utils/i;->b:Lcom/android/tools/r8/internal/nC;

    iget-object v8, v1, Lcom/android/tools/r8/utils/i;->c:Lcom/android/tools/r8/internal/hC;

    iget-object v9, v1, Lcom/android/tools/r8/utils/i;->d:Lcom/android/tools/r8/internal/hC;

    iget-object v10, v1, Lcom/android/tools/r8/utils/i;->e:Lcom/android/tools/r8/internal/hC;

    iget-object v11, v1, Lcom/android/tools/r8/utils/i;->f:Lcom/android/tools/r8/v0;

    iget-object v12, v1, Lcom/android/tools/r8/utils/i;->g:Lcom/android/tools/r8/v0$a;

    .line 402
    sget v1, Lcom/android/tools/r8/internal/hC;->c:I

    .line 403
    sget-object v14, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    move-object v5, v3

    move-object v13, v14

    .line 404
    invoke-direct/range {v5 .. v14}, Lcom/android/tools/r8/utils/i;-><init>(Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/v0;Lcom/android/tools/r8/v0$a;Ljava/util/List;Ljava/util/List;)V

    .line 405
    iget-object v1, v0, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v5, v0, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-direct {v2, v3, v1, v5}, Lcom/android/tools/r8/dex/c;-><init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/ns0;)V

    .line 406
    iget-object v1, v2, Lcom/android/tools/r8/dex/c;->d:Lcom/android/tools/r8/utils/i;

    invoke-virtual {v1}, Lcom/android/tools/r8/utils/i;->i()Lcom/android/tools/r8/v0;

    move-result-object v1

    .line 407
    new-instance v3, Lcom/android/tools/r8/internal/mt;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/mt;-><init>()V

    move-object/from16 v5, p3

    .line 408
    invoke-virtual {v2, v1, v5, v3}, Lcom/android/tools/r8/dex/c;->a(Lcom/android/tools/r8/v0;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/qt;)Lcom/android/tools/r8/graph/w4;

    move-result-object v1

    .line 409
    sget-boolean v2, Lcom/android/tools/r8/R8;->c:Z

    if-nez v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-virtual {v2, v3, v1}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/w4;)V

    :cond_2
    return v4
.end method

.method private static b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/g3;
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->a()Lcom/android/tools/r8/graph/x0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/x0;->a()Lcom/android/tools/r8/graph/g3;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/R8Command;Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/R8;->a(Lcom/android/tools/r8/R8Command;Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public static b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/utils/i;Ljava/util/concurrent/ExecutorService;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/y<",
            "*>;",
            "Lcom/android/tools/r8/utils/i;",
            "Ljava/util/concurrent/ExecutorService;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 3
    iget-object v1, v0, Lcom/android/tools/r8/internal/nJ;->t:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/QD;->a(Ljava/util/List;Ljava/util/Collection;)V

    .line 4
    :try_start_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->y()Lcom/android/tools/r8/dex/W;

    move-result-object v1

    .line 5
    sget-boolean v2, Lcom/android/tools/r8/R8;->c:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    iget-object v2, v0, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    instance-of v2, v2, Lcom/android/tools/r8/ClassFileConsumer;

    if-eqz v2, :cond_2

    .line 7
    new-instance v2, Lcom/android/tools/r8/internal/T8;

    invoke-direct {v2, p0, v1}, Lcom/android/tools/r8/internal/T8;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/W;)V

    .line 8
    iget-object p0, v0, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    check-cast p0, Lcom/android/tools/r8/ClassFileConsumer;

    .line 9
    invoke-virtual {v2, p0, p1, p2}, Lcom/android/tools/r8/internal/T8;->a(Lcom/android/tools/r8/ClassFileConsumer;Lcom/android/tools/r8/utils/i;Ljava/util/concurrent/ExecutorService;)V

    return-void

    .line 10
    :cond_2
    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->E1:Lcom/android/tools/r8/internal/qb0;

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/qb0;->b()Lcom/android/tools/r8/internal/pb0;

    move-result-object v0

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/pb0;->b(Lcom/android/tools/r8/graph/y;)V

    .line 13
    :cond_3
    invoke-static {p0, v1}, Lcom/android/tools/r8/dex/k;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/W;)Lcom/android/tools/r8/dex/k;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/dex/k;->a(Lcom/android/tools/r8/utils/i;Ljava/util/concurrent/ExecutorService;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 14
    :goto_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Cannot write application"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private b(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)V
    .locals 10

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->G1:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 21
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/R8;->c:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Hz;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 22
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/android/tools/r8/graph/Y5;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/Y5;

    move-result-object v4

    .line 23
    invoke-static {p1}, Lcom/android/tools/r8/internal/M70;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/M70;

    move-result-object v2

    .line 24
    new-instance v9, Lcom/android/tools/r8/shaking/N;

    sget-object v6, Lcom/android/tools/r8/shaking/N$a;->d:Lcom/android/tools/r8/shaking/N$a;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v0, v9

    move-object v1, p1

    move-object v3, p2

    .line 25
    invoke-direct/range {v0 .. v8}, Lcom/android/tools/r8/shaking/N;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/M70;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/graph/Y5;Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;Lcom/android/tools/r8/shaking/N$a;Ljava/util/Set;Lcom/android/tools/r8/shaking/K4;)V

    .line 26
    iget-object v0, p0, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    .line 27
    invoke-virtual {v9, p2, v0}, Lcom/android/tools/r8/shaking/N;->c(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/shaking/o2;

    move-result-object p2

    .line 28
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/shaking/o2;)Lcom/android/tools/r8/graph/j;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/y;->b(Lcom/android/tools/r8/graph/h;)Lcom/android/tools/r8/graph/y;

    return-void
.end method

.method private synthetic b(Lcom/android/tools/r8/internal/EW$a;Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/bz;)V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {p4, p1, p2, p3, v0}, Lcom/android/tools/r8/internal/bz;->a(Lcom/android/tools/r8/internal/EW$a;Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    return-void
.end method

.method private static synthetic b(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 15
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/R8;->c(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void

    :catchall_0
    move-exception p0

    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 17
    throw p0
.end method

.method private static b([Ljava/lang/String;)V
    .locals 5

    .line 29
    sget-object v0, Lcom/android/tools/r8/origin/a;->f:Lcom/android/tools/r8/origin/a;

    invoke-static {p0, v0}, Lcom/android/tools/r8/R8Command;->parse([Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/R8Command$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->build()Lcom/android/tools/r8/BaseCommand;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/R8Command;

    .line 30
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand;->isPrintHelp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    const-string p0, "R8_THROW_EXCEPTION_FOR_TESTING_RETRACE"

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 32
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 33
    sget-object v0, Lcom/android/tools/r8/o0;->b:Lcom/android/tools/r8/internal/QC;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    const-string v1, " and each <argfile> is a file containing additional arguments (one per line)"

    const-string v2, " and options are:"

    const-string v3, "Usage: r8 [options] [@<argfile>] <input-files>"

    const-string v4, " where <input-files> are any combination class, zip, or jar files"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 36
    new-instance v1, Lcom/android/tools/r8/ParseFlagPrinter;

    invoke-direct {v1}, Lcom/android/tools/r8/ParseFlagPrinter;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/o0;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/hC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/hC;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/ParseFlagPrinter;->addFlags(Ljava/util/List;)Lcom/android/tools/r8/ParseFlagPrinter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/ParseFlagPrinter;->appendLinesToBuilder(Ljava/lang/StringBuilder;)V

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 39
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Intentional exception for testing retrace."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand;->isPrintVersion()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 41
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lcom/android/tools/r8/Version;->getVersionString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "R8 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 42
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/R8Command;->b()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 43
    invoke-static {v0}, Lcom/android/tools/r8/internal/Kr0;->a(Lcom/android/tools/r8/internal/nJ;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 44
    :try_start_0
    iget-object v2, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance v3, Lcom/android/tools/r8/W2;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/tools/r8/W2;-><init>(Lcom/android/tools/r8/R8Command;Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;)V

    .line 45
    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/lv;->a(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/lv$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void

    :catchall_0
    move-exception p0

    .line 47
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 48
    throw p0
.end method

.method private static synthetic c(Lcom/android/tools/r8/graph/y;)Ljava/lang/Boolean;
    .locals 0

    .line 7
    invoke-static {p0}, Lcom/android/tools/r8/R8;->a(Lcom/android/tools/r8/graph/y;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/shaking/o2;Lcom/android/tools/r8/graph/y;)Ljava/util/Collection;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/tools/r8/R8;->a(Lcom/android/tools/r8/shaking/o2;Lcom/android/tools/r8/graph/y;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 2
    iget-object v0, p1, Lcom/android/tools/r8/internal/nJ;->D1:Lcom/android/tools/r8/internal/hb0;

    .line 3
    iget-boolean v0, v0, Lcom/android/tools/r8/internal/hb0;->a:Z

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    new-instance v0, Lcom/android/tools/r8/s0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/s0;-><init>(Lcom/android/tools/r8/internal/nJ;)V

    invoke-virtual {v0, p0, p2}, Lcom/android/tools/r8/s0;->a(Lcom/android/tools/r8/utils/i;Ljava/util/concurrent/ExecutorService;)V
    :try_end_0
    .catch Lcom/android/tools/r8/ResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 5
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 6
    :cond_0
    new-instance v0, Lcom/android/tools/r8/R8;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/R8;-><init>(Lcom/android/tools/r8/internal/nJ;)V

    invoke-virtual {v0, p0, p2}, Lcom/android/tools/r8/R8;->a(Lcom/android/tools/r8/utils/i;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method private static synthetic d(Lcom/android/tools/r8/graph/y;)Ljava/util/Collection;
    .locals 0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/j;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->a()Lcom/android/tools/r8/graph/x0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/x0;->e()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method private static e(Lcom/android/tools/r8/graph/y;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {p0}, Lcom/android/tools/r8/graph/M3;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/M3;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/tools/r8/graph/R3;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M3;)Lcom/android/tools/r8/graph/R3;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/j;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/graph/R3;->a(Ljava/util/Collection;)Lcom/android/tools/r8/graph/R3$a;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/tools/r8/graph/R3$a;->f:Lcom/android/tools/r8/graph/R3$a;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private f(Lcom/android/tools/r8/graph/y;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->W()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/tools/r8/graph/M3;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/M3;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/tools/r8/graph/R3;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M3;)Lcom/android/tools/r8/graph/R3;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/R3;->a(Ljava/util/Collection;)Lcom/android/tools/r8/graph/R3$a;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/tools/r8/graph/R3$a;->f:Lcom/android/tools/r8/graph/R3$a;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic g(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-static {p0}, Lcom/android/tools/r8/graph/l;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/l$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/l$a;->a()Lcom/android/tools/r8/graph/l;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/l;)V

    return-void
.end method

.method private static synthetic h(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-static {p0}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/y;)V

    return-void
.end method

.method private static synthetic i(Lcom/android/tools/r8/graph/y;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/android/tools/r8/R8;->a(Lcom/android/tools/r8/graph/y;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic j(Lcom/android/tools/r8/graph/y;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/android/tools/r8/R8;->a(Lcom/android/tools/r8/graph/y;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-static {p0}, Lcom/android/tools/r8/R8;->g(Lcom/android/tools/r8/graph/y;)V

    return-void
.end method

.method public static synthetic l(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-static {p0}, Lcom/android/tools/r8/R8;->h(Lcom/android/tools/r8/graph/y;)V

    return-void
.end method

.method public static synthetic m(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/R8;->b(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5

    array-length v0, p0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/d3;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/d3;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/tools/r8/internal/lv;->a(Lcom/android/tools/r8/internal/mv;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    sget-boolean v0, Lcom/android/tools/r8/R8Command;->b0:Z

    sget-object v0, Lcom/android/tools/r8/o0;->b:Lcom/android/tools/r8/internal/QC;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " and each <argfile> is a file containing additional arguments (one per line)"

    const-string v2, " and options are:"

    const-string v3, "Usage: r8 [options] [@<argfile>] <input-files>"

    const-string v4, " where <input-files> are any combination class, zip, or jar files"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    new-instance v1, Lcom/android/tools/r8/ParseFlagPrinter;

    invoke-direct {v1}, Lcom/android/tools/r8/ParseFlagPrinter;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/o0;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/hC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/hC;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/ParseFlagPrinter;->addFlags(Ljava/util/List;)Lcom/android/tools/r8/ParseFlagPrinter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/ParseFlagPrinter;->appendLinesToBuilder(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invalid invocation."

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/zq0;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic n(Lcom/android/tools/r8/R8;Lcom/android/tools/r8/internal/kB;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/Oy;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/R8;->a(Lcom/android/tools/r8/internal/kB;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/Oy;)V

    return-void
.end method

.method public static synthetic o(Lcom/android/tools/r8/R8;Lcom/android/tools/r8/graph/y;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/R8;->f(Lcom/android/tools/r8/graph/y;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lcom/android/tools/r8/R8;Lcom/android/tools/r8/internal/EW$a;Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/bz;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/R8;->b(Lcom/android/tools/r8/internal/EW$a;Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/bz;)V

    return-void
.end method

.method public static synthetic q(Lcom/android/tools/r8/graph/y;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/android/tools/r8/R8;->i(Lcom/android/tools/r8/graph/y;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Lcom/android/tools/r8/graph/y;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/android/tools/r8/R8;->j(Lcom/android/tools/r8/graph/y;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static run(Lcom/android/tools/r8/R8Command;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/CompilationFailedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand;->a()Lcom/android/tools/r8/utils/i;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/R8Command;->b()Lcom/android/tools/r8/internal/nJ;

    move-result-object p0

    .line 3
    invoke-static {v0, p0}, Lcom/android/tools/r8/R8;->a(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;)V

    return-void
.end method

.method public static run(Lcom/android/tools/r8/R8Command;Ljava/util/concurrent/ExecutorService;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/CompilationFailedException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand;->a()Lcom/android/tools/r8/utils/i;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/R8Command;->b()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->g()Lcom/android/tools/r8/internal/Ef0;

    move-result-object p0

    new-instance v2, Lcom/android/tools/r8/a3;

    invoke-direct {v2, v0, v1, p1}, Lcom/android/tools/r8/a3;-><init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;)V

    .line 7
    invoke-static {p0, v2}, Lcom/android/tools/r8/internal/lv;->a(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/lv$a;)V

    return-void
.end method

.method public static synthetic s(Lcom/android/tools/r8/graph/y;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/android/tools/r8/R8;->c(Lcom/android/tools/r8/graph/y;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t(Lcom/android/tools/r8/R8;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/R8;->a()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/internal/Oy;)Lcom/android/tools/r8/shaking/y;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/tools/r8/R8;->a(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/internal/Oy;)Lcom/android/tools/r8/shaking/y;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v(Lcom/android/tools/r8/graph/y;)Ljava/util/Collection;
    .locals 0

    invoke-static {p0}, Lcom/android/tools/r8/R8;->d(Lcom/android/tools/r8/graph/y;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/R8;->a(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public static synthetic x(Lcom/android/tools/r8/graph/G5;)V
    .locals 0

    invoke-static {p0}, Lcom/android/tools/r8/R8;->a(Lcom/android/tools/r8/graph/G5;)V

    return-void
.end method

.method public static synthetic y(Lcom/android/tools/r8/utils/i;)V
    .locals 0

    invoke-static {p0}, Lcom/android/tools/r8/R8;->a(Lcom/android/tools/r8/utils/i;)V

    return-void
.end method

.method public static synthetic z([Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/tools/r8/R8;->a([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/utils/i;Ljava/util/concurrent/ExecutorService;)V
    .locals 23

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v15, p2

    .line 9
    iget-object v1, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    const-string v2, "Run prelude"

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 10
    sget-boolean v19, Lcom/android/tools/r8/R8;->c:Z

    if-nez v19, :cond_1

    iget-object v1, v8, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    :goto_0
    if-nez v19, :cond_3

    .line 11
    iget-object v1, v8, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    new-instance v2, Lcom/android/tools/r8/g3;

    invoke-direct {v2, v8}, Lcom/android/tools/r8/g3;-><init>(Lcom/android/tools/r8/R8;)V

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/B4;->a(Lcom/android/tools/r8/internal/nJ;Ljava/util/function/Supplier;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 12
    :cond_3
    :goto_1
    iget-object v1, v8, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    iget-boolean v1, v1, Lcom/android/tools/r8/internal/nJ;->w:Z

    if-eqz v1, :cond_4

    .line 13
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 14
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 15
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .line 16
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "R8 is running with total memory:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "R8 is running with free memory:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "R8 is running with max memory:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 19
    :cond_4
    iget-object v1, v8, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->Y()V

    .line 20
    iget-object v1, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 21
    :try_start_0
    iget-object v1, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    const-string v2, "Read app"

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 22
    new-instance v1, Lcom/android/tools/r8/dex/c;

    iget-object v2, v8, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v3, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-direct {v1, v9, v2, v3}, Lcom/android/tools/r8/dex/c;-><init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/ns0;)V

    .line 23
    invoke-virtual {v1, v15}, Lcom/android/tools/r8/dex/c;->a(Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/graph/w4;

    move-result-object v2

    .line 24
    iget-object v3, v8, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v3, v3, Lcom/android/tools/r8/internal/nJ;->E1:Lcom/android/tools/r8/internal/qb0;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-eqz v3, :cond_5

    .line 25
    :try_start_1
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/qb0;->b()Lcom/android/tools/r8/internal/pb0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/pb0;->c()Ljava/util/List;

    move-result-object v3
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    move-object v14, v3

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v2, v9

    goto/16 :goto_23

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v2, v9

    goto/16 :goto_22

    .line 26
    :cond_5
    :try_start_2
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/w4;->j()Ljava/util/List;

    move-result-object v3

    goto :goto_2

    .line 27
    :goto_3
    iget-object v3, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    const-string v4, "To direct app"

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 28
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/w4;->i()Lcom/android/tools/r8/graph/g3;

    move-result-object v2

    .line 29
    iget-object v3, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 30
    iget-object v3, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 31
    iget-object v3, v8, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    .line 32
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v3

    iget-object v4, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    .line 33
    invoke-virtual {v3, v4, v2}, Lcom/android/tools/r8/internal/WR;->a(Lcom/android/tools/r8/internal/ns0;Lcom/android/tools/r8/graph/x0;)V

    .line 34
    iget-object v3, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    const-string v4, "Read main dex classes"

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 35
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/dex/c;->a(Lcom/android/tools/r8/graph/g3;)Lcom/android/tools/r8/shaking/o2;

    move-result-object v1

    .line 36
    iget-object v3, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 37
    iget-object v3, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    const-string v4, "Close providers"

    new-instance v5, Lcom/android/tools/r8/M2;

    invoke-direct {v5, v9}, Lcom/android/tools/r8/M2;-><init>(Lcom/android/tools/r8/utils/i;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/Sr0;)V

    .line 38
    iget-object v3, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    const-string v4, "Create AppView"

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 39
    invoke-static {v2, v1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/shaking/o2;)Lcom/android/tools/r8/graph/y;

    move-result-object v13

    .line 40
    iget-object v1, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 41
    iget-object v1, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    const-string v2, "Set app services"

    new-instance v3, Lcom/android/tools/r8/N2;

    invoke-direct {v3, v13}, Lcom/android/tools/r8/N2;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/Sr0;)V

    .line 42
    iget-object v1, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    const-string v2, "Collect synthetic inputs"

    new-instance v3, Lcom/android/tools/r8/O2;

    invoke-direct {v3, v13}, Lcom/android/tools/r8/O2;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/Sr0;)V

    .line 43
    iget-object v1, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    const-string v2, "Register references and more setup"

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    const/4 v12, 0x0

    if-nez v19, :cond_6

    .line 44
    :try_start_3
    new-array v1, v12, [Lcom/android/tools/r8/internal/m4;

    invoke-static {v13, v1}, Lcom/android/tools/r8/internal/n4;->a(Lcom/android/tools/r8/graph/y;[Lcom/android/tools/r8/internal/m4;)V
    :try_end_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 45
    :cond_6
    :try_start_4
    invoke-direct {v8, v13, v14}, Lcom/android/tools/r8/R8;->a(Lcom/android/tools/r8/graph/y;Ljava/util/List;)V

    .line 46
    iget-object v1, v8, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    .line 47
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->O()Z

    move-result v2
    :try_end_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-eqz v2, :cond_7

    :try_start_5
    invoke-static {v13}, Lcom/android/tools/r8/kotlin/b0;->a(Lcom/android/tools/r8/graph/y;)Z

    move-result v2
    :try_end_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    goto :goto_4

    :cond_7
    move v2, v12

    .line 48
    :goto_4
    :try_start_6
    iput-boolean v2, v1, Lcom/android/tools/r8/internal/nJ;->o0:Z

    .line 49
    iget-object v1, v8, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->G1:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_6
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-nez v1, :cond_a

    .line 50
    :try_start_7
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    .line 51
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->n2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/h;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 52
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->o2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/h;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    if-eqz v1, :cond_8

    goto :goto_5

    .line 53
    :cond_8
    new-instance v1, Lcom/android/tools/r8/internal/If;

    const-string v2, "Tracing for legacy multi dex is not possible without all classpath libraries (java.lang.annotation.Annotation is missing)"

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    :cond_9
    new-instance v1, Lcom/android/tools/r8/internal/If;

    const-string v2, "Tracing for legacy multi dex is not possible without all classpath libraries (java.lang.Enum is missing)"

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_7
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 55
    :cond_a
    :goto_5
    :try_start_8
    invoke-static {v13}, Lcom/android/tools/r8/internal/fm;->a(Lcom/android/tools/r8/graph/y;)V

    .line 56
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    iget-object v2, v8, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/EI;->a(Lcom/android/tools/r8/graph/h;Lcom/android/tools/r8/internal/nJ;)V

    .line 57
    iget-object v1, v8, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-static {v1}, Lcom/android/tools/r8/internal/H5;->a(Lcom/android/tools/r8/internal/nJ;)V

    .line 58
    iget-object v1, v8, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    iget-boolean v1, v1, Lcom/android/tools/r8/internal/nJ;->H:Z
    :try_end_8
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-eqz v1, :cond_b

    .line 59
    :try_start_9
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/Lu;->a(Lcom/android/tools/r8/graph/u1;)V
    :try_end_9
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 60
    :cond_b
    :try_start_a
    iget-object v1, v8, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->k()I

    move-result v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/oJ;->b(I)Z

    move-result v1
    :try_end_a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    if-eqz v1, :cond_c

    .line 61
    :try_start_b
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/uc0;->a(Lcom/android/tools/r8/graph/u1;)V
    :try_end_b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 62
    :cond_c
    :try_start_c
    iget-object v1, v8, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->d0()Z

    move-result v1
    :try_end_c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    if-eqz v1, :cond_d

    .line 63
    :try_start_d
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/Pw0;->d(Lcom/android/tools/r8/graph/u1;)V
    :try_end_d
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 64
    :cond_d
    :try_start_e
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    .line 65
    invoke-static {v1}, Lcom/android/tools/r8/internal/Fb;->a(Lcom/android/tools/r8/graph/u1;)V

    .line 66
    invoke-static {v13}, Lcom/android/tools/r8/internal/o9;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/o9;

    move-result-object v1

    .line 67
    invoke-static {v13}, Lcom/android/tools/r8/internal/m9;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/m9;

    move-result-object v2

    iget-object v3, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    .line 68
    invoke-virtual {v2, v15, v1, v3}, Lcom/android/tools/r8/internal/m9;->a(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/o9;Lcom/android/tools/r8/internal/ns0;)V

    .line 69
    invoke-virtual {v1, v13}, Lcom/android/tools/r8/internal/o9;->b(Lcom/android/tools/r8/graph/y;)V

    .line 70
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/y;->u()Lcom/android/tools/r8/synthesis/J;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/synthesis/J;->b()Z

    move-result v1
    :try_end_e
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    if-eqz v1, :cond_e

    .line 71
    :try_start_f
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/y;->F()V
    :try_end_f
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 72
    :cond_e
    :try_start_10
    iget-object v1, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 73
    iget-object v1, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    const-string v2, "Strip unused code"

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 74
    iget-object v1, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    const-string v2, "Before enqueuer"

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;
    :try_end_10
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 75
    :try_start_11
    invoke-static {v13}, Lcom/android/tools/r8/shaking/B3;->a(Lcom/android/tools/r8/graph/y;)Ljava/util/ArrayList;

    move-result-object v11

    .line 76
    invoke-static {v13}, Lcom/android/tools/r8/internal/M70;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/M70;

    move-result-object v5

    .line 77
    invoke-static {}, Lcom/android/tools/r8/shaking/l;->a()Lcom/android/tools/r8/shaking/k;

    move-result-object v1

    .line 78
    invoke-static {v13}, Lcom/android/tools/r8/graph/Y5;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/Y5;

    move-result-object v10

    .line 79
    iget-object v2, v8, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    .line 80
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->B()Lcom/android/tools/r8/shaking/o3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/o3;->p()Ljava/util/List;

    move-result-object v2

    .line 81
    invoke-static {v11, v2}, Lcom/android/tools/r8/internal/vK;->a(Ljava/util/ArrayList;Ljava/util/List;)Lcom/android/tools/r8/internal/Ux;

    move-result-object v2

    .line 82
    invoke-static {v13, v5, v10, v2}, Lcom/android/tools/r8/shaking/D4;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/M70;Lcom/android/tools/r8/graph/Y5;Ljava/lang/Iterable;)Lcom/android/tools/r8/shaking/I4;

    move-result-object v2

    .line 83
    invoke-virtual {v2, v1}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/shaking/k;)Lcom/android/tools/r8/shaking/I4;

    move-result-object v2

    .line 84
    invoke-virtual {v2, v15}, Lcom/android/tools/r8/shaking/I4;->b(Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/shaking/I4;

    move-result-object v2

    .line 85
    invoke-virtual {v2, v15}, Lcom/android/tools/r8/shaking/I4;->a(Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/shaking/D4;

    move-result-object v2

    .line 86
    invoke-virtual {v13, v2}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/shaking/D4;)V

    .line 87
    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/k;->a()Lcom/android/tools/r8/shaking/l;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/shaking/l;)V

    .line 88
    iget-object v1, v8, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->G1:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    if-nez v1, :cond_11

    if-nez v19, :cond_10

    .line 89
    :try_start_12
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Hz;->j()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_6

    :cond_f
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v2, v9

    goto/16 :goto_21

    .line 90
    :cond_10
    :goto_6
    iget-object v1, v8, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->G1:Ljava/util/List;

    .line 91
    invoke-static {v13, v5, v10, v1}, Lcom/android/tools/r8/shaking/B4;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/M70;Lcom/android/tools/r8/graph/Y5;Ljava/lang/Iterable;)Lcom/android/tools/r8/shaking/C4;

    move-result-object v1

    .line 92
    invoke-virtual {v1, v15}, Lcom/android/tools/r8/shaking/C4;->c(Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/shaking/B4;

    move-result-object v1

    .line 93
    iput-object v1, v13, Lcom/android/tools/r8/graph/y;->p:Lcom/android/tools/r8/shaking/B4;

    .line 94
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->k()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 95
    :cond_11
    :try_start_13
    iget-object v1, v8, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->W()Z

    move-result v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    const/4 v7, 0x0

    if-eqz v1, :cond_12

    :try_start_14
    sget-object v1, Lcom/android/tools/r8/shaking/N$a;->b:Lcom/android/tools/r8/shaking/N$a;

    .line 96
    new-instance v2, Lcom/android/tools/r8/shaking/g;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/shaking/g;-><init>(Lcom/android/tools/r8/shaking/N$a;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    move-object v6, v2

    goto :goto_7

    :cond_12
    move-object v6, v7

    .line 97
    :goto_7
    :try_start_15
    iget-object v1, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 98
    iget-object v1, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    const-string v2, "Enqueuer"

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    move-object/from16 v1, p0

    move-object v2, v6

    move-object/from16 v3, p2

    move-object v4, v13

    move-object/from16 v20, v6

    move-object v6, v10

    move-object v7, v14

    .line 99
    invoke-direct/range {v1 .. v7}, Lcom/android/tools/r8/R8;->a(Lcom/android/tools/r8/shaking/g;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/M70;Lcom/android/tools/r8/graph/Y5;Ljava/util/List;)Lcom/android/tools/r8/graph/y;

    move-result-object v1

    .line 100
    iget-object v2, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 101
    iget-object v2, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    const-string v3, "After enqueuer"

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    if-nez v19, :cond_13

    .line 102
    :try_start_16
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/y;->G()Lcom/android/tools/r8/shaking/D4;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/shaking/D4;->a(Lcom/android/tools/r8/graph/y;)V

    :cond_13
    if-nez v19, :cond_14

    .line 103
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/y;->G()Lcom/android/tools/r8/shaking/D4;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/shaking/D4;->c(Lcom/android/tools/r8/graph/y;)V

    :cond_14
    if-nez v19, :cond_15

    .line 104
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/y;->G()Lcom/android/tools/r8/shaking/D4;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/shaking/D4;->d(Lcom/android/tools/r8/graph/y;)V

    :cond_15
    if-nez v19, :cond_16

    .line 105
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/y;->G()Lcom/android/tools/r8/shaking/D4;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/android/tools/r8/shaking/D4;->b(Lcom/android/tools/r8/graph/y;)V

    :cond_16
    if-nez v19, :cond_17

    .line 106
    new-array v2, v12, [Lcom/android/tools/r8/internal/m4;

    invoke-static {v13, v2}, Lcom/android/tools/r8/internal/n4;->a(Lcom/android/tools/r8/graph/y;[Lcom/android/tools/r8/internal/m4;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 107
    :cond_17
    :try_start_17
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/y;->G()Lcom/android/tools/r8/shaking/D4;

    move-result-object v2

    iget-object v3, v8, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/android/tools/r8/shaking/D4;->a(Lcom/android/tools/r8/internal/nJ;)V

    .line 108
    iget-object v2, v8, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->a()Lcom/android/tools/r8/internal/H2;

    move-result-object v2

    .line 109
    iget-boolean v2, v2, Lcom/android/tools/r8/internal/H2;->a:Z
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    if-eqz v2, :cond_18

    .line 110
    :try_start_18
    const-string v2, "com.android.tools.r8.reportUnknownApiReferences"

    .line 111
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 112
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/y;->d()Lcom/android/tools/r8/androidapi/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/androidapi/a;->b()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    .line 113
    :cond_18
    :try_start_19
    iget-object v2, v8, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->S1:Lcom/android/tools/r8/StringConsumer;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    if-eqz v2, :cond_19

    .line 114
    :try_start_1a
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 115
    new-instance v3, Ljava/io/PrintStream;

    invoke-direct {v3, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 116
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/h;->m()Lcom/android/tools/r8/shaking/i;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/Q2;

    invoke-direct {v5}, Lcom/android/tools/r8/Q2;-><init>()V

    invoke-static {v4, v3, v5}, Lcom/android/tools/r8/shaking/I4;->a(Lcom/android/tools/r8/shaking/i;Ljava/io/PrintStream;Ljava/util/function/Predicate;)V

    .line 117
    invoke-virtual {v3}, Ljava/io/PrintStream;->flush()V

    .line 118
    iget-object v3, v8, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v4, v3, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    iget-object v3, v3, Lcom/android/tools/r8/internal/nJ;->S1:Lcom/android/tools/r8/StringConsumer;

    .line 119
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-static {v4, v3, v2}, Lcom/android/tools/r8/internal/lv;->a(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/StringConsumer;Ljava/lang/String;)V

    .line 121
    iget-object v2, v8, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v3, v2, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->S1:Lcom/android/tools/r8/StringConsumer;

    invoke-static {v3, v2}, Lcom/android/tools/r8/internal/lv;->a(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/StringConsumer;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    .line 122
    :cond_19
    :try_start_1b
    iget-object v2, v8, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->W()Z

    move-result v2
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    if-eqz v2, :cond_1e

    .line 123
    :try_start_1c
    new-instance v2, Lcom/android/tools/r8/R2;

    invoke-direct {v2}, Lcom/android/tools/r8/R2;-><init>()V

    .line 124
    iget-object v3, v13, Lcom/android/tools/r8/graph/y;->C:Lcom/android/tools/r8/internal/Oa0;

    if-eqz v3, :cond_1a

    iget-object v3, v3, Lcom/android/tools/r8/internal/Oa0;->c:Lcom/android/tools/r8/internal/Oy;

    if-eqz v3, :cond_1a

    .line 125
    invoke-interface {v2, v3}, Lcom/android/tools/r8/internal/Wr0;->accept(Ljava/lang/Object;)V

    .line 126
    :cond_1a
    invoke-static {v13}, Lcom/android/tools/r8/graph/M3;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/M3;

    move-result-object v2

    .line 127
    invoke-static {v13, v2}, Lcom/android/tools/r8/graph/R3;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M3;)Lcom/android/tools/r8/graph/R3;

    move-result-object v3

    .line 128
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/graph/R3;->a(Ljava/util/Collection;)Lcom/android/tools/r8/graph/R3$a;

    .line 129
    new-instance v3, Lcom/android/tools/r8/graph/M5;

    invoke-direct {v3}, Lcom/android/tools/r8/graph/M5;-><init>()V

    .line 130
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/nJ;->a0()Lcom/android/tools/r8/internal/nJ$n;

    move-result-object v4

    .line 131
    iget-boolean v4, v4, Lcom/android/tools/r8/internal/nJ$n;->e:Z

    if-eqz v4, :cond_1b

    .line 132
    iget-object v4, v13, Lcom/android/tools/r8/graph/y;->C:Lcom/android/tools/r8/internal/Oa0;

    .line 133
    iget-object v4, v4, Lcom/android/tools/r8/internal/Oa0;->f:Lcom/android/tools/r8/internal/vu;

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/internal/vu;->a(Lcom/android/tools/r8/graph/M5;)V

    .line 134
    :cond_1b
    new-instance v4, Lcom/android/tools/r8/shaking/V4;

    invoke-direct {v4, v1}, Lcom/android/tools/r8/shaking/V4;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 135
    iget-object v5, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v4, v15, v5, v3}, Lcom/android/tools/r8/shaking/V4;->a(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;Lcom/android/tools/r8/graph/M5;)Lcom/android/tools/r8/graph/O5;

    move-result-object v3

    .line 136
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/shaking/i;

    sget-object v5, Lcom/android/tools/r8/shaking/N$a;->b:Lcom/android/tools/r8/shaking/N$a;

    .line 137
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    invoke-virtual {v5}, Lcom/android/tools/r8/shaking/N$a;->b()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 139
    sget-object v5, Lcom/android/tools/r8/internal/ds0;->b:Lcom/android/tools/r8/internal/ds0;

    iput-object v5, v4, Lcom/android/tools/r8/shaking/i;->r:Ljava/util/Set;

    .line 140
    :cond_1c
    sget-object v5, Lcom/android/tools/r8/internal/ds0;->b:Lcom/android/tools/r8/internal/ds0;

    iput-object v5, v4, Lcom/android/tools/r8/shaking/i;->l:Ljava/util/Set;

    .line 141
    new-instance v4, Lcom/android/tools/r8/shaking/a;

    invoke-direct {v4, v1}, Lcom/android/tools/r8/shaking/a;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v4}, Lcom/android/tools/r8/shaking/a;->a()V

    .line 142
    iget-object v3, v3, Lcom/android/tools/r8/graph/O5;->e:Ljava/util/Set;

    .line 143
    new-instance v4, Lcom/android/tools/r8/shaking/h;

    move-object/from16 v7, v20

    .line 144
    iget-object v5, v7, Lcom/android/tools/r8/shaking/g;->a:Ljava/util/Set;

    .line 145
    iget-object v6, v7, Lcom/android/tools/r8/shaking/g;->b:Lcom/android/tools/r8/shaking/N$a;

    invoke-direct {v4, v1, v5, v6, v3}, Lcom/android/tools/r8/shaking/h;-><init>(Lcom/android/tools/r8/graph/y;Ljava/util/Set;Lcom/android/tools/r8/shaking/N$a;Ljava/util/Set;)V

    .line 146
    invoke-virtual {v4}, Lcom/android/tools/r8/shaking/h;->a()Lcom/android/tools/r8/shaking/h;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/android/tools/r8/shaking/h;->a(Ljava/util/concurrent/ExecutorService;)V

    .line 147
    new-instance v3, Lcom/android/tools/r8/internal/zz;

    invoke-direct {v3, v13, v2}, Lcom/android/tools/r8/internal/zz;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M3;)V

    .line 148
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v3, v2, v15}, Lcom/android/tools/r8/internal/zz;->a(Ljava/util/Collection;Ljava/util/concurrent/ExecutorService;)V

    if-nez v19, :cond_1e

    .line 149
    new-instance v2, Lcom/android/tools/r8/S2;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/S2;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v13, v2}, Lcom/android/tools/r8/graph/y;->a(Ljava/util/function/Supplier;)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_8

    :cond_1d
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    .line 150
    :cond_1e
    :goto_8
    :try_start_1d
    invoke-static {v13, v10}, Lcom/android/tools/r8/ir/optimize/c0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/Y5;)Z

    move-result v1

    .line 151
    iget-object v2, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    .line 152
    :try_start_1e
    iget-object v2, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 153
    iget-object v2, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    const-string v3, "Run center tasks"

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;
    :try_end_1e
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1e .. :try_end_1e} :catch_3
    .catchall {:try_start_1e .. :try_end_1e} :catchall_5

    if-nez v19, :cond_20

    .line 154
    :try_start_1f
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v2

    if-eqz v2, :cond_1f

    goto :goto_9

    :cond_1f
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_1f
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1f .. :try_end_1f} :catch_0
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    .line 155
    :cond_20
    :goto_9
    :try_start_20
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object v7

    .line 156
    iget-object v2, v8, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v2, v7}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/graph/y;)V

    .line 157
    new-instance v2, Lcom/android/tools/r8/internal/Ha;

    invoke-direct {v2, v7}, Lcom/android/tools/r8/internal/Ha;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v2, v15}, Lcom/android/tools/r8/internal/Ha;->b(Ljava/util/concurrent/ExecutorService;)V

    .line 158
    invoke-static {v7, v15}, Lcom/android/tools/r8/internal/ZS;->a(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)V
    :try_end_20
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_20 .. :try_end_20} :catch_3
    .catchall {:try_start_20 .. :try_end_20} :catchall_5

    if-nez v19, :cond_21

    .line 159
    :try_start_21
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lcom/android/tools/r8/R8;->a(Ljava/util/Collection;)V

    :cond_21
    if-nez v19, :cond_23

    .line 160
    new-instance v2, Lcom/android/tools/r8/T2;

    invoke-direct {v2, v7}, Lcom/android/tools/r8/T2;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v13, v2}, Lcom/android/tools/r8/graph/y;->a(Ljava/util/function/Supplier;)Z

    move-result v2

    if-eqz v2, :cond_22

    goto :goto_a

    :cond_22
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_21
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_21 .. :try_end_21} :catch_0
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    .line 161
    :cond_23
    :goto_a
    :try_start_22
    invoke-direct {v8, v13, v15}, Lcom/android/tools/r8/R8;->b(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)V

    .line 162
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/u1;->b()V

    .line 163
    new-instance v2, Lcom/android/tools/r8/ir/optimize/f0;

    invoke-direct {v2, v7}, Lcom/android/tools/r8/ir/optimize/f0;-><init>(Lcom/android/tools/r8/graph/y;)V

    iget-object v3, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v2, v15, v3}, Lcom/android/tools/r8/ir/optimize/f0;->a(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    .line 164
    invoke-static {v7, v15}, Lcom/android/tools/r8/internal/VV;->a(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/internal/TV;

    move-result-object v2

    .line 165
    invoke-virtual {v13, v2}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/internal/Hz;)Z

    .line 166
    iget-object v2, v8, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->F()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/tools/r8/internal/nJ$p;->d0:Z
    :try_end_22
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_22 .. :try_end_22} :catch_3
    .catchall {:try_start_22 .. :try_end_22} :catchall_5

    if-eqz v2, :cond_24

    .line 167
    :try_start_23
    new-instance v2, Lcom/android/tools/r8/internal/OV;

    invoke-direct {v2, v7}, Lcom/android/tools/r8/internal/OV;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v2, v15}, Lcom/android/tools/r8/internal/OV;->b(Ljava/util/concurrent/ExecutorService;)V
    :try_end_23
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_23 .. :try_end_23} :catch_0
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    goto :goto_b

    .line 168
    :cond_24
    :try_start_24
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/i;->o()Lcom/android/tools/r8/graph/n3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/n3;->b()V

    .line 169
    :goto_b
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v2, v7}, Lcom/android/tools/r8/shaking/i;->a(Lcom/android/tools/r8/graph/y;)V
    :try_end_24
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_24 .. :try_end_24} :catch_3
    .catchall {:try_start_24 .. :try_end_24} :catchall_5

    if-nez v19, :cond_25

    .line 170
    :try_start_25
    new-array v2, v12, [Lcom/android/tools/r8/internal/m4;

    invoke-static {v13, v2}, Lcom/android/tools/r8/internal/n4;->a(Lcom/android/tools/r8/graph/y;[Lcom/android/tools/r8/internal/m4;)V
    :try_end_25
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_25 .. :try_end_25} :catch_0
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    .line 171
    :cond_25
    :try_start_26
    iget-object v2, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-static {v7, v2, v15}, Lcom/android/tools/r8/internal/Q1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;Ljava/util/concurrent/ExecutorService;)V

    .line 172
    new-instance v2, Lcom/android/tools/r8/internal/Ec0;

    invoke-direct {v2, v7}, Lcom/android/tools/r8/internal/Ec0;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 173
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Ec0;->a()Lcom/android/tools/r8/internal/Ec0;

    move-result-object v2

    iget-object v3, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    .line 174
    invoke-virtual {v2, v15, v3}, Lcom/android/tools/r8/internal/Ec0;->a(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    .line 175
    iget-object v2, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-static {v7, v2, v15}, Lcom/android/tools/r8/internal/R7;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;Ljava/util/concurrent/ExecutorService;)V
    :try_end_26
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_26 .. :try_end_26} :catch_3
    .catchall {:try_start_26 .. :try_end_26} :catchall_5

    if-nez v19, :cond_26

    .line 176
    :try_start_27
    new-array v2, v12, [Lcom/android/tools/r8/internal/m4;

    invoke-static {v13, v2}, Lcom/android/tools/r8/internal/n4;->a(Lcom/android/tools/r8/graph/y;[Lcom/android/tools/r8/internal/m4;)V
    :try_end_27
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_27 .. :try_end_27} :catch_0
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    .line 177
    :cond_26
    :try_start_28
    iget-object v2, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-static {v13, v2, v15}, Lcom/android/tools/r8/internal/ZS;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;Ljava/util/concurrent/ExecutorService;)V

    .line 178
    iget-object v2, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-static {v7, v2}, Lcom/android/tools/r8/internal/ax0;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/ax0;

    move-result-object v2

    iget-object v3, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    .line 179
    invoke-virtual {v2, v15, v3}, Lcom/android/tools/r8/internal/ax0;->b(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    .line 180
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->f()Lcom/android/tools/r8/shaking/o2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/o2;->a()V
    :try_end_28
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_28 .. :try_end_28} :catch_3
    .catchall {:try_start_28 .. :try_end_28} :catchall_5

    if-nez v19, :cond_27

    .line 181
    :try_start_29
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/u1;->e()V

    :cond_27
    if-nez v19, :cond_29

    .line 182
    new-instance v2, Lcom/android/tools/r8/U2;

    invoke-direct {v2, v7}, Lcom/android/tools/r8/U2;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v13, v2}, Lcom/android/tools/r8/graph/y;->a(Ljava/util/function/Supplier;)Z

    move-result v2

    if-eqz v2, :cond_28

    goto :goto_c

    :cond_28
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_29
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_29 .. :try_end_29} :catch_0
    .catchall {:try_start_29 .. :try_end_29} :catchall_0

    .line 183
    :cond_29
    :goto_c
    :try_start_2a
    iget-object v2, v8, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    iget-boolean v2, v2, Lcom/android/tools/r8/internal/nJ;->d0:Z
    :try_end_2a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2a .. :try_end_2a} :catch_3
    .catchall {:try_start_2a .. :try_end_2a} :catchall_5

    if-eqz v2, :cond_2a

    .line 184
    :try_start_2b
    new-instance v2, Lcom/android/tools/r8/ir/optimize/J0;

    invoke-direct {v2, v7}, Lcom/android/tools/r8/ir/optimize/J0;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v2}, Lcom/android/tools/r8/ir/optimize/J0;->a()Lcom/android/tools/r8/shaking/i;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/android/tools/r8/graph/y;->b(Lcom/android/tools/r8/graph/h;)Lcom/android/tools/r8/graph/y;
    :try_end_2b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2b .. :try_end_2b} :catch_0
    .catchall {:try_start_2b .. :try_end_2b} :catchall_0

    .line 185
    :cond_2a
    :try_start_2c
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/i;->p()Ljava/util/Set;

    move-result-object v10
    :try_end_2c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2c .. :try_end_2c} :catch_3
    .catchall {:try_start_2c .. :try_end_2c} :catchall_5

    if-nez v19, :cond_2b

    .line 186
    :try_start_2d
    new-array v2, v12, [Lcom/android/tools/r8/internal/m4;

    invoke-static {v13, v2}, Lcom/android/tools/r8/internal/n4;->a(Lcom/android/tools/r8/graph/y;[Lcom/android/tools/r8/internal/m4;)V
    :try_end_2d
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2d .. :try_end_2d} :catch_0
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0

    .line 187
    :cond_2b
    :try_start_2e
    new-instance v2, Lcom/android/tools/r8/internal/y70;

    iget-object v3, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-direct {v2, v7, v3, v1}, Lcom/android/tools/r8/internal/y70;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;Z)V

    .line 188
    invoke-virtual {v2, v7, v15}, Lcom/android/tools/r8/internal/y70;->b(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)V
    :try_end_2e
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2e .. :try_end_2e} :catch_3
    .catchall {:try_start_2e .. :try_end_2e} :catchall_5

    if-nez v19, :cond_2c

    .line 189
    :try_start_2f
    invoke-static {v13}, Lcom/android/tools/r8/internal/ZS;->a(Lcom/android/tools/r8/graph/y;)V

    :cond_2c
    if-nez v19, :cond_2d

    .line 190
    sget-object v1, Lcom/android/tools/r8/internal/m4;->b:Lcom/android/tools/r8/internal/m4;

    filled-new-array {v1}, [Lcom/android/tools/r8/internal/m4;

    move-result-object v1

    invoke-static {v13, v1}, Lcom/android/tools/r8/internal/n4;->a(Lcom/android/tools/r8/graph/y;[Lcom/android/tools/r8/internal/m4;)V
    :try_end_2f
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2f .. :try_end_2f} :catch_0
    .catchall {:try_start_2f .. :try_end_2f} :catchall_0

    .line 191
    :cond_2d
    :try_start_30
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/u1;->b()V

    .line 192
    iget-object v1, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    const-string v2, "AppliedGraphLens construction"

    new-instance v3, Lcom/android/tools/r8/V2;

    invoke-direct {v3, v13}, Lcom/android/tools/r8/V2;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/Sr0;)V

    .line 193
    iget-object v1, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 194
    iget-object v1, v8, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->e0()Z

    move-result v1
    :try_end_30
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_30 .. :try_end_30} :catch_3
    .catchall {:try_start_30 .. :try_end_30} :catchall_5

    const-string v6, "Could not validate generic signatures"

    if-eqz v1, :cond_3e

    .line 195
    :try_start_31
    iget-object v1, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    const-string v2, "Post optimization code stripping"

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;
    :try_end_31
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_31 .. :try_end_31} :catch_1
    .catchall {:try_start_31 .. :try_end_31} :catchall_3

    .line 196
    :try_start_32
    iget-object v1, v8, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->W()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 197
    iget-object v1, v8, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->W1:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

    .line 198
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/y;->G()Lcom/android/tools/r8/shaking/D4;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/shaking/D4;->e:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2e

    .line 199
    new-instance v2, Lcom/android/tools/r8/shaking/b5;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/shaking/b5;-><init>(Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;)V

    move-object v4, v2

    move-object/from16 v16, v4

    goto :goto_e

    :catchall_2
    move-exception v0

    move-object v1, v0

    goto/16 :goto_15

    :cond_2e
    move-object v4, v1

    :goto_d
    const/16 v16, 0x0

    goto :goto_e

    :cond_2f
    const/4 v4, 0x0

    goto :goto_d

    .line 200
    :goto_e
    iget-object v1, v8, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->N()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 201
    new-instance v1, Lcom/android/tools/r8/shaking/K4;

    invoke-direct {v1, v13}, Lcom/android/tools/r8/shaking/K4;-><init>(Lcom/android/tools/r8/graph/y;)V

    move-object/from16 v20, v1

    goto :goto_f

    :cond_30
    const/16 v20, 0x0

    .line 202
    :goto_f
    invoke-static {v13}, Lcom/android/tools/r8/graph/Y5;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/Y5;

    move-result-object v3

    move-object v1, v13

    move-object/from16 v2, p2

    move-object v5, v10

    move-object v9, v6

    move-object/from16 v6, v20

    .line 203
    invoke-static/range {v1 .. v6}, Lcom/android/tools/r8/shaking/e0;->a(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/graph/Y5;Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;Ljava/util/Set;Lcom/android/tools/r8/shaking/K4;)Lcom/android/tools/r8/shaking/N;

    move-result-object v1

    .line 204
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/y;->G()Lcom/android/tools/r8/shaking/D4;

    move-result-object v2

    iget-object v3, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v1, v2, v15, v3}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/D4;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/shaking/h0;

    move-result-object v2

    .line 205
    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/h0;->a()Lcom/android/tools/r8/shaking/i;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/android/tools/r8/graph/y;->b(Lcom/android/tools/r8/graph/h;)Lcom/android/tools/r8/graph/y;

    .line 206
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/y;->l()V

    .line 207
    invoke-static {v13}, Lcom/android/tools/r8/internal/EW;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/EW$a;

    move-result-object v2

    .line 208
    new-instance v3, Lcom/android/tools/r8/h3;

    invoke-direct {v3, v8, v2, v7, v15}, Lcom/android/tools/r8/h3;-><init>(Lcom/android/tools/r8/R8;Lcom/android/tools/r8/internal/EW$a;Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)V

    invoke-virtual {v13, v3}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/internal/Wr0;)V

    .line 209
    iget-object v2, v8, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->W()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 210
    new-instance v2, Lcom/android/tools/r8/i3;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/i3;-><init>(Lcom/android/tools/r8/shaking/N;)V

    .line 211
    sget-object v3, Lcom/android/tools/r8/shaking/y;->a:Lcom/android/tools/r8/shaking/y;

    .line 212
    invoke-virtual {v13, v3, v2}, Lcom/android/tools/r8/graph/y;->a(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/y;

    .line 213
    invoke-static {v13}, Lcom/android/tools/r8/graph/M3;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/M3;

    move-result-object v3

    .line 214
    new-instance v4, Lcom/android/tools/r8/shaking/V4;

    invoke-direct {v4, v7, v2}, Lcom/android/tools/r8/shaking/V4;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/shaking/y;)V

    .line 215
    iget-object v2, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    .line 216
    new-instance v5, Lcom/android/tools/r8/graph/M5;

    invoke-direct {v5}, Lcom/android/tools/r8/graph/M5;-><init>()V

    .line 217
    invoke-virtual {v5, v10}, Lcom/android/tools/r8/graph/M5;->a(Ljava/util/Set;)Lcom/android/tools/r8/graph/M5;

    move-result-object v5

    .line 218
    invoke-virtual {v4, v15, v2, v5}, Lcom/android/tools/r8/shaking/V4;->a(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;Lcom/android/tools/r8/graph/M5;)Lcom/android/tools/r8/graph/O5;

    move-result-object v2

    .line 219
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/shaking/i;

    sget-object v5, Lcom/android/tools/r8/shaking/N$a;->c:Lcom/android/tools/r8/shaking/N$a;

    .line 220
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    invoke-virtual {v5}, Lcom/android/tools/r8/shaking/N$a;->b()Z

    move-result v6

    if-eqz v6, :cond_31

    .line 222
    sget-object v6, Lcom/android/tools/r8/internal/ds0;->b:Lcom/android/tools/r8/internal/ds0;

    iput-object v6, v4, Lcom/android/tools/r8/shaking/i;->r:Ljava/util/Set;

    .line 223
    :cond_31
    sget-object v6, Lcom/android/tools/r8/internal/ds0;->b:Lcom/android/tools/r8/internal/ds0;

    iput-object v6, v4, Lcom/android/tools/r8/shaking/i;->l:Ljava/util/Set;

    .line 224
    iget-object v4, v8, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v6, v4, Lcom/android/tools/r8/internal/nJ;->R1:Lcom/android/tools/r8/StringConsumer;

    if-eqz v6, :cond_32

    .line 225
    iget-object v4, v4, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    invoke-static {v4, v6}, Lcom/android/tools/r8/internal/lv;->a(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/StringConsumer;)V

    :cond_32
    if-nez v19, :cond_33

    .line 226
    invoke-static {v7}, Lcom/android/tools/r8/ir/optimize/W;->b(Lcom/android/tools/r8/graph/y;)V

    :cond_33
    if-nez v19, :cond_34

    .line 227
    invoke-static {v13}, Lcom/android/tools/r8/ir/optimize/W;->a(Lcom/android/tools/r8/graph/y;)V

    :cond_34
    if-nez v19, :cond_35

    .line 228
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/y;->c()Lcom/android/tools/r8/internal/dW;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/tools/r8/internal/dW;->a(Lcom/android/tools/r8/graph/y;)V

    :cond_35
    if-nez v19, :cond_36

    .line 229
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/y;->J()V

    :cond_36
    if-nez v19, :cond_37

    .line 230
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v4}, Lcom/android/tools/r8/shaking/i;->r()V

    .line 231
    :cond_37
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/y;->G()Lcom/android/tools/r8/shaking/D4;

    move-result-object v10

    new-instance v4, Lcom/android/tools/r8/F2;

    invoke-direct {v4, v13}, Lcom/android/tools/r8/F2;-><init>(Lcom/android/tools/r8/graph/y;)V

    iget-object v6, v8, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v15, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    const/16 v17, 0x0

    move-object/from16 v21, v11

    move-object v11, v4

    move v4, v12

    move-object/from16 v12, v16

    move-object/from16 v22, v13

    move-object v4, v14

    move-object v14, v1

    move-object/from16 v1, p2

    move-object/from16 v18, v15

    move/from16 v15, v17

    move-object/from16 v16, v6

    move-object/from16 v17, v18

    move-object/from16 v18, p2

    .line 232
    invoke-static/range {v10 .. v18}, Lcom/android/tools/r8/R8;->a(Lcom/android/tools/r8/shaking/D4;Ljava/util/function/Supplier;Lcom/android/tools/r8/shaking/b5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/shaking/N;ZLcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/ns0;Ljava/util/concurrent/ExecutorService;)V

    move-object/from16 v6, v22

    const/4 v10, 0x0

    .line 233
    invoke-virtual {v6, v10}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/shaking/D4;)V

    .line 234
    new-instance v11, Lcom/android/tools/r8/internal/M7;

    invoke-direct {v11, v7}, Lcom/android/tools/r8/internal/M7;-><init>(Lcom/android/tools/r8/graph/y;)V

    iget-object v12, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v11, v1, v12}, Lcom/android/tools/r8/internal/M7;->a(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    .line 235
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v11

    .line 236
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object v12

    .line 237
    iget-object v2, v2, Lcom/android/tools/r8/graph/O5;->e:Ljava/util/Set;

    .line 238
    new-instance v13, Lcom/android/tools/r8/shaking/h;

    invoke-direct {v13, v12, v11, v5, v2}, Lcom/android/tools/r8/shaking/h;-><init>(Lcom/android/tools/r8/graph/y;Ljava/util/Set;Lcom/android/tools/r8/shaking/N$a;Ljava/util/Set;)V

    .line 239
    invoke-virtual {v13, v1}, Lcom/android/tools/r8/shaking/h;->a(Ljava/util/concurrent/ExecutorService;)V

    .line 240
    new-instance v2, Lcom/android/tools/r8/internal/zz;

    invoke-direct {v2, v6, v3}, Lcom/android/tools/r8/internal/zz;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M3;)V

    .line 241
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/tools/r8/internal/zz;->a(Ljava/util/Collection;Ljava/util/concurrent/ExecutorService;)V

    if-nez v19, :cond_39

    .line 242
    new-instance v2, Lcom/android/tools/r8/G2;

    invoke-direct {v2, v6}, Lcom/android/tools/r8/G2;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v6, v2}, Lcom/android/tools/r8/graph/y;->a(Ljava/util/function/Supplier;)Z

    move-result v2

    if-eqz v2, :cond_38

    goto :goto_10

    :cond_38
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 243
    :cond_39
    :goto_10
    new-instance v2, Lcom/android/tools/r8/shaking/p;

    invoke-direct {v2, v7}, Lcom/android/tools/r8/shaking/p;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/shaking/p;->a(Ljava/util/concurrent/ExecutorService;)V

    .line 244
    iget-object v2, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-static {v7, v2, v1}, Lcom/android/tools/r8/internal/dw;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;Ljava/util/concurrent/ExecutorService;)V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_2

    goto :goto_11

    :cond_3a
    move-object/from16 v21, v11

    move-object v6, v13

    move-object v4, v14

    move-object v1, v15

    const/4 v10, 0x0

    .line 245
    :goto_11
    :try_start_33
    iget-object v2, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 246
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->a0()Lcom/android/tools/r8/internal/nJ$n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ$n;->a()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 247
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->a0()Lcom/android/tools/r8/internal/nJ$n;

    move-result-object v2

    .line 248
    iget-boolean v2, v2, Lcom/android/tools/r8/internal/nJ$n;->e:Z

    if-eqz v2, :cond_3b

    .line 249
    iget-object v2, v6, Lcom/android/tools/r8/graph/y;->C:Lcom/android/tools/r8/internal/Oa0;

    .line 250
    iget-object v2, v2, Lcom/android/tools/r8/internal/Oa0;->f:Lcom/android/tools/r8/internal/vu;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/vu;->a()V

    goto :goto_14

    :catchall_3
    move-exception v0

    move-object/from16 v2, p1

    :goto_12
    move-object v1, v0

    goto/16 :goto_23

    :catch_1
    move-exception v0

    move-object/from16 v2, p1

    :goto_13
    move-object v1, v0

    goto/16 :goto_22

    .line 251
    :cond_3b
    :goto_14
    new-instance v2, Lcom/android/tools/r8/internal/kB;

    invoke-direct {v2, v6}, Lcom/android/tools/r8/internal/kB;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 252
    new-instance v3, Lcom/android/tools/r8/H2;

    invoke-direct {v3, v8, v2, v1}, Lcom/android/tools/r8/H2;-><init>(Lcom/android/tools/r8/R8;Lcom/android/tools/r8/internal/kB;Ljava/util/concurrent/ExecutorService;)V

    .line 253
    iget-object v5, v6, Lcom/android/tools/r8/graph/y;->C:Lcom/android/tools/r8/internal/Oa0;

    if-eqz v5, :cond_3c

    iget-object v5, v5, Lcom/android/tools/r8/internal/Oa0;->d:Lcom/android/tools/r8/internal/cz;

    if-eqz v5, :cond_3c

    .line 254
    invoke-interface {v3, v5}, Lcom/android/tools/r8/internal/Wr0;->accept(Ljava/lang/Object;)V

    .line 255
    :cond_3c
    new-instance v3, Lcom/android/tools/r8/I2;

    invoke-direct {v3, v8, v2, v1}, Lcom/android/tools/r8/I2;-><init>(Lcom/android/tools/r8/R8;Lcom/android/tools/r8/internal/kB;Ljava/util/concurrent/ExecutorService;)V

    .line 256
    iget-object v2, v6, Lcom/android/tools/r8/graph/y;->C:Lcom/android/tools/r8/internal/Oa0;

    if-eqz v2, :cond_3d

    iget-object v2, v2, Lcom/android/tools/r8/internal/Oa0;->c:Lcom/android/tools/r8/internal/Oy;

    if-eqz v2, :cond_3d

    .line 257
    invoke-interface {v3, v2}, Lcom/android/tools/r8/internal/Wr0;->accept(Ljava/lang/Object;)V

    :cond_3d
    move-object/from16 v2, v20

    goto :goto_16

    .line 258
    :goto_15
    iget-object v2, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 259
    throw v1

    :cond_3e
    move-object v9, v6

    move-object/from16 v21, v11

    move-object v6, v13

    move-object v4, v14

    move-object v1, v15

    const/4 v10, 0x0

    move-object v2, v10

    .line 260
    :goto_16
    iget-object v3, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    const-string v5, "Run postlude"

    invoke-virtual {v3, v5}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 261
    invoke-direct {v8, v6, v1}, Lcom/android/tools/r8/R8;->a(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)V

    .line 262
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h;->a()Lcom/android/tools/r8/graph/x0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/x0;->f()Lcom/android/tools/r8/graph/z0;

    move-result-object v3

    .line 263
    iget-object v3, v3, Lcom/android/tools/r8/graph/z0;->c:Lcom/android/tools/r8/internal/QC;

    .line 264
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3f

    .line 265
    invoke-static {v6}, Lcom/android/tools/r8/internal/sc0;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/sc0;

    move-result-object v3

    if-eqz v3, :cond_3f

    .line 266
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/sc0;->a()V

    .line 267
    :cond_3f
    invoke-static {v6, v1}, Lcom/android/tools/r8/internal/VV;->a(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/internal/TV;

    move-result-object v3

    .line 268
    invoke-virtual {v6, v3}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/internal/Hz;)Z

    .line 269
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v5

    if-eqz v5, :cond_40

    .line 270
    iget-object v5, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    const-string v11, "Bridge remover"

    invoke-virtual {v5, v11}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 271
    new-instance v5, Lcom/android/tools/r8/internal/Ec0;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object v11

    invoke-direct {v5, v11}, Lcom/android/tools/r8/internal/Ec0;-><init>(Lcom/android/tools/r8/graph/y;)V

    iget-object v11, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    .line 272
    invoke-virtual {v5, v1, v11, v3}, Lcom/android/tools/r8/internal/Ec0;->a(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;Lcom/android/tools/r8/internal/TV;)V

    .line 273
    iget-object v3, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    goto :goto_17

    :cond_40
    if-nez v19, :cond_42

    .line 274
    iget-object v3, v8, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nJ;->W()Z

    move-result v3

    if-nez v3, :cond_41

    goto :goto_17

    :cond_41
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 275
    :cond_42
    :goto_17
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->o()Lcom/android/tools/r8/internal/l4;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/tools/r8/internal/l4;->c(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/l4;

    move-result-object v3

    .line 276
    invoke-virtual {v6, v3}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/internal/l4;)V

    .line 277
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->t()Lcom/android/tools/r8/internal/qo0;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/tools/r8/internal/qo0;->c(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/qo0;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/internal/qo0;)V

    .line 278
    new-instance v3, Lcom/android/tools/r8/internal/T00;

    invoke-direct {v3, v6}, Lcom/android/tools/r8/internal/T00;-><init>(Lcom/android/tools/r8/graph/y;)V

    iget-object v5, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v3, v1, v5}, Lcom/android/tools/r8/internal/T00;->b(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    .line 279
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 280
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object v3

    iget-object v5, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-static {v3, v5, v1}, Lcom/android/tools/r8/synthesis/z;->c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;Ljava/util/concurrent/ExecutorService;)V

    goto :goto_18

    .line 281
    :cond_43
    iget-object v3, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-static {v6, v3, v1}, Lcom/android/tools/r8/synthesis/z;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;Ljava/util/concurrent/ExecutorService;)V

    .line 282
    :goto_18
    iget-object v3, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    const-string v5, "read -applymapping file"

    invoke-virtual {v3, v5}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 283
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->D()V

    .line 284
    iget-object v3, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 285
    invoke-static {v6, v1}, Lcom/android/tools/r8/internal/p40;->a(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)V

    .line 286
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v3

    if-eqz v3, :cond_45

    .line 287
    iget-object v3, v8, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nJ;->V()Z

    move-result v3

    if-eqz v3, :cond_44

    .line 288
    new-instance v3, Lcom/android/tools/r8/internal/of0;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/android/tools/r8/internal/of0;-><init>(Lcom/android/tools/r8/graph/y;)V

    iget-object v5, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v3, v1, v5}, Lcom/android/tools/r8/internal/of0;->a(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    :cond_44
    if-nez v19, :cond_45

    .line 289
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/tools/r8/internal/of0;->a(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)V

    .line 290
    :cond_45
    iget-object v3, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-static {v6, v3, v1}, Lcom/android/tools/r8/internal/ZS;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;Ljava/util/concurrent/ExecutorService;)V

    .line 291
    iget-object v3, v6, Lcom/android/tools/r8/graph/y;->K:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4c

    if-nez v19, :cond_46

    .line 292
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/u1;->e()V

    .line 293
    :cond_46
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v3

    if-eqz v3, :cond_47

    .line 294
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object v3

    iget-object v5, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-static {v3, v5}, Lcom/android/tools/r8/internal/ax0;->c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/ax0;

    move-result-object v3

    iget-object v5, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    .line 295
    invoke-virtual {v3, v1, v5}, Lcom/android/tools/r8/internal/ax0;->b(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    if-nez v19, :cond_47

    .line 296
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/u1;->e()V

    .line 297
    :cond_47
    invoke-static {v6}, Lcom/android/tools/r8/graph/M3;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/M3;

    move-result-object v3

    .line 298
    invoke-static {v6}, Lcom/android/tools/r8/internal/vA;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/vA;

    move-result-object v5

    iget-object v11, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    if-eqz v2, :cond_48

    .line 299
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/android/tools/r8/shaking/K4;->a(Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/shaking/L4;

    move-result-object v2

    goto :goto_19

    :cond_48
    move-object v2, v10

    .line 300
    :goto_19
    invoke-virtual {v5, v11, v2, v1}, Lcom/android/tools/r8/internal/vA;->b(Lcom/android/tools/r8/internal/ns0;Lcom/android/tools/r8/shaking/L4;Ljava/util/concurrent/ExecutorService;)V

    if-nez v19, :cond_49

    .line 301
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/u1;->e()V

    .line 302
    :cond_49
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 303
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object v2

    iget-object v5, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-static {v2, v5}, Lcom/android/tools/r8/internal/ax0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/ax0;

    move-result-object v2

    iget-object v5, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    .line 304
    invoke-virtual {v2, v1, v5}, Lcom/android/tools/r8/internal/ax0;->b(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    if-nez v19, :cond_4a

    .line 305
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/u1;->e()V

    .line 306
    :cond_4a
    new-instance v2, Lcom/android/tools/r8/internal/tm0;

    invoke-direct {v2, v7}, Lcom/android/tools/r8/internal/tm0;-><init>(Lcom/android/tools/r8/graph/y;)V

    iget-object v5, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v2, v1, v5}, Lcom/android/tools/r8/internal/tm0;->a(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    .line 307
    new-instance v2, Lcom/android/tools/r8/internal/ya0;

    invoke-direct {v2, v7}, Lcom/android/tools/r8/internal/ya0;-><init>(Lcom/android/tools/r8/graph/y;)V

    iget-object v5, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v2, v1, v5}, Lcom/android/tools/r8/internal/ya0;->a(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    :cond_4b
    move-object v7, v3

    goto :goto_1a

    :cond_4c
    move-object v7, v10

    .line 308
    :goto_1a
    iget-object v2, v8, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->B()Lcom/android/tools/r8/shaking/o3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/o3;->r()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 309
    iget-object v2, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    const-string v3, "apply-mapping"

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 310
    new-instance v2, Lcom/android/tools/r8/naming/D0;

    .line 311
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/tools/r8/naming/D0;-><init>(Lcom/android/tools/r8/graph/y;)V

    iget-object v3, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v2, v1, v3}, Lcom/android/tools/r8/naming/D0;->a(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/naming/C0;

    move-result-object v2

    .line 312
    invoke-virtual {v6, v2}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/naming/C0;)V

    .line 313
    iget-object v2, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 314
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->j()V

    goto :goto_1b

    .line 315
    :cond_4d
    iget-object v2, v8, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->R()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 316
    iget-object v2, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    const-string v3, "Minification"

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 317
    new-instance v2, Lcom/android/tools/r8/naming/n0;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/tools/r8/naming/n0;-><init>(Lcom/android/tools/r8/graph/y;)V

    iget-object v3, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v2, v1, v3}, Lcom/android/tools/r8/naming/n0;->a(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    .line 318
    iget-object v2, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 319
    :cond_4e
    :goto_1b
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j;->n()V

    .line 320
    iget-object v2, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    const-string v3, "MinifyIdentifiers"

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 321
    new-instance v2, Lcom/android/tools/r8/naming/D;

    invoke-direct {v2, v6}, Lcom/android/tools/r8/naming/D;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/naming/D;->d(Ljava/util/concurrent/ExecutorService;)V

    .line 322
    iget-object v2, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 323
    iget-object v2, v8, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    .line 324
    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->C0:Lcom/android/tools/r8/internal/Xe0;

    .line 325
    iget-object v2, v2, Lcom/android/tools/r8/internal/Xe0;->d:[Ljava/lang/Object;

    .line 326
    array-length v2, v2

    if-lez v2, :cond_4f

    .line 327
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Finished compilation with method filter: "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 328
    iget-object v1, v8, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->C0:Lcom/android/tools/r8/internal/Xe0;

    new-instance v2, Lcom/android/tools/r8/J2;

    invoke-direct {v2}, Lcom/android/tools/r8/J2;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/hC;->forEach(Ljava/util/function/Consumer;)V
    :try_end_33
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_33 .. :try_end_33} :catch_1
    .catchall {:try_start_33 .. :try_end_33} :catchall_3

    .line 329
    iget-object v1, v8, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/utils/i;->b(Lcom/android/tools/r8/internal/Ef0;)V

    .line 330
    iget-object v1, v8, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->f0()V

    return-void

    :cond_4f
    move-object/from16 v2, p1

    move-object v3, v9

    if-nez v19, :cond_50

    .line 331
    :try_start_34
    invoke-static {v6}, Lcom/android/tools/r8/R8;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/g3;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/g3;->l()V

    goto :goto_1c

    :catchall_4
    move-exception v0

    goto/16 :goto_12

    :catch_2
    move-exception v0

    goto/16 :goto_13

    :cond_50
    :goto_1c
    if-nez v19, :cond_52

    .line 332
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v9, Lcom/android/tools/r8/K2;

    invoke-direct {v9, v8}, Lcom/android/tools/r8/K2;-><init>(Lcom/android/tools/r8/R8;)V

    invoke-interface {v5, v9}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v5

    if-eqz v5, :cond_51

    goto :goto_1d

    :cond_51
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_52
    :goto_1d
    if-nez v19, :cond_54

    .line 333
    invoke-direct {v8, v6, v2, v1}, Lcom/android/tools/r8/R8;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/utils/i;Ljava/util/concurrent/ExecutorService;)Z

    move-result v5

    if-eqz v5, :cond_53

    goto :goto_1e

    :cond_53
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 334
    :cond_54
    :goto_1e
    iget-object v5, v8, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v5, v5, Lcom/android/tools/r8/internal/nJ;->Z1:Ljava/util/function/Consumer;

    if-eqz v5, :cond_55

    move-object/from16 v9, v21

    .line 335
    invoke-interface {v5, v9}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 336
    :cond_55
    invoke-static {v6}, Lcom/android/tools/r8/internal/e70;->a(Lcom/android/tools/r8/graph/y;)V

    .line 337
    invoke-static {v6}, Lcom/android/tools/r8/naming/O0;->a(Lcom/android/tools/r8/graph/y;)V

    .line 338
    new-instance v5, Lcom/android/tools/r8/internal/Y2;

    invoke-direct {v5, v6}, Lcom/android/tools/r8/internal/Y2;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v5, v1}, Lcom/android/tools/r8/internal/Y2;->a(Ljava/util/concurrent/ExecutorService;)V

    .line 339
    iget-object v5, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    const-string v9, "MinifyKotlinMetadata"

    invoke-virtual {v5, v9}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 340
    new-instance v5, Lcom/android/tools/r8/kotlin/Z;

    invoke-direct {v5, v6}, Lcom/android/tools/r8/kotlin/Z;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v5, v1}, Lcom/android/tools/r8/kotlin/Z;->b(Ljava/util/concurrent/ExecutorService;)V

    .line 341
    iget-object v5, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    if-eqz v7, :cond_56

    .line 342
    new-instance v5, Lcom/android/tools/r8/internal/zz;

    invoke-direct {v5, v6, v7}, Lcom/android/tools/r8/internal/zz;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M3;)V

    .line 343
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v7

    invoke-virtual {v5, v7, v1}, Lcom/android/tools/r8/internal/zz;->a(Ljava/util/Collection;Ljava/util/concurrent/ExecutorService;)V

    :cond_56
    if-nez v19, :cond_58

    .line 344
    new-instance v5, Lcom/android/tools/r8/L2;

    invoke-direct {v5, v8, v6}, Lcom/android/tools/r8/L2;-><init>(Lcom/android/tools/r8/R8;Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v6, v5}, Lcom/android/tools/r8/graph/y;->a(Ljava/util/function/Supplier;)Z

    move-result v5

    if-eqz v5, :cond_57

    goto :goto_1f

    :cond_57
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 345
    :cond_58
    :goto_1f
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    .line 346
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v5

    .line 347
    iget-object v5, v5, Lcom/android/tools/r8/internal/WR;->a:Lcom/android/tools/r8/internal/xU;

    .line 348
    iget-boolean v5, v5, Lcom/android/tools/r8/internal/xU;->a:Z

    if-nez v5, :cond_59

    .line 349
    iget-object v5, v3, Lcom/android/tools/r8/internal/nJ;->V1:Lcom/android/tools/r8/StringConsumer;

    if-eqz v5, :cond_59

    iget-object v3, v3, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 350
    :cond_59
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 351
    iget-object v5, v8, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v7, v5, Lcom/android/tools/r8/internal/nJ;->d:Lcom/android/tools/r8/AndroidResourceProvider;

    if-eqz v7, :cond_5a

    iget-object v7, v5, Lcom/android/tools/r8/internal/nJ;->e:Lcom/android/tools/r8/AndroidResourceConsumer;

    if-eqz v7, :cond_5a

    iget-object v5, v5, Lcom/android/tools/r8/internal/nJ;->g:Lcom/android/tools/r8/ResourceShrinkerConfiguration;

    .line 352
    invoke-virtual {v5}, Lcom/android/tools/r8/ResourceShrinkerConfiguration;->isOptimizedShrinking()Z

    move-result v5

    if-nez v5, :cond_5a

    .line 353
    iget-object v5, v8, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v7, v5, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    check-cast v7, Lcom/android/tools/r8/DexIndexedConsumer;

    const-string v9, "base"

    .line 354
    new-instance v10, Lcom/android/tools/r8/Z;

    invoke-direct {v10, v7, v3, v9}, Lcom/android/tools/r8/Z;-><init>(Lcom/android/tools/r8/DexIndexedConsumer;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)V

    .line 355
    iput-object v10, v5, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    .line 356
    iget-object v5, v8, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/nJ;->I()Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 357
    iget-object v5, v8, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/nJ;->u()Lcom/android/tools/r8/internal/Qv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/Qv;->a()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_20
    if-ge v12, v7, :cond_5a

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v12, v12, 0x1

    check-cast v10, Lcom/android/tools/r8/FeatureSplit;

    .line 358
    invoke-virtual {v10}, Lcom/android/tools/r8/FeatureSplit;->getProgramConsumer()Lcom/android/tools/r8/ProgramConsumer;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/DexIndexedConsumer;

    add-int/lit8 v13, v9, 0x1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "feature"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 359
    new-instance v14, Lcom/android/tools/r8/Z;

    invoke-direct {v14, v11, v3, v9}, Lcom/android/tools/r8/Z;-><init>(Lcom/android/tools/r8/DexIndexedConsumer;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)V

    .line 360
    invoke-virtual {v10, v14}, Lcom/android/tools/r8/FeatureSplit;->a(Lcom/android/tools/r8/Z;)V

    move v9, v13

    goto :goto_20

    .line 361
    :cond_5a
    sget-boolean v5, Lcom/android/tools/r8/R8;->c:Z

    if-nez v5, :cond_5b

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->K()V

    .line 362
    :cond_5b
    iget-object v7, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 363
    iget-object v7, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-static {v6, v7, v1}, Lcom/android/tools/r8/internal/ZS;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;Ljava/util/concurrent/ExecutorService;)V

    if-nez v5, :cond_5c

    .line 364
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/u1;->e()V

    .line 365
    :cond_5c
    invoke-direct {v8, v4}, Lcom/android/tools/r8/R8;->a(Ljava/util/List;)V

    .line 366
    invoke-static {v6, v2, v1}, Lcom/android/tools/r8/R8;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/utils/i;Ljava/util/concurrent/ExecutorService;)V

    .line 367
    iget-object v1, v8, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v4, v1, Lcom/android/tools/r8/internal/nJ;->d:Lcom/android/tools/r8/AndroidResourceProvider;

    if-eqz v4, :cond_5d

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->e:Lcom/android/tools/r8/AndroidResourceConsumer;

    if-eqz v1, :cond_5d

    .line 368
    invoke-direct {v8, v3, v6}, Lcom/android/tools/r8/R8;->a(Ljava/util/concurrent/ConcurrentHashMap;Lcom/android/tools/r8/graph/y;)V

    :cond_5d
    if-nez v5, :cond_5e

    .line 369
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->q()Lcom/android/tools/r8/internal/et;

    move-result-object v1

    iget-object v3, v8, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/et;->a(Lcom/android/tools/r8/internal/nJ;)V

    .line 370
    :cond_5e
    iget-object v1, v8, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->Z()V

    .line 371
    iget-object v1, v8, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->U()Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 372
    iget-object v1, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/ns0;->e()V
    :try_end_34
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_34 .. :try_end_34} :catch_2
    .catchall {:try_start_34 .. :try_end_34} :catchall_4

    .line 373
    :cond_5f
    iget-object v1, v8, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/utils/i;->b(Lcom/android/tools/r8/internal/Ef0;)V

    .line 374
    iget-object v1, v8, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->f0()V

    return-void

    :catchall_5
    move-exception v0

    move-object v2, v9

    goto/16 :goto_12

    :catch_3
    move-exception v0

    move-object v2, v9

    goto/16 :goto_13

    :catchall_6
    move-exception v0

    move-object v2, v9

    move-object v1, v0

    .line 375
    :goto_21
    :try_start_35
    iget-object v3, v8, Lcom/android/tools/r8/R8;->a:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 376
    throw v1
    :try_end_35
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_35 .. :try_end_35} :catch_2
    .catchall {:try_start_35 .. :try_end_35} :catchall_4

    .line 377
    :goto_22
    :try_start_36
    invoke-static {v1}, Lcom/android/tools/r8/internal/lv;->a(Ljava/util/concurrent/ExecutionException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_4

    .line 378
    :goto_23
    iget-object v3, v8, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    iget-object v3, v3, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/utils/i;->b(Lcom/android/tools/r8/internal/Ef0;)V

    .line 379
    iget-object v2, v8, Lcom/android/tools/r8/R8;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->f0()V

    .line 380
    throw v1
.end method
