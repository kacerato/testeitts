.class public Lcom/android/tools/r8/graph/J0;
.super Lcom/android/tools/r8/graph/i0;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/f3;
.implements Lcom/android/tools/r8/internal/Mq0;
.implements Lcom/android/tools/r8/graph/e3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/graph/J0$b;,
        Lcom/android/tools/r8/graph/J0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/graph/i0;",
        "Lcom/android/tools/r8/graph/f3;",
        "Lcom/android/tools/r8/internal/Mq0<",
        "Lcom/android/tools/r8/graph/J0;",
        ">;",
        "Lcom/android/tools/r8/graph/e3;"
    }
.end annotation


# static fields
.field public static final synthetic o:Z = true


# instance fields
.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:[Lcom/android/tools/r8/graph/J0$a;

.field public final i:[Lcom/android/tools/r8/graph/J0$b;

.field public final j:[Lcom/android/tools/r8/internal/Np;

.field public k:Lcom/android/tools/r8/graph/L2;

.field public l:Lcom/android/tools/r8/graph/W0;

.field public m:Lcom/android/tools/r8/graph/Z0;

.field public final n:Lcom/android/tools/r8/internal/u8;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(III[Lcom/android/tools/r8/internal/Np;[Lcom/android/tools/r8/graph/J0$a;[Lcom/android/tools/r8/graph/J0$b;Lcom/android/tools/r8/graph/W0;)V
    .locals 9

    .line 1
    sget-object v8, Lcom/android/tools/r8/internal/u8;->b:Lcom/android/tools/r8/internal/u8;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 2
    invoke-direct/range {v0 .. v8}, Lcom/android/tools/r8/graph/J0;-><init>(III[Lcom/android/tools/r8/internal/Np;[Lcom/android/tools/r8/graph/J0$a;[Lcom/android/tools/r8/graph/J0$b;Lcom/android/tools/r8/graph/W0;Lcom/android/tools/r8/internal/u8;)V

    return-void
.end method

.method public constructor <init>(III[Lcom/android/tools/r8/internal/Np;[Lcom/android/tools/r8/graph/J0$a;[Lcom/android/tools/r8/graph/J0$b;Lcom/android/tools/r8/graph/W0;Lcom/android/tools/r8/internal/u8;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/android/tools/r8/graph/i0;-><init>()V

    .line 4
    iput p2, p0, Lcom/android/tools/r8/graph/J0;->f:I

    .line 5
    iput p1, p0, Lcom/android/tools/r8/graph/J0;->e:I

    .line 6
    iput p3, p0, Lcom/android/tools/r8/graph/J0;->g:I

    .line 7
    iput-object p4, p0, Lcom/android/tools/r8/graph/J0;->j:[Lcom/android/tools/r8/internal/Np;

    .line 8
    iput-object p5, p0, Lcom/android/tools/r8/graph/J0;->h:[Lcom/android/tools/r8/graph/J0$a;

    .line 9
    iput-object p6, p0, Lcom/android/tools/r8/graph/J0;->i:[Lcom/android/tools/r8/graph/J0$b;

    .line 10
    iput-object p7, p0, Lcom/android/tools/r8/graph/J0;->l:Lcom/android/tools/r8/graph/W0;

    .line 11
    iput-object p8, p0, Lcom/android/tools/r8/graph/J0;->n:Lcom/android/tools/r8/internal/u8;

    .line 12
    sget-boolean p1, Lcom/android/tools/r8/graph/J0;->o:Z

    if-nez p1, :cond_1

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez p1, :cond_3

    if-eqz p6, :cond_2

    goto :goto_1

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez p1, :cond_5

    if-eqz p4, :cond_4

    goto :goto_2

    .line 14
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    if-nez p1, :cond_7

    if-eqz p7, :cond_7

    .line 15
    invoke-virtual {p7}, Lcom/android/tools/r8/graph/W0;->r0()Z

    move-result p1

    if-nez p1, :cond_7

    .line 16
    invoke-virtual {p7}, Lcom/android/tools/r8/graph/W0;->l0()Lcom/android/tools/r8/graph/W0$a;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/W0$a;->g:[Lcom/android/tools/r8/graph/O0;

    invoke-static {p1}, Lcom/android/tools/r8/internal/to;->a([Lcom/android/tools/r8/graph/O0;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_3

    .line 17
    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 18
    :cond_7
    :goto_3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E;->hashCode()I

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/J0;)I
    .locals 0

    .line 2
    iget p0, p0, Lcom/android/tools/r8/graph/J0;->e:I

    return p0
.end method

.method public static a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/L2;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 122
    iget-object p0, p0, Lcom/android/tools/r8/graph/u1;->k1:Lcom/android/tools/r8/graph/L2;

    .line 123
    iget-object p0, p0, Lcom/android/tools/r8/graph/L2;->f:[B

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/L2;->a([B)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 124
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p0

    move p1, v0

    .line 125
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 126
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5f

    if-eq v1, v2, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/graph/O8;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/O8;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/P8;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/P8;-><init>()V

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/Q8;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/Q8;-><init>()V

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/R8;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/R8;-><init>()V

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->f(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/S8;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/S8;-><init>()V

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->f(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/T8;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/T8;-><init>()V

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->j(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/U8;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/U8;-><init>()V

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->f(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z
    .locals 2

    .line 14
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    sget-boolean v0, Lcom/android/tools/r8/internal/nJ;->h2:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/i0;->C()Lcom/android/tools/r8/graph/J0;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i0;->C()Lcom/android/tools/r8/graph/J0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/J0;->E0()Lcom/android/tools/r8/graph/W0;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 17
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    .line 18
    iget-object v0, v0, Lcom/android/tools/r8/graph/H2;->u:Lcom/android/tools/r8/ProgramResource$Kind;

    .line 19
    sget-object v1, Lcom/android/tools/r8/ProgramResource$Kind;->DEX:Lcom/android/tools/r8/ProgramResource$Kind;

    if-ne v0, v1, :cond_5

    .line 20
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nJ;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/tools/r8/internal/C2;->B:Lcom/android/tools/r8/internal/C2;

    .line 21
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/tools/r8/internal/C40;->d(Lcom/android/tools/r8/internal/C40;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 22
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->Z0()Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 23
    iget-object p0, p0, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    iget-object p0, p0, Lcom/android/tools/r8/graph/u1;->w5:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/E;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/J0;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/tools/r8/graph/J0;->f:I

    return p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/graph/J0;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/tools/r8/graph/J0;->g:I

    return p0
.end method

.method public static synthetic d(Lcom/android/tools/r8/graph/J0;)[Lcom/android/tools/r8/graph/J0$a;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/graph/J0;->h:[Lcom/android/tools/r8/graph/J0$a;

    return-object p0
.end method

.method public static synthetic e(Lcom/android/tools/r8/graph/J0;)[Lcom/android/tools/r8/graph/J0$b;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/graph/J0;->i:[Lcom/android/tools/r8/graph/J0$b;

    return-object p0
.end method

.method public static synthetic f(Lcom/android/tools/r8/graph/J0;)Lcom/android/tools/r8/graph/W0;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/graph/J0;->l:Lcom/android/tools/r8/graph/W0;

    return-object p0
.end method

.method public static synthetic g(Lcom/android/tools/r8/graph/J0;)[Lcom/android/tools/r8/internal/Np;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/graph/J0;->j:[Lcom/android/tools/r8/internal/Np;

    return-object p0
.end method


# virtual methods
.method public final C()Lcom/android/tools/r8/graph/J0;
    .locals 0

    return-object p0
.end method

.method public final E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public E0()Lcom/android/tools/r8/graph/W0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/J0;->l:Lcom/android/tools/r8/graph/W0;

    return-object v0
.end method

.method public final P()Lcom/android/tools/r8/graph/i0;
    .locals 0

    return-object p0
.end method

.method public final T()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/graph/J0;->g:I

    return v0
.end method

.method public Y()I
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/graph/J0;->j:[Lcom/android/tools/r8/internal/Np;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    sget-boolean v1, Lcom/android/tools/r8/graph/J0;->o:Z

    if-nez v1, :cond_1

    iget v2, v0, Lcom/android/tools/r8/internal/Np;->b:I

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Np;->y()I

    move-result v0

    add-int/2addr v0, v2

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/tools/r8/graph/J0;->j:[Lcom/android/tools/r8/internal/Np;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v5, v1, v3

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/Np;->y()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-ne v0, v4, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    :goto_2
    return v0
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)I
    .locals 0

    .line 231
    iget p1, p0, Lcom/android/tools/r8/graph/J0;->e:I

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/W0$a;
    .locals 8

    .line 28
    invoke-static {p0, p1}, Lcom/android/tools/r8/graph/W0;->a(Lcom/android/tools/r8/graph/J0;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/W0$a;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v0

    .line 29
    :cond_0
    iget-object v1, v0, Lcom/android/tools/r8/graph/W0$a;->f:[Lcom/android/tools/r8/graph/L2;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    .line 30
    invoke-static {p1, v6}, Lcom/android/tools/r8/graph/J0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/L2;)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Integer;->max(II)I

    move-result v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 31
    :cond_1
    iget-object v1, v0, Lcom/android/tools/r8/graph/W0$a;->g:[Lcom/android/tools/r8/graph/O0;

    array-length v2, v1

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_3

    aget-object v6, v1, v4

    .line 32
    instance-of v7, v6, Lcom/android/tools/r8/graph/O0$d;

    if-eqz v7, :cond_2

    .line 33
    check-cast v6, Lcom/android/tools/r8/graph/O0$d;

    iget-object v6, v6, Lcom/android/tools/r8/graph/O0$d;->e:Lcom/android/tools/r8/graph/L2;

    .line 34
    invoke-static {p1, v6}, Lcom/android/tools/r8/graph/J0;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/L2;)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Integer;->max(II)I

    move-result v5

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    add-int/2addr v5, v1

    .line 35
    const-string v2, "_"

    invoke-static {v2, v5}, Lcom/android/tools/r8/z2;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "this"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 36
    iget-object v4, v0, Lcom/android/tools/r8/graph/W0$a;->f:[Lcom/android/tools/r8/graph/L2;

    .line 37
    array-length v5, v4

    add-int/2addr v5, v1

    new-array v5, v5, [Lcom/android/tools/r8/graph/L2;

    .line 38
    invoke-virtual {p1, v2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    aput-object p1, v5, v3

    .line 39
    array-length p1, v4

    invoke-static {v4, v3, v5, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    new-instance p1, Lcom/android/tools/r8/graph/W0$a;

    iget v1, v0, Lcom/android/tools/r8/graph/W0$a;->e:I

    iget-object v0, v0, Lcom/android/tools/r8/graph/W0$a;->g:[Lcom/android/tools/r8/graph/O0;

    invoke-direct {p1, v1, v5, v0}, Lcom/android/tools/r8/graph/W0$a;-><init>(I[Lcom/android/tools/r8/graph/L2;[Lcom/android/tools/r8/graph/O0;)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/e3;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/graph/y;Z)Lcom/android/tools/r8/graph/f3;
    .locals 3

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    .line 102
    iget-object p2, p2, Lcom/android/tools/r8/graph/w5;->j:Lcom/android/tools/r8/internal/gd0;

    .line 103
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/gd0;->k()Lcom/android/tools/r8/internal/rd0;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/dd0;

    .line 104
    new-instance p4, Lcom/android/tools/r8/internal/Zc0;

    .line 105
    iget-object p2, p2, Lcom/android/tools/r8/internal/dd0;->b:Lcom/android/tools/r8/internal/gd0;

    .line 106
    invoke-direct {p4, p2}, Lcom/android/tools/r8/internal/Zc0;-><init>(Lcom/android/tools/r8/internal/gd0;)V

    .line 107
    :cond_0
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/ed0;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/Zc0;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/hd0;

    .line 108
    invoke-interface {p2}, Lcom/android/tools/r8/internal/hd0;->getIntValue()I

    move-result v1

    if-nez v1, :cond_0

    .line 109
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/android/tools/r8/graph/L2;

    goto :goto_2

    .line 110
    :cond_1
    sget-boolean p4, Lcom/android/tools/r8/graph/J0;->o:Z

    if-nez p4, :cond_3

    iget-object v1, p0, Lcom/android/tools/r8/graph/J0;->k:Lcom/android/tools/r8/graph/L2;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/tools/r8/graph/J0;->j:[Lcom/android/tools/r8/internal/Np;

    .line 111
    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/graph/K8;

    invoke-direct {v2}, Lcom/android/tools/r8/graph/K8;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 112
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_0
    if-nez p4, :cond_5

    .line 113
    iget-object p4, p0, Lcom/android/tools/r8/graph/J0;->j:[Lcom/android/tools/r8/internal/Np;

    invoke-static {p4}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p4

    new-instance v1, Lcom/android/tools/r8/graph/M8;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/M8;-><init>()V

    invoke-interface {p4, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result p4

    if-eqz p4, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 114
    :cond_5
    :goto_1
    iget-object p4, p0, Lcom/android/tools/r8/graph/J0;->k:Lcom/android/tools/r8/graph/L2;

    if-eqz p4, :cond_6

    .line 115
    iget-object v1, p2, Lcom/android/tools/r8/graph/w5;->n:Lcom/android/tools/r8/graph/L2;

    .line 116
    invoke-interface {p4, v1}, Lcom/android/tools/r8/internal/C40;->d(Lcom/android/tools/r8/internal/C40;)Z

    move-result p4

    if-eqz p4, :cond_6

    .line 117
    iget-object v0, p2, Lcom/android/tools/r8/graph/w5;->n:Lcom/android/tools/r8/graph/L2;

    :cond_6
    :goto_2
    if-eqz v0, :cond_7

    .line 118
    new-instance p2, Lcom/android/tools/r8/dex/U;

    .line 119
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/graph/j1;

    new-instance v1, Lcom/android/tools/r8/graph/N8;

    invoke-direct {v1, p3, p1}, Lcom/android/tools/r8/graph/N8;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)V

    .line 120
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    invoke-direct {p2, p4, v0, v1, p1}, Lcom/android/tools/r8/dex/U;-><init>(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/L2;Ljava/util/function/BooleanSupplier;Lcom/android/tools/r8/graph/u1;)V

    .line 121
    invoke-virtual {p2}, Lcom/android/tools/r8/dex/U;->a()Lcom/android/tools/r8/graph/J0;

    move-result-object p1

    return-object p1

    :cond_7
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/i0;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p5

    .line 41
    new-instance v9, Lcom/android/tools/r8/graph/J0;

    iget v4, v0, Lcom/android/tools/r8/graph/J0;->e:I

    iget v5, v0, Lcom/android/tools/r8/graph/J0;->f:I

    iget v6, v0, Lcom/android/tools/r8/graph/J0;->g:I

    iget-object v7, v0, Lcom/android/tools/r8/graph/J0;->j:[Lcom/android/tools/r8/internal/Np;

    iget-object v8, v0, Lcom/android/tools/r8/graph/J0;->h:[Lcom/android/tools/r8/graph/J0$a;

    iget-object v10, v0, Lcom/android/tools/r8/graph/J0;->i:[Lcom/android/tools/r8/graph/J0$b;

    .line 42
    invoke-static {}, Lcom/android/tools/r8/internal/B60$c;->t()Lcom/android/tools/r8/internal/B60$c$a;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/tools/r8/internal/B60$a;->a(I)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/internal/B60$c$a;

    move-object/from16 v13, p1

    invoke-virtual {v11, v13}, Lcom/android/tools/r8/internal/B60$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/internal/B60$c$a;

    const/4 v13, 0x1

    .line 43
    iput-boolean v13, v11, Lcom/android/tools/r8/internal/B60$a;->e:Z

    .line 44
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/B60$c$a;->d()Lcom/android/tools/r8/internal/B60$c;

    move-result-object v11

    .line 45
    invoke-static {v0, v3}, Lcom/android/tools/r8/graph/W0;->a(Lcom/android/tools/r8/graph/J0;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/W0$a;

    move-result-object v14

    if-nez v14, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    invoke-static {}, Lcom/android/tools/r8/internal/B60$c;->t()Lcom/android/tools/r8/internal/B60$c$a;

    move-result-object v2

    .line 47
    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/B60$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/B60$c$a;

    .line 48
    iput-object v11, v2, Lcom/android/tools/r8/internal/B60$a;->c:Lcom/android/tools/r8/internal/B60;

    .line 49
    invoke-virtual {v2, v12}, Lcom/android/tools/r8/internal/B60$a;->a(I)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/B60$c$a;

    .line 50
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/B60$c$a;->d()Lcom/android/tools/r8/internal/B60$c;

    move-result-object v11

    .line 51
    :goto_0
    new-instance v2, Lcom/android/tools/r8/graph/W0$a;

    .line 52
    invoke-virtual/range {p3 .. p3}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result v1

    new-array v1, v1, [Lcom/android/tools/r8/graph/L2;

    .line 53
    invoke-virtual {v3, v11}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/graph/S0;

    move-result-object v11

    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->r:Lcom/android/tools/r8/graph/O0$b;

    const/4 v14, 0x2

    new-array v14, v14, [Lcom/android/tools/r8/graph/O0;

    aput-object v11, v14, v12

    aput-object v3, v14, v13

    invoke-direct {v2, v12, v1, v14}, Lcom/android/tools/r8/graph/W0$a;-><init>(I[Lcom/android/tools/r8/graph/L2;[Lcom/android/tools/r8/graph/O0;)V

    move/from16 v19, v6

    move-object/from16 v18, v7

    move-object/from16 v17, v8

    move-object/from16 v16, v10

    move-object v8, v2

    goto/16 :goto_10

    .line 54
    :cond_1
    invoke-static {v1, v2, v14}, Lcom/android/tools/r8/internal/to;->a(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/W0$a;)Lcom/android/tools/r8/internal/so;

    move-result-object v15

    .line 55
    iget-object v12, v14, Lcom/android/tools/r8/graph/W0$a;->g:[Lcom/android/tools/r8/graph/O0;

    .line 56
    iget v13, v15, Lcom/android/tools/r8/internal/so;->b:I

    move-object/from16 v16, v10

    const/4 v10, -0x1

    if-le v13, v10, :cond_2

    goto :goto_1

    .line 57
    :cond_2
    iget-object v13, v0, Lcom/android/tools/r8/graph/J0;->l:Lcom/android/tools/r8/graph/W0;

    invoke-virtual {v13}, Lcom/android/tools/r8/graph/W0;->p0()I

    move-result v13

    if-lez v13, :cond_3

    const/4 v13, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v13, 0x0

    .line 58
    :goto_2
    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v17, v8

    array-length v8, v12

    move-object/from16 v18, v7

    .line 59
    iget-object v7, v15, Lcom/android/tools/r8/internal/so;->a:Lcom/android/tools/r8/internal/B60;

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    const/16 v19, 0x1

    goto :goto_3

    :cond_4
    const/4 v7, 0x1

    const/16 v19, 0x0

    :goto_3
    xor-int/lit8 v19, v19, 0x1

    add-int v8, v8, v19

    .line 60
    iget v7, v15, Lcom/android/tools/r8/internal/so;->b:I

    move/from16 v19, v6

    const/4 v6, -0x1

    if-le v7, v6, :cond_5

    const/4 v6, 0x1

    :goto_4
    const/4 v7, 0x1

    goto :goto_5

    :cond_5
    const/4 v6, 0x0

    goto :goto_4

    :goto_5
    xor-int/2addr v6, v7

    add-int/2addr v8, v6

    add-int/2addr v8, v13

    .line 61
    invoke-direct {v10, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 62
    iget-object v6, v15, Lcom/android/tools/r8/internal/so;->a:Lcom/android/tools/r8/internal/B60;

    if-eqz v6, :cond_6

    goto :goto_8

    :cond_6
    if-eqz v2, :cond_7

    .line 63
    invoke-static {}, Lcom/android/tools/r8/internal/B60$c;->t()Lcom/android/tools/r8/internal/B60$c$a;

    move-result-object v6

    goto :goto_6

    :cond_7
    invoke-static {}, Lcom/android/tools/r8/internal/B60$b;->t()Lcom/android/tools/r8/internal/B60$b$a;

    move-result-object v6

    .line 64
    :goto_6
    iget v7, v15, Lcom/android/tools/r8/internal/so;->b:I

    const/4 v8, -0x1

    if-le v7, v8, :cond_8

    goto :goto_7

    :cond_8
    const/4 v7, 0x0

    .line 65
    :goto_7
    invoke-virtual {v6, v7}, Lcom/android/tools/r8/internal/B60$a;->a(I)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v6

    .line 66
    invoke-virtual {v6, v1}, Lcom/android/tools/r8/internal/B60$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v1

    .line 67
    iput-boolean v2, v1, Lcom/android/tools/r8/internal/B60$a;->e:Z

    .line 68
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/B60$a;->c()Lcom/android/tools/r8/internal/B60$a;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/B60$a;->a()Lcom/android/tools/r8/internal/B60;

    move-result-object v1

    .line 70
    invoke-static {v11, v1, v2}, Lcom/android/tools/r8/graph/i0;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/B60;Z)Lcom/android/tools/r8/internal/B60;

    move-result-object v1

    .line 71
    invoke-virtual {v3, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/graph/S0;

    move-result-object v1

    .line 72
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    :goto_8
    iget v1, v15, Lcom/android/tools/r8/internal/so;->b:I

    const/4 v6, -0x1

    if-le v1, v6, :cond_9

    goto :goto_9

    .line 74
    :cond_9
    iget-object v1, v3, Lcom/android/tools/r8/graph/u1;->r:Lcom/android/tools/r8/graph/O0$b;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    :goto_9
    array-length v1, v12

    const/4 v6, 0x0

    :goto_a
    if-ge v6, v1, :cond_f

    aget-object v7, v12, v6

    .line 76
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    instance-of v8, v7, Lcom/android/tools/r8/graph/N0;

    if-eqz v8, :cond_a

    if-eqz v13, :cond_a

    .line 78
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/O0;->k0()Lcom/android/tools/r8/graph/N0;

    move-result-object v7

    .line 79
    iget-object v8, v0, Lcom/android/tools/r8/graph/J0;->l:Lcom/android/tools/r8/graph/W0;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/W0;->p0()I

    move-result v8

    iget v7, v7, Lcom/android/tools/r8/graph/N0;->d:I

    add-int/2addr v8, v7

    invoke-virtual {v3, v8}, Lcom/android/tools/r8/graph/u1;->a(I)Lcom/android/tools/r8/graph/N0;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_b
    const/4 v7, 0x1

    const/4 v13, 0x0

    goto :goto_e

    .line 80
    :cond_a
    instance-of v8, v7, Lcom/android/tools/r8/graph/O0$b;

    if-eqz v8, :cond_b

    if-eqz v13, :cond_b

    .line 81
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/O0;->l0()Lcom/android/tools/r8/graph/O0$b;

    move-result-object v7

    .line 82
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/O0$b;->p0()I

    move-result v8

    iget-object v13, v0, Lcom/android/tools/r8/graph/J0;->l:Lcom/android/tools/r8/graph/W0;

    invoke-virtual {v13}, Lcom/android/tools/r8/graph/W0;->p0()I

    move-result v13

    add-int/2addr v13, v8

    .line 83
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/O0$b;->q0()I

    move-result v7

    .line 84
    invoke-static {v13, v7, v10, v3}, Lcom/android/tools/r8/graph/U0;->a(IILjava/util/List;Lcom/android/tools/r8/graph/u1;)V

    goto :goto_b

    .line 85
    :cond_b
    instance-of v8, v7, Lcom/android/tools/r8/graph/S0;

    if-eqz v8, :cond_e

    .line 86
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/O0;->m0()Lcom/android/tools/r8/graph/S0;

    move-result-object v7

    .line 87
    sget-boolean v8, Lcom/android/tools/r8/graph/J0;->o:Z

    if-nez v8, :cond_d

    .line 88
    iget-object v8, v7, Lcom/android/tools/r8/graph/S0;->d:Lcom/android/tools/r8/internal/B60;

    if-eqz v8, :cond_c

    goto :goto_c

    .line 89
    :cond_c
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 90
    :cond_d
    :goto_c
    new-instance v8, Lcom/android/tools/r8/graph/S0;

    .line 91
    iget-object v7, v7, Lcom/android/tools/r8/graph/S0;->d:Lcom/android/tools/r8/internal/B60;

    .line 92
    invoke-static {v11, v7, v2}, Lcom/android/tools/r8/graph/i0;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/B60;Z)Lcom/android/tools/r8/internal/B60;

    move-result-object v7

    invoke-direct {v8, v7}, Lcom/android/tools/r8/graph/S0;-><init>(Lcom/android/tools/r8/internal/B60;)V

    .line 93
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 94
    :cond_e
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_d
    const/4 v7, 0x1

    :goto_e
    add-int/2addr v6, v7

    goto :goto_a

    :cond_f
    if-eqz v13, :cond_10

    .line 95
    iget-object v1, v0, Lcom/android/tools/r8/graph/J0;->l:Lcom/android/tools/r8/graph/W0;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/W0;->p0()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/android/tools/r8/graph/u1;->a(I)Lcom/android/tools/r8/graph/N0;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_10
    new-instance v1, Lcom/android/tools/r8/graph/W0$a;

    .line 97
    iget v2, v15, Lcom/android/tools/r8/internal/so;->b:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_11

    .line 98
    iget v12, v14, Lcom/android/tools/r8/graph/W0$a;->e:I

    goto :goto_f

    :cond_11
    const/4 v12, 0x0

    .line 99
    :goto_f
    iget-object v2, v14, Lcom/android/tools/r8/graph/W0$a;->f:[Lcom/android/tools/r8/graph/L2;

    sget-object v3, Lcom/android/tools/r8/graph/O0;->b:[Lcom/android/tools/r8/graph/O0;

    .line 100
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/tools/r8/graph/O0;

    invoke-direct {v1, v12, v2, v3}, Lcom/android/tools/r8/graph/W0$a;-><init>(I[Lcom/android/tools/r8/graph/L2;[Lcom/android/tools/r8/graph/O0;)V

    move-object v8, v1

    :goto_10
    move-object v1, v9

    move v2, v4

    move v3, v5

    move/from16 v4, v19

    move-object/from16 v5, v18

    move-object/from16 v6, v17

    move-object/from16 v7, v16

    .line 101
    invoke-direct/range {v1 .. v8}, Lcom/android/tools/r8/graph/J0;-><init>(III[Lcom/android/tools/r8/internal/Np;[Lcom/android/tools/r8/graph/J0$a;[Lcom/android/tools/r8/graph/J0$b;Lcom/android/tools/r8/graph/W0;)V

    return-object v9
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/z10;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/graph/proto/j;)Lcom/android/tools/r8/internal/fB;
    .locals 7

    .line 132
    new-instance v4, Lcom/android/tools/r8/internal/ks;

    .line 133
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-direct {v4, p0, p2, p6, v0}, Lcom/android/tools/r8/internal/ks;-><init>(Lcom/android/tools/r8/graph/J0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/graph/u1;)V

    .line 134
    new-instance p6, Lcom/android/tools/r8/internal/aB;

    move-object v0, p6

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v5, p7

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/internal/aB;-><init>(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/on0;Lcom/android/tools/r8/graph/proto/j;Lcom/android/tools/r8/internal/z10;)V

    .line 135
    invoke-static {}, Lcom/android/tools/r8/internal/EW;->d()Lcom/android/tools/r8/internal/EW$a;

    move-result-object p2

    invoke-virtual {p6, p1, p2}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;
    .locals 3

    .line 129
    new-instance v0, Lcom/android/tools/r8/internal/ks;

    .line 130
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/android/tools/r8/internal/ks;-><init>(Lcom/android/tools/r8/graph/J0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/graph/u1;)V

    .line 131
    invoke-static {p1, p2, v0}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/on0;)Lcom/android/tools/r8/internal/aB;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Ka;)Lcom/android/tools/r8/internal/s8;
    .locals 1

    .line 10
    invoke-interface {p1}, Lcom/android/tools/r8/internal/Ka;->s()Lcom/android/tools/r8/internal/Np;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/graph/J0;->n:Lcom/android/tools/r8/internal/u8;

    .line 12
    iget-object v0, v0, Lcom/android/tools/r8/internal/u8;->a:Ljava/util/Map;

    .line 13
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/s8;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n"

    if-eqz v1, :cond_0

    .line 152
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v2, v5}, Lcom/android/tools/r8/internal/vk0;->c(Lcom/android/tools/r8/graph/A2;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    :cond_0
    const-string v5, "registers: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/tools/r8/graph/J0;->e:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    const-string v5, ", inputs: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/tools/r8/graph/J0;->f:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    const-string v5, ", outputs: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/tools/r8/graph/J0;->g:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\n------------------------------------------------------------\ninst#  offset  instruction         arguments\n------------------------------------------------------------\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 157
    iget-object v6, v0, Lcom/android/tools/r8/graph/J0;->j:[Lcom/android/tools/r8/internal/Np;

    array-length v7, v6

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v7, :cond_2

    aget-object v10, v6, v9

    .line 158
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/Np;->B()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 159
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v11

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/Np;->w()I

    move-result v12

    add-int/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 160
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object v6

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/J0;->E0()Lcom/android/tools/r8/graph/W0;

    move-result-object v7

    const/4 v9, 0x1

    if-eqz v7, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/J0;->E0()Lcom/android/tools/r8/graph/W0;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/W0;->r0()Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v9

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_1
    if-nez v7, :cond_4

    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/J0;->E0()Lcom/android/tools/r8/graph/W0;

    move-result-object v11

    if-eqz v11, :cond_4

    if-eqz v1, :cond_4

    .line 163
    new-instance v6, Lcom/android/tools/r8/graph/M0;

    new-instance v11, Lcom/android/tools/r8/graph/u1;

    invoke-direct {v11}, Lcom/android/tools/r8/graph/u1;-><init>()V

    invoke-direct {v6, v1, v11}, Lcom/android/tools/r8/graph/M0;-><init>(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/u1;)V

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/M0;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 164
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/K0;

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    .line 165
    :goto_2
    sget-object v11, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 166
    iget-object v12, v0, Lcom/android/tools/r8/graph/J0;->j:[Lcom/android/tools/r8/internal/Np;

    array-length v13, v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_3
    const-string v10, ": "

    if-ge v14, v13, :cond_d

    aget-object v8, v12, v14

    .line 167
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v16

    move-object/from16 v17, v1

    add-int/lit8 v1, v16, -0x1

    move-object/from16 v9, v17

    :goto_4
    move-object/from16 v18, v11

    if-eqz v9, :cond_6

    .line 168
    iget v11, v9, Lcom/android/tools/r8/graph/K0;->b:I

    if-gt v11, v1, :cond_6

    .line 169
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/graph/K0;

    move-object/from16 v11, v18

    goto :goto_4

    :cond_5
    move-object/from16 v11, v18

    const/4 v9, 0x0

    goto :goto_4

    :cond_6
    move-object v1, v9

    move-object/from16 v11, v18

    :goto_5
    if-eqz v1, :cond_b

    .line 170
    iget v9, v1, Lcom/android/tools/r8/graph/K0;->b:I

    move-object/from16 v18, v12

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v12

    if-ne v9, v12, :cond_a

    .line 171
    iget-boolean v9, v1, Lcom/android/tools/r8/graph/K0;->a:Z

    if-nez v9, :cond_8

    iget-object v9, v1, Lcom/android/tools/r8/graph/K0;->e:Ljava/util/Map;

    invoke-interface {v11, v9}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    goto :goto_6

    :cond_7
    const/4 v9, 0x0

    goto :goto_7

    .line 172
    :cond_8
    :goto_6
    const-string v9, "         "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lcom/android/tools/r8/graph/K0;->a(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    :goto_7
    iget-object v11, v1, Lcom/android/tools/r8/graph/K0;->e:Ljava/util/Map;

    .line 174
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/K0;

    goto :goto_8

    :cond_9
    const/4 v1, 0x0

    :goto_8
    move-object/from16 v12, v18

    goto :goto_5

    :cond_a
    :goto_9
    const/4 v9, 0x0

    goto :goto_a

    :cond_b
    move-object/from16 v18, v12

    goto :goto_9

    :goto_a
    add-int/lit8 v12, v15, 0x1

    .line 175
    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    const/4 v9, 0x5

    invoke-static {v3, v15, v9}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 176
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/Np;->N()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 178
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/Np;

    .line 179
    invoke-virtual {v8, v9}, Lcom/android/tools/r8/internal/Np;->b(Lcom/android/tools/r8/internal/Np;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_b
    const/16 v8, 0xa

    goto :goto_c

    .line 180
    :cond_c
    invoke-virtual {v8, v2}, Lcom/android/tools/r8/internal/Np;->b(Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 181
    :goto_c
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v14, 0x1

    move v15, v12

    move-object/from16 v12, v18

    const/4 v9, 0x1

    goto/16 :goto_3

    :cond_d
    move-object/from16 v17, v1

    if-eqz v7, :cond_e

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/J0;->E0()Lcom/android/tools/r8/graph/W0;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 183
    :cond_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 184
    iget-object v1, v0, Lcom/android/tools/r8/graph/J0;->j:[Lcom/android/tools/r8/internal/Np;

    invoke-static {v1}, Lcom/android/tools/r8/internal/X3;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Np;

    .line 185
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v1

    move-object/from16 v2, v17

    :goto_d
    if-eqz v2, :cond_10

    .line 186
    iget v4, v2, Lcom/android/tools/r8/graph/K0;->b:I

    if-gt v4, v1, :cond_10

    .line 187
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/K0;

    goto :goto_d

    :cond_f
    const/4 v2, 0x0

    goto :goto_d

    :cond_10
    if-eqz v2, :cond_11

    .line 188
    const-string v1, "(warning: has unhandled debug events @ pc:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lcom/android/tools/r8/graph/K0;->b:I

    .line 189
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 190
    const-string v1, ", line:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/K0;->b()Lcom/android/tools/r8/internal/B60;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/B60;->f()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 192
    :cond_11
    const-string v1, "(has debug events past last pc)\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    :cond_12
    :goto_e
    iget-object v1, v0, Lcom/android/tools/r8/graph/J0;->h:[Lcom/android/tools/r8/graph/J0$a;

    array-length v1, v1

    if-lez v1, :cond_14

    .line 194
    const-string v1, "Tries (numbers are offsets)\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    iget-object v1, v0, Lcom/android/tools/r8/graph/J0;->h:[Lcom/android/tools/r8/graph/J0$a;

    array-length v2, v1

    const/4 v4, 0x0

    :goto_f
    const-string v5, "  "

    if-ge v4, v2, :cond_13

    aget-object v6, v1, v4

    .line 196
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/J0$a;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0xa

    .line 198
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 199
    :cond_13
    const-string v1, "Handlers (numbers are offsets)\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    .line 200
    :goto_10
    iget-object v1, v0, Lcom/android/tools/r8/graph/J0;->i:[Lcom/android/tools/r8/graph/J0$b;

    array-length v2, v1

    if-ge v8, v2, :cond_14

    .line 201
    aget-object v1, v1, v8

    .line 202
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/J0$b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    .line 204
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_10

    .line 205
    :cond_14
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final a(Lcom/android/tools/r8/dex/X;)V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/android/tools/r8/graph/J0;->l:Lcom/android/tools/r8/graph/W0;

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/J0;->u()Lcom/android/tools/r8/graph/Z0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/tools/r8/graph/Z0;->a(Lcom/android/tools/r8/dex/X;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/dex/r;)V
    .locals 6

    .line 234
    iget-object v0, p0, Lcom/android/tools/r8/graph/J0;->j:[Lcom/android/tools/r8/internal/Np;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_7

    aget-object v3, v0, v2

    .line 235
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Np;->b()Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    .line 236
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Np;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 237
    sget-boolean v3, Lcom/android/tools/r8/graph/J0;->o:Z

    if-nez v3, :cond_1

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 238
    :cond_1
    :goto_1
    invoke-virtual {p1, v5}, Lcom/android/tools/r8/dex/r;->a(Lcom/android/tools/r8/graph/l1;)V

    goto :goto_2

    :cond_2
    if-eqz v4, :cond_3

    .line 239
    invoke-virtual {p1, v4}, Lcom/android/tools/r8/dex/r;->a(Lcom/android/tools/r8/graph/A2;)V

    goto :goto_2

    .line 240
    :cond_3
    instance-of v4, v3, Lcom/android/tools/r8/internal/go;

    if-eqz v4, :cond_4

    .line 241
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Np;->d()Lcom/android/tools/r8/internal/go;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/go;->O()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/tools/r8/dex/r;->a(Lcom/android/tools/r8/graph/M2;)V

    goto :goto_2

    .line 242
    :cond_4
    instance-of v4, v3, Lcom/android/tools/r8/internal/Mp;

    if-eqz v4, :cond_5

    .line 243
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Np;->i()Lcom/android/tools/r8/internal/Mp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Mp;->O()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/tools/r8/dex/r;->a(Lcom/android/tools/r8/graph/M2;)V

    goto :goto_2

    .line 244
    :cond_5
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Np;->C()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 245
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Np;->c()Lcom/android/tools/r8/internal/Ln;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Ln;->O()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/tools/r8/dex/r;->a(Lcom/android/tools/r8/graph/M2;)V

    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;ZLjava/util/function/Consumer;)V
    .locals 3

    .line 248
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/J0;->E0()Lcom/android/tools/r8/graph/W0;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/J0;->E0()Lcom/android/tools/r8/graph/W0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/W0;->r0()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/J0;->E0()Lcom/android/tools/r8/graph/W0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/W0;->l0()Lcom/android/tools/r8/graph/W0$a;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/W0$a;->g:[Lcom/android/tools/r8/graph/O0;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    aget-object v1, p1, v0

    .line 250
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    instance-of v2, v1, Lcom/android/tools/r8/graph/S0;

    if-eqz v2, :cond_1

    .line 252
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/O0;->m0()Lcom/android/tools/r8/graph/S0;

    move-result-object v1

    .line 253
    iget-object v1, v1, Lcom/android/tools/r8/graph/S0;->d:Lcom/android/tools/r8/internal/B60;

    .line 254
    invoke-interface {p3, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/f6;)V
    .locals 0

    .line 136
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/graph/J0;->a(Lcom/android/tools/r8/graph/f6;)V

    return-void
.end method

.method public a(Lcom/android/tools/r8/graph/W0;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/android/tools/r8/graph/J0;->l:Lcom/android/tools/r8/graph/W0;

    .line 25
    iget-object p1, p0, Lcom/android/tools/r8/graph/J0;->m:Lcom/android/tools/r8/graph/Z0;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lcom/android/tools/r8/graph/J0;->m:Lcom/android/tools/r8/graph/Z0;

    :cond_0
    const/4 p1, -0x1

    .line 27
    iput p1, p0, Lcom/android/tools/r8/graph/E;->b:I

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/e0;Lcom/android/tools/r8/internal/Mi;)V
    .locals 0

    .line 137
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/graph/J0;->a(Lcom/android/tools/r8/graph/f6;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/f6;)V
    .locals 8

    .line 138
    sget-boolean v0, Lcom/android/tools/r8/graph/J0;->o:Z

    if-nez v0, :cond_1

    .line 139
    iget-object v0, p1, Lcom/android/tools/r8/graph/f6;->c:Lcom/android/tools/r8/internal/Zs0;

    .line 140
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Zs0;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 142
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/J0;->j:[Lcom/android/tools/r8/internal/Np;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 143
    invoke-virtual {v4, p1}, Lcom/android/tools/r8/internal/Np;->a(Lcom/android/tools/r8/graph/f6;)V

    .line 144
    iget-object v4, p1, Lcom/android/tools/r8/graph/f6;->c:Lcom/android/tools/r8/internal/Zs0;

    .line 145
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 146
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/graph/J0;->i:[Lcom/android/tools/r8/graph/J0$b;

    array-length v1, v0

    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_6

    aget-object v4, v0, v3

    .line 147
    iget-object v4, v4, Lcom/android/tools/r8/graph/J0$b;->b:[Lcom/android/tools/r8/graph/J0$b$a;

    array-length v5, v4

    move v6, v2

    :goto_3
    if-ge v6, v5, :cond_5

    aget-object v7, v4, v6

    .line 148
    iget-object v7, v7, Lcom/android/tools/r8/graph/J0$b$a;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v7}, Lcom/android/tools/r8/graph/f6;->a(Lcom/android/tools/r8/graph/M2;)V

    .line 149
    iget-object v7, p1, Lcom/android/tools/r8/graph/f6;->c:Lcom/android/tools/r8/internal/Zs0;

    .line 150
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    :goto_4
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/RR;Ljava/nio/ShortBuffer;)V
    .locals 11

    move-object v0, p0

    .line 246
    iget-object v1, v0, Lcom/android/tools/r8/graph/J0;->j:[Lcom/android/tools/r8/internal/Np;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    .line 247
    invoke-virtual/range {v4 .. v10}, Lcom/android/tools/r8/internal/Np;->a(Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/RR;Ljava/nio/ShortBuffer;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/dex/M;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/RR;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const/4 v1, 0x0

    .line 206
    iput-object v1, v0, Lcom/android/tools/r8/graph/J0;->k:Lcom/android/tools/r8/graph/L2;

    .line 207
    iget-object v10, v0, Lcom/android/tools/r8/graph/J0;->j:[Lcom/android/tools/r8/internal/Np;

    array-length v11, v10

    const/4 v12, 0x0

    move v13, v12

    :goto_0
    if-ge v13, v11, :cond_a

    aget-object v14, v10, v13

    .line 208
    sget-boolean v15, Lcom/android/tools/r8/graph/J0;->o:Z

    if-nez v15, :cond_1

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    instance-of v1, v14, Lcom/android/tools/r8/internal/vq;

    if-nez v1, :cond_0

    goto :goto_1

    .line 210
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    :goto_1
    move-object v1, v14

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    .line 211
    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/internal/Np;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/dex/M;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/RR;)V

    .line 212
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/Np;->D()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 213
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/Np;->e()Lcom/android/tools/r8/internal/ko;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/ko;->O()Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    if-nez v15, :cond_3

    if-eqz v1, :cond_2

    goto :goto_2

    .line 214
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 215
    :cond_3
    :goto_2
    iget-object v2, v0, Lcom/android/tools/r8/graph/J0;->k:Lcom/android/tools/r8/graph/L2;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/graph/L2;->a(Lcom/android/tools/r8/graph/L2;)I

    move-result v2

    if-gez v2, :cond_9

    .line 216
    :cond_4
    iput-object v1, v0, Lcom/android/tools/r8/graph/J0;->k:Lcom/android/tools/r8/graph/L2;

    goto :goto_4

    .line 217
    :cond_5
    instance-of v1, v14, Lcom/android/tools/r8/internal/lo;

    if-eqz v1, :cond_9

    .line 218
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/Np;->f()Lcom/android/tools/r8/internal/lo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/lo;->O()Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    if-nez v15, :cond_7

    if-eqz v1, :cond_6

    goto :goto_3

    .line 219
    :cond_6
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 220
    :cond_7
    :goto_3
    iget-object v2, v0, Lcom/android/tools/r8/graph/J0;->k:Lcom/android/tools/r8/graph/L2;

    if-eqz v2, :cond_8

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/graph/L2;->a(Lcom/android/tools/r8/graph/L2;)I

    move-result v2

    if-gez v2, :cond_9

    .line 221
    :cond_8
    iput-object v1, v0, Lcom/android/tools/r8/graph/J0;->k:Lcom/android/tools/r8/graph/L2;

    :cond_9
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 222
    :cond_a
    iget-object v1, v0, Lcom/android/tools/r8/graph/J0;->l:Lcom/android/tools/r8/graph/W0;

    if-eqz v1, :cond_b

    .line 223
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/graph/J0;->u()Lcom/android/tools/r8/graph/Z0;

    move-result-object v1

    invoke-interface {v1, v7, v8, v9}, Lcom/android/tools/r8/graph/Z0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/dex/M;)V

    .line 224
    :cond_b
    iget-object v1, v0, Lcom/android/tools/r8/graph/J0;->i:[Lcom/android/tools/r8/graph/J0$b;

    array-length v2, v1

    move v3, v12

    :goto_5
    if-ge v3, v2, :cond_d

    aget-object v4, v1, v3

    .line 225
    iget-object v4, v4, Lcom/android/tools/r8/graph/J0$b;->b:[Lcom/android/tools/r8/graph/J0$b$a;

    .line 226
    array-length v5, v4

    move v6, v12

    :goto_6
    if-ge v6, v5, :cond_c

    aget-object v10, v4, v6

    .line 227
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v11

    .line 229
    iget-object v10, v10, Lcom/android/tools/r8/graph/J0$b$a;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v11, v8, v10}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v10

    .line 230
    invoke-virtual {v10, v7, v9}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_d
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/rA;)V
    .locals 2

    .line 127
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/J0;->m()Lcom/android/tools/r8/internal/Nq0;

    move-result-object v0

    check-cast p1, Lcom/android/tools/r8/internal/tA;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    new-instance v1, Lcom/android/tools/r8/internal/sA;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/sA;-><init>(Ljava/lang/Object;Lcom/android/tools/r8/internal/tA;)V

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/Nq0;->a(Lcom/android/tools/r8/internal/Pq0;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/H5;)I
    .locals 0

    .line 2
    iget p1, p0, Lcom/android/tools/r8/graph/J0;->f:I

    return p1
.end method

.method public final c(Lcom/android/tools/r8/graph/H5;)V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/graph/J0;->j:[Lcom/android/tools/r8/internal/Np;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_9

    aget-object v3, v0, v2

    .line 3
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Np;->n()Lcom/android/tools/r8/graph/D0;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v3

    .line 5
    sget-boolean v6, Lcom/android/tools/r8/graph/D0;->l:Z

    if-nez v6, :cond_1

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_1
    if-nez v6, :cond_3

    if-ltz v3, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_2
    if-nez v6, :cond_5

    .line 7
    iget-object v7, v4, Lcom/android/tools/r8/graph/D0;->j:Lcom/android/tools/r8/graph/A2;

    if-nez v7, :cond_4

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_3
    if-nez v6, :cond_7

    .line 8
    iget v6, v4, Lcom/android/tools/r8/graph/D0;->k:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_6

    goto :goto_4

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_7
    :goto_4
    iput-object v5, v4, Lcom/android/tools/r8/graph/D0;->j:Lcom/android/tools/r8/graph/A2;

    .line 10
    iput v3, v4, Lcom/android/tools/r8/graph/D0;->k:I

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_9
    return-void
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 0

    .line 11
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/ev;->a(Lcom/android/tools/r8/internal/ev;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final k0()I
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/graph/J0;->f:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/tools/r8/graph/J0;->e:I

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v0

    iget v0, p0, Lcom/android/tools/r8/graph/J0;->g:I

    mul-int/lit8 v0, v0, 0x5

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/tools/r8/graph/J0;->j:[Lcom/android/tools/r8/internal/Np;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/tools/r8/graph/J0;->l:Lcom/android/tools/r8/graph/W0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0xb

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/tools/r8/graph/J0;->h:[Lcom/android/tools/r8/graph/J0$a;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/tools/r8/graph/J0;->i:[Lcom/android/tools/r8/graph/J0$b;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x11

    add-int/2addr v0, v1

    return v0
.end method

.method public final l()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final m()Lcom/android/tools/r8/internal/Nq0;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/graph/L8;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/L8;-><init>()V

    return-object v0
.end method

.method public final m0()Lcom/android/tools/r8/graph/f3;
    .locals 0

    return-object p0
.end method

.method public o()[Lcom/android/tools/r8/graph/J0$a;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/J0;->h:[Lcom/android/tools/r8/graph/J0$a;

    return-object v0
.end method

.method public final q0()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/J0;->Y()I

    move-result v0

    return v0
.end method

.method public final r()[Lcom/android/tools/r8/graph/J0$b;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/J0;->i:[Lcom/android/tools/r8/graph/J0$b;

    return-object v0
.end method

.method public final s0()Z
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/graph/J0;->j:[Lcom/android/tools/r8/internal/Np;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    instance-of v4, v4, Lcom/android/tools/r8/internal/Eq;

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/android/tools/r8/internal/vk0;->b:Lcom/android/tools/r8/internal/vk0;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/graph/J0;->a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/vk0;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Lcom/android/tools/r8/graph/Z0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/J0;->m:Lcom/android/tools/r8/graph/Z0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/graph/J0;->l:Lcom/android/tools/r8/graph/W0;

    invoke-static {v0}, Lcom/android/tools/r8/graph/W0;->a(Lcom/android/tools/r8/graph/W0;)Lcom/android/tools/r8/graph/Z0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/J0;->m:Lcom/android/tools/r8/graph/Z0;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/J0;->m:Lcom/android/tools/r8/graph/Z0;

    return-object v0
.end method

.method public final v0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final w0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public x0()Z
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/graph/J0;->j:[Lcom/android/tools/r8/internal/Np;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    aget-object v0, v0, v2

    instance-of v0, v0, Lcom/android/tools/r8/internal/Nr;

    if-eqz v0, :cond_0

    return v3

    :cond_0
    return v2
.end method
