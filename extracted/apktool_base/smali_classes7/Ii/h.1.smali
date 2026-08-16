.class public LIi/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/D;
.implements Lorg/bouncycastle/util/n;
.implements LBi/a0;


# static fields
.field public static final A:I = 0x10

.field public static final B:I = 0x20

.field public static final C:I = 0x40

.field public static final D:I = 0x0

.field public static final E:I = 0x1

.field public static final F:I = 0x2

.field public static final G:I = 0x3

.field public static final H:I = 0x4

.field public static final I:I = 0x5

.field public static final J:I = 0x6

.field public static final K:I = 0x7

.field public static final L:I = 0x8

.field public static final M:I = 0x9

.field public static final N:I = 0xa

.field public static final O:I = 0xb

.field public static final P:I = 0xc

.field public static final Q:I = 0xd

.field public static final R:I = 0xe

.field public static final S:I = 0xf

.field public static final T:[B

.field public static final U:[I

.field public static final r:Ljava/lang/String; = "Already outputting"

.field public static final s:I = 0x8

.field public static final t:I = 0x7

.field public static final u:I = 0x40

.field public static final v:I = 0x400

.field public static final w:I = 0x1

.field public static final x:I = 0x2

.field public static final y:I = 0x4

.field public static final z:I = 0x8


# instance fields
.field public final a:[B

.field public final b:[I

.field public final c:[I

.field public final d:[I

.field public final e:[I

.field public final f:[B

.field public final g:Ljava/util/Stack;

.field public final h:I

.field public i:Z

.field public j:J

.field public k:I

.field public l:I

.field public m:I

.field public n:J

.field public o:I

.field public p:I

.field public final q:LBi/o;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    sput-object v1, LIi/h;->T:[B

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, LIi/h;->U:[I

    return-void

    nop

    :array_0
    .array-data 1
        0x2t
        0x6t
        0x3t
        0xat
        0x7t
        0x0t
        0x4t
        0xdt
        0x1t
        0xbt
        0xct
        0x5t
        0x9t
        0xet
        0xft
        0x8t
    .end array-data

    :array_1
    .array-data 4
        0x6a09e667
        -0x4498517b
        0x3c6ef372
        -0x5ab00ac6
        0x510e527f
        -0x64fa9774
        0x1f83d9ab
        0x5be0cd19
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x100

    .line 1
    invoke-direct {p0, v0}, LIi/h;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    mul-int/lit8 p1, p1, 0x8

    .line 2
    :goto_0
    sget-object v0, LBi/o;->ANY:LBi/o;

    invoke-direct {p0, p1, v0}, LIi/h;-><init>(ILBi/o;)V

    return-void
.end method

.method public constructor <init>(ILBi/o;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, LIi/h;->a:[B

    const/16 v0, 0x8

    new-array v1, v0, [I

    iput-object v1, p0, LIi/h;->b:[I

    new-array v1, v0, [I

    iput-object v1, p0, LIi/h;->c:[I

    const/16 v1, 0x10

    new-array v2, v1, [I

    iput-object v2, p0, LIi/h;->d:[I

    new-array v2, v1, [I

    iput-object v2, p0, LIi/h;->e:[I

    new-array v1, v1, [B

    iput-object v1, p0, LIi/h;->f:[B

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, LIi/h;->g:Ljava/util/Stack;

    iput-object p2, p0, LIi/h;->q:LBi/o;

    div-int/2addr p1, v0

    iput p1, p0, LIi/h;->h:I

    invoke-virtual {p0}, LIi/h;->f()I

    move-result p1

    mul-int/2addr p1, v0

    invoke-static {p0, p1, p2}, LIi/Z;->a(LBi/y;ILBi/o;)LBi/n;

    move-result-object p1

    invoke-static {p1}, LBi/r;->a(LBi/n;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, LIi/h;->o(LXi/d;)V

    return-void
.end method

.method public constructor <init>(LIi/h;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, LIi/h;->a:[B

    const/16 v0, 0x8

    new-array v1, v0, [I

    iput-object v1, p0, LIi/h;->b:[I

    new-array v0, v0, [I

    iput-object v0, p0, LIi/h;->c:[I

    const/16 v0, 0x10

    new-array v1, v0, [I

    iput-object v1, p0, LIi/h;->d:[I

    new-array v1, v0, [I

    iput-object v1, p0, LIi/h;->e:[I

    new-array v0, v0, [B

    iput-object v0, p0, LIi/h;->f:[B

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, LIi/h;->g:Ljava/util/Stack;

    iget v0, p1, LIi/h;->h:I

    iput v0, p0, LIi/h;->h:I

    iget-object v0, p1, LIi/h;->q:LBi/o;

    iput-object v0, p0, LIi/h;->q:LBi/o;

    invoke-virtual {p0, p1}, LIi/h;->j(Lorg/bouncycastle/util/n;)V

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 4

    :goto_0
    iget-object v0, p0, LIi/h;->g:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LIi/h;->g:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iget-object v1, p0, LIi/h;->e:[I

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, LIi/h;->c:[I

    iget-object v1, p0, LIi/h;->e:[I

    invoke-static {v0, v2, v1, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, LIi/h;->v()V

    iget-object v0, p0, LIi/h;->g:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LIi/h;->C()V

    :cond_0
    invoke-virtual {p0}, LIi/h;->k()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final B()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LIi/h;->n:J

    const/4 v0, 0x0

    iput v0, p0, LIi/h;->o:I

    return-void
.end method

.method public final C()V
    .locals 4

    iget-object v0, p0, LIi/h;->d:[I

    const/16 v1, 0xf

    aget v2, v0, v1

    const/16 v3, 0x8

    or-int/2addr v2, v3

    aput v2, v0, v1

    iput v2, p0, LIi/h;->l:I

    const/16 v1, 0xe

    aget v1, v0, v1

    iput v1, p0, LIi/h;->m:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, LIi/h;->n:J

    const/4 v1, 0x1

    iput-boolean v1, p0, LIi/h;->i:Z

    const-wide/16 v1, -0x1

    iput-wide v1, p0, LIi/h;->j:J

    const/4 v1, 0x0

    iget-object v2, p0, LIi/h;->c:[I

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final a()V
    .locals 7

    iget-boolean v0, p0, LIi/h;->i:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, LIi/h;->d:[I

    aget v4, v3, v0

    add-int/lit8 v5, v0, 0x8

    aget v6, v3, v5

    xor-int/2addr v4, v6

    aput v4, v3, v0

    aget v4, v3, v5

    iget-object v6, p0, LIi/h;->c:[I

    aget v6, v6, v0

    xor-int/2addr v4, v6

    aput v4, v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, LIi/h;->d:[I

    iget-object v1, p0, LIi/h;->a:[B

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/p;->o([I[BI)V

    iput v2, p0, LIi/h;->p:I

    goto :goto_2

    :cond_1
    :goto_1
    if-ge v2, v1, :cond_2

    iget-object v0, p0, LIi/h;->c:[I

    iget-object v3, p0, LIi/h;->d:[I

    aget v4, v3, v2

    add-int/lit8 v5, v2, 0x8

    aget v3, v3, v5

    xor-int/2addr v3, v4

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "BLAKE3"

    return-object v0
.end method

.method public c([BI)I
    .locals 1

    invoke-virtual {p0}, LIi/h;->f()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, LIi/h;->e([BII)I

    move-result p1

    return p1
.end method

.method public copy()Lorg/bouncycastle/util/n;
    .locals 1

    new-instance v0, LIi/h;

    invoke-direct {v0, p0}, LIi/h;-><init>(LIi/h;)V

    return-object v0
.end method

.method public final d()V
    .locals 8

    iget-wide v0, p0, LIi/h;->n:J

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/16 v3, 0x8

    if-lez v2, :cond_1

    const-wide/16 v4, 0x1

    and-long v6, v0, v4

    cmp-long v2, v6, v4

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, LIi/h;->g:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iget-object v4, p0, LIi/h;->e:[I

    const/4 v5, 0x0

    invoke-static {v2, v5, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, LIi/h;->c:[I

    iget-object v4, p0, LIi/h;->e:[I

    invoke-static {v2, v5, v4, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, LIi/h;->v()V

    invoke-virtual {p0}, LIi/h;->k()V

    const/4 v2, 0x1

    shr-long/2addr v0, v2

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, LIi/h;->g:Ljava/util/Stack;

    iget-object v1, p0, LIi/h;->c:[I

    invoke-static {v1, v3}, Lorg/bouncycastle/util/a;->S([II)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public e([BII)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, LIi/h;->h([BII)I

    move-result p1

    invoke-virtual {p0}, LIi/h;->reset()V

    return p1
.end method

.method public f()I
    .locals 1

    iget v0, p0, LIi/h;->h:I

    return v0
.end method

.method public h([BII)I
    .locals 5

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_5

    iget-boolean v0, p0, LIi/h;->i:Z

    if-nez v0, :cond_0

    iget v0, p0, LIi/h;->p:I

    invoke-virtual {p0, v0}, LIi/h;->m(I)V

    :cond_0
    if-ltz p3, :cond_4

    iget-wide v0, p0, LIi/h;->j:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    int-to-long v2, p3

    cmp-long v0, v2, v0

    if-gtz v0, :cond_4

    :cond_1
    iget v0, p0, LIi/h;->p:I

    const/16 v1, 0x40

    if-ge v0, v1, :cond_2

    rsub-int/lit8 v0, v0, 0x40

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, LIi/h;->a:[B

    iget v3, p0, LIi/h;->p:I

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, LIi/h;->p:I

    add-int/2addr v2, v0

    iput v2, p0, LIi/h;->p:I

    add-int/2addr p2, v0

    sub-int v0, p3, v0

    goto :goto_0

    :cond_2
    move v0, p3

    :goto_0
    if-lez v0, :cond_3

    invoke-virtual {p0}, LIi/h;->x()V

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, LIi/h;->a:[B

    const/4 v4, 0x0

    invoke-static {v3, v4, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, LIi/h;->p:I

    add-int/2addr v3, v2

    iput v3, p0, LIi/h;->p:I

    add-int/2addr p2, v2

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_3
    iget-wide p1, p0, LIi/h;->j:J

    int-to-long v0, p3

    sub-long/2addr p1, v0

    iput-wide p1, p0, LIi/h;->j:J

    return p3

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Insufficient bytes remaining"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method public j(Lorg/bouncycastle/util/n;)V
    .locals 4

    check-cast p1, LIi/h;

    iget-wide v0, p1, LIi/h;->n:J

    iput-wide v0, p0, LIi/h;->n:J

    iget v0, p1, LIi/h;->o:I

    iput v0, p0, LIi/h;->o:I

    iget v0, p1, LIi/h;->k:I

    iput v0, p0, LIi/h;->k:I

    iget-boolean v0, p1, LIi/h;->i:Z

    iput-boolean v0, p0, LIi/h;->i:Z

    iget-wide v0, p1, LIi/h;->j:J

    iput-wide v0, p0, LIi/h;->j:J

    iget v0, p1, LIi/h;->l:I

    iput v0, p0, LIi/h;->l:I

    iget v0, p1, LIi/h;->m:I

    iput v0, p0, LIi/h;->m:I

    iget-object v0, p1, LIi/h;->c:[I

    iget-object v1, p0, LIi/h;->c:[I

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, LIi/h;->b:[I

    iget-object v1, p0, LIi/h;->b:[I

    array-length v2, v1

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, LIi/h;->e:[I

    iget-object v1, p0, LIi/h;->e:[I

    array-length v2, v1

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, LIi/h;->g:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    iget-object v0, p1, LIi/h;->g:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LIi/h;->g:Ljava/util/Stack;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    invoke-static {v2}, Lorg/bouncycastle/util/a;->s([I)[I

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p1, LIi/h;->a:[B

    iget-object v1, p0, LIi/h;->a:[B

    array-length v2, v1

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p1, LIi/h;->p:I

    iput p1, p0, LIi/h;->p:I

    return-void
.end method

.method public final k()V
    .locals 2

    invoke-virtual {p0}, LIi/h;->q()V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    invoke-virtual {p0}, LIi/h;->y()V

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, LIi/h;->z()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LIi/h;->a()V

    return-void
.end method

.method public final l([BI)V
    .locals 2

    const/16 v0, 0x40

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, LIi/h;->p(IZ)V

    invoke-virtual {p0, p1, p2}, LIi/h;->t([BI)V

    invoke-virtual {p0}, LIi/h;->k()V

    iget p1, p0, LIi/h;->o:I

    if-nez p1, :cond_0

    invoke-virtual {p0}, LIi/h;->d()V

    :cond_0
    return-void
.end method

.method public final m(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, LIi/h;->p(IZ)V

    iget-object p1, p0, LIi/h;->a:[B

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LIi/h;->t([BI)V

    invoke-virtual {p0}, LIi/h;->k()V

    invoke-virtual {p0}, LIi/h;->A()V

    return-void
.end method

.method public final n()V
    .locals 4

    iget-wide v0, p0, LIi/h;->n:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, LIi/h;->n:J

    const/4 v0, 0x0

    iput v0, p0, LIi/h;->o:I

    return-void
.end method

.method public o(LXi/d;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, LXi/d;->d()[B

    move-result-object v1

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, LXi/d;->c()[B

    move-result-object v0

    :goto_1
    invoke-virtual {p0}, LIi/h;->reset()V

    const/4 p1, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, LIi/h;->r([B)V

    invoke-static {v1, p1}, Lorg/bouncycastle/util/a;->e0([BB)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, LIi/h;->u()V

    if-eqz v0, :cond_3

    const/16 v1, 0x20

    iput v1, p0, LIi/h;->k:I

    array-length v1, v0

    invoke-virtual {p0, v0, p1, v1}, LIi/h;->update([BII)V

    iget-object v0, p0, LIi/h;->a:[B

    invoke-virtual {p0, v0, p1}, LIi/h;->c([BI)I

    invoke-virtual {p0}, LIi/h;->s()V

    invoke-virtual {p0}, LIi/h;->reset()V

    goto :goto_2

    :cond_3
    iput p1, p0, LIi/h;->k:I

    :goto_2
    return-void
.end method

.method public final p(IZ)V
    .locals 6

    iget v0, p0, LIi/h;->o:I

    if-nez v0, :cond_0

    iget-object v0, p0, LIi/h;->b:[I

    goto :goto_0

    :cond_0
    iget-object v0, p0, LIi/h;->c:[I

    :goto_0
    iget-object v1, p0, LIi/h;->d:[I

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v0, LIi/h;->U:[I

    iget-object v1, p0, LIi/h;->d:[I

    const/4 v4, 0x4

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, LIi/h;->d:[I

    iget-wide v3, p0, LIi/h;->n:J

    long-to-int v1, v3

    const/16 v5, 0xc

    aput v1, v0, v5

    const/16 v1, 0x20

    shr-long/2addr v3, v1

    long-to-int v1, v3

    const/16 v3, 0xd

    aput v1, v0, v3

    const/16 v1, 0xe

    aput p1, v0, v1

    iget v1, p0, LIi/h;->k:I

    iget v3, p0, LIi/h;->o:I

    if-nez v3, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    add-int/2addr v1, v4

    const/4 v4, 0x2

    if-eqz p2, :cond_2

    move v2, v4

    :cond_2
    add-int/2addr v1, v2

    const/16 v2, 0xf

    aput v1, v0, v2

    add-int/2addr v3, p1

    iput v3, p0, LIi/h;->o:I

    const/16 p1, 0x400

    if-lt v3, p1, :cond_3

    invoke-virtual {p0}, LIi/h;->n()V

    iget-object p1, p0, LIi/h;->d:[I

    aget v0, p1, v2

    or-int/2addr v0, v4

    aput v0, p1, v2

    :cond_3
    if-eqz p2, :cond_4

    iget-object p1, p0, LIi/h;->g:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, LIi/h;->C()V

    :cond_4
    return-void
.end method

.method public final q()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LIi/h;->f:[B

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aput-byte v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final r([B)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, LIi/h;->b:[I

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/util/p;->s([BI[I)V

    const/16 p1, 0x10

    iput p1, p0, LIi/h;->k:I

    return-void
.end method

.method public reset()V
    .locals 2

    invoke-virtual {p0}, LIi/h;->B()V

    const/4 v0, 0x0

    iput v0, p0, LIi/h;->p:I

    iput-boolean v0, p0, LIi/h;->i:Z

    iget-object v1, p0, LIi/h;->a:[B

    invoke-static {v1, v0}, Lorg/bouncycastle/util/a;->e0([BB)V

    return-void
.end method

.method public final s()V
    .locals 4

    iget-object v0, p0, LIi/h;->d:[I

    iget-object v1, p0, LIi/h;->b:[I

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x40

    iput v0, p0, LIi/h;->k:I

    return-void
.end method

.method public final t([BI)V
    .locals 1

    iget-object v0, p0, LIi/h;->e:[I

    invoke-static {p1, p2, v0}, Lorg/bouncycastle/util/p;->s([BI[I)V

    return-void
.end method

.method public final u()V
    .locals 4

    sget-object v0, LIi/h;->U:[I

    iget-object v1, p0, LIi/h;->b:[I

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public update(B)V
    .locals 3

    .line 1
    iget-boolean v0, p0, LIi/h;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, LIi/h;->a:[B

    array-length v1, v0

    iget v2, p0, LIi/h;->p:I

    sub-int/2addr v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, LIi/h;->l([BI)V

    iget-object v0, p0, LIi/h;->a:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/a;->e0([BB)V

    iput v1, p0, LIi/h;->p:I

    :cond_0
    iget-object v0, p0, LIi/h;->a:[B

    iget v1, p0, LIi/h;->p:I

    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LIi/h;->p:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already outputting"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public update([BII)V
    .locals 4

    if-eqz p1, :cond_5

    if-nez p3, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    iget-boolean v0, p0, LIi/h;->i:Z

    if-nez v0, :cond_4

    iget v0, p0, LIi/h;->p:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    rsub-int/lit8 v2, v0, 0x40

    if-lt v2, p3, :cond_1

    iget-object v1, p0, LIi/h;->a:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, LIi/h;->p:I

    add-int/2addr p1, p3

    :goto_0
    iput p1, p0, LIi/h;->p:I

    return-void

    :cond_1
    iget-object v3, p0, LIi/h;->a:[B

    invoke-static {p1, p2, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, LIi/h;->a:[B

    invoke-virtual {p0, v0, v1}, LIi/h;->l([BI)V

    iput v1, p0, LIi/h;->p:I

    iget-object v0, p0, LIi/h;->a:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/a;->e0([BB)V

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x40

    add-int/2addr v2, p2

    :goto_2
    if-ge v2, v0, :cond_3

    invoke-virtual {p0, p1, v2}, LIi/h;->l([BI)V

    add-int/lit8 v2, v2, 0x40

    goto :goto_2

    :cond_3
    sub-int/2addr p3, v2

    iget-object v0, p0, LIi/h;->a:[B

    add-int/2addr p2, p3

    invoke-static {p1, v2, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, LIi/h;->p:I

    add-int/2addr p1, p2

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already outputting"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_3
    return-void
.end method

.method public final v()V
    .locals 5

    iget-object v0, p0, LIi/h;->b:[I

    iget-object v1, p0, LIi/h;->d:[I

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v0, LIi/h;->U:[I

    iget-object v1, p0, LIi/h;->d:[I

    const/4 v4, 0x4

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, LIi/h;->d:[I

    const/16 v1, 0xc

    aput v2, v0, v1

    const/16 v1, 0xd

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x40

    aput v2, v0, v1

    iget v1, p0, LIi/h;->k:I

    or-int/2addr v1, v4

    const/16 v2, 0xf

    aput v1, v0, v2

    return-void
.end method

.method public final w(IIIII)V
    .locals 6

    shl-int/lit8 p1, p1, 0x1

    iget-object v0, p0, LIi/h;->d:[I

    aget v1, v0, p2

    aget v2, v0, p3

    iget-object v3, p0, LIi/h;->e:[I

    iget-object v4, p0, LIi/h;->f:[B

    add-int/lit8 v5, p1, 0x1

    aget-byte p1, v4, p1

    aget p1, v3, p1

    add-int/2addr v2, p1

    add-int/2addr v1, v2

    aput v1, v0, p2

    aget p1, v0, p5

    xor-int/2addr p1, v1

    const/16 v1, 0x10

    invoke-static {p1, v1}, Lorg/bouncycastle/util/k;->i(II)I

    move-result p1

    aput p1, v0, p5

    iget-object p1, p0, LIi/h;->d:[I

    aget v0, p1, p4

    aget v1, p1, p5

    add-int/2addr v0, v1

    aput v0, p1, p4

    aget v1, p1, p3

    xor-int/2addr v0, v1

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v0

    aput v0, p1, p3

    iget-object p1, p0, LIi/h;->d:[I

    aget v0, p1, p2

    aget v1, p1, p3

    iget-object v2, p0, LIi/h;->e:[I

    iget-object v3, p0, LIi/h;->f:[B

    aget-byte v3, v3, v5

    aget v2, v2, v3

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    aput v0, p1, p2

    aget p2, p1, p5

    xor-int/2addr p2, v0

    const/16 v0, 0x8

    invoke-static {p2, v0}, Lorg/bouncycastle/util/k;->i(II)I

    move-result p2

    aput p2, p1, p5

    iget-object p1, p0, LIi/h;->d:[I

    aget p2, p1, p4

    aget p5, p1, p5

    add-int/2addr p2, p5

    aput p2, p1, p4

    aget p4, p1, p3

    xor-int/2addr p2, p4

    const/4 p4, 0x7

    invoke-static {p2, p4}, Lorg/bouncycastle/util/k;->i(II)I

    move-result p2

    aput p2, p1, p3

    return-void
.end method

.method public final x()V
    .locals 5

    iget-wide v0, p0, LIi/h;->n:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, LIi/h;->n:J

    iget-object v0, p0, LIi/h;->c:[I

    iget-object v1, p0, LIi/h;->d:[I

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v0, LIi/h;->U:[I

    iget-object v1, p0, LIi/h;->d:[I

    const/4 v4, 0x4

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, LIi/h;->d:[I

    iget-wide v1, p0, LIi/h;->n:J

    long-to-int v3, v1

    const/16 v4, 0xc

    aput v3, v0, v4

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    const/16 v2, 0xd

    aput v1, v0, v2

    const/16 v1, 0xe

    iget v2, p0, LIi/h;->m:I

    aput v2, v0, v1

    const/16 v1, 0xf

    iget v2, p0, LIi/h;->l:I

    aput v2, v0, v1

    invoke-virtual {p0}, LIi/h;->k()V

    return-void
.end method

.method public final y()V
    .locals 12

    const/16 v4, 0x8

    const/16 v5, 0xc

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, LIi/h;->w(IIIII)V

    const/16 v10, 0x9

    const/16 v11, 0xd

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x5

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, LIi/h;->w(IIIII)V

    const/16 v4, 0xa

    const/16 v5, 0xe

    const/4 v1, 0x2

    const/4 v2, 0x2

    const/4 v3, 0x6

    invoke-virtual/range {v0 .. v5}, LIi/h;->w(IIIII)V

    const/16 v10, 0xb

    const/16 v11, 0xf

    const/4 v7, 0x3

    const/4 v8, 0x3

    const/4 v9, 0x7

    invoke-virtual/range {v6 .. v11}, LIi/h;->w(IIIII)V

    const/16 v5, 0xf

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual/range {v0 .. v5}, LIi/h;->w(IIIII)V

    const/16 v11, 0xc

    const/4 v7, 0x5

    const/4 v8, 0x1

    const/4 v9, 0x6

    invoke-virtual/range {v6 .. v11}, LIi/h;->w(IIIII)V

    const/16 v4, 0x8

    const/16 v5, 0xd

    const/4 v1, 0x6

    const/4 v2, 0x2

    const/4 v3, 0x7

    invoke-virtual/range {v0 .. v5}, LIi/h;->w(IIIII)V

    const/16 v10, 0x9

    const/16 v11, 0xe

    const/4 v7, 0x7

    const/4 v8, 0x3

    const/4 v9, 0x4

    invoke-virtual/range {v6 .. v11}, LIi/h;->w(IIIII)V

    return-void
.end method

.method public final z()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LIi/h;->f:[B

    array-length v2, v1

    if-ge v0, v2, :cond_0

    sget-object v2, LIi/h;->T:[B

    aget-byte v3, v1, v0

    aget-byte v2, v2, v3

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    :cond_0
    return-void
.end method
