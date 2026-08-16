.class public Lkl/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final i:Ljava/util/logging/Logger;

.field public static final j:I = 0x20


# instance fields
.field public a:I

.field public b:[[B

.field public c:I

.field public d:[Z

.field public e:[Z

.field public f:I

.field public g:I

.field public h:Lkl/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lkl/s;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lkl/s;->i:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lkl/h;II)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkl/s;->h:Lkl/h;

    invoke-static {p2}, Lkl/t;->a(I)I

    move-result p1

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lkl/s;->a:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    shl-int p1, v1, p1

    sub-int/2addr p1, p2

    sub-int/2addr v0, p1

    iput v0, p0, Lkl/s;->f:I

    iput p2, p0, Lkl/s;->g:I

    iput p3, p0, Lkl/s;->c:I

    const/4 p1, 0x2

    new-array p1, p1, [I

    aput p3, p1, v1

    const/4 p2, 0x0

    aput v0, p1, p2

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[B

    iput-object p1, p0, Lkl/s;->b:[[B

    move p1, p2

    :goto_0
    iget v0, p0, Lkl/s;->f:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lkl/s;->b:[[B

    new-array v2, p3, [B

    aput-object v2, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-array p1, v0, [Z

    iput-object p1, p0, Lkl/s;->d:[Z

    new-array p1, v0, [Z

    iput-object p1, p0, Lkl/s;->e:[Z

    iget p3, p0, Lkl/s;->g:I

    sub-int p3, v0, p3

    invoke-static {p1, p3, v0, v1}, Lorg/bouncycastle/util/a;->q0([ZIIZ)V

    iget p1, p0, Lkl/s;->f:I

    iget p3, p0, Lkl/s;->g:I

    sub-int/2addr p1, p3

    :goto_1
    if-lez p1, :cond_3

    mul-int/lit8 p3, p1, 0x2

    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, v0}, Lkl/s;->e(I)Z

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 p3, p3, 0x2

    invoke-virtual {p0, p3}, Lkl/s;->e(I)Z

    move-result p3

    if-eqz p3, :cond_2

    :cond_1
    iget-object p3, p0, Lkl/s;->e:[Z

    aput-boolean v1, p3, p1

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lkl/s;->e:[Z

    aput-boolean v1, p1, p2

    return-void
.end method


# virtual methods
.method public a([II[BI)I
    .locals 6

    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lkl/s;->l([II[I)[I

    move-result-object p1

    move p2, v0

    :goto_0
    aget v2, v1, v0

    const/4 v3, -0x1

    if-ge p2, v2, :cond_1

    iget v2, p0, Lkl/s;->c:I

    sub-int/2addr p4, v2

    if-gez p4, :cond_0

    return v3

    :cond_0
    mul-int v3, p2, v2

    iget-object v4, p0, Lkl/s;->b:[[B

    aget v5, p1, p2

    aget-object v4, v4, v5

    invoke-static {p3, v3, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lkl/s;->d:[Z

    aget v3, p1, p2

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    return v3

    :cond_2
    return v0
.end method

.method public b([[B[B)V
    .locals 7

    iget v0, p0, Lkl/s;->f:I

    iget v1, p0, Lkl/s;->g:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lkl/s;->g:I

    if-ge v2, v3, :cond_1

    aget-object v3, p1, v2

    if-eqz v3, :cond_0

    iget-object v4, p0, Lkl/s;->b:[[B

    add-int v5, v0, v2

    aget-object v4, v4, v5

    iget v6, p0, Lkl/s;->c:I

    invoke-static {v3, v1, v4, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lkl/s;->d:[Z

    const/4 v4, 0x1

    aput-boolean v4, v3, v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget p1, p0, Lkl/s;->f:I

    :goto_1
    if-lez p1, :cond_2

    invoke-virtual {p0, p1, p2}, Lkl/s;->c(I[B)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final c(I[B)V
    .locals 6

    invoke-virtual {p0, p1}, Lkl/s;->e(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lkl/s;->k(I)I

    move-result p1

    iget-object v0, p0, Lkl/s;->d:[Z

    aget-boolean v1, v0, p1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v2, v1, 0x1

    aget-boolean v0, v0, v2

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x2

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lkl/s;->e(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lkl/s;->d:[Z

    aget-boolean v3, v3, v1

    if-nez v3, :cond_3

    return-void

    :cond_3
    iget-object v3, p0, Lkl/s;->h:Lkl/h;

    iget-object v3, v3, Lkl/h;->r:LBi/a0;

    const/4 v4, 0x3

    invoke-interface {v3, v4}, LBi/y;->update(B)V

    iget-object v3, p0, Lkl/s;->h:Lkl/h;

    iget-object v4, v3, Lkl/h;->r:LBi/a0;

    iget-object v5, p0, Lkl/s;->b:[[B

    aget-object v2, v5, v2

    iget v3, v3, Lkl/h;->p:I

    const/4 v5, 0x0

    invoke-interface {v4, v2, v5, v3}, LBi/y;->update([BII)V

    invoke-virtual {p0, p1}, Lkl/s;->p(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lkl/s;->h:Lkl/h;

    iget-object v3, v2, Lkl/h;->r:LBi/a0;

    iget-object v4, p0, Lkl/s;->b:[[B

    aget-object v1, v4, v1

    iget v2, v2, Lkl/h;->p:I

    invoke-interface {v3, v1, v5, v2}, LBi/y;->update([BII)V

    :cond_4
    iget-object v1, p0, Lkl/s;->h:Lkl/h;

    iget-object v1, v1, Lkl/h;->r:LBi/a0;

    const/16 v2, 0x20

    invoke-interface {v1, p2, v5, v2}, LBi/y;->update([BII)V

    iget-object p2, p0, Lkl/s;->h:Lkl/h;

    iget-object p2, p2, Lkl/h;->r:LBi/a0;

    invoke-static {p1}, Lorg/bouncycastle/util/p;->p(I)[B

    move-result-object v1

    invoke-interface {p2, v1, v5, v0}, LBi/y;->update([BII)V

    iget-object p2, p0, Lkl/s;->h:Lkl/h;

    iget-object v0, p2, Lkl/h;->r:LBi/a0;

    iget-object v1, p0, Lkl/s;->b:[[B

    aget-object v1, v1, p1

    iget p2, p2, Lkl/h;->p:I

    invoke-interface {v0, v1, v5, p2}, LBi/a0;->e([BII)I

    iget-object p2, p0, Lkl/s;->d:[Z

    const/4 v0, 0x1

    aput-boolean v0, p2, p1

    return-void
.end method

.method public final d([III)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_1

    aget v2, p1, v1

    if-ne v2, p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final e(I)Z
    .locals 1

    iget v0, p0, Lkl/s;->f:I

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lkl/s;->e:[Z

    aget-boolean p1, v0, p1

    return p1
.end method

.method public final f([BI)V
    .locals 12

    const/16 v0, 0x40

    new-array v0, v0, [B

    iget v1, p0, Lkl/s;->f:I

    const/4 v8, 0x1

    sub-int/2addr v1, v8

    invoke-virtual {p0, v1}, Lkl/s;->k(I)I

    move-result v9

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    if-gt v11, v9, :cond_3

    iget-object v1, p0, Lkl/s;->d:[Z

    aget-boolean v1, v1, v11

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lkl/s;->b:[[B

    aget-object v3, v1, v11

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, v0

    move-object v4, p1

    move v6, p2

    move v7, v11

    invoke-virtual/range {v1 .. v7}, Lkl/s;->r([B[B[BBII)V

    iget-object v1, p0, Lkl/s;->d:[Z

    mul-int/lit8 v2, v11, 0x2

    add-int/lit8 v3, v2, 0x1

    aget-boolean v1, v1, v3

    if-nez v1, :cond_1

    iget-object v1, p0, Lkl/s;->b:[[B

    aget-object v1, v1, v3

    iget-object v4, p0, Lkl/s;->h:Lkl/h;

    iget v4, v4, Lkl/h;->o:I

    invoke-static {v0, v10, v1, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lkl/s;->d:[Z

    aput-boolean v8, v1, v3

    :cond_1
    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v2}, Lkl/s;->e(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lkl/s;->d:[Z

    aget-boolean v1, v1, v2

    if-nez v1, :cond_2

    iget-object v1, p0, Lkl/s;->h:Lkl/h;

    iget v1, v1, Lkl/h;->o:I

    iget-object v3, p0, Lkl/s;->b:[[B

    aget-object v3, v3, v2

    invoke-static {v0, v1, v3, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lkl/s;->d:[Z

    aput-boolean v8, v1, v2

    :cond_2
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public g([B[BI)V
    .locals 2

    iget-object v0, p0, Lkl/s;->b:[[B

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object p1, p0, Lkl/s;->d:[Z

    const/4 v0, 0x1

    aput-boolean v0, p1, v1

    invoke-virtual {p0, p2, p3}, Lkl/s;->f([BI)V

    return-void
.end method

.method public h(I)[B
    .locals 2

    iget v0, p0, Lkl/s;->f:I

    iget v1, p0, Lkl/s;->g:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lkl/s;->b:[[B

    add-int/2addr v0, p1

    aget-object p1, v1, v0

    return-object p1
.end method

.method public i()[[B
    .locals 1

    iget-object v0, p0, Lkl/s;->b:[[B

    return-object v0
.end method

.method public j()I
    .locals 2

    iget v0, p0, Lkl/s;->f:I

    iget v1, p0, Lkl/s;->g:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final k(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lkl/s;->t(I)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    :goto_0
    div-int/lit8 p1, p1, 0x2

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x2

    goto :goto_0
.end method

.method public final l([II[I)[I
    .locals 8

    iget v0, p0, Lkl/s;->f:I

    iget v1, p0, Lkl/s;->g:I

    sub-int v1, v0, v1

    new-array v0, v0, [Z

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, p2, :cond_0

    aget v5, p1, v3

    add-int/2addr v5, v1

    aput-boolean v4, v0, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget v3, p0, Lkl/s;->f:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lkl/s;->k(I)I

    move-result v3

    :goto_1
    if-lez v3, :cond_4

    invoke-virtual {p0, v3}, Lkl/s;->e(I)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v6, v5, 0x2

    invoke-virtual {p0, v6}, Lkl/s;->e(I)Z

    move-result v7

    add-int/lit8 v5, v5, 0x1

    if-eqz v7, :cond_2

    aget-boolean v5, v0, v5

    if-eqz v5, :cond_3

    aget-boolean v5, v0, v6

    if-eqz v5, :cond_3

    aput-boolean v4, v0, v3

    goto :goto_2

    :cond_2
    aget-boolean v5, v0, v5

    if-eqz v5, :cond_3

    aput-boolean v4, v0, v3

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_4
    iget v3, p0, Lkl/s;->g:I

    new-array v3, v3, [I

    move v4, v2

    move v5, v4

    :goto_3
    if-ge v4, p2, :cond_8

    aget v6, p1, v4

    add-int/2addr v6, v1

    :cond_5
    invoke-virtual {p0, v6}, Lkl/s;->k(I)I

    move-result v7

    aget-boolean v7, v0, v7

    if-nez v7, :cond_6

    invoke-virtual {p0, v3, v5, v6}, Lkl/s;->d([III)Z

    move-result v7

    if-nez v7, :cond_7

    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {p0, v6}, Lkl/s;->k(I)I

    move-result v6

    if-nez v6, :cond_5

    :cond_7
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    aput v5, p3, v2

    return-object v3
.end method

.method public final m([II[I)[I
    .locals 9

    iget v0, p0, Lkl/s;->a:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput p2, v2, v1

    const/4 v3, 0x0

    aput v0, v2, v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    move v4, v3

    :goto_0
    if-ge v4, p2, :cond_1

    aget v5, p1, v4

    iget v6, p0, Lkl/s;->f:I

    iget v7, p0, Lkl/s;->g:I

    sub-int/2addr v6, v7

    add-int/2addr v5, v6

    aget-object v6, v2, v3

    aput v5, v6, v4

    move v6, v1

    :goto_1
    invoke-virtual {p0, v5}, Lkl/s;->k(I)I

    move-result v5

    if-eqz v5, :cond_0

    aget-object v7, v2, v6

    aput v5, v7, v4

    add-int/2addr v6, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget p1, p0, Lkl/s;->g:I

    new-array p1, p1, [I

    move v4, v3

    move v5, v4

    :goto_2
    if-ge v4, v0, :cond_6

    move v6, v3

    :goto_3
    if-ge v6, p2, :cond_5

    aget-object v7, v2, v4

    aget v7, v7, v6

    invoke-virtual {p0, v7}, Lkl/s;->q(I)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_5

    :cond_2
    aget-object v7, v2, v4

    aget v7, v7, v6

    invoke-virtual {p0, v7}, Lkl/s;->n(I)I

    move-result v7

    aget-object v8, v2, v4

    invoke-virtual {p0, v8, p2, v7}, Lkl/s;->d([III)Z

    move-result v8

    if-nez v8, :cond_4

    :goto_4
    invoke-virtual {p0, v7}, Lkl/s;->p(I)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {p0, v7}, Lkl/s;->s(I)Z

    move-result v8

    if-nez v8, :cond_3

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v1

    goto :goto_4

    :cond_3
    invoke-virtual {p0, p1, v5, v7}, Lkl/s;->d([III)Z

    move-result v8

    if-nez v8, :cond_4

    aput v7, p1, v5

    add-int/lit8 v5, v5, 0x1

    :cond_4
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    aput v5, p3, v3

    return-object p1
.end method

.method public final n(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lkl/s;->t(I)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    iget v0, p0, Lkl/s;->f:I

    if-ge p1, v0, :cond_0

    return p1

    :cond_0
    sget-object p1, Lkl/s;->i:Ljava/util/logging/Logger;

    const-string v0, "getSibling: request for node with not sibling"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public o(Lkl/s;I)Z
    .locals 1

    mul-int/lit8 p2, p2, 0x2

    const/4 p1, 0x1

    add-int/2addr p2, p1

    iget v0, p0, Lkl/s;->f:I

    if-ge p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final p(I)Z
    .locals 2

    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lkl/s;->f:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lkl/s;->e(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final q(I)Z
    .locals 3

    invoke-virtual {p0, p1}, Lkl/s;->e(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lkl/s;->t(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    add-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lkl/s;->e(I)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method public final r([B[B[BBII)V
    .locals 2

    iget-object v0, p0, Lkl/s;->h:Lkl/h;

    iget-object v0, v0, Lkl/h;->r:LBi/a0;

    invoke-interface {v0, p4}, LBi/y;->update(B)V

    iget-object p4, p0, Lkl/s;->h:Lkl/h;

    iget-object v0, p4, Lkl/h;->r:LBi/a0;

    iget p4, p4, Lkl/h;->o:I

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1, p4}, LBi/y;->update([BII)V

    iget-object p2, p0, Lkl/s;->h:Lkl/h;

    iget-object p2, p2, Lkl/h;->r:LBi/a0;

    const/16 p4, 0x20

    invoke-interface {p2, p3, v1, p4}, LBi/y;->update([BII)V

    iget-object p2, p0, Lkl/s;->h:Lkl/h;

    iget-object p2, p2, Lkl/h;->r:LBi/a0;

    const p3, 0xffff

    and-int p4, p5, p3

    int-to-short p4, p4

    invoke-static {p4}, Lorg/bouncycastle/util/p;->S(S)[B

    move-result-object p4

    const/4 p5, 0x2

    invoke-interface {p2, p4, v1, p5}, LBi/y;->update([BII)V

    iget-object p2, p0, Lkl/s;->h:Lkl/h;

    iget-object p2, p2, Lkl/h;->r:LBi/a0;

    and-int/2addr p3, p6

    int-to-short p3, p3

    invoke-static {p3}, Lorg/bouncycastle/util/p;->S(S)[B

    move-result-object p3

    invoke-interface {p2, p3, v1, p5}, LBi/y;->update([BII)V

    iget-object p2, p0, Lkl/s;->h:Lkl/h;

    iget-object p3, p2, Lkl/h;->r:LBi/a0;

    iget p2, p2, Lkl/h;->o:I

    mul-int/2addr p2, p5

    invoke-interface {p3, p1, v1, p2}, LBi/a0;->e([BII)I

    return-void
.end method

.method public final s(I)Z
    .locals 2

    mul-int/lit8 p1, p1, 0x2

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iget v1, p0, Lkl/s;->f:I

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final t(I)Z
    .locals 1

    rem-int/lit8 p1, p1, 0x2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public u([II[I)[B
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    invoke-virtual {p0, p1, p2, v0}, Lkl/s;->l([II[I)[I

    move-result-object p1

    const/4 p2, 0x0

    aget v1, v0, p2

    iget v2, p0, Lkl/s;->c:I

    mul-int/2addr v1, v2

    aput v1, p3, p2

    new-array p3, v1, [B

    move v1, p2

    :goto_0
    aget v2, v0, p2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lkl/s;->b:[[B

    aget v3, p1, v1

    aget-object v2, v2, v3

    iget v3, p0, Lkl/s;->c:I

    mul-int v4, v1, v3

    invoke-static {v2, p2, p3, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p3
.end method

.method public v([II)I
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [I

    invoke-virtual {p0, p1, p2, v0}, Lkl/s;->l([II[I)[I

    const/4 p1, 0x0

    aget p1, v0, p1

    iget-object p2, p0, Lkl/s;->h:Lkl/h;

    iget p2, p2, Lkl/h;->p:I

    mul-int/2addr p1, p2

    return p1
.end method

.method public w([II[BI[BI)I
    .locals 6

    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lkl/s;->m([II[I)[I

    move-result-object p1

    move p2, v0

    :goto_0
    aget v2, v1, v0

    if-ge p2, v2, :cond_1

    iget-object v2, p0, Lkl/s;->h:Lkl/h;

    iget v2, v2, Lkl/h;->o:I

    sub-int/2addr p4, v2

    if-gez p4, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    mul-int v3, p2, v2

    iget-object v4, p0, Lkl/s;->b:[[B

    aget v5, p1, p2

    aget-object v4, v4, v5

    invoke-static {p3, v3, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lkl/s;->d:[Z

    aget v3, p1, p2

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p5, p6}, Lkl/s;->f([BI)V

    return v0
.end method

.method public x([II[BI)I
    .locals 5

    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lkl/s;->m([II[I)[I

    move-result-object p1

    move p2, v0

    :goto_0
    aget v2, v1, v0

    if-ge p2, v2, :cond_1

    iget-object v2, p0, Lkl/s;->h:Lkl/h;

    iget v2, v2, Lkl/h;->o:I

    sub-int/2addr p4, v2

    if-gez p4, :cond_0

    sget-object p1, Lkl/s;->i:Ljava/util/logging/Logger;

    const-string p2, "Insufficient sized buffer provided to revealSeeds"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v0

    :cond_0
    iget-object v3, p0, Lkl/s;->b:[[B

    aget v4, p1, p2

    aget-object v3, v3, v4

    mul-int v4, p2, v2

    invoke-static {v3, v0, p3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    array-length p1, p3

    sub-int/2addr p1, p4

    return p1
.end method

.method public y([II)I
    .locals 2

    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lkl/s;->m([II[I)[I

    aget p1, v1, v0

    iget-object p2, p0, Lkl/s;->h:Lkl/h;

    iget p2, p2, Lkl/h;->o:I

    mul-int/2addr p1, p2

    return p1
.end method

.method public z([[B[B)I
    .locals 7

    iget v0, p0, Lkl/s;->f:I

    iget v1, p0, Lkl/s;->g:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lkl/s;->g:I

    const/4 v4, -0x1

    if-ge v2, v3, :cond_2

    aget-object v3, p1, v2

    if-eqz v3, :cond_1

    iget-object v5, p0, Lkl/s;->d:[Z

    add-int v6, v0, v2

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_0

    return v4

    :cond_0
    if-eqz v3, :cond_1

    iget-object v4, p0, Lkl/s;->b:[[B

    aget-object v4, v4, v6

    iget v5, p0, Lkl/s;->c:I

    invoke-static {v3, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lkl/s;->d:[Z

    const/4 v4, 0x1

    aput-boolean v4, v3, v6

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget p1, p0, Lkl/s;->f:I

    :goto_1
    if-lez p1, :cond_3

    invoke-virtual {p0, p1, p2}, Lkl/s;->c(I[B)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lkl/s;->d:[Z

    aget-boolean p1, p1, v1

    if-nez p1, :cond_4

    return v4

    :cond_4
    return v1
.end method
