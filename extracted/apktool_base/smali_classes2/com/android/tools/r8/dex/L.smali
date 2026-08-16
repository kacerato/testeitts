.class public final Lcom/android/tools/r8/dex/L;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic j:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/Hz;

.field public final c:Lcom/android/tools/r8/graph/w5;

.field public final d:Lcom/android/tools/r8/internal/nJ;

.field public final e:Lcom/android/tools/r8/dex/y;

.field public final f:Lcom/android/tools/r8/dex/J;

.field public final g:Lcom/android/tools/r8/dex/r;

.field public final h:Lcom/android/tools/r8/dex/t0;

.field public final i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/y;Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/dex/r;Lcom/android/tools/r8/dex/t0;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/dex/L;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/dex/L;->b:Lcom/android/tools/r8/internal/Hz;

    iput-object p3, p0, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/dex/L;->d:Lcom/android/tools/r8/internal/nJ;

    iput-object p2, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    new-instance p2, Lcom/android/tools/r8/dex/J;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/dex/J;-><init>(Lcom/android/tools/r8/internal/nJ;)V

    iput-object p2, p0, Lcom/android/tools/r8/dex/L;->f:Lcom/android/tools/r8/dex/J;

    iput-object p4, p0, Lcom/android/tools/r8/dex/L;->g:Lcom/android/tools/r8/dex/r;

    iput-object p5, p0, Lcom/android/tools/r8/dex/L;->h:Lcom/android/tools/r8/dex/t0;

    iput-boolean p6, p0, Lcom/android/tools/r8/dex/L;->i:Z

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/graph/t0;Lcom/android/tools/r8/graph/t0;)I
    .locals 0

    .line 28
    iget-object p1, p1, Lcom/android/tools/r8/graph/t0;->b:Lcom/android/tools/r8/graph/L2;

    iget-object p2, p2, Lcom/android/tools/r8/graph/t0;->b:Lcom/android/tools/r8/graph/L2;

    .line 29
    iget-object p0, p0, Lcom/android/tools/r8/graph/w5;->o:Lcom/android/tools/r8/graph/u5;

    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/tf;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;)I

    move-result p0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/dex/H;Lcom/android/tools/r8/dex/y;)V
    .locals 5

    .line 729
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    .line 730
    invoke-virtual {p1}, Lcom/android/tools/r8/dex/y;->a()[B

    move-result-object v1

    iget v2, p0, Lcom/android/tools/r8/dex/H;->a:I

    add-int/lit8 v3, v2, 0xc

    .line 731
    iget v4, p0, Lcom/android/tools/r8/dex/H;->w:I

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0xc

    .line 732
    invoke-virtual {v0, v1, v3, v4}, Ljava/util/zip/Adler32;->update([BII)V

    .line 733
    iget p0, p0, Lcom/android/tools/r8/dex/H;->a:I

    add-int/lit8 p0, p0, 0x8

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/dex/y;->e(I)V

    .line 734
    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    long-to-int p0, v0

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/dex/y;->f(I)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/e1;Lcom/android/tools/r8/dex/y;Lcom/android/tools/r8/graph/w5;)V
    .locals 5

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/graph/e1;->c:[Lcom/android/tools/r8/graph/t0;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    new-instance v1, Lu/I;

    invoke-direct {v1, p2}, Lu/I;-><init>(Lcom/android/tools/r8/graph/w5;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 16
    iget-object p0, p0, Lcom/android/tools/r8/graph/e1;->b:Lcom/android/tools/r8/graph/M2;

    .line 17
    iget-object v1, p2, Lcom/android/tools/r8/graph/w5;->g:Lcom/android/tools/r8/internal/gd0;

    .line 18
    invoke-static {p0, v1}, Lcom/android/tools/r8/graph/w5;->a(Lcom/android/tools/r8/graph/d4;Lcom/android/tools/r8/internal/x1;)I

    move-result p0

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    invoke-static {p1, p0}, Lcom/android/tools/r8/internal/BR;->b(Lcom/android/tools/r8/dex/y;I)V

    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    .line 22
    invoke-static {p1, p0}, Lcom/android/tools/r8/internal/BR;->b(Lcom/android/tools/r8/dex/y;I)V

    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/tools/r8/graph/t0;

    .line 24
    iget-object v3, v2, Lcom/android/tools/r8/graph/t0;->b:Lcom/android/tools/r8/graph/L2;

    .line 25
    iget-object v4, p2, Lcom/android/tools/r8/graph/w5;->j:Lcom/android/tools/r8/internal/gd0;

    invoke-static {v3, v4}, Lcom/android/tools/r8/graph/w5;->a(Lcom/android/tools/r8/graph/d4;Lcom/android/tools/r8/internal/x1;)I

    move-result v3

    .line 26
    invoke-static {p1, v3}, Lcom/android/tools/r8/internal/BR;->b(Lcom/android/tools/r8/dex/y;I)V

    .line 27
    iget-object v2, v2, Lcom/android/tools/r8/graph/t0;->c:Lcom/android/tools/r8/graph/R2;

    invoke-virtual {v2, p1, p2}, Lcom/android/tools/r8/graph/R2;->a(Lcom/android/tools/r8/dex/y;Lcom/android/tools/r8/graph/w5;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static b(Lcom/android/tools/r8/dex/H;Lcom/android/tools/r8/dex/y;)V
    .locals 5

    .line 24
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 25
    invoke-virtual {p1}, Lcom/android/tools/r8/dex/y;->a()[B

    move-result-object v1

    iget v2, p0, Lcom/android/tools/r8/dex/H;->a:I

    add-int/lit8 v3, v2, 0x20

    .line 26
    iget v4, p0, Lcom/android/tools/r8/dex/H;->w:I

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x20

    .line 27
    invoke-virtual {v0, v1, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 28
    invoke-virtual {p1}, Lcom/android/tools/r8/dex/y;->a()[B

    move-result-object p1

    iget p0, p0, Lcom/android/tools/r8/dex/H;->a:I

    add-int/lit8 p0, p0, 0xc

    const/16 v1, 0x14

    invoke-virtual {v0, p1, p0, v1}, Ljava/security/MessageDigest;->digest([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 29
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/f3;)I
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 491
    iget-object v1, v0, Lcom/android/tools/r8/dex/L;->a:Lcom/android/tools/r8/graph/y;

    move-object v2, v9

    check-cast v2, Lcom/android/tools/r8/graph/i0;

    .line 492
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 493
    iget-object v10, v1, Lcom/android/tools/r8/graph/y;->g:Lcom/android/tools/r8/internal/Hz;

    .line 494
    iget-object v1, v0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    const/4 v11, 0x4

    invoke-virtual {v1, v11}, Lcom/android/tools/r8/dex/y;->a(I)I

    move-result v12

    .line 495
    iget-object v1, v0, Lcom/android/tools/r8/dex/L;->f:Lcom/android/tools/r8/dex/J;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    .line 496
    iget-object v1, v1, Lcom/android/tools/r8/dex/J;->a:Lcom/android/tools/r8/internal/gd0;

    .line 497
    invoke-static {v2, v12, v1}, Lcom/android/tools/r8/dex/J;->a(Lcom/android/tools/r8/graph/n1;ILcom/android/tools/r8/internal/gd0;)V

    .line 498
    iget-object v1, v0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-interface {v9, v8}, Lcom/android/tools/r8/graph/f3;->a(Lcom/android/tools/r8/graph/H5;)I

    move-result v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/dex/y;->a(S)V

    .line 499
    iget-object v1, v0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-interface {v9, v8}, Lcom/android/tools/r8/graph/f3;->b(Lcom/android/tools/r8/graph/H5;)I

    move-result v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/dex/y;->a(S)V

    .line 500
    iget-object v1, v0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-interface/range {p2 .. p2}, Lcom/android/tools/r8/graph/f3;->T()I

    move-result v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/dex/y;->a(S)V

    .line 501
    iget-object v1, v0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-interface/range {p2 .. p2}, Lcom/android/tools/r8/graph/f3;->o()[Lcom/android/tools/r8/graph/J0$a;

    move-result-object v2

    array-length v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/dex/y;->a(S)V

    .line 502
    iget-object v1, v0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    iget-object v2, v0, Lcom/android/tools/r8/dex/L;->f:Lcom/android/tools/r8/dex/J;

    invoke-interface/range {p2 .. p2}, Lcom/android/tools/r8/graph/f3;->u()Lcom/android/tools/r8/graph/Z0;

    move-result-object v3

    .line 503
    iget-object v2, v2, Lcom/android/tools/r8/dex/J;->b:Lcom/android/tools/r8/internal/k20;

    .line 504
    invoke-static {v3, v2}, Lcom/android/tools/r8/dex/J;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/Y0;)I

    move-result v2

    .line 505
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/dex/y;->f(I)V

    .line 506
    iget-object v1, v0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/dex/y;->b()I

    move-result v13

    .line 507
    iget-object v1, v0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-virtual {v1, v11}, Lcom/android/tools/r8/dex/y;->d(I)V

    .line 508
    iget-object v14, v0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    iget-object v1, v0, Lcom/android/tools/r8/dex/L;->a:Lcom/android/tools/r8/graph/y;

    iget-object v2, v0, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    iget-object v15, v0, Lcom/android/tools/r8/dex/L;->g:Lcom/android/tools/r8/dex/r;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 509
    invoke-interface/range {p2 .. p2}, Lcom/android/tools/r8/graph/f3;->Y()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    .line 510
    invoke-virtual {v14, v3}, Lcom/android/tools/r8/dex/y;->c(I)V

    .line 511
    sget-boolean v3, Lcom/android/tools/r8/dex/y;->c:Z

    if-nez v3, :cond_1

    iget-object v3, v14, Lcom/android/tools/r8/dex/y;->b:Lcom/android/tools/r8/dex/s;

    .line 512
    invoke-virtual {v3}, Lcom/android/tools/r8/dex/s;->a()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 513
    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    move-result v3

    .line 514
    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 515
    :cond_1
    :goto_0
    iget-object v3, v14, Lcom/android/tools/r8/dex/y;->b:Lcom/android/tools/r8/dex/s;

    .line 516
    invoke-virtual {v3}, Lcom/android/tools/r8/dex/s;->a()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 517
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v16

    .line 518
    iget-object v4, v2, Lcom/android/tools/r8/graph/w5;->c:Lcom/android/tools/r8/internal/Hz;

    .line 519
    iget-object v5, v1, Lcom/android/tools/r8/graph/y;->g:Lcom/android/tools/r8/internal/Hz;

    .line 520
    iget-object v6, v2, Lcom/android/tools/r8/graph/w5;->d:Lcom/android/tools/r8/internal/RR;

    move-object/from16 v1, p2

    move-object/from16 v3, p1

    move-object/from16 v7, v16

    .line 521
    invoke-interface/range {v1 .. v7}, Lcom/android/tools/r8/graph/f3;->a(Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/RR;Ljava/nio/ShortBuffer;)V

    .line 522
    invoke-interface {v9, v15}, Lcom/android/tools/r8/graph/f3;->a(Lcom/android/tools/r8/dex/r;)V

    .line 523
    iget-object v1, v14, Lcom/android/tools/r8/dex/y;->b:Lcom/android/tools/r8/dex/s;

    .line 524
    invoke-virtual {v1}, Lcom/android/tools/r8/dex/s;->a()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 525
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v2

    .line 526
    invoke-virtual/range {v16 .. v16}, Ljava/nio/Buffer;->position()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/dex/s;->c(I)V

    .line 527
    iget-object v1, v0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/dex/y;->b()I

    move-result v1

    sub-int/2addr v1, v13

    add-int/lit8 v2, v1, -0x4

    .line 528
    iget-object v3, v0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    neg-int v1, v1

    .line 529
    invoke-virtual {v3, v1}, Lcom/android/tools/r8/dex/y;->d(I)V

    .line 530
    iget-object v1, v0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    div-int/lit8 v3, v2, 0x2

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/dex/y;->f(I)V

    .line 531
    iget-object v1, v0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/dex/y;->d(I)V

    .line 532
    invoke-interface/range {p2 .. p2}, Lcom/android/tools/r8/graph/f3;->o()[Lcom/android/tools/r8/graph/J0$a;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_9

    .line 533
    iget-object v1, v0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-virtual {v1, v11}, Lcom/android/tools/r8/dex/y;->a(I)I

    move-result v1

    .line 534
    iget-object v2, v0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-interface/range {p2 .. p2}, Lcom/android/tools/r8/graph/f3;->o()[Lcom/android/tools/r8/graph/J0$a;

    move-result-object v3

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/dex/y;->d(I)V

    .line 535
    iget-object v2, v0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/dex/y;->b()I

    move-result v2

    .line 536
    iget-object v3, v0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-interface/range {p2 .. p2}, Lcom/android/tools/r8/graph/f3;->r()[Lcom/android/tools/r8/graph/J0$b;

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 537
    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/BR;->b(Lcom/android/tools/r8/dex/y;I)V

    .line 538
    invoke-interface/range {p2 .. p2}, Lcom/android/tools/r8/graph/f3;->r()[Lcom/android/tools/r8/graph/J0$b;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [S

    .line 539
    invoke-interface/range {p2 .. p2}, Lcom/android/tools/r8/graph/f3;->r()[Lcom/android/tools/r8/graph/J0$b;

    move-result-object v4

    array-length v5, v4

    const/4 v7, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v7, v5, :cond_7

    aget-object v13, v4, v7

    .line 540
    iget-object v14, v0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-virtual {v14}, Lcom/android/tools/r8/dex/y;->b()I

    move-result v14

    sub-int/2addr v14, v2

    const v15, 0xffff

    if-gt v14, v15, :cond_6

    add-int/lit8 v15, v11, 0x1

    int-to-short v14, v14

    .line 541
    aput-short v14, v3, v11

    .line 542
    iget v11, v13, Lcom/android/tools/r8/graph/J0$b;->c:I

    const/4 v14, -0x1

    if-eq v11, v14, :cond_2

    const/4 v11, 0x1

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    .line 543
    :goto_2
    iget-object v14, v0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    iget-object v6, v13, Lcom/android/tools/r8/graph/J0$b;->b:[Lcom/android/tools/r8/graph/J0$b$a;

    if-eqz v11, :cond_3

    array-length v6, v6

    neg-int v6, v6

    goto :goto_3

    :cond_3
    array-length v6, v6

    :goto_3
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 544
    invoke-static {v14, v6}, Lcom/android/tools/r8/internal/BR;->a(Lcom/android/tools/r8/dex/y;I)V

    .line 545
    iget-object v6, v13, Lcom/android/tools/r8/graph/J0$b;->b:[Lcom/android/tools/r8/graph/J0$b$a;

    array-length v14, v6

    move/from16 v17, v2

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v14, :cond_4

    move-object/from16 v18, v4

    aget-object v4, v6, v2

    move/from16 v19, v5

    .line 546
    iget-object v5, v0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    move-object/from16 v20, v6

    iget-object v6, v0, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    iget-object v8, v0, Lcom/android/tools/r8/dex/L;->b:Lcom/android/tools/r8/internal/Hz;

    .line 547
    iget-object v9, v4, Lcom/android/tools/r8/graph/J0$b$a;->b:Lcom/android/tools/r8/graph/M2;

    .line 548
    invoke-virtual {v8, v10, v9}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    .line 549
    iget-object v6, v6, Lcom/android/tools/r8/graph/w5;->g:Lcom/android/tools/r8/internal/gd0;

    .line 550
    invoke-static {v8, v6}, Lcom/android/tools/r8/graph/w5;->a(Lcom/android/tools/r8/graph/d4;Lcom/android/tools/r8/internal/x1;)I

    move-result v6

    .line 551
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 552
    invoke-static {v5, v6}, Lcom/android/tools/r8/internal/BR;->b(Lcom/android/tools/r8/dex/y;I)V

    .line 553
    iget-object v5, v0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    iget v6, v4, Lcom/android/tools/r8/graph/J0$b$a;->c:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 554
    invoke-static {v5, v6}, Lcom/android/tools/r8/internal/BR;->b(Lcom/android/tools/r8/dex/y;I)V

    .line 555
    iget-object v5, v0, Lcom/android/tools/r8/dex/L;->g:Lcom/android/tools/r8/dex/r;

    iget-object v6, v0, Lcom/android/tools/r8/dex/L;->b:Lcom/android/tools/r8/internal/Hz;

    .line 556
    iget-object v4, v4, Lcom/android/tools/r8/graph/J0$b$a;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v6, v10, v4}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    .line 557
    invoke-virtual {v5, v4}, Lcom/android/tools/r8/dex/r;->a(Lcom/android/tools/r8/graph/M2;)V

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v4, v18

    move/from16 v5, v19

    move-object/from16 v6, v20

    goto :goto_4

    :cond_4
    move-object/from16 v18, v4

    move/from16 v19, v5

    if-eqz v11, :cond_5

    .line 558
    iget-object v2, v0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    iget v4, v13, Lcom/android/tools/r8/graph/J0$b;->c:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 559
    invoke-static {v2, v4}, Lcom/android/tools/r8/internal/BR;->b(Lcom/android/tools/r8/dex/y;I)V

    :cond_5
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move v11, v15

    move/from16 v2, v17

    move-object/from16 v4, v18

    move/from16 v5, v19

    goto/16 :goto_1

    .line 560
    :cond_6
    iget-object v1, v0, Lcom/android/tools/r8/dex/L;->a:Lcom/android/tools/r8/graph/y;

    .line 561
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    .line 562
    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 563
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->r()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handler offset overflow in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/Ef0;->b(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 564
    :cond_7
    iget-object v2, v0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/dex/y;->b()I

    move-result v2

    .line 565
    iget-object v4, v0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-virtual {v4, v1}, Lcom/android/tools/r8/dex/y;->e(I)V

    .line 566
    invoke-interface/range {p2 .. p2}, Lcom/android/tools/r8/graph/f3;->o()[Lcom/android/tools/r8/graph/J0$a;

    move-result-object v1

    array-length v4, v1

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v4, :cond_8

    aget-object v5, v1, v6

    .line 567
    iget-object v7, v0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    iget v8, v5, Lcom/android/tools/r8/graph/J0$a;->c:I

    invoke-virtual {v7, v8}, Lcom/android/tools/r8/dex/y;->f(I)V

    .line 568
    iget-object v7, v0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    iget v8, v5, Lcom/android/tools/r8/graph/J0$a;->d:I

    int-to-short v8, v8

    invoke-virtual {v7, v8}, Lcom/android/tools/r8/dex/y;->a(S)V

    .line 569
    iget-object v7, v0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    iget v5, v5, Lcom/android/tools/r8/graph/J0$a;->e:I

    aget-short v5, v3, v5

    invoke-virtual {v7, v5}, Lcom/android/tools/r8/dex/y;->a(S)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 570
    :cond_8
    iget-object v1, v0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/dex/y;->e(I)V

    :cond_9
    return v12
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/g1;)I
    .locals 1

    .line 666
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->f:Lcom/android/tools/r8/dex/J;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/dex/J;->b(Lcom/android/tools/r8/graph/u0;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/g1;)I
    .locals 1

    .line 683
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/l1;

    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    .line 684
    iget-object v0, v0, Lcom/android/tools/r8/graph/w5;->o:Lcom/android/tools/r8/graph/u5;

    .line 685
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 686
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/graph/u5;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/l1;)I

    move-result p1

    return p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/j1;)I
    .locals 1

    .line 667
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->f:Lcom/android/tools/r8/dex/J;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/dex/J;->b(Lcom/android/tools/r8/graph/u0;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/j1;)I
    .locals 1

    .line 718
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    .line 719
    iget-object v0, v0, Lcom/android/tools/r8/graph/w5;->o:Lcom/android/tools/r8/graph/u5;

    .line 720
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 721
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/graph/u5;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/graph/r0;)I
    .locals 1

    .line 616
    iget-object p1, p1, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/e1;->b:Lcom/android/tools/r8/graph/M2;

    iget-object p2, p2, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    iget-object p2, p2, Lcom/android/tools/r8/graph/e1;->b:Lcom/android/tools/r8/graph/M2;

    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    .line 617
    iget-object v0, v0, Lcom/android/tools/r8/graph/w5;->o:Lcom/android/tools/r8/graph/u5;

    .line 618
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 619
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/vf;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)I

    move-result p1

    return p1
.end method

.method public final a(II)Lcom/android/tools/r8/dex/G;
    .locals 26

    move-object/from16 v6, p0

    move/from16 v0, p2

    .line 65
    iget-object v1, v6, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    .line 66
    iget-object v1, v1, Lcom/android/tools/r8/graph/w5;->e:[Lcom/android/tools/r8/graph/H2;

    .line 67
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 68
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 69
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/E0;->H0()Ljava/lang/Iterable;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/graph/j1;

    .line 70
    invoke-virtual {v6, v4, v8}, Lcom/android/tools/r8/dex/L;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)V

    goto :goto_1

    .line 71
    :cond_0
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/E0;->D1()Ljava/lang/Iterable;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/graph/j1;

    .line 72
    invoke-virtual {v6, v4, v8}, Lcom/android/tools/r8/dex/L;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)V

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 73
    :cond_2
    sget-boolean v1, Lcom/android/tools/r8/dex/L;->j:Z

    if-nez v1, :cond_10

    .line 74
    iget-object v1, v6, Lcom/android/tools/r8/dex/L;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    .line 75
    iget-boolean v1, v1, Lcom/android/tools/r8/graph/u1;->D6:Z

    if-eqz v1, :cond_3

    goto/16 :goto_a

    .line 76
    :cond_3
    iget-object v1, v6, Lcom/android/tools/r8/dex/L;->d:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object v1

    .line 77
    iget-object v2, v6, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    .line 78
    iget-object v2, v2, Lcom/android/tools/r8/graph/w5;->i:Lcom/android/tools/r8/internal/gd0;

    if-nez v2, :cond_4

    .line 79
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/gd0;->j()Lcom/android/tools/r8/internal/Yd0;

    move-result-object v2

    .line 80
    :goto_3
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/l1;

    .line 81
    sget-boolean v4, Lcom/android/tools/r8/dex/L;->j:Z

    if-nez v4, :cond_5

    iget-object v3, v3, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v3, v1}, Lcom/android/tools/r8/graph/L2;->c(Lcom/android/tools/r8/internal/C2;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 82
    :cond_7
    iget-object v2, v6, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    .line 83
    iget-object v2, v2, Lcom/android/tools/r8/graph/w5;->h:Lcom/android/tools/r8/internal/gd0;

    if-nez v2, :cond_8

    .line 84
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_5

    :cond_8
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/gd0;->j()Lcom/android/tools/r8/internal/Yd0;

    move-result-object v2

    .line 85
    :goto_5
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    .line 86
    sget-boolean v4, Lcom/android/tools/r8/dex/L;->j:Z

    if-nez v4, :cond_9

    iget-object v3, v3, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v3, v1}, Lcom/android/tools/r8/graph/L2;->c(Lcom/android/tools/r8/internal/C2;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_6

    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 87
    :cond_b
    iget-object v2, v6, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    .line 88
    iget-object v2, v2, Lcom/android/tools/r8/graph/w5;->g:Lcom/android/tools/r8/internal/gd0;

    if-nez v2, :cond_c

    .line 89
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_7

    :cond_c
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/gd0;->j()Lcom/android/tools/r8/internal/Yd0;

    move-result-object v2

    .line 90
    :goto_7
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/M2;

    .line 91
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 92
    sget-boolean v4, Lcom/android/tools/r8/dex/L;->j:Z

    if-nez v4, :cond_f

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/M2;->x0()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/android/tools/r8/graph/L2;->a(Lcom/android/tools/r8/internal/C2;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    goto :goto_9

    :cond_e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_f
    :goto_9
    if-nez v4, :cond_d

    .line 93
    sget-boolean v4, Lcom/android/tools/r8/synthesis/S;->a0:Z

    .line 94
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/tools/r8/synthesis/S;->a(Ljava/lang/String;)V

    goto :goto_8

    .line 95
    :cond_10
    :goto_a
    iget-object v1, v6, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    iget-boolean v2, v6, Lcom/android/tools/r8/dex/L;->i:Z

    .line 96
    sget-boolean v3, Lcom/android/tools/r8/dex/H;->y:Z

    const/4 v4, 0x2

    if-nez v3, :cond_12

    if-eqz p1, :cond_12

    if-ne v0, v4, :cond_11

    goto :goto_b

    :cond_11
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 97
    :cond_12
    :goto_b
    new-instance v15, Lcom/android/tools/r8/dex/H;

    const/16 v19, 0x70

    const/16 v20, 0x78

    if-ne v0, v4, :cond_13

    move/from16 v7, v20

    goto :goto_c

    :cond_13
    move/from16 v7, v19

    :goto_c
    add-int v9, v7, p1

    const/4 v14, 0x4

    if-eqz v2, :cond_15

    .line 98
    iget-object v2, v1, Lcom/android/tools/r8/graph/w5;->j:Lcom/android/tools/r8/internal/gd0;

    if-nez v2, :cond_14

    .line 99
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_d

    :cond_14
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/gd0;->j()Lcom/android/tools/r8/internal/Yd0;

    move-result-object v2

    .line 100
    :goto_d
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    mul-int/2addr v2, v14

    goto :goto_e

    :cond_15
    const/4 v2, 0x0

    :goto_e
    add-int v10, v9, v2

    .line 101
    iget-object v2, v1, Lcom/android/tools/r8/graph/w5;->g:Lcom/android/tools/r8/internal/gd0;

    if-nez v2, :cond_16

    .line 102
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_f

    :cond_16
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/gd0;->j()Lcom/android/tools/r8/internal/Yd0;

    move-result-object v2

    .line 103
    :goto_f
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    mul-int/2addr v2, v14

    add-int v11, v2, v10

    .line 104
    iget-object v2, v1, Lcom/android/tools/r8/graph/w5;->f:Lcom/android/tools/r8/internal/gd0;

    if-nez v2, :cond_17

    .line 105
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_10

    :cond_17
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/gd0;->j()Lcom/android/tools/r8/internal/Yd0;

    move-result-object v2

    .line 106
    :goto_10
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0xc

    add-int v12, v2, v11

    .line 107
    iget-object v2, v1, Lcom/android/tools/r8/graph/w5;->i:Lcom/android/tools/r8/internal/gd0;

    if-nez v2, :cond_18

    .line 108
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_11

    :cond_18
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/gd0;->j()Lcom/android/tools/r8/internal/Yd0;

    move-result-object v2

    .line 109
    :goto_11
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    add-int v13, v2, v12

    .line 110
    iget-object v2, v1, Lcom/android/tools/r8/graph/w5;->h:Lcom/android/tools/r8/internal/gd0;

    if-nez v2, :cond_19

    .line 111
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_12

    :cond_19
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/gd0;->j()Lcom/android/tools/r8/internal/Yd0;

    move-result-object v2

    .line 112
    :goto_12
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v13

    .line 113
    iget-object v7, v1, Lcom/android/tools/r8/graph/w5;->e:[Lcom/android/tools/r8/graph/H2;

    .line 114
    array-length v7, v7

    mul-int/lit8 v7, v7, 0x20

    add-int v16, v7, v2

    .line 115
    iget-object v7, v1, Lcom/android/tools/r8/graph/w5;->k:Lcom/android/tools/r8/internal/gd0;

    if-nez v7, :cond_1a

    .line 116
    sget-object v7, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_13

    :cond_1a
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/gd0;->j()Lcom/android/tools/r8/internal/Yd0;

    move-result-object v7

    .line 117
    :goto_13
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v7

    mul-int/2addr v7, v14

    add-int v17, v7, v16

    .line 118
    iget-object v1, v1, Lcom/android/tools/r8/graph/w5;->l:Lcom/android/tools/r8/internal/gd0;

    if-nez v1, :cond_1b

    .line 119
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_14

    :cond_1b
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/gd0;->j()Lcom/android/tools/r8/internal/Yd0;

    move-result-object v1

    .line 120
    :goto_14
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    add-int v1, v1, v17

    move-object v7, v15

    move/from16 v8, p1

    move v14, v2

    move-object v2, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v1

    move/from16 v18, p2

    invoke-direct/range {v7 .. v18}, Lcom/android/tools/r8/dex/H;-><init>(IIIIIIIIIII)V

    const/4 v0, -0x1

    if-nez v3, :cond_1d

    .line 121
    iget v3, v2, Lcom/android/tools/r8/dex/H;->l:I

    if-ne v3, v0, :cond_1c

    goto :goto_15

    :cond_1c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 122
    :cond_1d
    :goto_15
    iput v1, v2, Lcom/android/tools/r8/dex/H;->l:I

    .line 123
    iget-object v1, v6, Lcom/android/tools/r8/dex/L;->a:Lcom/android/tools/r8/graph/y;

    iget-object v3, v6, Lcom/android/tools/r8/dex/L;->f:Lcom/android/tools/r8/dex/J;

    iget-object v7, v6, Lcom/android/tools/r8/dex/L;->h:Lcom/android/tools/r8/dex/t0;

    .line 124
    sget-boolean v8, Lcom/android/tools/r8/dex/Y;->a:Z

    .line 125
    iget-object v9, v7, Lcom/android/tools/r8/dex/t0;->e:Lcom/android/tools/r8/internal/qo0;

    .line 126
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/qo0;->c()Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 127
    invoke-static {}, Lcom/android/tools/r8/internal/qo0;->b()Lcom/android/tools/r8/internal/qo0;

    move-result-object v8

    goto :goto_17

    :cond_1e
    if-nez v8, :cond_20

    .line 128
    invoke-virtual {v7}, Lcom/android/tools/r8/dex/t0;->b()I

    move-result v8

    if-nez v8, :cond_1f

    goto :goto_16

    :cond_1f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 129
    :cond_20
    :goto_16
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/nJ;->E()Lcom/android/tools/r8/internal/po0;

    move-result-object v8

    .line 130
    iget-boolean v8, v8, Lcom/android/tools/r8/internal/po0;->f:Z

    if-eqz v8, :cond_21

    .line 131
    iget-object v8, v7, Lcom/android/tools/r8/dex/t0;->e:Lcom/android/tools/r8/internal/qo0;

    .line 132
    invoke-virtual {v8, v1}, Lcom/android/tools/r8/internal/qo0;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/qo0;

    move-result-object v8

    goto :goto_17

    .line 133
    :cond_21
    invoke-static {}, Lcom/android/tools/r8/internal/qo0;->b()Lcom/android/tools/r8/internal/qo0;

    move-result-object v8

    .line 134
    :goto_17
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/qo0;->c()Z

    move-result v9

    if-eqz v9, :cond_22

    .line 135
    new-instance v8, Lcom/android/tools/r8/dex/w;

    invoke-direct {v8, v1, v3}, Lcom/android/tools/r8/dex/w;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/J;)V

    goto :goto_18

    .line 136
    :cond_22
    new-instance v9, Lcom/android/tools/r8/dex/h0;

    invoke-direct {v9, v1, v3, v8, v7}, Lcom/android/tools/r8/dex/h0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/J;Lcom/android/tools/r8/internal/qo0;Lcom/android/tools/r8/dex/t0;)V

    move-object v8, v9

    .line 137
    :goto_18
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ$p;->v:Ljava/util/function/BiFunction;

    .line 138
    invoke-interface {v1, v8, v7}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/dex/Y;

    .line 139
    invoke-virtual {v1}, Lcom/android/tools/r8/dex/Y;->f()Ljava/util/Collection;

    move-result-object v3

    .line 140
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 141
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    :cond_23
    :goto_19
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/graph/H5;

    .line 142
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v13}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/tools/r8/graph/i0;->m0()Lcom/android/tools/r8/graph/f3;

    move-result-object v13

    .line 143
    iget-object v14, v6, Lcom/android/tools/r8/dex/L;->d:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    sget-object v15, Lcom/android/tools/r8/internal/C2;->G:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v14, v15}, Lcom/android/tools/r8/internal/nJ;->c(Lcom/android/tools/r8/internal/C2;)Z

    move-result v14

    if-eqz v14, :cond_24

    .line 145
    iget-object v14, v6, Lcom/android/tools/r8/dex/L;->a:Lcom/android/tools/r8/graph/y;

    .line 146
    invoke-virtual {v14}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v14

    invoke-interface {v13, v11, v14}, Lcom/android/tools/r8/graph/f3;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/e3;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_23

    :cond_24
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v9, v9, 0x3

    and-int/lit8 v9, v9, -0x4

    .line 147
    iget-object v11, v6, Lcom/android/tools/r8/dex/L;->a:Lcom/android/tools/r8/graph/y;

    move-object v14, v13

    check-cast v14, Lcom/android/tools/r8/graph/i0;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    iget-object v11, v11, Lcom/android/tools/r8/graph/y;->g:Lcom/android/tools/r8/internal/Hz;

    .line 149
    invoke-interface {v13}, Lcom/android/tools/r8/graph/f3;->Y()I

    move-result v14

    mul-int/2addr v14, v4

    add-int/lit8 v14, v14, 0x10

    .line 150
    invoke-interface {v13}, Lcom/android/tools/r8/graph/f3;->o()[Lcom/android/tools/r8/graph/J0$a;

    move-result-object v15

    array-length v15, v15

    mul-int/lit8 v15, v15, 0x8

    add-int/2addr v15, v14

    .line 151
    invoke-interface {v13}, Lcom/android/tools/r8/graph/f3;->r()[Lcom/android/tools/r8/graph/J0$b;

    move-result-object v14

    array-length v14, v14

    if-lez v14, :cond_29

    add-int/lit8 v15, v15, 0x3

    and-int/lit8 v14, v15, -0x4

    .line 152
    invoke-interface {v13}, Lcom/android/tools/r8/graph/f3;->r()[Lcom/android/tools/r8/graph/J0$b;

    move-result-object v15

    array-length v15, v15

    invoke-static {v15}, Lcom/android/tools/r8/internal/BR;->d(I)I

    move-result v15

    add-int/2addr v15, v14

    .line 153
    invoke-interface {v13}, Lcom/android/tools/r8/graph/f3;->r()[Lcom/android/tools/r8/graph/J0$b;

    move-result-object v13

    array-length v14, v13

    const/4 v4, 0x0

    :goto_1a
    if-ge v4, v14, :cond_29

    aget-object v5, v13, v4

    .line 154
    iget v12, v5, Lcom/android/tools/r8/graph/J0$b;->c:I

    if-eq v12, v0, :cond_25

    const/4 v12, 0x1

    goto :goto_1b

    :cond_25
    const/4 v12, 0x0

    :goto_1b
    if-eqz v12, :cond_26

    .line 155
    iget-object v0, v5, Lcom/android/tools/r8/graph/J0$b;->b:[Lcom/android/tools/r8/graph/J0$b$a;

    array-length v0, v0

    neg-int v0, v0

    goto :goto_1c

    :cond_26
    iget-object v0, v5, Lcom/android/tools/r8/graph/J0$b;->b:[Lcom/android/tools/r8/graph/J0$b$a;

    array-length v0, v0

    :goto_1c
    invoke-static {v0}, Lcom/android/tools/r8/internal/BR;->c(I)I

    move-result v0

    add-int/2addr v0, v15

    .line 156
    iget-object v15, v5, Lcom/android/tools/r8/graph/J0$b;->b:[Lcom/android/tools/r8/graph/J0$b$a;

    move/from16 v18, v0

    array-length v0, v15

    move-object/from16 v21, v7

    const/4 v7, 0x0

    :goto_1d
    if-ge v7, v0, :cond_27

    move/from16 v22, v0

    aget-object v0, v15, v7

    move-object/from16 v23, v8

    .line 157
    iget-object v8, v6, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    move/from16 v24, v10

    iget-object v10, v6, Lcom/android/tools/r8/dex/L;->b:Lcom/android/tools/r8/internal/Hz;

    move-object/from16 v25, v13

    .line 158
    iget-object v13, v0, Lcom/android/tools/r8/graph/J0$b$a;->b:Lcom/android/tools/r8/graph/M2;

    .line 159
    invoke-virtual {v10, v11, v13}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v10

    .line 160
    iget-object v8, v8, Lcom/android/tools/r8/graph/w5;->g:Lcom/android/tools/r8/internal/gd0;

    .line 161
    invoke-static {v10, v8}, Lcom/android/tools/r8/graph/w5;->a(Lcom/android/tools/r8/graph/d4;Lcom/android/tools/r8/internal/x1;)I

    move-result v8

    .line 162
    invoke-static {v8}, Lcom/android/tools/r8/internal/BR;->d(I)I

    move-result v8

    add-int v8, v8, v18

    .line 163
    iget v0, v0, Lcom/android/tools/r8/graph/J0$b$a;->c:I

    invoke-static {v0}, Lcom/android/tools/r8/internal/BR;->d(I)I

    move-result v0

    add-int v18, v0, v8

    add-int/lit8 v7, v7, 0x1

    move/from16 v0, v22

    move-object/from16 v8, v23

    move/from16 v10, v24

    move-object/from16 v13, v25

    goto :goto_1d

    :cond_27
    move-object/from16 v23, v8

    move/from16 v24, v10

    move-object/from16 v25, v13

    if-eqz v12, :cond_28

    .line 164
    iget v0, v5, Lcom/android/tools/r8/graph/J0$b;->c:I

    invoke-static {v0}, Lcom/android/tools/r8/internal/BR;->d(I)I

    move-result v0

    add-int v0, v0, v18

    move v15, v0

    goto :goto_1e

    :cond_28
    move/from16 v15, v18

    :goto_1e
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v7, v21

    move-object/from16 v8, v23

    move/from16 v10, v24

    move-object/from16 v13, v25

    const/4 v0, -0x1

    goto :goto_1a

    :cond_29
    move-object/from16 v21, v7

    move-object/from16 v23, v8

    move/from16 v24, v10

    add-int/2addr v9, v15

    move-object/from16 v7, v21

    move-object/from16 v8, v23

    move/from16 v10, v24

    const/4 v0, -0x1

    const/4 v4, 0x2

    goto/16 :goto_19

    .line 165
    :cond_2a
    iget-object v0, v6, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    .line 166
    sget-boolean v4, Lcom/android/tools/r8/dex/H;->y:Z

    if-nez v4, :cond_2c

    iget v5, v2, Lcom/android/tools/r8/dex/H;->l:I

    const/4 v7, 0x1

    invoke-static {v5, v7}, Lcom/android/tools/r8/dex/H;->a(IZ)Z

    move-result v5

    if-eqz v5, :cond_2b

    goto :goto_1f

    :cond_2b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 167
    :cond_2c
    :goto_1f
    iget v5, v2, Lcom/android/tools/r8/dex/H;->l:I

    add-int/2addr v5, v9

    .line 168
    invoke-virtual {v0, v5}, Lcom/android/tools/r8/dex/y;->e(I)V

    .line 169
    iget-object v0, v6, Lcom/android/tools/r8/dex/L;->f:Lcom/android/tools/r8/dex/J;

    .line 170
    iget-object v0, v0, Lcom/android/tools/r8/dex/J;->b:Lcom/android/tools/r8/internal/k20;

    .line 171
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/k20;->j()Lcom/android/tools/r8/internal/M30;

    move-result-object v0

    .line 172
    check-cast v0, Ljava/util/AbstractCollection;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2f

    if-nez v4, :cond_2d

    .line 173
    iget v0, v2, Lcom/android/tools/r8/dex/H;->m:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_2e

    :cond_2d
    const/4 v0, 0x0

    goto :goto_20

    :cond_2e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 174
    :goto_20
    iput v0, v2, Lcom/android/tools/r8/dex/H;->m:I

    goto/16 :goto_23

    .line 175
    :cond_2f
    iget-object v0, v6, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/android/tools/r8/dex/y;->a(I)I

    move-result v0

    if-nez v4, :cond_31

    .line 176
    iget v4, v2, Lcom/android/tools/r8/dex/H;->m:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_30

    goto :goto_21

    :cond_30
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 177
    :cond_31
    :goto_21
    iput v0, v2, Lcom/android/tools/r8/dex/H;->m:I

    .line 178
    new-instance v0, Ljava/util/HashSet;

    iget-object v4, v6, Lcom/android/tools/r8/dex/L;->f:Lcom/android/tools/r8/dex/J;

    .line 179
    iget-object v4, v4, Lcom/android/tools/r8/dex/J;->b:Lcom/android/tools/r8/internal/k20;

    .line 180
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/k20;->j()Lcom/android/tools/r8/internal/M30;

    move-result-object v4

    .line 181
    check-cast v4, Lcom/android/tools/r8/internal/f20;

    .line 182
    iget-object v4, v4, Lcom/android/tools/r8/internal/f20;->b:Lcom/android/tools/r8/internal/k20;

    .line 183
    iget v4, v4, Lcom/android/tools/r8/internal/k20;->l:I

    .line 184
    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 185
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_32
    :goto_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/H5;

    .line 186
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/i0;->m0()Lcom/android/tools/r8/graph/f3;

    move-result-object v5

    .line 187
    invoke-interface {v5}, Lcom/android/tools/r8/graph/f3;->u()Lcom/android/tools/r8/graph/Z0;

    move-result-object v5

    if-eqz v5, :cond_32

    .line 188
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_32

    .line 189
    iget-object v7, v6, Lcom/android/tools/r8/dex/L;->a:Lcom/android/tools/r8/graph/y;

    .line 190
    iget-object v7, v7, Lcom/android/tools/r8/graph/y;->g:Lcom/android/tools/r8/internal/Hz;

    .line 191
    iget-object v8, v6, Lcom/android/tools/r8/dex/L;->f:Lcom/android/tools/r8/dex/J;

    iget-object v9, v6, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-virtual {v9}, Lcom/android/tools/r8/dex/y;->b()I

    move-result v9

    .line 192
    iget-object v8, v8, Lcom/android/tools/r8/dex/J;->b:Lcom/android/tools/r8/internal/k20;

    .line 193
    invoke-static {v5, v9, v8}, Lcom/android/tools/r8/dex/J;->a(Ljava/lang/Object;ILcom/android/tools/r8/internal/Y0;)V

    .line 194
    iget-object v8, v6, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    new-instance v9, Lcom/android/tools/r8/dex/u;

    iget-object v11, v6, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    iget-object v12, v6, Lcom/android/tools/r8/dex/L;->b:Lcom/android/tools/r8/internal/Hz;

    invoke-direct {v9, v5, v11, v12, v7}, Lcom/android/tools/r8/dex/u;-><init>(Lcom/android/tools/r8/graph/Z0;Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)V

    invoke-virtual {v9}, Lcom/android/tools/r8/dex/u;->a()[B

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/android/tools/r8/dex/y;->a([B)V

    goto :goto_22

    .line 195
    :cond_33
    :goto_23
    iget-object v0, v6, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/dex/y;->a(I)I

    move-result v0

    .line 196
    sget-boolean v5, Lcom/android/tools/r8/dex/H;->y:Z

    if-nez v5, :cond_35

    iget v7, v2, Lcom/android/tools/r8/dex/H;->n:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_34

    goto :goto_24

    :cond_34
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 197
    :cond_35
    :goto_24
    iput v0, v2, Lcom/android/tools/r8/dex/H;->n:I

    .line 198
    iget-object v0, v6, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    if-nez v5, :cond_37

    .line 199
    iget v5, v2, Lcom/android/tools/r8/dex/H;->l:I

    const/4 v7, 0x1

    invoke-static {v5, v7}, Lcom/android/tools/r8/dex/H;->a(IZ)Z

    move-result v5

    if-eqz v5, :cond_36

    goto :goto_25

    :cond_36
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 200
    :cond_37
    :goto_25
    iget v5, v2, Lcom/android/tools/r8/dex/H;->l:I

    .line 201
    invoke-virtual {v0, v5}, Lcom/android/tools/r8/dex/y;->e(I)V

    .line 202
    sget-boolean v0, Lcom/android/tools/r8/dex/L;->j:Z

    if-nez v0, :cond_39

    iget-object v0, v6, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    .line 203
    invoke-virtual {v0}, Lcom/android/tools/r8/dex/y;->b()I

    move-result v0

    .line 204
    rem-int/2addr v0, v4

    if-nez v0, :cond_38

    goto :goto_26

    .line 205
    :cond_38
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 206
    :cond_39
    :goto_26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 207
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/H5;

    .line 208
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/i0;->m0()Lcom/android/tools/r8/graph/f3;

    move-result-object v7

    .line 209
    iget-object v8, v6, Lcom/android/tools/r8/dex/L;->d:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    sget-object v9, Lcom/android/tools/r8/internal/C2;->G:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v8, v9}, Lcom/android/tools/r8/internal/nJ;->c(Lcom/android/tools/r8/internal/C2;)Z

    move-result v8

    if-nez v8, :cond_3a

    .line 211
    invoke-virtual {v6, v5, v7}, Lcom/android/tools/r8/dex/L;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/f3;)I

    goto :goto_27

    .line 212
    :cond_3a
    iget-object v8, v6, Lcom/android/tools/r8/dex/L;->a:Lcom/android/tools/r8/graph/y;

    .line 213
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v8

    invoke-interface {v7, v5, v8}, Lcom/android/tools/r8/graph/f3;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/e3;

    move-result-object v8

    .line 214
    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    if-eqz v9, :cond_3b

    .line 215
    iget-object v7, v6, Lcom/android/tools/r8/dex/L;->f:Lcom/android/tools/r8/dex/J;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 216
    iget-object v7, v7, Lcom/android/tools/r8/dex/J;->a:Lcom/android/tools/r8/internal/gd0;

    .line 217
    invoke-static {v5, v8, v7}, Lcom/android/tools/r8/dex/J;->a(Lcom/android/tools/r8/graph/n1;ILcom/android/tools/r8/internal/gd0;)V

    goto :goto_27

    .line 218
    :cond_3b
    invoke-virtual {v6, v5, v7}, Lcom/android/tools/r8/dex/L;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/f3;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    .line 219
    :cond_3c
    sget-boolean v0, Lcom/android/tools/r8/dex/L;->j:Z

    if-nez v0, :cond_3f

    iget-object v3, v6, Lcom/android/tools/r8/dex/L;->f:Lcom/android/tools/r8/dex/J;

    iget-object v3, v3, Lcom/android/tools/r8/dex/J;->a:Lcom/android/tools/r8/internal/gd0;

    .line 220
    iget-object v5, v3, Lcom/android/tools/r8/internal/gd0;->o:Lcom/android/tools/r8/internal/Yc0;

    if-nez v5, :cond_3d

    .line 221
    new-instance v5, Lcom/android/tools/r8/internal/Yc0;

    invoke-direct {v5, v3}, Lcom/android/tools/r8/internal/Yc0;-><init>(Lcom/android/tools/r8/internal/gd0;)V

    iput-object v5, v3, Lcom/android/tools/r8/internal/gd0;->o:Lcom/android/tools/r8/internal/Yc0;

    .line 222
    :cond_3d
    iget-object v3, v3, Lcom/android/tools/r8/internal/gd0;->o:Lcom/android/tools/r8/internal/Yc0;

    .line 223
    invoke-static {v3}, Lcom/android/tools/r8/internal/QC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/QC;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-ne v10, v3, :cond_3e

    goto :goto_28

    .line 224
    :cond_3e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 225
    :cond_3f
    :goto_28
    sget-boolean v3, Lcom/android/tools/r8/dex/H;->y:Z

    if-nez v3, :cond_41

    iget v5, v2, Lcom/android/tools/r8/dex/H;->x:I

    const/4 v7, -0x1

    if-ne v5, v7, :cond_40

    goto :goto_29

    :cond_40
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 226
    :cond_41
    :goto_29
    iput v10, v2, Lcom/android/tools/r8/dex/H;->x:I

    if-nez v0, :cond_47

    if-nez v3, :cond_43

    .line 227
    iget v0, v2, Lcom/android/tools/r8/dex/H;->m:I

    const/4 v5, 0x0

    invoke-static {v0, v5}, Lcom/android/tools/r8/dex/H;->a(IZ)Z

    move-result v0

    if-eqz v0, :cond_42

    goto :goto_2a

    :cond_42
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 228
    :cond_43
    :goto_2a
    iget v0, v2, Lcom/android/tools/r8/dex/H;->m:I

    if-eqz v0, :cond_47

    .line 229
    iget-object v0, v6, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/dex/y;->b()I

    move-result v0

    if-nez v3, :cond_45

    .line 230
    iget v5, v2, Lcom/android/tools/r8/dex/H;->m:I

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/android/tools/r8/dex/H;->a(IZ)Z

    move-result v5

    if-eqz v5, :cond_44

    goto :goto_2b

    :cond_44
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 231
    :cond_45
    :goto_2b
    iget v5, v2, Lcom/android/tools/r8/dex/H;->m:I

    if-ne v0, v5, :cond_46

    goto :goto_2c

    .line 232
    :cond_46
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 233
    :cond_47
    :goto_2c
    iget-object v0, v6, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    if-nez v3, :cond_49

    .line 234
    iget v5, v2, Lcom/android/tools/r8/dex/H;->n:I

    const/4 v7, 0x1

    invoke-static {v5, v7}, Lcom/android/tools/r8/dex/H;->a(IZ)Z

    move-result v5

    if-eqz v5, :cond_48

    goto :goto_2d

    :cond_48
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 235
    :cond_49
    :goto_2d
    iget v5, v2, Lcom/android/tools/r8/dex/H;->n:I

    .line 236
    invoke-virtual {v0, v5}, Lcom/android/tools/r8/dex/y;->e(I)V

    .line 237
    invoke-virtual {v1}, Lcom/android/tools/r8/dex/Y;->i()Ljava/util/Collection;

    move-result-object v0

    .line 238
    new-instance v5, Lu/O;

    invoke-direct {v5, v2}, Lu/O;-><init>(Lcom/android/tools/r8/dex/H;)V

    new-instance v7, Lu/u;

    invoke-direct {v7, v6}, Lu/u;-><init>(Lcom/android/tools/r8/dex/L;)V

    const/4 v8, 0x1

    .line 239
    invoke-virtual {v6, v0, v5, v7, v8}, Lcom/android/tools/r8/dex/L;->a(Ljava/util/Collection;Ljava/util/function/Consumer;Ljava/util/function/Consumer;I)V

    .line 240
    iget-boolean v0, v6, Lcom/android/tools/r8/dex/L;->i:Z

    if-eqz v0, :cond_4a

    .line 241
    invoke-virtual {v1}, Lcom/android/tools/r8/dex/Y;->h()Ljava/util/Collection;

    move-result-object v0

    .line 242
    new-instance v5, Lu/A;

    invoke-direct {v5, v2}, Lu/A;-><init>(Lcom/android/tools/r8/dex/H;)V

    new-instance v7, Lu/B;

    invoke-direct {v7, v6}, Lu/B;-><init>(Lcom/android/tools/r8/dex/L;)V

    .line 243
    invoke-virtual {v6, v0, v5, v7, v8}, Lcom/android/tools/r8/dex/L;->a(Ljava/util/Collection;Ljava/util/function/Consumer;Ljava/util/function/Consumer;I)V

    goto :goto_2e

    :cond_4a
    const/4 v0, 0x0

    .line 244
    iput v0, v2, Lcom/android/tools/r8/dex/H;->o:I

    .line 245
    :goto_2e
    invoke-virtual {v1}, Lcom/android/tools/r8/dex/Y;->b()Ljava/util/Collection;

    move-result-object v0

    .line 246
    new-instance v5, Lu/C;

    invoke-direct {v5, v2}, Lu/C;-><init>(Lcom/android/tools/r8/dex/H;)V

    new-instance v7, Lu/D;

    invoke-direct {v7, v6}, Lu/D;-><init>(Lcom/android/tools/r8/dex/L;)V

    .line 247
    invoke-virtual {v6, v0, v5, v7, v8}, Lcom/android/tools/r8/dex/L;->a(Ljava/util/Collection;Ljava/util/function/Consumer;Ljava/util/function/Consumer;I)V

    .line 248
    invoke-virtual {v1}, Lcom/android/tools/r8/dex/Y;->e()Ljava/util/Collection;

    move-result-object v0

    .line 249
    new-instance v5, Lu/E;

    invoke-direct {v5, v2}, Lu/E;-><init>(Lcom/android/tools/r8/dex/H;)V

    new-instance v7, Lu/F;

    invoke-direct {v7, v6}, Lu/F;-><init>(Lcom/android/tools/r8/dex/L;)V

    .line 250
    invoke-virtual {v6, v0, v5, v7, v8}, Lcom/android/tools/r8/dex/L;->a(Ljava/util/Collection;Ljava/util/function/Consumer;Ljava/util/function/Consumer;I)V

    .line 251
    invoke-virtual {v1}, Lcom/android/tools/r8/dex/Y;->g()Ljava/util/Collection;

    move-result-object v0

    .line 252
    new-instance v5, Lu/G;

    invoke-direct {v5, v2}, Lu/G;-><init>(Lcom/android/tools/r8/dex/H;)V

    new-instance v7, Lu/H;

    invoke-direct {v7, v6}, Lu/H;-><init>(Lcom/android/tools/r8/dex/L;)V

    .line 253
    invoke-virtual {v6, v0, v5, v7, v8}, Lcom/android/tools/r8/dex/L;->a(Ljava/util/Collection;Ljava/util/function/Consumer;Ljava/util/function/Consumer;I)V

    .line 254
    invoke-virtual {v1}, Lcom/android/tools/r8/dex/Y;->c()Ljava/util/Collection;

    move-result-object v0

    .line 255
    new-instance v5, Lu/P;

    invoke-direct {v5, v2}, Lu/P;-><init>(Lcom/android/tools/r8/dex/H;)V

    new-instance v7, Lu/Q;

    invoke-direct {v7, v6}, Lu/Q;-><init>(Lcom/android/tools/r8/dex/L;)V

    .line 256
    invoke-virtual {v6, v0, v5, v7, v4}, Lcom/android/tools/r8/dex/L;->a(Ljava/util/Collection;Ljava/util/function/Consumer;Ljava/util/function/Consumer;I)V

    .line 257
    invoke-virtual {v1}, Lcom/android/tools/r8/dex/Y;->d()Ljava/util/Collection;

    move-result-object v0

    .line 258
    new-instance v5, Lu/S;

    invoke-direct {v5, v2}, Lu/S;-><init>(Lcom/android/tools/r8/dex/H;)V

    new-instance v7, Lu/T;

    invoke-direct {v7, v6}, Lu/T;-><init>(Lcom/android/tools/r8/dex/L;)V

    .line 259
    invoke-virtual {v6, v0, v5, v7, v4}, Lcom/android/tools/r8/dex/L;->a(Ljava/util/Collection;Ljava/util/function/Consumer;Ljava/util/function/Consumer;I)V

    .line 260
    invoke-virtual {v1}, Lcom/android/tools/r8/dex/Y;->a()Ljava/util/Collection;

    move-result-object v0

    .line 261
    new-instance v1, Lu/U;

    invoke-direct {v1, v2}, Lu/U;-><init>(Lcom/android/tools/r8/dex/H;)V

    new-instance v5, Lu/p;

    invoke-direct {v5, v6}, Lu/p;-><init>(Lcom/android/tools/r8/dex/L;)V

    .line 262
    invoke-virtual {v6, v0, v1, v5, v4}, Lcom/android/tools/r8/dex/L;->a(Ljava/util/Collection;Ljava/util/function/Consumer;Ljava/util/function/Consumer;I)V

    .line 263
    iget-object v0, v6, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/dex/y;->a(I)I

    move-result v7

    .line 264
    iput v7, v2, Lcom/android/tools/r8/dex/H;->v:I

    .line 265
    iget-object v0, v6, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/dex/y;->d(I)V

    .line 266
    iget-object v0, v6, Lcom/android/tools/r8/dex/L;->f:Lcom/android/tools/r8/dex/J;

    .line 267
    iget-object v0, v0, Lcom/android/tools/r8/dex/J;->d:Lcom/android/tools/r8/internal/gd0;

    .line 268
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/gd0;->j()Lcom/android/tools/r8/internal/Yd0;

    move-result-object v0

    .line 269
    check-cast v0, Lcom/android/tools/r8/internal/bd0;

    .line 270
    iget-object v0, v0, Lcom/android/tools/r8/internal/bd0;->b:Lcom/android/tools/r8/internal/gd0;

    .line 271
    iget v4, v0, Lcom/android/tools/r8/internal/gd0;->l:I

    .line 272
    iget v5, v2, Lcom/android/tools/r8/dex/H;->b:I

    if-nez v3, :cond_4c

    .line 273
    iget v0, v2, Lcom/android/tools/r8/dex/H;->o:I

    const/4 v9, 0x0

    invoke-static {v0, v9}, Lcom/android/tools/r8/dex/H;->a(IZ)Z

    move-result v0

    if-eqz v0, :cond_4b

    goto :goto_2f

    :cond_4b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4c
    const/4 v9, 0x0

    .line 274
    :goto_2f
    iget v10, v2, Lcom/android/tools/r8/dex/H;->o:I

    const/4 v3, 0x0

    move-object v0, v2

    move-object/from16 v1, p0

    move-object v11, v2

    move v2, v3

    move v3, v4

    const/4 v12, 0x2

    move v4, v5

    move v5, v10

    .line 275
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/dex/H;->a(Lcom/android/tools/r8/dex/L;IIII)Ljava/util/ArrayList;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v9

    move v5, v2

    :goto_30
    if-ge v5, v1, :cond_50

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v5, v5, 0x1

    check-cast v3, Lcom/android/tools/r8/dex/I;

    .line 277
    iget-boolean v4, v6, Lcom/android/tools/r8/dex/L;->i:Z

    if-eqz v4, :cond_4f

    iget-object v4, v6, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    .line 278
    iget v10, v3, Lcom/android/tools/r8/dex/I;->c:I

    if-nez v10, :cond_4d

    goto :goto_31

    .line 279
    :cond_4d
    iget v10, v3, Lcom/android/tools/r8/dex/I;->a:I

    int-to-short v10, v10

    invoke-virtual {v4, v10}, Lcom/android/tools/r8/dex/y;->a(S)V

    .line 280
    invoke-virtual {v4, v9}, Lcom/android/tools/r8/dex/y;->a(S)V

    .line 281
    iget v10, v3, Lcom/android/tools/r8/dex/I;->c:I

    invoke-virtual {v4, v10}, Lcom/android/tools/r8/dex/y;->f(I)V

    .line 282
    iget v3, v3, Lcom/android/tools/r8/dex/I;->b:I

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/dex/y;->f(I)V

    :cond_4e
    move v3, v8

    goto :goto_32

    .line 283
    :cond_4f
    iget v4, v3, Lcom/android/tools/r8/dex/I;->c:I

    if-nez v4, :cond_4e

    .line 284
    iget v3, v3, Lcom/android/tools/r8/dex/I;->a:I

    const/16 v4, 0x2002

    if-eq v3, v4, :cond_4e

    :goto_31
    move v3, v9

    :goto_32
    add-int/2addr v2, v3

    goto :goto_30

    .line 285
    :cond_50
    iget-object v0, v6, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-virtual {v0, v7}, Lcom/android/tools/r8/dex/y;->e(I)V

    .line 286
    iget-object v0, v6, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/dex/y;->f(I)V

    .line 287
    iget-object v0, v6, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    mul-int/lit8 v2, v2, 0xc

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/dex/y;->d(I)V

    .line 288
    iget-object v0, v6, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/dex/y;->b()I

    move-result v0

    .line 289
    iput v0, v11, Lcom/android/tools/r8/dex/H;->w:I

    .line 290
    iget-object v0, v6, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    iget v1, v11, Lcom/android/tools/r8/dex/H;->a:I

    .line 291
    iget v2, v11, Lcom/android/tools/r8/dex/H;->k:I

    if-ne v2, v12, :cond_51

    move/from16 v2, v20

    goto :goto_33

    :cond_51
    move/from16 v2, v19

    :goto_33
    add-int/2addr v2, v1

    .line 292
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/dex/y;->e(I)V

    .line 293
    iget-boolean v0, v6, Lcom/android/tools/r8/dex/L;->i:Z

    if-eqz v0, :cond_53

    .line 294
    iget-object v0, v6, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    .line 295
    iget-object v0, v0, Lcom/android/tools/r8/graph/w5;->j:Lcom/android/tools/r8/internal/gd0;

    if-nez v0, :cond_52

    .line 296
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_34

    :cond_52
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/gd0;->j()Lcom/android/tools/r8/internal/Yd0;

    move-result-object v0

    .line 297
    :goto_34
    iget v1, v11, Lcom/android/tools/r8/dex/H;->b:I

    new-instance v2, Lu/q;

    invoke-direct {v2, v6}, Lu/q;-><init>(Lcom/android/tools/r8/dex/L;)V

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/tools/r8/dex/L;->a(Ljava/util/Collection;ILjava/util/function/Consumer;)V

    goto :goto_35

    .line 298
    :cond_53
    sget-boolean v0, Lcom/android/tools/r8/dex/L;->j:Z

    if-nez v0, :cond_55

    iget v0, v11, Lcom/android/tools/r8/dex/H;->b:I

    iget v1, v11, Lcom/android/tools/r8/dex/H;->c:I

    if-ne v0, v1, :cond_54

    goto :goto_35

    :cond_54
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 299
    :cond_55
    :goto_35
    iget-object v0, v6, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    .line 300
    iget-object v0, v0, Lcom/android/tools/r8/graph/w5;->g:Lcom/android/tools/r8/internal/gd0;

    if-nez v0, :cond_56

    .line 301
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_36

    :cond_56
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/gd0;->j()Lcom/android/tools/r8/internal/Yd0;

    move-result-object v0

    .line 302
    :goto_36
    iget v1, v11, Lcom/android/tools/r8/dex/H;->c:I

    new-instance v2, Lu/r;

    invoke-direct {v2, v6}, Lu/r;-><init>(Lcom/android/tools/r8/dex/L;)V

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/tools/r8/dex/L;->a(Ljava/util/Collection;ILjava/util/function/Consumer;)V

    .line 303
    iget-object v0, v6, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    .line 304
    iget-object v0, v0, Lcom/android/tools/r8/graph/w5;->f:Lcom/android/tools/r8/internal/gd0;

    if-nez v0, :cond_57

    .line 305
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_37

    :cond_57
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/gd0;->j()Lcom/android/tools/r8/internal/Yd0;

    move-result-object v0

    .line 306
    :goto_37
    iget v1, v11, Lcom/android/tools/r8/dex/H;->d:I

    new-instance v2, Lu/s;

    invoke-direct {v2, v6}, Lu/s;-><init>(Lcom/android/tools/r8/dex/L;)V

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/tools/r8/dex/L;->a(Ljava/util/Collection;ILjava/util/function/Consumer;)V

    .line 307
    iget-object v0, v6, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    .line 308
    iget-object v0, v0, Lcom/android/tools/r8/graph/w5;->i:Lcom/android/tools/r8/internal/gd0;

    if-nez v0, :cond_58

    .line 309
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_38

    :cond_58
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/gd0;->j()Lcom/android/tools/r8/internal/Yd0;

    move-result-object v0

    .line 310
    :goto_38
    iget v1, v11, Lcom/android/tools/r8/dex/H;->e:I

    new-instance v2, Lu/t;

    invoke-direct {v2, v6}, Lu/t;-><init>(Lcom/android/tools/r8/dex/L;)V

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/tools/r8/dex/L;->a(Ljava/util/Collection;ILjava/util/function/Consumer;)V

    .line 311
    iget-object v0, v6, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    .line 312
    iget-object v0, v0, Lcom/android/tools/r8/graph/w5;->h:Lcom/android/tools/r8/internal/gd0;

    if-nez v0, :cond_59

    .line 313
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_39

    :cond_59
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/gd0;->j()Lcom/android/tools/r8/internal/Yd0;

    move-result-object v0

    .line 314
    :goto_39
    iget v1, v11, Lcom/android/tools/r8/dex/H;->f:I

    new-instance v2, Lu/v;

    invoke-direct {v2, v6}, Lu/v;-><init>(Lcom/android/tools/r8/dex/L;)V

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/tools/r8/dex/L;->a(Ljava/util/Collection;ILjava/util/function/Consumer;)V

    .line 315
    iget-object v0, v6, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    .line 316
    iget-object v0, v0, Lcom/android/tools/r8/graph/w5;->e:[Lcom/android/tools/r8/graph/H2;

    .line 317
    iget v1, v11, Lcom/android/tools/r8/dex/H;->g:I

    new-instance v2, Lu/w;

    invoke-direct {v2, v6}, Lu/w;-><init>(Lcom/android/tools/r8/dex/L;)V

    .line 318
    sget-boolean v3, Lcom/android/tools/r8/dex/L;->j:Z

    if-nez v3, :cond_5b

    iget-object v3, v6, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/dex/y;->b()I

    move-result v3

    if-ne v3, v1, :cond_5a

    goto :goto_3a

    :cond_5a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 319
    :cond_5b
    :goto_3a
    array-length v1, v0

    move v5, v9

    :goto_3b
    if-ge v5, v1, :cond_5c

    aget-object v3, v0, v5

    .line 320
    invoke-interface {v2, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    .line 321
    :cond_5c
    iget-object v0, v6, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    .line 322
    iget-object v0, v0, Lcom/android/tools/r8/graph/w5;->k:Lcom/android/tools/r8/internal/gd0;

    if-nez v0, :cond_5d

    .line 323
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_3c

    :cond_5d
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/gd0;->j()Lcom/android/tools/r8/internal/Yd0;

    move-result-object v0

    .line 324
    :goto_3c
    iget v1, v11, Lcom/android/tools/r8/dex/H;->h:I

    new-instance v2, Lu/x;

    invoke-direct {v2, v6}, Lu/x;-><init>(Lcom/android/tools/r8/dex/L;)V

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/tools/r8/dex/L;->a(Ljava/util/Collection;ILjava/util/function/Consumer;)V

    .line 325
    iget-object v0, v6, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    .line 326
    iget-object v0, v0, Lcom/android/tools/r8/graph/w5;->l:Lcom/android/tools/r8/internal/gd0;

    if-nez v0, :cond_5e

    .line 327
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_3d

    :cond_5e
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/gd0;->j()Lcom/android/tools/r8/internal/Yd0;

    move-result-object v0

    .line 328
    :goto_3d
    iget v1, v11, Lcom/android/tools/r8/dex/H;->i:I

    new-instance v2, Lu/y;

    invoke-direct {v2, v6}, Lu/y;-><init>(Lcom/android/tools/r8/dex/L;)V

    .line 329
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/tools/r8/dex/L;->a(Ljava/util/Collection;ILjava/util/function/Consumer;)V

    .line 330
    iget-object v0, v6, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    iget v1, v11, Lcom/android/tools/r8/dex/H;->a:I

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/dex/y;->e(I)V

    .line 331
    iget-object v0, v6, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    sget-object v1, Lcom/android/tools/r8/dex/t;->a:[B

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/dex/y;->a([B)V

    .line 332
    iget-object v0, v6, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    .line 333
    iget-object v1, v6, Lcom/android/tools/r8/dex/L;->d:Lcom/android/tools/r8/internal/nJ;

    iget-object v2, v1, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v3, v2, Lcom/android/tools/r8/internal/nJ$p;->m:Z

    if-eqz v3, :cond_5f

    .line 334
    sget-object v1, Lcom/android/tools/r8/internal/Ms;->j:Lcom/android/tools/r8/internal/Ms;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Ms;->a()[B

    move-result-object v1

    goto :goto_3e

    .line 335
    :cond_5f
    iget-boolean v2, v2, Lcom/android/tools/r8/internal/nJ$p;->l:Z

    if-eqz v2, :cond_60

    .line 336
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object v1

    sget-object v2, Lcom/android/tools/r8/internal/C2;->F:Lcom/android/tools/r8/internal/C2;

    invoke-interface {v1, v2}, Lcom/android/tools/r8/internal/C40;->d(Lcom/android/tools/r8/internal/C40;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 337
    sget-object v1, Lcom/android/tools/r8/internal/Ms;->i:Lcom/android/tools/r8/internal/Ms;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Ms;->a()[B

    move-result-object v1

    goto :goto_3e

    .line 338
    :cond_60
    iget-object v1, v6, Lcom/android/tools/r8/dex/L;->d:Lcom/android/tools/r8/internal/nJ;

    iget-object v2, v1, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ$p;->t:[B

    if-eqz v2, :cond_61

    move-object v1, v2

    goto :goto_3e

    .line 339
    :cond_61
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/Ms;->c(Lcom/android/tools/r8/internal/C2;)Lcom/android/tools/r8/internal/Ms;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Ms;->a()[B

    move-result-object v1

    .line 340
    :goto_3e
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/dex/y;->a([B)V

    .line 341
    iget-object v0, v6, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-virtual {v0, v9}, Lcom/android/tools/r8/dex/y;->a(B)V

    .line 342
    iget-object v0, v6, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    iget v1, v11, Lcom/android/tools/r8/dex/H;->a:I

    add-int/lit8 v1, v1, 0x20

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/dex/y;->e(I)V

    .line 343
    iget-object v0, v6, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    .line 344
    iget v1, v11, Lcom/android/tools/r8/dex/H;->w:I

    .line 345
    iget v2, v11, Lcom/android/tools/r8/dex/H;->a:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/dex/y;->f(I)V

    .line 346
    iget-object v0, v6, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    .line 347
    iget v1, v11, Lcom/android/tools/r8/dex/H;->k:I

    if-ne v1, v12, :cond_62

    move/from16 v1, v20

    goto :goto_3f

    :cond_62
    move/from16 v1, v19

    .line 348
    :goto_3f
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/dex/y;->f(I)V

    .line 349
    iget-object v0, v6, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    const v1, 0x12345678

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/dex/y;->f(I)V

    .line 350
    iget-object v0, v6, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-virtual {v0, v9}, Lcom/android/tools/r8/dex/y;->f(I)V

    .line 351
    iget-object v0, v6, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-virtual {v0, v9}, Lcom/android/tools/r8/dex/y;->f(I)V

    .line 352
    iget-object v0, v6, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    .line 353
    iget v1, v11, Lcom/android/tools/r8/dex/H;->v:I

    .line 354
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/dex/y;->f(I)V

    .line 355
    iget-object v0, v6, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    .line 356
    iget-object v0, v0, Lcom/android/tools/r8/graph/w5;->j:Lcom/android/tools/r8/internal/gd0;

    if-nez v0, :cond_63

    .line 357
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_40

    :cond_63
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/gd0;->j()Lcom/android/tools/r8/internal/Yd0;

    move-result-object v0

    .line 358
    :goto_40
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 359
    iget-object v1, v6, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/dex/y;->f(I)V

    .line 360
    iget-object v1, v6, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    if-nez v0, :cond_64

    move v5, v9

    goto :goto_41

    :cond_64
    iget v5, v11, Lcom/android/tools/r8/dex/H;->b:I

    :goto_41
    invoke-virtual {v1, v5}, Lcom/android/tools/r8/dex/y;->f(I)V

    .line 361
    iget-object v0, v6, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    .line 362
    iget-object v0, v0, Lcom/android/tools/r8/graph/w5;->g:Lcom/android/tools/r8/internal/gd0;

    if-nez v0, :cond_65

    .line 363
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_42

    :cond_65
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/gd0;->j()Lcom/android/tools/r8/internal/Yd0;

    move-result-object v0

    .line 364
    :goto_42
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 365
    iget-object v1, v6, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/dex/y;->f(I)V

    .line 366
    iget-object v1, v6, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    if-nez v0, :cond_66

    move v5, v9

    goto :goto_43

    :cond_66
    iget v5, v11, Lcom/android/tools/r8/dex/H;->c:I

    :goto_43
    invoke-virtual {v1, v5}, Lcom/android/tools/r8/dex/y;->f(I)V

    .line 367
    iget-object v0, v6, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    .line 368
    iget-object v0, v0, Lcom/android/tools/r8/graph/w5;->f:Lcom/android/tools/r8/internal/gd0;

    if-nez v0, :cond_67

    .line 369
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_44

    :cond_67
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/gd0;->j()Lcom/android/tools/r8/internal/Yd0;

    move-result-object v0

    .line 370
    :goto_44
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 371
    iget-object v1, v6, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/dex/y;->f(I)V

    .line 372
    iget-object v1, v6, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    if-nez v0, :cond_68

    move v5, v9

    goto :goto_45

    :cond_68
    iget v5, v11, Lcom/android/tools/r8/dex/H;->d:I

    :goto_45
    invoke-virtual {v1, v5}, Lcom/android/tools/r8/dex/y;->f(I)V

    .line 373
    iget-object v0, v6, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    .line 374
    iget-object v0, v0, Lcom/android/tools/r8/graph/w5;->i:Lcom/android/tools/r8/internal/gd0;

    if-nez v0, :cond_69

    .line 375
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_46

    :cond_69
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/gd0;->j()Lcom/android/tools/r8/internal/Yd0;

    move-result-object v0

    .line 376
    :goto_46
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 377
    iget-object v1, v6, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/dex/y;->f(I)V

    .line 378
    iget-object v1, v6, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    if-nez v0, :cond_6a

    move v5, v9

    goto :goto_47

    :cond_6a
    iget v5, v11, Lcom/android/tools/r8/dex/H;->e:I

    :goto_47
    invoke-virtual {v1, v5}, Lcom/android/tools/r8/dex/y;->f(I)V

    .line 379
    iget-object v0, v6, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    .line 380
    iget-object v0, v0, Lcom/android/tools/r8/graph/w5;->h:Lcom/android/tools/r8/internal/gd0;

    if-nez v0, :cond_6b

    .line 381
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_48

    :cond_6b
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/gd0;->j()Lcom/android/tools/r8/internal/Yd0;

    move-result-object v0

    .line 382
    :goto_48
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 383
    iget-object v1, v6, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/dex/y;->f(I)V

    .line 384
    iget-object v1, v6, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    if-nez v0, :cond_6c

    move v5, v9

    goto :goto_49

    :cond_6c
    iget v5, v11, Lcom/android/tools/r8/dex/H;->f:I

    :goto_49
    invoke-virtual {v1, v5}, Lcom/android/tools/r8/dex/y;->f(I)V

    .line 385
    iget-object v0, v6, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    .line 386
    iget-object v0, v0, Lcom/android/tools/r8/graph/w5;->e:[Lcom/android/tools/r8/graph/H2;

    .line 387
    array-length v0, v0

    .line 388
    iget-object v1, v6, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/dex/y;->f(I)V

    .line 389
    iget-object v1, v6, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    if-nez v0, :cond_6d

    move v5, v9

    goto :goto_4a

    :cond_6d
    iget v5, v11, Lcom/android/tools/r8/dex/H;->g:I

    :goto_4a
    invoke-virtual {v1, v5}, Lcom/android/tools/r8/dex/y;->f(I)V

    .line 390
    iget v0, v11, Lcom/android/tools/r8/dex/H;->k:I

    if-ne v0, v12, :cond_6e

    .line 391
    iget-object v0, v6, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-virtual {v0, v9}, Lcom/android/tools/r8/dex/y;->f(I)V

    .line 392
    iget-object v0, v6, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-virtual {v0, v9}, Lcom/android/tools/r8/dex/y;->f(I)V

    .line 393
    iget-object v0, v6, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-virtual {v0, v9}, Lcom/android/tools/r8/dex/y;->f(I)V

    .line 394
    iget-object v0, v6, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    iget v1, v11, Lcom/android/tools/r8/dex/H;->a:I

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/dex/y;->f(I)V

    goto :goto_4c

    .line 395
    :cond_6e
    iget-object v0, v6, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    .line 396
    iget v1, v11, Lcom/android/tools/r8/dex/H;->w:I

    .line 397
    iget v2, v11, Lcom/android/tools/r8/dex/H;->j:I

    sub-int/2addr v1, v2

    .line 398
    sget-boolean v2, Lcom/android/tools/r8/dex/H;->y:Z

    if-nez v2, :cond_70

    rem-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_6f

    goto :goto_4b

    :cond_6f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 399
    :cond_70
    :goto_4b
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/dex/y;->f(I)V

    .line 400
    iget-object v0, v6, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    iget v1, v11, Lcom/android/tools/r8/dex/H;->j:I

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/dex/y;->f(I)V

    .line 401
    :goto_4c
    sget-boolean v0, Lcom/android/tools/r8/dex/L;->j:Z

    if-nez v0, :cond_72

    iget-object v0, v6, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/dex/y;->b()I

    move-result v0

    iget v1, v11, Lcom/android/tools/r8/dex/H;->b:I

    if-ne v0, v1, :cond_71

    goto :goto_4d

    :cond_71
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 402
    :cond_72
    :goto_4d
    iget-boolean v0, v6, Lcom/android/tools/r8/dex/L;->i:Z

    if-eqz v0, :cond_73

    .line 403
    iget-object v0, v6, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-static {v11, v0}, Lcom/android/tools/r8/dex/L;->b(Lcom/android/tools/r8/dex/H;Lcom/android/tools/r8/dex/y;)V

    .line 404
    iget-object v0, v6, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-static {v11, v0}, Lcom/android/tools/r8/dex/L;->a(Lcom/android/tools/r8/dex/H;Lcom/android/tools/r8/dex/y;)V

    .line 405
    :cond_73
    new-instance v0, Lcom/android/tools/r8/dex/G;

    iget-object v1, v6, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-direct {v0, v6, v1, v11}, Lcom/android/tools/r8/dex/G;-><init>(Lcom/android/tools/r8/dex/L;Lcom/android/tools/r8/dex/y;Lcom/android/tools/r8/dex/H;)V

    return-object v0
.end method

.method public final a()Lcom/android/tools/r8/dex/L;
    .locals 5

    .line 32
    new-instance v0, Lcom/android/tools/r8/dex/K;

    iget-object v1, p0, Lcom/android/tools/r8/dex/L;->a:Lcom/android/tools/r8/graph/y;

    iget-object v2, p0, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    .line 33
    iget-object v2, v2, Lcom/android/tools/r8/graph/w5;->e:[Lcom/android/tools/r8/graph/H2;

    .line 34
    invoke-direct {v0, p0, v1, v2}, Lcom/android/tools/r8/dex/K;-><init>(Lcom/android/tools/r8/dex/L;Lcom/android/tools/r8/graph/y;[Lcom/android/tools/r8/graph/H2;)V

    iget-object v1, p0, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    .line 35
    iget-object v1, v1, Lcom/android/tools/r8/graph/w5;->e:[Lcom/android/tools/r8/graph/H2;

    .line 36
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 37
    invoke-virtual {v0, v4}, Lcom/android/tools/r8/graph/C5;->a(Lcom/android/tools/r8/graph/H2;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->f:Lcom/android/tools/r8/dex/J;

    .line 39
    iget-object v0, v0, Lcom/android/tools/r8/dex/J;->i:Lcom/android/tools/r8/internal/gd0;

    .line 40
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/gd0;->j()Lcom/android/tools/r8/internal/Yd0;

    move-result-object v0

    .line 41
    new-instance v1, Lu/K;

    invoke-direct {v1, p0}, Lu/K;-><init>(Lcom/android/tools/r8/dex/L;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 42
    sget-boolean v0, Lcom/android/tools/r8/dex/L;->j:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->f:Lcom/android/tools/r8/dex/J;

    iget-object v0, v0, Lcom/android/tools/r8/dex/J;->d:Lcom/android/tools/r8/internal/gd0;

    .line 43
    iget v0, v0, Lcom/android/tools/r8/internal/gd0;->l:I

    if-nez v0, :cond_1

    goto :goto_1

    .line 44
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 45
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    .line 46
    iget-object v0, v0, Lcom/android/tools/r8/graph/w5;->j:Lcom/android/tools/r8/internal/gd0;

    if-nez v0, :cond_3

    .line 47
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/gd0;->j()Lcom/android/tools/r8/internal/Yd0;

    move-result-object v0

    .line 48
    :goto_2
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/L2;

    .line 49
    iget-object v2, p0, Lcom/android/tools/r8/dex/L;->f:Lcom/android/tools/r8/dex/J;

    .line 50
    iget-object v2, v2, Lcom/android/tools/r8/dex/J;->d:Lcom/android/tools/r8/internal/gd0;

    .line 51
    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/gd0;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, -0x1

    .line 52
    invoke-virtual {v2, v3, v1}, Lcom/android/tools/r8/internal/gd0;->b(ILjava/lang/Object;)I

    goto :goto_3

    .line 53
    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    .line 54
    iget-object v0, v0, Lcom/android/tools/r8/graph/w5;->f:Lcom/android/tools/r8/internal/gd0;

    if-nez v0, :cond_6

    .line 55
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/gd0;->j()Lcom/android/tools/r8/internal/Yd0;

    move-result-object v0

    .line 56
    :goto_4
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/I2;

    .line 57
    iget-object v2, p0, Lcom/android/tools/r8/dex/L;->f:Lcom/android/tools/r8/dex/J;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/I2;->n0()Lcom/android/tools/r8/graph/O2;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/dex/J;->a(Lcom/android/tools/r8/graph/O2;)Z

    goto :goto_5

    .line 58
    :cond_7
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->f:Lcom/android/tools/r8/dex/J;

    iget-object v1, p0, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    .line 59
    iget-object v1, v1, Lcom/android/tools/r8/graph/w5;->k:Lcom/android/tools/r8/internal/gd0;

    if-nez v1, :cond_8

    .line 60
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_6

    :cond_8
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/gd0;->j()Lcom/android/tools/r8/internal/Yd0;

    move-result-object v1

    .line 61
    :goto_6
    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/n1;->a(Lcom/android/tools/r8/dex/X;Ljava/util/Collection;)V

    .line 62
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->f:Lcom/android/tools/r8/dex/J;

    iget-object v1, p0, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    .line 63
    iget-object v1, v1, Lcom/android/tools/r8/graph/w5;->e:[Lcom/android/tools/r8/graph/H2;

    .line 64
    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/n1;->a(Lcom/android/tools/r8/dex/X;[Lcom/android/tools/r8/graph/n1;)V

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;)V
    .locals 4

    .line 475
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    iget-object v1, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 476
    iget-object v0, v0, Lcom/android/tools/r8/graph/w5;->g:Lcom/android/tools/r8/internal/gd0;

    .line 477
    invoke-static {v1, v0}, Lcom/android/tools/r8/graph/w5;->a(Lcom/android/tools/r8/graph/d4;Lcom/android/tools/r8/internal/x1;)I

    move-result v0

    .line 478
    sget-boolean v1, Lcom/android/tools/r8/dex/L;->j:Z

    const v2, 0xffff

    if-nez v1, :cond_1

    and-int v3, v0, v2

    if-ne v3, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 479
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    int-to-short v0, v0

    invoke-virtual {v3, v0}, Lcom/android/tools/r8/dex/y;->a(S)V

    .line 480
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    iget-object v3, p1, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    .line 481
    iget-object v0, v0, Lcom/android/tools/r8/graph/w5;->f:Lcom/android/tools/r8/internal/gd0;

    .line 482
    invoke-static {v3, v0}, Lcom/android/tools/r8/graph/w5;->a(Lcom/android/tools/r8/graph/d4;Lcom/android/tools/r8/internal/x1;)I

    move-result v0

    if-nez v1, :cond_3

    and-int v1, v0, v2

    if-ne v1, v0, :cond_2

    goto :goto_1

    .line 483
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 484
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    int-to-short v0, v0

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/dex/y;->a(S)V

    .line 485
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->s()Lcom/android/tools/r8/naming/r0;

    move-result-object v0

    .line 486
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/naming/r0;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    .line 487
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    iget-object v1, p0, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    .line 488
    iget-object v1, v1, Lcom/android/tools/r8/graph/w5;->j:Lcom/android/tools/r8/internal/gd0;

    .line 489
    invoke-static {p1, v1}, Lcom/android/tools/r8/graph/w5;->a(Lcom/android/tools/r8/graph/d4;Lcom/android/tools/r8/internal/x1;)I

    move-result p1

    .line 490
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/dex/y;->f(I)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/C2;)V
    .locals 3

    .line 750
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->d:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 751
    sget-object v1, Lcom/android/tools/r8/internal/C2;->B:Lcom/android/tools/r8/internal/C2;

    .line 752
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/nJ;->c(Lcom/android/tools/r8/internal/C2;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 753
    iget-object v0, p1, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 754
    iget-object v0, p1, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    goto :goto_0

    .line 755
    :cond_0
    sget-object v0, Lcom/android/tools/r8/graph/B2;->j:Lcom/android/tools/r8/graph/B2;

    .line 756
    :goto_0
    sget-boolean v1, Lcom/android/tools/r8/dex/L;->j:Z

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    .line 757
    invoke-virtual {v2}, Lcom/android/tools/r8/dex/y;->b()I

    move-result v2

    .line 758
    rem-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_1

    goto :goto_1

    .line 759
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 760
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    .line 761
    iget-short v0, v0, Lcom/android/tools/r8/graph/B2;->b:S

    .line 762
    invoke-virtual {v2, v0}, Lcom/android/tools/r8/dex/y;->a(S)V

    .line 763
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/dex/y;->a(S)V

    .line 764
    iget-object v0, p1, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/B2;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 765
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 766
    iget-object v0, v0, Lcom/android/tools/r8/graph/w5;->h:Lcom/android/tools/r8/internal/gd0;

    .line 767
    invoke-static {p1, v0}, Lcom/android/tools/r8/graph/w5;->a(Lcom/android/tools/r8/graph/d4;Lcom/android/tools/r8/internal/x1;)I

    move-result p1

    goto :goto_3

    :cond_3
    if-nez v1, :cond_5

    .line 768
    iget-object v0, p1, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/B2;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 769
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 770
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/C2;->l0()Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    .line 771
    iget-object v0, v0, Lcom/android/tools/r8/graph/w5;->i:Lcom/android/tools/r8/internal/gd0;

    .line 772
    invoke-static {p1, v0}, Lcom/android/tools/r8/graph/w5;->a(Lcom/android/tools/r8/graph/d4;Lcom/android/tools/r8/internal/x1;)I

    move-result p1

    :goto_3
    if-nez v1, :cond_7

    const v0, 0xffff

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_6

    goto :goto_4

    .line 773
    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 774
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    int-to-short p1, p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/dex/y;->a(S)V

    .line 775
    iget-object p1, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/dex/y;->a(S)V

    return-void

    .line 776
    :cond_8
    iget-object p1, p0, Lcom/android/tools/r8/dex/L;->d:Lcom/android/tools/r8/internal/nJ;

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance v0, Lcom/android/tools/r8/errors/UnsupportedInvokeCustomDiagnostic;

    .line 777
    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v1

    sget-object v2, Lcom/android/tools/r8/position/Position;->UNKNOWN:Lcom/android/tools/r8/position/Position;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/errors/UnsupportedInvokeCustomDiagnostic;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    const/4 v1, 0x0

    .line 778
    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 779
    iget-object p1, p1, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/D0;)V
    .locals 3

    .line 735
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->d:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 736
    sget-object v1, Lcom/android/tools/r8/internal/C2;->B:Lcom/android/tools/r8/internal/C2;

    .line 737
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/nJ;->c(Lcom/android/tools/r8/internal/C2;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 738
    sget-boolean v0, Lcom/android/tools/r8/dex/L;->j:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    .line 739
    invoke-virtual {v0}, Lcom/android/tools/r8/dex/y;->b()I

    move-result v0

    .line 740
    rem-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    goto :goto_0

    .line 741
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 742
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    iget-object v1, p0, Lcom/android/tools/r8/dex/L;->f:Lcom/android/tools/r8/dex/J;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/D0;->m0()Lcom/android/tools/r8/graph/f1;

    move-result-object p1

    .line 743
    iget-object v1, v1, Lcom/android/tools/r8/dex/J;->j:Lcom/android/tools/r8/internal/k20;

    .line 744
    invoke-static {p1, v1}, Lcom/android/tools/r8/dex/J;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/Y0;)I

    move-result p1

    .line 745
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/dex/y;->f(I)V

    return-void

    .line 746
    :cond_2
    iget-object p1, p0, Lcom/android/tools/r8/dex/L;->d:Lcom/android/tools/r8/internal/nJ;

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance v0, Lcom/android/tools/r8/errors/UnsupportedInvokeCustomDiagnostic;

    .line 747
    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v1

    sget-object v2, Lcom/android/tools/r8/position/Position;->UNKNOWN:Lcom/android/tools/r8/position/Position;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/errors/UnsupportedInvokeCustomDiagnostic;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    const/4 v1, 0x0

    .line 748
    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 749
    iget-object p1, p1, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->s()Lcom/android/tools/r8/naming/r0;

    move-result-object v0

    .line 2
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/naming/r0;)Lcom/android/tools/r8/graph/f1;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/dex/L;->f:Lcom/android/tools/r8/dex/J;

    .line 4
    iget-object v2, v1, Lcom/android/tools/r8/dex/J;->l:Ljava/util/IdentityHashMap;

    .line 5
    invoke-virtual {v2, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/f1;

    .line 6
    sget-boolean v2, Lcom/android/tools/r8/dex/J;->n:Z

    if-nez v2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 7
    :cond_1
    :goto_0
    iget-object p1, v1, Lcom/android/tools/r8/dex/J;->j:Lcom/android/tools/r8/internal/k20;

    invoke-static {p1, v0}, Lcom/android/tools/r8/dex/J;->a(Lcom/android/tools/r8/internal/k20;Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)V
    .locals 3

    .line 406
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 407
    iget-object v1, v1, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->j1:Lcom/android/tools/r8/graph/L2;

    if-ne v1, v0, :cond_0

    return-void

    .line 408
    :cond_0
    iget-object v0, p2, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 409
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->d:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->f()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->d:Lcom/android/tools/r8/internal/nJ;

    iget-object v2, v0, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v2, v2, Lcom/android/tools/r8/internal/nJ$p;->D0:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 410
    :cond_1
    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance v2, Lcom/android/tools/r8/errors/UnsupportedStaticInterfaceMethodDiagnostic;

    .line 411
    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    .line 412
    invoke-static {p2}, Lcom/android/tools/r8/position/MethodPosition;->create(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/position/MethodPosition;

    move-result-object p2

    invoke-direct {v2, p1, p2}, Lcom/android/tools/r8/errors/UnsupportedStaticInterfaceMethodDiagnostic;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    .line 413
    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 414
    iget-object p1, v0, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw p1

    .line 415
    :cond_2
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result v0

    if-nez v0, :cond_8

    .line 416
    iget-object v0, p2, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->H()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p2, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->d:Lcom/android/tools/r8/internal/nJ;

    .line 417
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 418
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->d:Lcom/android/tools/r8/internal/nJ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance v2, Lcom/android/tools/r8/errors/UnsupportedDefaultInterfaceMethodDiagnostic;

    .line 419
    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    .line 420
    invoke-static {p2}, Lcom/android/tools/r8/position/MethodPosition;->create(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/position/MethodPosition;

    move-result-object p2

    invoke-direct {v2, p1, p2}, Lcom/android/tools/r8/errors/UnsupportedDefaultInterfaceMethodDiagnostic;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    .line 421
    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 422
    iget-object p1, v0, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw p1

    .line 423
    :cond_4
    :goto_0
    iget-object v0, p2, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 424
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->d:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 425
    sget-object v2, Lcom/android/tools/r8/internal/C2;->z:Lcom/android/tools/r8/internal/C2;

    .line 426
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/nJ;->c(Lcom/android/tools/r8/internal/C2;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 427
    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->d:Lcom/android/tools/r8/internal/nJ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance v2, Lcom/android/tools/r8/errors/UnsupportedPrivateInterfaceMethodDiagnostic;

    .line 428
    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    .line 429
    invoke-static {p2}, Lcom/android/tools/r8/position/MethodPosition;->create(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/position/MethodPosition;

    move-result-object p2

    invoke-direct {v2, p1, p2}, Lcom/android/tools/r8/errors/UnsupportedPrivateInterfaceMethodDiagnostic;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    .line 430
    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 431
    iget-object p1, v0, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw p1

    .line 432
    :cond_6
    iget-object p1, p2, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g;->l()Z

    move-result p1

    if-eqz p1, :cond_7

    :goto_1
    return-void

    .line 433
    :cond_7
    new-instance p1, Lcom/android/tools/r8/internal/If;

    .line 434
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->j0()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Interface methods must not be protected or package private: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw p1

    .line 435
    :cond_8
    new-instance p1, Lcom/android/tools/r8/internal/If;

    .line 436
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/A2;->j0()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Interface must not have constructors: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/I2;)V
    .locals 3

    .line 444
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    .line 445
    iget-object v0, v0, Lcom/android/tools/r8/graph/w5;->m:Ljava/util/Map;

    .line 446
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/L2;

    .line 447
    iget-object v1, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    iget-object v2, p0, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    .line 448
    iget-object v2, v2, Lcom/android/tools/r8/graph/w5;->j:Lcom/android/tools/r8/internal/gd0;

    .line 449
    invoke-static {v0, v2}, Lcom/android/tools/r8/graph/w5;->a(Lcom/android/tools/r8/graph/d4;Lcom/android/tools/r8/internal/x1;)I

    move-result v0

    .line 450
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/dex/y;->f(I)V

    .line 451
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    iget-object v1, p0, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    iget-object v2, p1, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    .line 452
    iget-object v1, v1, Lcom/android/tools/r8/graph/w5;->g:Lcom/android/tools/r8/internal/gd0;

    .line 453
    invoke-static {v2, v1}, Lcom/android/tools/r8/graph/w5;->a(Lcom/android/tools/r8/graph/d4;Lcom/android/tools/r8/internal/x1;)I

    move-result v1

    .line 454
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/dex/y;->f(I)V

    .line 455
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    iget-object v1, p0, Lcom/android/tools/r8/dex/L;->f:Lcom/android/tools/r8/dex/J;

    iget-object p1, p1, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 456
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/O2;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 457
    :cond_0
    iget-object v1, v1, Lcom/android/tools/r8/dex/J;->c:Lcom/android/tools/r8/internal/k20;

    invoke-static {p1, v1}, Lcom/android/tools/r8/dex/J;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/Y0;)I

    move-result p1

    .line 458
    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/dex/y;->f(I)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/L2;)V
    .locals 2

    .line 587
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->f:Lcom/android/tools/r8/dex/J;

    iget-object v1, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/dex/y;->b()I

    move-result v1

    .line 588
    iget-object v0, v0, Lcom/android/tools/r8/dex/J;->d:Lcom/android/tools/r8/internal/gd0;

    .line 589
    invoke-static {p1, v1, v0}, Lcom/android/tools/r8/dex/J;->a(Lcom/android/tools/r8/graph/n1;ILcom/android/tools/r8/internal/gd0;)V

    .line 590
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    .line 591
    iget v1, p1, Lcom/android/tools/r8/graph/L2;->e:I

    .line 592
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 593
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/BR;->b(Lcom/android/tools/r8/dex/y;I)V

    .line 594
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    iget-object p1, p1, Lcom/android/tools/r8/graph/L2;->f:[B

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/dex/y;->a([B)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->s()Lcom/android/tools/r8/naming/r0;

    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/naming/r0;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    iget-object v1, p0, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    .line 11
    iget-object v1, v1, Lcom/android/tools/r8/graph/w5;->j:Lcom/android/tools/r8/internal/gd0;

    .line 12
    invoke-static {p1, v1}, Lcom/android/tools/r8/graph/w5;->a(Lcom/android/tools/r8/graph/d4;Lcom/android/tools/r8/internal/x1;)I

    move-result p1

    .line 13
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/dex/y;->f(I)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/O2;)V
    .locals 5

    .line 571
    sget-boolean v0, Lcom/android/tools/r8/dex/L;->j:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/O2;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 572
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->f:Lcom/android/tools/r8/dex/J;

    iget-object v1, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/dex/y;->a(I)I

    move-result v1

    .line 573
    sget-boolean v2, Lcom/android/tools/r8/dex/J;->n:Z

    if-nez v2, :cond_4

    if-eqz v1, :cond_2

    .line 574
    iget-object v2, v0, Lcom/android/tools/r8/dex/J;->c:Lcom/android/tools/r8/internal/k20;

    .line 575
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/k20;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 576
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 577
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 578
    :cond_4
    :goto_1
    iget-object v0, v0, Lcom/android/tools/r8/dex/J;->c:Lcom/android/tools/r8/internal/k20;

    .line 579
    invoke-static {p1, v1, v0}, Lcom/android/tools/r8/dex/J;->a(Ljava/lang/Object;ILcom/android/tools/r8/internal/Y0;)V

    .line 580
    iget-object p1, p1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    .line 581
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    array-length v1, p1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/dex/y;->f(I)V

    .line 582
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_5

    aget-object v2, p1, v1

    .line 583
    iget-object v3, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    iget-object v4, p0, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    .line 584
    iget-object v4, v4, Lcom/android/tools/r8/graph/w5;->g:Lcom/android/tools/r8/internal/gd0;

    .line 585
    invoke-static {v2, v4}, Lcom/android/tools/r8/graph/w5;->a(Lcom/android/tools/r8/graph/d4;Lcom/android/tools/r8/internal/x1;)I

    move-result v2

    int-to-short v2, v2

    .line 586
    invoke-virtual {v3, v2}, Lcom/android/tools/r8/dex/y;->a(S)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/f1;)V
    .locals 5

    .line 722
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->f:Lcom/android/tools/r8/dex/J;

    iget-object v1, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/dex/y;->b()I

    move-result v1

    .line 723
    iget-object v0, v0, Lcom/android/tools/r8/dex/J;->j:Lcom/android/tools/r8/internal/k20;

    .line 724
    invoke-static {p1, v1, v0}, Lcom/android/tools/r8/dex/J;->a(Ljava/lang/Object;ILcom/android/tools/r8/internal/Y0;)V

    .line 725
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    iget-object v1, p1, Lcom/android/tools/r8/graph/f1;->b:[Lcom/android/tools/r8/graph/R2;

    array-length v1, v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 726
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/BR;->b(Lcom/android/tools/r8/dex/y;I)V

    .line 727
    iget-object p1, p1, Lcom/android/tools/r8/graph/f1;->b:[Lcom/android/tools/r8/graph/R2;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 728
    iget-object v3, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    iget-object v4, p0, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    invoke-virtual {v2, v3, v4}, Lcom/android/tools/r8/graph/R2;->a(Lcom/android/tools/r8/dex/y;Lcom/android/tools/r8/graph/w5;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;)V
    .locals 4

    .line 459
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    iget-object v1, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 460
    iget-object v0, v0, Lcom/android/tools/r8/graph/w5;->g:Lcom/android/tools/r8/internal/gd0;

    .line 461
    invoke-static {v1, v0}, Lcom/android/tools/r8/graph/w5;->a(Lcom/android/tools/r8/graph/d4;Lcom/android/tools/r8/internal/x1;)I

    move-result v0

    .line 462
    sget-boolean v1, Lcom/android/tools/r8/dex/L;->j:Z

    const v2, 0xffff

    if-nez v1, :cond_1

    and-int v3, v0, v2

    if-ne v3, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 463
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    int-to-short v0, v0

    invoke-virtual {v3, v0}, Lcom/android/tools/r8/dex/y;->a(S)V

    .line 464
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    iget-object v3, p1, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    .line 465
    iget-object v0, v0, Lcom/android/tools/r8/graph/w5;->g:Lcom/android/tools/r8/internal/gd0;

    .line 466
    invoke-static {v3, v0}, Lcom/android/tools/r8/graph/w5;->a(Lcom/android/tools/r8/graph/d4;Lcom/android/tools/r8/internal/x1;)I

    move-result v0

    if-nez v1, :cond_3

    and-int v1, v0, v2

    if-ne v1, v0, :cond_2

    goto :goto_1

    .line 467
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 468
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    int-to-short v0, v0

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/dex/y;->a(S)V

    .line 469
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->s()Lcom/android/tools/r8/naming/r0;

    move-result-object v0

    .line 470
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/naming/r0;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    .line 471
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    iget-object v1, p0, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    .line 472
    iget-object v1, v1, Lcom/android/tools/r8/graph/w5;->j:Lcom/android/tools/r8/internal/gd0;

    .line 473
    invoke-static {p1, v1}, Lcom/android/tools/r8/graph/w5;->a(Lcom/android/tools/r8/graph/d4;Lcom/android/tools/r8/internal/x1;)I

    move-result p1

    .line 474
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/dex/y;->f(I)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/r0;)V
    .locals 2

    .line 595
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->f:Lcom/android/tools/r8/dex/J;

    iget-object v1, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/dex/y;->b()I

    move-result v1

    .line 596
    iget-object v0, v0, Lcom/android/tools/r8/dex/J;->e:Lcom/android/tools/r8/internal/k20;

    .line 597
    invoke-static {p1, v1, v0}, Lcom/android/tools/r8/dex/J;->a(Ljava/lang/Object;ILcom/android/tools/r8/internal/Y0;)V

    .line 598
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    iget v1, p1, Lcom/android/tools/r8/graph/r0;->b:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/dex/y;->a(B)V

    .line 599
    iget-object p1, p1, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    iget-object v1, p0, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    invoke-static {p1, v0, v1}, Lcom/android/tools/r8/dex/L;->a(Lcom/android/tools/r8/graph/e1;Lcom/android/tools/r8/dex/y;Lcom/android/tools/r8/graph/w5;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/s0;)V
    .locals 10

    .line 635
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->f:Lcom/android/tools/r8/dex/J;

    iget-object v1, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/dex/y;->a(I)I

    move-result v1

    .line 636
    iget-object v0, v0, Lcom/android/tools/r8/dex/J;->h:Lcom/android/tools/r8/internal/k20;

    .line 637
    invoke-static {p1, v1, v0}, Lcom/android/tools/r8/dex/J;->a(Ljava/lang/Object;ILcom/android/tools/r8/internal/Y0;)V

    .line 638
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    iget-object v1, p0, Lcom/android/tools/r8/dex/L;->f:Lcom/android/tools/r8/dex/J;

    .line 639
    iget-object v2, p1, Lcom/android/tools/r8/graph/s0;->b:Lcom/android/tools/r8/graph/H2;

    .line 640
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v2

    .line 641
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/dex/J;->b(Lcom/android/tools/r8/graph/u0;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/dex/y;->f(I)V

    .line 642
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    .line 643
    iget-object v0, v0, Lcom/android/tools/r8/graph/w5;->o:Lcom/android/tools/r8/graph/u5;

    .line 644
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/s0;->b(Lcom/android/tools/r8/graph/u5;)Ljava/util/ArrayList;

    move-result-object v0

    .line 645
    iget-object v1, p0, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    .line 646
    iget-object v1, v1, Lcom/android/tools/r8/graph/w5;->o:Lcom/android/tools/r8/graph/u5;

    .line 647
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/s0;->c(Lcom/android/tools/r8/graph/u5;)Ljava/util/ArrayList;

    move-result-object v1

    .line 648
    iget-object v2, p0, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    .line 649
    iget-object v2, v2, Lcom/android/tools/r8/graph/w5;->o:Lcom/android/tools/r8/graph/u5;

    .line 650
    invoke-virtual {p1, v2}, Lcom/android/tools/r8/graph/s0;->a(Lcom/android/tools/r8/graph/u5;)Ljava/util/ArrayList;

    move-result-object p1

    .line 651
    iget-object v2, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/dex/y;->f(I)V

    .line 652
    iget-object v2, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/dex/y;->f(I)V

    .line 653
    iget-object v2, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/dex/y;->f(I)V

    .line 654
    new-instance v2, Lu/J;

    invoke-direct {v2, p0}, Lu/J;-><init>(Lcom/android/tools/r8/dex/L;)V

    .line 655
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/android/tools/r8/graph/h1;

    .line 656
    iget-object v7, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v8

    iget-object v9, p0, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    invoke-virtual {v8, v9}, Lcom/android/tools/r8/graph/d4;->a(Lcom/android/tools/r8/graph/w5;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/tools/r8/dex/y;->f(I)V

    .line 657
    iget-object v7, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-interface {v2, v6}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v7, v6}, Lcom/android/tools/r8/dex/y;->f(I)V

    goto :goto_0

    .line 658
    :cond_0
    new-instance p1, Lu/L;

    invoke-direct {p1, p0}, Lu/L;-><init>(Lcom/android/tools/r8/dex/L;)V

    .line 659
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v4

    :goto_1
    if-ge v3, v2, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Lcom/android/tools/r8/graph/h1;

    .line 660
    iget-object v6, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v7

    iget-object v8, p0, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    invoke-virtual {v7, v8}, Lcom/android/tools/r8/graph/d4;->a(Lcom/android/tools/r8/graph/w5;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/tools/r8/dex/y;->f(I)V

    .line 661
    iget-object v6, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-interface {p1, v5}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/android/tools/r8/dex/y;->f(I)V

    goto :goto_1

    .line 662
    :cond_1
    new-instance p1, Lu/M;

    invoke-direct {p1, p0}, Lu/M;-><init>(Lcom/android/tools/r8/dex/L;)V

    .line 663
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v4, v0, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v4, v4, 0x1

    check-cast v2, Lcom/android/tools/r8/graph/h1;

    .line 664
    iget-object v3, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    iget-object v6, p0, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    invoke-virtual {v5, v6}, Lcom/android/tools/r8/graph/d4;->a(Lcom/android/tools/r8/graph/w5;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/tools/r8/dex/y;->f(I)V

    .line 665
    iget-object v3, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-interface {p1, v2}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/dex/y;->f(I)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/u0;)V
    .locals 5

    .line 600
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->f:Lcom/android/tools/r8/dex/J;

    iget-object v1, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/dex/y;->a(I)I

    move-result v1

    .line 601
    sget-boolean v2, Lcom/android/tools/r8/dex/J;->n:Z

    if-nez v2, :cond_1

    .line 602
    iget-object v2, v0, Lcom/android/tools/r8/dex/J;->m:Lcom/android/tools/r8/internal/nJ;

    .line 603
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 604
    sget-object v3, Lcom/android/tools/r8/internal/C2;->s:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/internal/C2;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 605
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/u0;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 606
    :cond_1
    :goto_0
    iget-object v0, v0, Lcom/android/tools/r8/dex/J;->f:Lcom/android/tools/r8/internal/k20;

    .line 607
    invoke-static {p1, v1, v0}, Lcom/android/tools/r8/dex/J;->a(Ljava/lang/Object;ILcom/android/tools/r8/internal/Y0;)V

    .line 608
    new-instance v0, Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/tools/r8/graph/u0;->d:[Lcom/android/tools/r8/graph/r0;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 609
    new-instance p1, Lu/o;

    invoke-direct {p1, p0}, Lu/o;-><init>(Lcom/android/tools/r8/dex/L;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 610
    iget-object p1, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/dex/y;->f(I)V

    .line 611
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/tools/r8/graph/r0;

    .line 612
    iget-object v3, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    iget-object v4, p0, Lcom/android/tools/r8/dex/L;->f:Lcom/android/tools/r8/dex/J;

    .line 613
    iget-object v4, v4, Lcom/android/tools/r8/dex/J;->e:Lcom/android/tools/r8/internal/k20;

    .line 614
    invoke-static {v2, v4}, Lcom/android/tools/r8/dex/J;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/Y0;)I

    move-result v2

    .line 615
    invoke-virtual {v3, v2}, Lcom/android/tools/r8/dex/y;->f(I)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/z5;)V
    .locals 4

    .line 620
    sget-boolean v0, Lcom/android/tools/r8/dex/L;->j:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/z5;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 621
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->f:Lcom/android/tools/r8/dex/J;

    iget-object v1, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/dex/y;->a(I)I

    move-result v1

    .line 622
    sget-boolean v2, Lcom/android/tools/r8/dex/J;->n:Z

    if-nez v2, :cond_3

    .line 623
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_2

    .line 624
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/z5;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 625
    :cond_3
    :goto_1
    iget-object v0, v0, Lcom/android/tools/r8/dex/J;->g:Lcom/android/tools/r8/internal/k20;

    .line 626
    invoke-static {p1, v1, v0}, Lcom/android/tools/r8/dex/J;->a(Ljava/lang/Object;ILcom/android/tools/r8/internal/Y0;)V

    .line 627
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    .line 628
    iget-object v1, p1, Lcom/android/tools/r8/graph/z5;->b:[Lcom/android/tools/r8/graph/u0;

    .line 629
    array-length v1, v1

    .line 630
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/dex/y;->f(I)V

    const/4 v0, 0x0

    .line 631
    :goto_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/z5;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 632
    sget-boolean v1, Lcom/android/tools/r8/graph/z5;->e:Z

    if-nez v1, :cond_5

    if-ltz v0, :cond_4

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 633
    :cond_5
    :goto_3
    iget v1, p1, Lcom/android/tools/r8/graph/z5;->c:I

    if-ge v0, v1, :cond_6

    goto :goto_4

    .line 634
    :cond_6
    iget-object v1, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    iget-object v2, p0, Lcom/android/tools/r8/dex/L;->f:Lcom/android/tools/r8/dex/J;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/z5;->j(I)Lcom/android/tools/r8/graph/u0;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/dex/J;->b(Lcom/android/tools/r8/graph/u0;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/dex/y;->f(I)V

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method public final a(Ljava/lang/Iterable;)V
    .locals 10

    .line 687
    invoke-static {p1}, Lcom/android/tools/r8/internal/qK;->d(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p1

    .line 688
    new-instance v0, Lu/N;

    invoke-direct {v0, p0}, Lu/N;-><init>(Lcom/android/tools/r8/dex/L;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 689
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_6

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    check-cast v4, Lcom/android/tools/r8/graph/j1;

    .line 690
    iget-object v5, p0, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/A2;

    .line 691
    iget-object v5, v5, Lcom/android/tools/r8/graph/w5;->h:Lcom/android/tools/r8/internal/gd0;

    .line 692
    invoke-static {v6, v5}, Lcom/android/tools/r8/graph/w5;->a(Lcom/android/tools/r8/graph/d4;Lcom/android/tools/r8/internal/x1;)I

    move-result v5

    .line 693
    sget-boolean v6, Lcom/android/tools/r8/dex/L;->j:Z

    if-nez v6, :cond_1

    sub-int v7, v5, v3

    if-ltz v7, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 694
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    sub-int v3, v5, v3

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 695
    invoke-static {v7, v3}, Lcom/android/tools/r8/internal/BR;->b(Lcom/android/tools/r8/dex/y;I)V

    .line 696
    iget-object v3, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    iget-object v7, v4, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    .line 697
    new-instance v8, Lcom/android/tools/r8/graph/L4;

    .line 698
    iget v9, v7, Lcom/android/tools/r8/graph/g;->b:I

    .line 699
    iget v7, v7, Lcom/android/tools/r8/graph/g;->c:I

    invoke-direct {v8, v9, v7}, Lcom/android/tools/r8/graph/L4;-><init>(II)V

    .line 700
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/L4;->L()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/L4;->J()Z

    move-result v7

    if-nez v7, :cond_2

    const/16 v7, 0x20

    .line 701
    invoke-virtual {v8, v7}, Lcom/android/tools/r8/graph/g;->b(I)V

    const/high16 v7, 0x20000

    .line 702
    invoke-virtual {v8, v7}, Lcom/android/tools/r8/graph/g;->a(I)V

    .line 703
    :cond_2
    iget v7, v8, Lcom/android/tools/r8/graph/g;->c:I

    .line 704
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 705
    invoke-static {v3, v7}, Lcom/android/tools/r8/internal/BR;->b(Lcom/android/tools/r8/dex/y;I)V

    .line 706
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/j1;->R0()Lcom/android/tools/r8/graph/f3;

    move-result-object v3

    .line 707
    iget-object v7, p0, Lcom/android/tools/r8/dex/L;->g:Lcom/android/tools/r8/dex/r;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v7, v8}, Lcom/android/tools/r8/dex/r;->a(Lcom/android/tools/r8/graph/A2;)V

    if-nez v3, :cond_5

    if-nez v6, :cond_4

    .line 708
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/j1;->v1()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 709
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 710
    invoke-static {v3, v1}, Lcom/android/tools/r8/internal/BR;->b(Lcom/android/tools/r8/dex/y;I)V

    goto :goto_3

    .line 711
    :cond_5
    iget-object v3, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    iget-object v6, p0, Lcom/android/tools/r8/dex/L;->f:Lcom/android/tools/r8/dex/J;

    .line 712
    iget-object v6, v6, Lcom/android/tools/r8/dex/J;->a:Lcom/android/tools/r8/internal/gd0;

    .line 713
    invoke-static {v4, v6}, Lcom/android/tools/r8/dex/J;->a(Lcom/android/tools/r8/graph/n1;Lcom/android/tools/r8/internal/gd0;)I

    move-result v6

    .line 714
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 715
    invoke-static {v3, v6}, Lcom/android/tools/r8/internal/BR;->b(Lcom/android/tools/r8/dex/y;I)V

    .line 716
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/j1;->L0()V

    const/4 v3, 0x0

    .line 717
    iput-object v3, v4, Lcom/android/tools/r8/graph/j1;->j:Lcom/android/tools/r8/graph/i0;

    :goto_3
    move v3, v5

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public final a(Ljava/util/Collection;ILjava/util/function/Consumer;)V
    .locals 1

    .line 437
    sget-boolean v0, Lcom/android/tools/r8/dex/L;->j:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/dex/y;->b()I

    move-result v0

    if-ne v0, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 438
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/d4;

    .line 439
    invoke-interface {p3, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final a(Ljava/util/Collection;Ljava/util/function/Consumer;Ljava/util/function/Consumer;I)V
    .locals 1

    .line 440
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 441
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-virtual {v0, p4}, Lcom/android/tools/r8/dex/y;->a(I)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 443
    invoke-interface {p1, p3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 7

    .line 668
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 669
    new-instance p1, Lu/z;

    invoke-direct {p1, p0}, Lu/z;-><init>(Lcom/android/tools/r8/dex/L;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 670
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, p1, :cond_4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    check-cast v3, Lcom/android/tools/r8/graph/g1;

    .line 671
    sget-boolean v4, Lcom/android/tools/r8/dex/L;->j:Z

    if-nez v4, :cond_1

    iget-object v5, p0, Lcom/android/tools/r8/dex/L;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/tools/r8/graph/g1;->b(Lcom/android/tools/r8/graph/u1;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 672
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/l1;

    .line 673
    iget-object v5, v5, Lcom/android/tools/r8/graph/w5;->i:Lcom/android/tools/r8/internal/gd0;

    .line 674
    invoke-static {v6, v5}, Lcom/android/tools/r8/graph/w5;->a(Lcom/android/tools/r8/graph/d4;Lcom/android/tools/r8/internal/x1;)I

    move-result v5

    if-nez v4, :cond_3

    sub-int v4, v5, v2

    if-ltz v4, :cond_2

    goto :goto_2

    .line 675
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 676
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    sub-int v2, v5, v2

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 677
    invoke-static {v4, v2}, Lcom/android/tools/r8/internal/BR;->b(Lcom/android/tools/r8/dex/y;I)V

    .line 678
    iget-object v2, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    iget-object v4, v3, Lcom/android/tools/r8/graph/g1;->g:Lcom/android/tools/r8/graph/k3;

    .line 679
    iget v4, v4, Lcom/android/tools/r8/graph/g;->c:I

    .line 680
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 681
    invoke-static {v2, v4}, Lcom/android/tools/r8/internal/BR;->b(Lcom/android/tools/r8/dex/y;I)V

    .line 682
    iget-object v2, p0, Lcom/android/tools/r8/dex/L;->g:Lcom/android/tools/r8/dex/r;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/dex/r;->a(Lcom/android/tools/r8/graph/l1;)V

    move v2, v5

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/j1;)I
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->f:Lcom/android/tools/r8/dex/J;

    iget-object p1, p1, Lcom/android/tools/r8/graph/j1;->i:Lcom/android/tools/r8/graph/z5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/z5;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 7
    :cond_0
    iget-object v0, v0, Lcom/android/tools/r8/dex/J;->g:Lcom/android/tools/r8/internal/k20;

    invoke-static {p1, v0}, Lcom/android/tools/r8/dex/J;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/Y0;)I

    move-result p1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    .line 8
    sget-boolean v0, Lcom/android/tools/r8/dex/L;->j:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->f1()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->f:Lcom/android/tools/r8/dex/J;

    iget-object v1, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/dex/y;->b()I

    move-result v1

    .line 10
    iget-object v0, v0, Lcom/android/tools/r8/dex/J;->i:Lcom/android/tools/r8/internal/gd0;

    .line 11
    invoke-static {p1, v1, v0}, Lcom/android/tools/r8/dex/J;->a(Lcom/android/tools/r8/graph/n1;ILcom/android/tools/r8/internal/gd0;)V

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->A1()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/BR;->b(Lcom/android/tools/r8/dex/y;I)V

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->k1()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/BR;->b(Lcom/android/tools/r8/dex/y;I)V

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/N4;->d()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/BR;->b(Lcom/android/tools/r8/dex/y;I)V

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/N4;->e()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/BR;->b(Lcom/android/tools/r8/dex/y;I)V

    .line 20
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->A1()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/dex/L;->a(Ljava/util/List;)V

    .line 21
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->k1()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/dex/L;->a(Ljava/util/List;)V

    .line 22
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->H0()Ljava/lang/Iterable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/dex/L;->a(Ljava/lang/Iterable;)V

    .line 23
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->D1()Ljava/lang/Iterable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/dex/L;->a(Ljava/lang/Iterable;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/L2;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    iget-object v1, p0, Lcom/android/tools/r8/dex/L;->f:Lcom/android/tools/r8/dex/J;

    .line 2
    iget-object v1, v1, Lcom/android/tools/r8/dex/J;->d:Lcom/android/tools/r8/internal/gd0;

    .line 3
    invoke-static {p1, v1}, Lcom/android/tools/r8/dex/J;->a(Lcom/android/tools/r8/graph/n1;Lcom/android/tools/r8/internal/gd0;)I

    move-result p1

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/dex/y;->f(I)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/H2;)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->g:Lcom/android/tools/r8/dex/r;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/dex/r;->a(Lcom/android/tools/r8/graph/H2;)V

    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    iget-object v1, p0, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    iget-object v2, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/w5;->g:Lcom/android/tools/r8/internal/gd0;

    invoke-static {v2, v1}, Lcom/android/tools/r8/graph/w5;->a(Lcom/android/tools/r8/graph/d4;Lcom/android/tools/r8/internal/x1;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/dex/y;->f(I)V

    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    iget-object v1, p1, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    iget v2, v1, Lcom/android/tools/r8/graph/g;->c:I

    const v3, -0x10021

    and-int/2addr v2, v3

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/Q;->J()Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit16 v2, v2, 0x400

    :cond_0
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/dex/y;->f(I)V

    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    iget-object v1, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    const/4 v2, -0x1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    iget-object v3, v3, Lcom/android/tools/r8/graph/w5;->g:Lcom/android/tools/r8/internal/gd0;

    invoke-static {v1, v3}, Lcom/android/tools/r8/graph/w5;->a(Lcom/android/tools/r8/graph/d4;Lcom/android/tools/r8/internal/x1;)I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/dex/y;->f(I)V

    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    iget-object v1, p0, Lcom/android/tools/r8/dex/L;->f:Lcom/android/tools/r8/dex/J;

    iget-object v3, p1, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/O2;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    move v1, v5

    goto :goto_1

    :cond_2
    iget-object v1, v1, Lcom/android/tools/r8/dex/J;->c:Lcom/android/tools/r8/internal/k20;

    invoke-static {v3, v1}, Lcom/android/tools/r8/dex/J;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/Y0;)I

    move-result v1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/dex/y;->f(I)V

    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    iget-object v1, p1, Lcom/android/tools/r8/graph/E0;->i:Lcom/android/tools/r8/graph/L2;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/android/tools/r8/dex/L;->c:Lcom/android/tools/r8/graph/w5;

    iget-object v2, v2, Lcom/android/tools/r8/graph/w5;->j:Lcom/android/tools/r8/internal/gd0;

    invoke-static {v1, v2}, Lcom/android/tools/r8/graph/w5;->a(Lcom/android/tools/r8/graph/d4;Lcom/android/tools/r8/internal/x1;)I

    move-result v2

    :goto_2
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/dex/y;->f(I)V

    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    iget-object v1, p0, Lcom/android/tools/r8/dex/L;->f:Lcom/android/tools/r8/dex/J;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/u0;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/N4;->b()Z

    move-result v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_5

    iget-object v2, p1, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    invoke-static {v2}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/r3;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    move v1, v5

    goto :goto_4

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_5
    :goto_3
    iget-object v2, v1, Lcom/android/tools/r8/dex/J;->h:Lcom/android/tools/r8/internal/k20;

    iget-object v1, v1, Lcom/android/tools/r8/dex/J;->k:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/s0;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/k20;->b(Ljava/lang/Object;)I

    move-result v1

    sget-boolean v2, Lcom/android/tools/r8/dex/J;->n:Z

    if-nez v2, :cond_7

    const/4 v2, -0x2

    if-eq v1, v2, :cond_6

    goto :goto_4

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_4
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/dex/y;->f(I)V

    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->f1()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/tools/r8/dex/L;->f:Lcom/android/tools/r8/dex/J;

    iget-object v1, v1, Lcom/android/tools/r8/dex/J;->i:Lcom/android/tools/r8/internal/gd0;

    invoke-static {p1, v1}, Lcom/android/tools/r8/dex/J;->a(Lcom/android/tools/r8/graph/n1;Lcom/android/tools/r8/internal/gd0;)I

    move-result v5

    :cond_8
    invoke-virtual {v0, v5}, Lcom/android/tools/r8/dex/y;->f(I)V

    iget-object v0, p0, Lcom/android/tools/r8/dex/L;->e:Lcom/android/tools/r8/dex/y;

    iget-object v1, p0, Lcom/android/tools/r8/dex/L;->f:Lcom/android/tools/r8/dex/J;

    iget-object v2, v1, Lcom/android/tools/r8/dex/J;->l:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/f1;

    iget-object v1, v1, Lcom/android/tools/r8/dex/J;->j:Lcom/android/tools/r8/internal/k20;

    invoke-static {p1, v1}, Lcom/android/tools/r8/dex/J;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/Y0;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/dex/y;->f(I)V

    return-void
.end method
