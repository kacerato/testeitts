.class public Lcom/android/tools/r8/internal/z9;
.super Lcom/android/tools/r8/internal/W9;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final c:J

.field public final d:Lcom/android/tools/r8/internal/Kw0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(JLcom/android/tools/r8/internal/Kw0;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/W9;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/z9;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Kw0;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Should use CfConstNull"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    iput-wide p1, p0, Lcom/android/tools/r8/internal/z9;->c:J

    iput-object p3, p0, Lcom/android/tools/r8/internal/z9;->d:Lcom/android/tools/r8/internal/Kw0;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/EE1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/EE1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToLongFunction;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/FE1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/FE1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->e(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method


# virtual methods
.method public final B()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public final C()I
    .locals 1

    const/16 v0, 0xcb

    return v0
.end method

.method public final E()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public V()J
    .locals 2

    iget-wide v0, p0, Lcom/android/tools/r8/internal/z9;->c:J

    return-wide v0
.end method

.method public final W()Lcom/android/tools/r8/internal/Kw0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/z9;->d:Lcom/android/tools/r8/internal/Kw0;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/pf;Lcom/android/tools/r8/graph/O;)I
    .locals 0

    .line 2
    check-cast p1, Lcom/android/tools/r8/internal/z9;

    new-instance p3, Lcom/android/tools/r8/internal/DE1;

    invoke-direct {p3}, Lcom/android/tools/r8/internal/DE1;-><init>()V

    invoke-virtual {p2, p0, p1, p3}, Lcom/android/tools/r8/internal/pf;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/Nq0;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;)Lcom/android/tools/r8/internal/H9;
    .locals 1

    .line 33
    sget-boolean v0, Lcom/android/tools/r8/internal/z9;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/z9;->d:Lcom/android/tools/r8/internal/Kw0;

    .line 34
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Kw0;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 36
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/z9;->d:Lcom/android/tools/r8/internal/Kw0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/uD;Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/internal/EX;)V
    .locals 0

    .line 5
    sget-object p1, Lcom/android/tools/r8/internal/y9;->a:[I

    iget-object p2, p0, Lcom/android/tools/r8/internal/z9;->d:Lcom/android/tools/r8/internal/Kw0;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    const/4 p3, 0x3

    if-eq p1, p2, :cond_11

    const/4 p2, 0x2

    if-eq p1, p2, :cond_c

    if-eq p1, p3, :cond_6

    const/4 p2, 0x4

    if-ne p1, p2, :cond_5

    .line 6
    sget-boolean p1, Lcom/android/tools/r8/internal/z9;->e:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/tools/r8/internal/z9;->d:Lcom/android/tools/r8/internal/Kw0;

    sget-object p2, Lcom/android/tools/r8/internal/Kw0;->f:Lcom/android/tools/r8/internal/Kw0;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 7
    :cond_1
    :goto_0
    iget-wide p1, p0, Lcom/android/tools/r8/internal/z9;->c:J

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmpl-double p3, p1, p3

    if-eqz p3, :cond_3

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    cmpl-double p3, p1, p3

    if-nez p3, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p9, p1}, Lcom/android/tools/r8/internal/EX;->a(Ljava/lang/Object;)V

    return-void

    :cond_3
    :goto_1
    double-to-int p3, p1

    add-int/lit8 p3, p3, 0xe

    .line 9
    invoke-virtual {p9, p3}, Lcom/android/tools/r8/internal/EX;->a(I)V

    .line 10
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    const-wide/high16 p3, -0x8000000000000000L

    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p3

    cmp-long p1, p1, p3

    if-nez p1, :cond_4

    const/16 p1, 0x77

    .line 11
    invoke-virtual {p9, p1}, Lcom/android/tools/r8/internal/EX;->a(I)V

    :cond_4
    return-void

    .line 12
    :cond_5
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    iget-object p2, p0, Lcom/android/tools/r8/internal/z9;->d:Lcom/android/tools/r8/internal/Kw0;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Non supported type in cf backend: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_6
    sget-boolean p1, Lcom/android/tools/r8/internal/z9;->e:Z

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/tools/r8/internal/z9;->d:Lcom/android/tools/r8/internal/Kw0;

    sget-object p2, Lcom/android/tools/r8/internal/Kw0;->d:Lcom/android/tools/r8/internal/Kw0;

    if-ne p1, p2, :cond_7

    goto :goto_2

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 14
    :cond_8
    :goto_2
    iget-wide p1, p0, Lcom/android/tools/r8/internal/z9;->c:J

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-eqz p2, :cond_a

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p2, p1, p2

    if-eqz p2, :cond_a

    const/high16 p2, 0x40000000    # 2.0f

    cmpl-float p2, p1, p2

    if-nez p2, :cond_9

    goto :goto_3

    .line 15
    :cond_9
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p9, p1}, Lcom/android/tools/r8/internal/EX;->a(Ljava/lang/Object;)V

    return-void

    :cond_a
    :goto_3
    float-to-int p2, p1

    add-int/lit8 p2, p2, 0xb

    .line 16
    invoke-virtual {p9, p2}, Lcom/android/tools/r8/internal/EX;->a(I)V

    .line 17
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    const/high16 p2, -0x80000000

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p2

    if-ne p1, p2, :cond_b

    const/16 p1, 0x76

    .line 18
    invoke-virtual {p9, p1}, Lcom/android/tools/r8/internal/EX;->a(I)V

    :cond_b
    return-void

    .line 19
    :cond_c
    sget-boolean p1, Lcom/android/tools/r8/internal/z9;->e:Z

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/android/tools/r8/internal/z9;->d:Lcom/android/tools/r8/internal/Kw0;

    sget-object p2, Lcom/android/tools/r8/internal/Kw0;->e:Lcom/android/tools/r8/internal/Kw0;

    if-ne p1, p2, :cond_d

    goto :goto_4

    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 20
    :cond_e
    :goto_4
    iget-wide p1, p0, Lcom/android/tools/r8/internal/z9;->c:J

    const-wide/16 p3, 0x0

    cmp-long p3, p1, p3

    if-eqz p3, :cond_10

    const-wide/16 p3, 0x1

    cmp-long p3, p1, p3

    if-nez p3, :cond_f

    goto :goto_5

    .line 21
    :cond_f
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p9, p1}, Lcom/android/tools/r8/internal/EX;->a(Ljava/lang/Object;)V

    return-void

    :cond_10
    :goto_5
    long-to-int p1, p1

    add-int/lit8 p1, p1, 0x9

    .line 22
    invoke-virtual {p9, p1}, Lcom/android/tools/r8/internal/EX;->a(I)V

    return-void

    .line 23
    :cond_11
    sget-boolean p1, Lcom/android/tools/r8/internal/z9;->e:Z

    if-nez p1, :cond_13

    iget-object p1, p0, Lcom/android/tools/r8/internal/z9;->d:Lcom/android/tools/r8/internal/Kw0;

    sget-object p2, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    if-ne p1, p2, :cond_12

    goto :goto_6

    :cond_12
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 24
    :cond_13
    :goto_6
    iget-wide p1, p0, Lcom/android/tools/r8/internal/z9;->c:J

    long-to-int p1, p1

    const/4 p2, -0x1

    if-gt p2, p1, :cond_14

    const/4 p2, 0x5

    if-gt p1, p2, :cond_14

    add-int/2addr p1, p3

    .line 25
    invoke-virtual {p9, p1}, Lcom/android/tools/r8/internal/EX;->a(I)V

    return-void

    :cond_14
    const/16 p2, -0x80

    if-gt p2, p1, :cond_15

    const/16 p2, 0x7f

    if-gt p1, p2, :cond_15

    const/16 p2, 0x10

    .line 26
    invoke-virtual {p9, p2, p1}, Lcom/android/tools/r8/internal/EX;->b(II)V

    return-void

    :cond_15
    const/16 p2, -0x8000

    if-gt p2, p1, :cond_16

    const/16 p2, 0x7fff

    if-gt p1, p2, :cond_16

    const/16 p2, 0x11

    .line 27
    invoke-virtual {p9, p2, p1}, Lcom/android/tools/r8/internal/EX;->b(II)V

    return-void

    .line 28
    :cond_16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p9, p1}, Lcom/android/tools/r8/internal/EX;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Va;)V
    .locals 0

    .line 29
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/Va;->a(Lcom/android/tools/r8/internal/z9;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/internal/ub;Lcom/android/tools/r8/internal/hb;)V
    .locals 2

    .line 30
    iget-object p3, p0, Lcom/android/tools/r8/internal/z9;->d:Lcom/android/tools/r8/internal/Kw0;

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/Kw0;->d()Lcom/android/tools/r8/internal/D70;

    move-result-object p3

    iget-object v0, p0, Lcom/android/tools/r8/internal/z9;->d:Lcom/android/tools/r8/internal/Kw0;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    new-instance v1, Lcom/android/tools/r8/internal/pb;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/pb;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/ub;->a(Lcom/android/tools/r8/internal/rb;)Lcom/android/tools/r8/internal/ob;

    move-result-object p2

    .line 32
    iget p2, p2, Lcom/android/tools/r8/internal/ob;->a:I

    iget-wide v0, p0, Lcom/android/tools/r8/internal/z9;->c:J

    invoke-virtual {p1, p3, p2, v0, v1}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/pu0;IJ)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/rA;)V
    .locals 2

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/DE1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/DE1;-><init>()V

    check-cast p1, Lcom/android/tools/r8/internal/tA;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v1, Lcom/android/tools/r8/internal/sA;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/sA;-><init>(Ljava/lang/Object;Lcom/android/tools/r8/internal/tA;)V

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/Nq0;->a(Lcom/android/tools/r8/internal/Pq0;)V

    return-void
.end method

.method public final y()I
    .locals 8

    sget-object v0, Lcom/android/tools/r8/internal/y9;->a:[I

    iget-object v1, p0, Lcom/android/tools/r8/internal/z9;->d:Lcom/android/tools/r8/internal/Kw0;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_11

    if-eq v0, v1, :cond_c

    if-eq v0, v2, :cond_6

    const/4 v4, 0x4

    if-ne v0, v4, :cond_5

    sget-boolean v0, Lcom/android/tools/r8/internal/z9;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/z9;->d:Lcom/android/tools/r8/internal/Kw0;

    sget-object v4, Lcom/android/tools/r8/internal/Kw0;->f:Lcom/android/tools/r8/internal/Kw0;

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-wide v4, p0, Lcom/android/tools/r8/internal/z9;->c:J

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v0, v4, v6

    if-eqz v0, :cond_3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v4, v6

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    return v2

    :cond_3
    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    const-wide/high16 v6, -0x8000000000000000L

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    return v1

    :cond_4
    return v3

    :cond_5
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/z9;->d:Lcom/android/tools/r8/internal/Kw0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non supported type in cf backend: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    sget-boolean v0, Lcom/android/tools/r8/internal/z9;->e:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/tools/r8/internal/z9;->d:Lcom/android/tools/r8/internal/Kw0;

    sget-object v4, Lcom/android/tools/r8/internal/Kw0;->d:Lcom/android/tools/r8/internal/Kw0;

    if-ne v0, v4, :cond_7

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_8
    :goto_2
    iget-wide v4, p0, Lcom/android/tools/r8/internal/z9;->c:J

    long-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-eqz v4, :cond_a

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v0, v4

    if-eqz v4, :cond_a

    const/high16 v4, 0x40000000    # 2.0f

    cmpl-float v4, v0, v4

    if-nez v4, :cond_9

    goto :goto_3

    :cond_9
    return v2

    :cond_a
    :goto_3
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/high16 v2, -0x80000000

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-ne v0, v2, :cond_b

    return v1

    :cond_b
    return v3

    :cond_c
    sget-boolean v0, Lcom/android/tools/r8/internal/z9;->e:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/tools/r8/internal/z9;->d:Lcom/android/tools/r8/internal/Kw0;

    sget-object v1, Lcom/android/tools/r8/internal/Kw0;->e:Lcom/android/tools/r8/internal/Kw0;

    if-ne v0, v1, :cond_d

    goto :goto_4

    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_e
    :goto_4
    iget-wide v0, p0, Lcom/android/tools/r8/internal/z9;->c:J

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-eqz v4, :cond_10

    const-wide/16 v4, 0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_f

    goto :goto_5

    :cond_f
    return v2

    :cond_10
    :goto_5
    return v3

    :cond_11
    sget-boolean v0, Lcom/android/tools/r8/internal/z9;->e:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/tools/r8/internal/z9;->d:Lcom/android/tools/r8/internal/Kw0;

    sget-object v4, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    if-ne v0, v4, :cond_12

    goto :goto_6

    :cond_12
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_13
    :goto_6
    iget-wide v4, p0, Lcom/android/tools/r8/internal/z9;->c:J

    long-to-int v0, v4

    const/4 v4, -0x1

    if-gt v4, v0, :cond_14

    const/4 v4, 0x5

    if-gt v0, v4, :cond_14

    return v3

    :cond_14
    const/16 v3, -0x80

    if-gt v3, v0, :cond_15

    const/16 v3, 0x7f

    if-gt v0, v3, :cond_15

    return v1

    :cond_15
    return v2
.end method
