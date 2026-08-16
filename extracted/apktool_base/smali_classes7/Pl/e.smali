.class public LPl/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LBi/y;

.field public b:I

.field public c:I

.field public d:LQl/a;

.field public e:[B

.field public f:[B

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:[B

.field public m:[B


# direct methods
.method public constructor <init>(LBi/y;II)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, LPl/e;->j:I

    iput-object p1, p0, LPl/e;->a:LBi/y;

    new-instance v0, LQl/a;

    invoke-direct {v0, p1}, LQl/a;-><init>(LBi/y;)V

    iput-object v0, p0, LPl/e;->d:LQl/a;

    iget-object p1, p0, LPl/e;->a:LBi/y;

    invoke-interface {p1}, LBi/y;->f()I

    move-result p1

    iput p1, p0, LPl/e;->b:I

    shl-int/lit8 p1, p1, 0x3

    int-to-double v0, p1

    int-to-double v2, p2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    shl-int v0, p1, p2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, LPl/e;->b(I)I

    move-result v0

    int-to-double v4, v0

    div-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    add-int/2addr p1, v0

    iput p1, p0, LPl/e;->c:I

    shl-int p2, v1, p2

    iput p2, p0, LPl/e;->i:I

    sub-int/2addr p2, v1

    mul-int/2addr p2, p1

    add-int/2addr p2, v1

    add-int/2addr p2, p1

    int-to-double p1, p2

    int-to-double v0, p3

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, LPl/e;->k:I

    iget p1, p0, LPl/e;->b:I

    new-array p2, p1, [B

    iput-object p2, p0, LPl/e;->l:[B

    new-array p2, p1, [B

    iput-object p2, p0, LPl/e;->e:[B

    new-array p2, p1, [B

    iput-object p2, p0, LPl/e;->m:[B

    iget p2, p0, LPl/e;->c:I

    mul-int/2addr p1, p2

    new-array p1, p1, [B

    iput-object p1, p0, LPl/e;->f:[B

    return-void
.end method

.method public constructor <init>(LBi/y;II[B)V
    .locals 6

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, LPl/e;->j:I

    iput-object p1, p0, LPl/e;->a:LBi/y;

    new-instance v0, LQl/a;

    invoke-direct {v0, p1}, LQl/a;-><init>(LBi/y;)V

    iput-object v0, p0, LPl/e;->d:LQl/a;

    iget-object p1, p0, LPl/e;->a:LBi/y;

    invoke-interface {p1}, LBi/y;->f()I

    move-result p1

    iput p1, p0, LPl/e;->b:I

    shl-int/lit8 p1, p1, 0x3

    int-to-double v0, p1

    int-to-double v2, p2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    shl-int v0, p1, p2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, LPl/e;->b(I)I

    move-result v0

    int-to-double v4, v0

    div-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    add-int/2addr p1, v0

    iput p1, p0, LPl/e;->c:I

    shl-int p2, v1, p2

    iput p2, p0, LPl/e;->i:I

    sub-int/2addr p2, v1

    mul-int/2addr p2, p1

    add-int/2addr p2, v1

    add-int/2addr p2, p1

    int-to-double p1, p2

    int-to-double v0, p3

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, LPl/e;->k:I

    iget p1, p0, LPl/e;->b:I

    new-array p2, p1, [B

    iput-object p2, p0, LPl/e;->l:[B

    new-array p2, p1, [B

    iput-object p2, p0, LPl/e;->e:[B

    new-array p2, p1, [B

    iput-object p2, p0, LPl/e;->m:[B

    iget p2, p0, LPl/e;->c:I

    mul-int/2addr p1, p2

    new-array p1, p1, [B

    iput-object p1, p0, LPl/e;->f:[B

    invoke-virtual {p0, p4}, LPl/e;->e([B)V

    return-void
.end method

.method public constructor <init>(LBi/y;[[B[I)V
    .locals 8

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    aget v1, p3, v0

    iput v1, p0, LPl/e;->g:I

    const/4 v1, 0x1

    aget v2, p3, v1

    iput v2, p0, LPl/e;->h:I

    const/4 v2, 0x2

    aget v3, p3, v2

    iput v3, p0, LPl/e;->k:I

    const/4 v3, 0x3

    aget p3, p3, v3

    iput p3, p0, LPl/e;->j:I

    iput-object p1, p0, LPl/e;->a:LBi/y;

    new-instance p3, LQl/a;

    invoke-direct {p3, p1}, LQl/a;-><init>(LBi/y;)V

    iput-object p3, p0, LPl/e;->d:LQl/a;

    iget-object p1, p0, LPl/e;->a:LBi/y;

    invoke-interface {p1}, LBi/y;->f()I

    move-result p1

    iput p1, p0, LPl/e;->b:I

    shl-int/2addr p1, v3

    int-to-double v4, p1

    iget p1, p0, LPl/e;->j:I

    int-to-double v6, p1

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int p1, v4

    iget p3, p0, LPl/e;->j:I

    shl-int p3, p1, p3

    add-int/2addr p3, v1

    invoke-virtual {p0, p3}, LPl/e;->b(I)I

    move-result p3

    int-to-double v4, p3

    iget p3, p0, LPl/e;->j:I

    int-to-double v6, p3

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int p3, v4

    add-int/2addr p1, p3

    iput p1, p0, LPl/e;->c:I

    iget p1, p0, LPl/e;->j:I

    shl-int p1, v1, p1

    iput p1, p0, LPl/e;->i:I

    aget-object p1, p2, v0

    iput-object p1, p0, LPl/e;->m:[B

    aget-object p1, p2, v1

    iput-object p1, p0, LPl/e;->l:[B

    aget-object p1, p2, v2

    iput-object p1, p0, LPl/e;->f:[B

    aget-object p1, p2, v3

    iput-object p1, p0, LPl/e;->e:[B

    return-void
.end method

.method public constructor <init>(LPl/e;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, LPl/e;->a:LBi/y;

    iput-object v0, p0, LPl/e;->a:LBi/y;

    iget v0, p1, LPl/e;->b:I

    iput v0, p0, LPl/e;->b:I

    iget v0, p1, LPl/e;->c:I

    iput v0, p0, LPl/e;->c:I

    iget-object v0, p1, LPl/e;->d:LQl/a;

    iput-object v0, p0, LPl/e;->d:LQl/a;

    iget-object v0, p1, LPl/e;->e:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    iput-object v0, p0, LPl/e;->e:[B

    iget-object v0, p1, LPl/e;->f:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    iput-object v0, p0, LPl/e;->f:[B

    iget v0, p1, LPl/e;->g:I

    iput v0, p0, LPl/e;->g:I

    iget v0, p1, LPl/e;->h:I

    iput v0, p0, LPl/e;->h:I

    iget v0, p1, LPl/e;->i:I

    iput v0, p0, LPl/e;->i:I

    iget v0, p1, LPl/e;->j:I

    iput v0, p0, LPl/e;->j:I

    iget v0, p1, LPl/e;->k:I

    iput v0, p0, LPl/e;->k:I

    iget-object v0, p1, LPl/e;->l:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    iput-object v0, p0, LPl/e;->l:[B

    iget-object p1, p1, LPl/e;->m:[B

    invoke-static {p1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, LPl/e;->m:[B

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 1

    iget-object v0, p0, LPl/e;->e:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public final b(I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    :goto_0
    if-ge v1, p1, :cond_0

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public c()[[B
    .locals 4

    iget-object v0, p0, LPl/e;->m:[B

    iget-object v1, p0, LPl/e;->l:[B

    iget-object v2, p0, LPl/e;->f:[B

    iget-object v3, p0, LPl/e;->e:[B

    filled-new-array {v0, v1, v2, v3}, [[B

    move-result-object v0

    return-object v0
.end method

.method public d()[I
    .locals 4

    iget v0, p0, LPl/e;->g:I

    iget v1, p0, LPl/e;->h:I

    iget v2, p0, LPl/e;->k:I

    iget v3, p0, LPl/e;->j:I

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    return-object v0
.end method

.method public e([B)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, LPl/e;->g:I

    iput v0, p0, LPl/e;->h:I

    iget v1, p0, LPl/e;->b:I

    new-array v1, v1, [B

    iget-object v2, p0, LPl/e;->l:[B

    array-length v2, v2

    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, LPl/e;->d:LQl/a;

    invoke-virtual {p1, v1}, LQl/a;->c([B)[B

    move-result-object p1

    iput-object p1, p0, LPl/e;->l:[B

    return-void
.end method

.method public f()LPl/e;
    .locals 1

    new-instance v0, LPl/e;

    invoke-direct {v0, p0}, LPl/e;-><init>(LPl/e;)V

    invoke-virtual {v0}, LPl/e;->g()V

    return-object v0
.end method

.method public final g()V
    .locals 7

    iget-object v0, p0, LPl/e;->a:LBi/y;

    invoke-interface {v0}, LBi/y;->f()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, LPl/e;->k:I

    add-int/lit16 v3, v3, 0x2710

    if-ge v2, v3, :cond_4

    iget v3, p0, LPl/e;->g:I

    iget v4, p0, LPl/e;->c:I

    if-ne v3, v4, :cond_0

    iget v4, p0, LPl/e;->h:I

    iget v5, p0, LPl/e;->i:I

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_0

    iget-object v0, p0, LPl/e;->a:LBi/y;

    iget-object v2, p0, LPl/e;->f:[B

    array-length v3, v2

    invoke-interface {v0, v2, v1, v3}, LBi/y;->update([BII)V

    iget-object v0, p0, LPl/e;->a:LBi/y;

    invoke-interface {v0}, LBi/y;->f()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, LPl/e;->e:[B

    iget-object v2, p0, LPl/e;->a:LBi/y;

    invoke-interface {v2, v0, v1}, LBi/y;->c([BI)I

    return-void

    :cond_0
    if-eqz v3, :cond_2

    iget v4, p0, LPl/e;->h:I

    iget v5, p0, LPl/e;->i:I

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, LPl/e;->a:LBi/y;

    iget-object v4, p0, LPl/e;->m:[B

    array-length v5, v4

    invoke-interface {v3, v4, v1, v5}, LBi/y;->update([BII)V

    iput-object v0, p0, LPl/e;->m:[B

    iget-object v3, p0, LPl/e;->a:LBi/y;

    invoke-interface {v3, v0, v1}, LBi/y;->c([BI)I

    iget v3, p0, LPl/e;->h:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, LPl/e;->h:I

    iget v4, p0, LPl/e;->i:I

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_3

    iget-object v3, p0, LPl/e;->m:[B

    iget-object v4, p0, LPl/e;->f:[B

    iget v5, p0, LPl/e;->b:I

    iget v6, p0, LPl/e;->g:I

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v6, v5

    invoke-static {v3, v1, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, LPl/e;->g:I

    iput v1, p0, LPl/e;->h:I

    iget-object v3, p0, LPl/e;->d:LQl/a;

    iget-object v4, p0, LPl/e;->l:[B

    invoke-virtual {v3, v4}, LQl/a;->c([B)[B

    move-result-object v3

    iput-object v3, p0, LPl/e;->m:[B

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to updateLeaf in steps: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, LPl/e;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, LPl/e;->g:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, LPl/e;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const-string v0, ""

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x4

    const-string v4, " "

    if-ge v2, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LPl/e;->d()[I

    move-result-object v0

    aget v0, v0, v2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, LPl/e;->b:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, LPl/e;->c:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, LPl/e;->i:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, LPl/e;->c()[[B

    move-result-object v2

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v5, v2, v1

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/String;

    aget-object v6, v2, v1

    invoke-static {v6}, Lem/h;->h([B)[B

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "null "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method
