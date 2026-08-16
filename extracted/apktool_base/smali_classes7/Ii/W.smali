.class public LIi/W;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/D;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LIi/W$b;,
        LIi/W$c;
    }
.end annotation


# static fields
.field public static final i:I = 0x10

.field public static final j:I = 0x4


# instance fields
.field public a:Ljava/lang/String;

.field public final b:[I

.field public final c:[B

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public h:I


# direct methods
.method public constructor <init>(LIi/W$c;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, LIi/W;->c:[B

    const/4 v1, 0x0

    iput v1, p0, LIi/W;->h:I

    sget-object v1, LIi/W$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    const/16 v2, 0xc

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const-string p1, "ESCH-384"

    iput-object p1, p0, LIi/W;->a:Ljava/lang/String;

    const/16 p1, 0x30

    iput p1, p0, LIi/W;->d:I

    const/16 p1, 0x8

    iput p1, p0, LIi/W;->e:I

    iput v2, p0, LIi/W;->f:I

    iput v0, p0, LIi/W;->g:I

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid definition of SCHWAEMM instance"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p1, "ESCH-256"

    iput-object p1, p0, LIi/W;->a:Ljava/lang/String;

    const/16 p1, 0x20

    iput p1, p0, LIi/W;->d:I

    const/4 p1, 0x7

    iput p1, p0, LIi/W;->e:I

    const/16 p1, 0xb

    iput p1, p0, LIi/W;->f:I

    iput v2, p0, LIi/W;->g:I

    :goto_0
    iget p1, p0, LIi/W;->g:I

    new-array p1, p1, [I

    iput-object p1, p0, LIi/W;->b:[I

    return-void
.end method

.method public static a(I)I
    .locals 2

    const/16 v0, 0x10

    invoke-static {p0, v0}, Lorg/bouncycastle/util/k;->i(II)I

    move-result v0

    const v1, 0xffff

    and-int/2addr p0, v1

    xor-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LIi/W;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c([BI)I
    .locals 7

    array-length v0, p1

    iget v1, p0, LIi/W;->d:I

    sub-int/2addr v0, v1

    if-gt p2, v0, :cond_3

    iget v0, p0, LIi/W;->h:I

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    iget-object v3, p0, LIi/W;->b:[I

    iget v4, p0, LIi/W;->g:I

    shr-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, -0x1

    aget v5, v3, v4

    const/high16 v6, 0x1000000

    xor-int/2addr v5, v6

    aput v5, v3, v4

    iget-object v3, p0, LIi/W;->c:[B

    const/16 v4, -0x80

    aput-byte v4, v3, v0

    :goto_0
    iget v0, p0, LIi/W;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LIi/W;->h:I

    if-ge v0, v1, :cond_1

    iget-object v3, p0, LIi/W;->c:[B

    aput-byte v2, v3, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LIi/W;->b:[I

    iget v3, p0, LIi/W;->g:I

    shr-int/lit8 v3, v3, 0x1

    add-int/lit8 v3, v3, -0x1

    aget v4, v0, v3

    const/high16 v5, 0x2000000

    xor-int/2addr v4, v5

    aput v4, v0, v3

    :cond_1
    iget-object v0, p0, LIi/W;->c:[B

    iget v3, p0, LIi/W;->f:I

    invoke-virtual {p0, v0, v2, v3}, LIi/W;->d([BII)V

    iget-object v0, p0, LIi/W;->b:[I

    const/4 v3, 0x4

    invoke-static {v0, v2, v3, p1, p2}, Lorg/bouncycastle/util/p;->n([III[BI)V

    iget v0, p0, LIi/W;->g:I

    if-ne v0, v1, :cond_2

    invoke-static {}, LIi/W$b;->a()LIi/W$b;

    move-result-object v0

    iget-object v1, p0, LIi/W;->b:[I

    iget v4, p0, LIi/W;->e:I

    invoke-static {v0, v1, v4}, LLi/s0;->z(LIi/W$b;[II)V

    iget-object v0, p0, LIi/W;->b:[I

    add-int/lit8 v1, p2, 0x10

    invoke-static {v0, v2, v3, p1, v1}, Lorg/bouncycastle/util/p;->n([III[BI)V

    invoke-static {}, LIi/W$b;->a()LIi/W$b;

    move-result-object v0

    iget-object v1, p0, LIi/W;->b:[I

    iget v4, p0, LIi/W;->e:I

    invoke-static {v0, v1, v4}, LLi/s0;->z(LIi/W$b;[II)V

    iget-object v0, p0, LIi/W;->b:[I

    add-int/lit8 p2, p2, 0x20

    invoke-static {v0, v2, v3, p1, p2}, Lorg/bouncycastle/util/p;->n([III[BI)V

    goto :goto_1

    :cond_2
    invoke-static {}, LIi/W$b;->a()LIi/W$b;

    move-result-object v0

    iget-object v4, p0, LIi/W;->b:[I

    iget v5, p0, LIi/W;->e:I

    invoke-static {v0, v4, v5}, LLi/s0;->x(LIi/W$b;[II)V

    iget-object v0, p0, LIi/W;->b:[I

    add-int/2addr p2, v1

    invoke-static {v0, v2, v3, p1, p2}, Lorg/bouncycastle/util/p;->n([III[BI)V

    :goto_1
    invoke-virtual {p0}, LIi/W;->reset()V

    iget p1, p0, LIi/W;->d:I

    return p1

    :cond_3
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, LIi/W;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " input buffer too short"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d([BII)V
    .locals 7

    invoke-static {p1, p2}, Lorg/bouncycastle/util/p;->r([BI)I

    move-result v0

    add-int/lit8 v1, p2, 0x4

    invoke-static {p1, v1}, Lorg/bouncycastle/util/p;->r([BI)I

    move-result v1

    add-int/lit8 v2, p2, 0x8

    invoke-static {p1, v2}, Lorg/bouncycastle/util/p;->r([BI)I

    move-result v2

    add-int/lit8 p2, p2, 0xc

    invoke-static {p1, p2}, Lorg/bouncycastle/util/p;->r([BI)I

    move-result p1

    xor-int p2, v0, v2

    invoke-static {p2}, LIi/W;->a(I)I

    move-result p2

    xor-int v3, v1, p1

    invoke-static {v3}, LIi/W;->a(I)I

    move-result v3

    iget-object v4, p0, LIi/W;->b:[I

    const/4 v5, 0x0

    aget v6, v4, v5

    xor-int/2addr v0, v3

    xor-int/2addr v0, v6

    aput v0, v4, v5

    const/4 v0, 0x1

    aget v5, v4, v0

    xor-int/2addr v1, p2

    xor-int/2addr v1, v5

    aput v1, v4, v0

    const/4 v0, 0x2

    aget v1, v4, v0

    xor-int/2addr v2, v3

    xor-int/2addr v1, v2

    aput v1, v4, v0

    const/4 v0, 0x3

    aget v1, v4, v0

    xor-int/2addr p1, p2

    xor-int/2addr p1, v1

    aput p1, v4, v0

    const/4 p1, 0x4

    aget v0, v4, p1

    xor-int/2addr v0, v3

    aput v0, v4, p1

    const/4 p1, 0x5

    aget v0, v4, p1

    xor-int/2addr v0, p2

    aput v0, v4, p1

    iget p1, p0, LIi/W;->g:I

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    const/4 p1, 0x6

    aget v0, v4, p1

    xor-int/2addr v0, v3

    aput v0, v4, p1

    const/4 p1, 0x7

    aget v0, v4, p1

    xor-int/2addr p2, v0

    aput p2, v4, p1

    invoke-static {}, LIi/W$b;->a()LIi/W$b;

    move-result-object p1

    iget-object p2, p0, LIi/W;->b:[I

    invoke-static {p1, p2, p3}, LLi/s0;->z(LIi/W$b;[II)V

    goto :goto_0

    :cond_0
    invoke-static {}, LIi/W$b;->a()LIi/W$b;

    move-result-object p1

    iget-object p2, p0, LIi/W;->b:[I

    invoke-static {p1, p2, p3}, LLi/s0;->x(LIi/W$b;[II)V

    :goto_0
    return-void
.end method

.method public f()I
    .locals 1

    iget v0, p0, LIi/W;->d:I

    return v0
.end method

.method public i()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, LIi/W;->b:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/a;->i0([II)V

    iget-object v0, p0, LIi/W;->c:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/a;->e0([BB)V

    iput v1, p0, LIi/W;->h:I

    return-void
.end method

.method public update(B)V
    .locals 3

    .line 1
    iget v0, p0, LIi/W;->h:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LIi/W;->c:[B

    iget v1, p0, LIi/W;->e:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, LIi/W;->d([BII)V

    iput v2, p0, LIi/W;->h:I

    :cond_0
    iget-object v0, p0, LIi/W;->c:[B

    iget v1, p0, LIi/W;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, LIi/W;->h:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public update([BII)V
    .locals 4

    .line 2
    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_4

    const/4 v0, 0x1

    if-ge p3, v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, LIi/W;->h:I

    rsub-int/lit8 v1, v0, 0x10

    if-gt p3, v1, :cond_1

    iget-object v1, p0, LIi/W;->c:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, LIi/W;->h:I

    add-int/2addr p1, p3

    iput p1, p0, LIi/W;->h:I

    return-void

    :cond_1
    const/4 v2, 0x0

    if-lez v0, :cond_2

    iget-object v3, p0, LIi/W;->c:[B

    invoke-static {p1, p2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, LIi/W;->c:[B

    iget v3, p0, LIi/W;->e:I

    invoke-virtual {p0, v0, v2, v3}, LIi/W;->d([BII)V

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    sub-int v0, p3, v1

    const/16 v3, 0x10

    if-le v0, v3, :cond_3

    add-int v0, p2, v1

    iget v3, p0, LIi/W;->e:I

    invoke-virtual {p0, p1, v0, v3}, LIi/W;->d([BII)V

    add-int/lit8 v1, v1, 0x10

    goto :goto_0

    :cond_3
    add-int/2addr p2, v1

    iget-object p3, p0, LIi/W;->c:[B

    invoke-static {p1, p2, p3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, LIi/W;->h:I

    return-void

    :cond_4
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, LIi/W;->a:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " input buffer too short"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
