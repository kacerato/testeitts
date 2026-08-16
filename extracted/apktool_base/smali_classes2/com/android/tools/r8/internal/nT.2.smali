.class public final Lcom/android/tools/r8/internal/nT;
.super Lcom/android/tools/r8/internal/aT;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final d:[Lcom/android/tools/r8/internal/xw0;

.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/WS;Lcom/android/tools/r8/internal/z10;)V
    .locals 3

    invoke-direct {p0, p2}, Lcom/android/tools/r8/internal/aT;-><init>(Lcom/android/tools/r8/internal/z10;)V

    iget p2, p1, Lcom/android/tools/r8/internal/WS;->i:I

    iget v0, p1, Lcom/android/tools/r8/internal/WS;->k:I

    add-int/2addr p2, v0

    new-array p2, p2, [Lcom/android/tools/r8/internal/xw0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/nT;->d:[Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/WS;->E0()Lcom/android/tools/r8/internal/eT;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/dT;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/dT;->a()I

    move-result v1

    const/16 v2, 0xd2

    if-ne v1, v2, :cond_0

    iget p1, p1, Lcom/android/tools/r8/internal/WS;->i:I

    invoke-interface {v0}, Lcom/android/tools/r8/internal/dT;->f()I

    move-result p2

    add-int/2addr p2, p1

    goto :goto_0

    :cond_1
    const/4 p2, -0x1

    :goto_0
    iput p2, p0, Lcom/android/tools/r8/internal/nT;->e:I

    iget-object p1, p0, Lcom/android/tools/r8/internal/nT;->d:[Lcom/android/tools/r8/internal/xw0;

    array-length p1, p1

    iget-boolean p2, p0, Lcom/android/tools/r8/internal/aT;->a:Z

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    :goto_1
    if-ge p2, p1, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/aT;->b:Lcom/android/tools/r8/internal/z10;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/z10;->a()I

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(ILjava/util/function/IntFunction;Lcom/android/tools/r8/internal/z7;Ljava/util/function/Function;Lcom/android/tools/r8/internal/uT;)Lcom/android/tools/r8/internal/f60;
    .locals 10

    .line 34
    check-cast p5, Lcom/android/tools/r8/internal/qT;

    .line 35
    iget v0, p0, Lcom/android/tools/r8/internal/nT;->e:I

    const/4 v1, 0x0

    .line 36
    :goto_0
    iget-object v2, p5, Lcom/android/tools/r8/internal/qT;->a:[I

    array-length v3, v2

    if-ge v1, v3, :cond_11

    .line 37
    sget-boolean v3, Lcom/android/tools/r8/internal/nT;->f:Z

    if-nez v3, :cond_1

    if-gt v0, p1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 38
    :cond_1
    :goto_1
    aget v4, v2, v1

    add-int/lit8 v5, v1, 0x1

    .line 39
    aget v2, v2, v5

    if-nez v3, :cond_3

    if-lez v2, :cond_2

    goto :goto_2

    .line 40
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_2
    add-int/2addr v2, v0

    if-ge p1, v2, :cond_10

    sub-int p5, p1, v0

    const v0, 0x8000

    if-ge v4, v0, :cond_f

    .line 41
    sget-boolean v0, Lcom/android/tools/r8/internal/o8;->a:Z

    if-nez v0, :cond_5

    invoke-static {v4}, Lcom/android/tools/r8/internal/o8;->a(I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_3
    const v1, 0xffff

    and-int v2, v4, v1

    shl-int/lit8 v2, v2, 0x10

    if-nez v0, :cond_7

    .line 42
    invoke-static {p5}, Lcom/android/tools/r8/internal/o8;->a(I)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_4
    and-int/2addr p5, v1

    const/high16 v0, -0x80000000

    or-int/2addr v0, v2

    or-int/2addr p5, v0

    .line 43
    sget-boolean v0, Lcom/android/tools/r8/internal/sT;->b:Z

    if-nez v0, :cond_9

    if-gez p5, :cond_8

    goto :goto_5

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 44
    :cond_9
    :goto_5
    new-instance v1, Lcom/android/tools/r8/internal/sT;

    invoke-direct {v1, p5}, Lcom/android/tools/r8/internal/sT;-><init>(I)V

    if-nez v0, :cond_b

    .line 45
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/sT;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_6

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_b
    :goto_6
    const v0, 0x7fffffff

    and-int/2addr p5, v0

    shr-int/lit8 p5, p5, 0x10

    .line 46
    invoke-interface {p2, p5}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p2

    move-object v6, p2

    check-cast v6, Lcom/android/tools/r8/internal/W5;

    .line 47
    invoke-interface {p4, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v8, p2

    check-cast v8, Lcom/android/tools/r8/graph/j0;

    .line 48
    new-instance p2, Lcom/android/tools/r8/internal/f60;

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/aT;->a(I)I

    move-result v5

    sget-object v9, Lcom/android/tools/r8/internal/f60$a;->b:Lcom/android/tools/r8/internal/f60$a;

    move-object v4, p2

    move-object v7, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/tools/r8/internal/f60;-><init>(ILcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;Lcom/android/tools/r8/internal/f60$a;)V

    .line 50
    iget-object p3, p0, Lcom/android/tools/r8/internal/nT;->d:[Lcom/android/tools/r8/internal/xw0;

    aget-object p3, p3, p1

    if-eqz p3, :cond_e

    if-nez v3, :cond_d

    .line 51
    invoke-interface {p3}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result p4

    if-nez p4, :cond_c

    goto :goto_7

    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 52
    :cond_d
    :goto_7
    invoke-virtual {p3, p2}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    .line 53
    :cond_e
    iget-object p3, p0, Lcom/android/tools/r8/internal/nT;->d:[Lcom/android/tools/r8/internal/xw0;

    aput-object p2, p3, p1

    return-object p2

    .line 54
    :cond_f
    new-instance p1, Lcom/android/tools/r8/internal/av0;

    const-string p2, "No support for more than 15-bit block index."

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/av0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    add-int/lit8 v1, v1, 0x2

    move v0, v2

    goto/16 :goto_0

    .line 55
    :cond_11
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string p2, "Unexpected fall off the end of the phi table"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(ILcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;
    .locals 2

    .line 21
    new-instance v0, Lcom/android/tools/r8/internal/xw0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/tools/r8/internal/xw0;-><init>(ILcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)V

    return-object v0
.end method

.method public final a(ILcom/android/tools/r8/internal/pu0;Ljava/util/function/Function;)Lcom/android/tools/r8/internal/xw0;
    .locals 3

    .line 22
    new-instance v0, Lcom/android/tools/r8/internal/sT;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/sT;-><init>(I)V

    .line 23
    sget-boolean v1, Lcom/android/tools/r8/internal/nT;->f:Z

    if-nez v1, :cond_1

    .line 24
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/sT;->a()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 26
    :cond_1
    :goto_0
    invoke-interface {p3, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/j0;

    .line 27
    iget-object v0, p0, Lcom/android/tools/r8/internal/nT;->d:[Lcom/android/tools/r8/internal/xw0;

    aget-object v0, v0, p1

    if-nez v0, :cond_2

    .line 28
    new-instance v0, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/aT;->a(I)I

    move-result v1

    invoke-direct {v0, v1, p2, p3}, Lcom/android/tools/r8/internal/xw0;-><init>(ILcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)V

    .line 29
    iget-object p2, p0, Lcom/android/tools/r8/internal/nT;->d:[Lcom/android/tools/r8/internal/xw0;

    aput-object v0, p2, p1

    return-object v0

    .line 30
    :cond_2
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/pu0;)V

    if-eqz p3, :cond_3

    .line 31
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result p1

    if-nez p1, :cond_3

    .line 32
    invoke-virtual {v0, p3}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/graph/j0;)V

    :cond_3
    if-nez v1, :cond_5

    .line 33
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object p1

    if-ne p3, p1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_1
    return-object v0
.end method

.method public final a(Ljava/lang/Object;Lcom/android/tools/r8/internal/uT;)Lcom/android/tools/r8/internal/xw0;
    .locals 5

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/sT;

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/sT;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    sget-boolean p2, Lcom/android/tools/r8/internal/sT;->b:Z

    if-nez p2, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/sT;->a()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_1
    :goto_0
    iget p1, p1, Lcom/android/tools/r8/internal/sT;->a:I

    goto :goto_5

    .line 7
    :cond_2
    check-cast p2, Lcom/android/tools/r8/internal/qT;

    .line 8
    sget-boolean v0, Lcom/android/tools/r8/internal/sT;->b:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/sT;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_4
    :goto_1
    iget v1, p1, Lcom/android/tools/r8/internal/sT;->a:I

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x10

    if-nez v0, :cond_6

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/sT;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 11
    :cond_6
    :goto_2
    iget p1, p1, Lcom/android/tools/r8/internal/sT;->a:I

    const v0, 0xffff

    and-int/2addr p1, v0

    .line 12
    sget-boolean v0, Lcom/android/tools/r8/internal/nT;->f:Z

    if-nez v0, :cond_8

    iget v0, p0, Lcom/android/tools/r8/internal/nT;->e:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    goto :goto_3

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 13
    :cond_8
    :goto_3
    iget v0, p0, Lcom/android/tools/r8/internal/nT;->e:I

    const/4 v2, 0x0

    .line 14
    :goto_4
    iget-object v3, p2, Lcom/android/tools/r8/internal/qT;->a:[I

    array-length v4, v3

    if-ge v2, v4, :cond_b

    .line 15
    aget v4, v3, v2

    if-ne v4, v1, :cond_a

    add-int/2addr p1, v0

    .line 16
    :goto_5
    iget-object p2, p0, Lcom/android/tools/r8/internal/nT;->d:[Lcom/android/tools/r8/internal/xw0;

    aget-object p2, p2, p1

    if-nez p2, :cond_9

    .line 17
    new-instance p2, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/aT;->a(I)I

    move-result v0

    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->f()Lcom/android/tools/r8/internal/z7;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p2, v0, v1, v2}, Lcom/android/tools/r8/internal/xw0;-><init>(ILcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)V

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/internal/nT;->d:[Lcom/android/tools/r8/internal/xw0;

    aput-object p2, v0, p1

    :cond_9
    return-object p2

    :cond_a
    add-int/lit8 v4, v2, 0x1

    .line 19
    aget v3, v3, v4

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_4

    .line 20
    :cond_b
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string p2, "Unexpectedly fell off the end of the phi table"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method
