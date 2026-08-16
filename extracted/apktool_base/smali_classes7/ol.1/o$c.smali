.class public Lol/o$c;
.super Lol/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lol/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final n:LBi/a0;

.field public final o:LBi/a0;


# direct methods
.method public constructor <init>(ZIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lol/o;-><init>(ZIIIIII)V

    new-instance p1, LIi/Q;

    const/16 p2, 0x100

    invoke-direct {p1, p2}, LIi/Q;-><init>(I)V

    iput-object p1, p0, Lol/o$c;->n:LBi/a0;

    new-instance p1, LIi/Q;

    invoke-direct {p1, p2}, LIi/Q;-><init>(I)V

    iput-object p1, p0, Lol/o$c;->o:LBi/a0;

    return-void
.end method


# virtual methods
.method public a([BLol/a;[B)[B
    .locals 5

    iget-boolean v0, p0, Lol/o;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lol/o$c;->h([BLol/a;[B)[B

    move-result-object p3

    :cond_0
    iget v0, p0, Lol/o;->b:I

    new-array v1, v0, [B

    iget-object v2, p0, Lol/o$c;->n:LBi/a0;

    array-length v3, p1

    const/4 v4, 0x0

    invoke-interface {v2, p1, v4, v3}, LBi/y;->update([BII)V

    iget-object p1, p0, Lol/o$c;->n:LBi/a0;

    iget-object p2, p2, Lol/a;->a:[B

    array-length v2, p2

    invoke-interface {p1, p2, v4, v2}, LBi/y;->update([BII)V

    iget-object p1, p0, Lol/o$c;->n:LBi/a0;

    array-length p2, p3

    invoke-interface {p1, p3, v4, p2}, LBi/y;->update([BII)V

    iget-object p1, p0, Lol/o$c;->n:LBi/a0;

    invoke-interface {p1, v1, v4, v0}, LBi/a0;->e([BII)I

    return-object v1
.end method

.method public b([BLol/a;[B[B)[B
    .locals 6

    iget v0, p0, Lol/o;->b:I

    new-array v1, v0, [B

    iget-object v2, p0, Lol/o$c;->n:LBi/a0;

    array-length v3, p1

    const/4 v4, 0x0

    invoke-interface {v2, p1, v4, v3}, LBi/y;->update([BII)V

    iget-object v2, p0, Lol/o$c;->n:LBi/a0;

    iget-object v3, p2, Lol/a;->a:[B

    array-length v5, v3

    invoke-interface {v2, v3, v4, v5}, LBi/y;->update([BII)V

    iget-boolean v2, p0, Lol/o;->a:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lol/o$c;->i([BLol/a;[B[B)[B

    move-result-object p1

    iget-object p2, p0, Lol/o$c;->n:LBi/a0;

    array-length p3, p1

    invoke-interface {p2, p1, v4, p3}, LBi/y;->update([BII)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lol/o$c;->n:LBi/a0;

    array-length p2, p3

    invoke-interface {p1, p3, v4, p2}, LBi/y;->update([BII)V

    iget-object p1, p0, Lol/o$c;->n:LBi/a0;

    array-length p2, p4

    invoke-interface {p1, p4, v4, p2}, LBi/y;->update([BII)V

    :goto_0
    iget-object p1, p0, Lol/o$c;->n:LBi/a0;

    invoke-interface {p1, v1, v4, v0}, LBi/a0;->e([BII)I

    return-object v1
.end method

.method public c([B[B[B[B)Lol/h;
    .locals 11

    iget v0, p0, Lol/o;->i:I

    iget v1, p0, Lol/o;->j:I

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x7

    const/16 v1, 0x8

    div-int/2addr v0, v1

    iget v2, p0, Lol/o;->k:I

    iget v3, p0, Lol/o;->h:I

    div-int v3, v2, v3

    sub-int/2addr v2, v3

    add-int/lit8 v4, v3, 0x7

    div-int/2addr v4, v1

    add-int/lit8 v5, v2, 0x7

    div-int/2addr v5, v1

    add-int v6, v0, v4

    add-int/2addr v6, v5

    new-array v7, v6, [B

    iget-object v8, p0, Lol/o$c;->n:LBi/a0;

    array-length v9, p1

    const/4 v10, 0x0

    invoke-interface {v8, p1, v10, v9}, LBi/y;->update([BII)V

    iget-object p1, p0, Lol/o$c;->n:LBi/a0;

    array-length v8, p2

    invoke-interface {p1, p2, v10, v8}, LBi/y;->update([BII)V

    iget-object p1, p0, Lol/o$c;->n:LBi/a0;

    array-length p2, p3

    invoke-interface {p1, p3, v10, p2}, LBi/y;->update([BII)V

    iget-object p1, p0, Lol/o$c;->n:LBi/a0;

    array-length p2, p4

    invoke-interface {p1, p4, v10, p2}, LBi/y;->update([BII)V

    iget-object p1, p0, Lol/o$c;->n:LBi/a0;

    invoke-interface {p1, v7, v10, v6}, LBi/a0;->e([BII)I

    new-array p1, v1, [B

    rsub-int/lit8 p2, v5, 0x8

    invoke-static {v7, v0, p1, p2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v10}, Lorg/bouncycastle/util/p;->d([BI)J

    move-result-wide p1

    rsub-int/lit8 p3, v2, 0x40

    const-wide/16 v1, -0x1

    ushr-long p3, v1, p3

    and-long/2addr p1, p3

    const/4 p3, 0x4

    new-array p3, p3, [B

    add-int/2addr v5, v0

    rsub-int/lit8 p4, v4, 0x4

    invoke-static {v7, v5, p3, p4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p3, v10}, Lorg/bouncycastle/util/p;->a([BI)I

    move-result p3

    rsub-int/lit8 p4, v3, 0x20

    const/4 v1, -0x1

    ushr-int p4, v1, p4

    and-int/2addr p3, p4

    new-instance p4, Lol/h;

    invoke-static {v7, v10, v0}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v0

    invoke-direct {p4, p1, p2, p3, v0}, Lol/h;-><init>(JI[B)V

    return-object p4
.end method

.method public d([B[BLol/a;)[B
    .locals 3

    iget-object v0, p0, Lol/o$c;->n:LBi/a0;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, LBi/y;->update([BII)V

    iget-object p1, p0, Lol/o$c;->n:LBi/a0;

    iget-object p3, p3, Lol/a;->a:[B

    array-length v0, p3

    invoke-interface {p1, p3, v2, v0}, LBi/y;->update([BII)V

    iget-object p1, p0, Lol/o$c;->n:LBi/a0;

    array-length p3, p2

    invoke-interface {p1, p2, v2, p3}, LBi/y;->update([BII)V

    iget p1, p0, Lol/o;->b:I

    new-array p2, p1, [B

    iget-object p3, p0, Lol/o$c;->n:LBi/a0;

    invoke-interface {p3, p2, v2, p1}, LBi/a0;->e([BII)I

    return-object p2
.end method

.method public e([B[B[B)[B
    .locals 3

    iget-object v0, p0, Lol/o$c;->n:LBi/a0;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, LBi/y;->update([BII)V

    iget-object p1, p0, Lol/o$c;->n:LBi/a0;

    array-length v0, p2

    invoke-interface {p1, p2, v2, v0}, LBi/y;->update([BII)V

    iget-object p1, p0, Lol/o$c;->n:LBi/a0;

    array-length p2, p3

    invoke-interface {p1, p3, v2, p2}, LBi/y;->update([BII)V

    iget p1, p0, Lol/o;->b:I

    new-array p2, p1, [B

    iget-object p3, p0, Lol/o$c;->n:LBi/a0;

    invoke-interface {p3, p2, v2, p1}, LBi/a0;->e([BII)I

    return-object p2
.end method

.method public f([BLol/a;[B)[B
    .locals 5

    iget-boolean v0, p0, Lol/o;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lol/o$c;->h([BLol/a;[B)[B

    move-result-object p3

    :cond_0
    iget v0, p0, Lol/o;->b:I

    new-array v1, v0, [B

    iget-object v2, p0, Lol/o$c;->n:LBi/a0;

    array-length v3, p1

    const/4 v4, 0x0

    invoke-interface {v2, p1, v4, v3}, LBi/y;->update([BII)V

    iget-object p1, p0, Lol/o$c;->n:LBi/a0;

    iget-object p2, p2, Lol/a;->a:[B

    array-length v2, p2

    invoke-interface {p1, p2, v4, v2}, LBi/y;->update([BII)V

    iget-object p1, p0, Lol/o$c;->n:LBi/a0;

    array-length p2, p3

    invoke-interface {p1, p3, v4, p2}, LBi/y;->update([BII)V

    iget-object p1, p0, Lol/o$c;->n:LBi/a0;

    invoke-interface {p1, v1, v4, v0}, LBi/a0;->e([BII)I

    return-object v1
.end method

.method public g([B)V
    .locals 0

    return-void
.end method

.method public h([BLol/a;[B)[B
    .locals 5

    array-length v0, p3

    new-array v1, v0, [B

    iget-object v2, p0, Lol/o$c;->o:LBi/a0;

    array-length v3, p1

    const/4 v4, 0x0

    invoke-interface {v2, p1, v4, v3}, LBi/y;->update([BII)V

    iget-object p1, p0, Lol/o$c;->o:LBi/a0;

    iget-object p2, p2, Lol/a;->a:[B

    array-length v2, p2

    invoke-interface {p1, p2, v4, v2}, LBi/y;->update([BII)V

    iget-object p1, p0, Lol/o$c;->o:LBi/a0;

    invoke-interface {p1, v1, v4, v0}, LBi/a0;->e([BII)I

    array-length p1, p3

    invoke-static {p1, p3, v1}, Lorg/bouncycastle/util/c;->d(I[B[B)V

    return-object v1
.end method

.method public i([BLol/a;[B[B)[B
    .locals 5

    array-length v0, p3

    array-length v1, p4

    add-int/2addr v0, v1

    new-array v1, v0, [B

    iget-object v2, p0, Lol/o$c;->o:LBi/a0;

    array-length v3, p1

    const/4 v4, 0x0

    invoke-interface {v2, p1, v4, v3}, LBi/y;->update([BII)V

    iget-object p1, p0, Lol/o$c;->o:LBi/a0;

    iget-object p2, p2, Lol/a;->a:[B

    array-length v2, p2

    invoke-interface {p1, p2, v4, v2}, LBi/y;->update([BII)V

    iget-object p1, p0, Lol/o$c;->o:LBi/a0;

    invoke-interface {p1, v1, v4, v0}, LBi/a0;->e([BII)I

    array-length p1, p3

    invoke-static {p1, p3, v1}, Lorg/bouncycastle/util/c;->d(I[B[B)V

    array-length p1, p4

    array-length p2, p3

    invoke-static {p1, p4, v4, v1, p2}, Lorg/bouncycastle/util/c;->c(I[BI[BI)V

    return-object v1
.end method
