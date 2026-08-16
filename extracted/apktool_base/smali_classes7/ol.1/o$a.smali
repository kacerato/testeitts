.class public Lol/o$a;
.super Lol/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lol/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public n:Lol/g;

.field public o:Lol/d;

.field public p:Lol/e;


# direct methods
.method public constructor <init>(ZIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lol/o;-><init>(ZIIIIII)V

    return-void
.end method


# virtual methods
.method public a([BLol/a;[B)[B
    .locals 4

    const/16 p1, 0x20

    new-array p1, p1, [B

    iget-object v0, p0, Lol/o$a;->p:Lol/e;

    iget-object v1, p2, Lol/a;->a:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lol/e;->update([BII)V

    iget-boolean v0, p0, Lol/o;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lol/o$a;->o:Lol/d;

    iget-object p2, p2, Lol/a;->a:[B

    array-length v1, p2

    invoke-virtual {v0, p2, v3, v1}, Lol/d;->update([BII)V

    iget-object p2, p0, Lol/o$a;->o:Lol/d;

    invoke-virtual {p2, p1, v3}, Lol/d;->c([BI)I

    array-length p2, p3

    invoke-static {p2, p3, p1}, Lorg/bouncycastle/util/c;->d(I[B[B)V

    iget-object p2, p0, Lol/o$a;->p:Lol/e;

    array-length p3, p3

    invoke-virtual {p2, p1, v3, p3}, Lol/e;->update([BII)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lol/o$a;->p:Lol/e;

    array-length v0, p3

    invoke-virtual {p2, p3, v3, v0}, Lol/e;->update([BII)V

    :goto_0
    iget-object p2, p0, Lol/o$a;->p:Lol/e;

    invoke-virtual {p2, p1, v3}, Lol/e;->c([BI)I

    iget p2, p0, Lol/o;->b:I

    invoke-static {p1, p2}, Lorg/bouncycastle/util/a;->Q([BI)[B

    move-result-object p1

    return-object p1
.end method

.method public b([BLol/a;[B[B)[B
    .locals 4

    iget p1, p0, Lol/o;->b:I

    new-array v0, p1, [B

    array-length v1, p3

    array-length v2, p4

    add-int/2addr v1, v2

    new-array v1, v1, [B

    array-length v2, p3

    const/4 v3, 0x0

    invoke-static {p3, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p3, p3

    array-length v2, p4

    invoke-static {p4, v3, v1, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, p2, v1}, Lol/o$a;->h(Lol/a;[B)[B

    move-result-object p3

    iget-object p4, p0, Lol/o$a;->n:Lol/g;

    iget-object p2, p2, Lol/a;->a:[B

    array-length v1, p2

    invoke-virtual {p4, p2, v3, v1}, Lol/g;->update([BII)V

    iget-object p2, p0, Lol/o$a;->n:Lol/g;

    array-length p4, p3

    invoke-virtual {p2, p3, v3, p4}, Lol/g;->update([BII)V

    iget-object p2, p0, Lol/o$a;->n:Lol/g;

    invoke-virtual {p2, v0, v3, p1}, Lol/g;->e([BII)I

    return-object v0
.end method

.method public c([B[B[B[B)Lol/h;
    .locals 9

    iget p2, p0, Lol/o;->i:I

    iget v0, p0, Lol/o;->j:I

    mul-int/2addr p2, v0

    add-int/lit8 p2, p2, 0x7

    shr-int/lit8 p2, p2, 0x3

    iget v0, p0, Lol/o;->k:I

    iget v1, p0, Lol/o;->h:I

    div-int v1, v0, v1

    sub-int/2addr v0, v1

    add-int/lit8 v2, v1, 0x7

    shr-int/lit8 v2, v2, 0x3

    add-int/lit8 v3, v0, 0x7

    shr-int/lit8 v3, v3, 0x3

    add-int v4, p2, v2

    add-int/2addr v4, v3

    new-array v5, v4, [B

    iget-object v6, p0, Lol/o$a;->n:Lol/g;

    array-length v7, p1

    const/4 v8, 0x0

    invoke-virtual {v6, p1, v8, v7}, Lol/g;->update([BII)V

    iget-object p1, p0, Lol/o$a;->n:Lol/g;

    array-length v6, p3

    invoke-virtual {p1, p3, v8, v6}, Lol/g;->update([BII)V

    iget-object p1, p0, Lol/o$a;->n:Lol/g;

    array-length p3, p4

    invoke-virtual {p1, p4, v8, p3}, Lol/g;->update([BII)V

    iget-object p1, p0, Lol/o$a;->n:Lol/g;

    invoke-virtual {p1, v5, v8, v4}, Lol/g;->e([BII)I

    const/16 p1, 0x8

    new-array p1, p1, [B

    rsub-int/lit8 p3, v3, 0x8

    invoke-static {v5, p2, p1, p3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v8}, Lorg/bouncycastle/util/p;->d([BI)J

    move-result-wide p3

    rsub-int/lit8 p1, v0, 0x40

    const-wide/16 v6, -0x1

    ushr-long/2addr v6, p1

    and-long/2addr p3, v6

    const/4 p1, 0x4

    new-array p1, p1, [B

    add-int/2addr v3, p2

    rsub-int/lit8 v0, v2, 0x4

    invoke-static {v5, v3, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v8}, Lorg/bouncycastle/util/p;->a([BI)I

    move-result p1

    rsub-int/lit8 v0, v1, 0x20

    const/4 v1, -0x1

    ushr-int v0, v1, v0

    and-int/2addr p1, v0

    new-instance v0, Lol/h;

    invoke-static {v5, v8, p2}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object p2

    invoke-direct {v0, p3, p4, p1, p2}, Lol/h;-><init>(JI[B)V

    return-object v0
.end method

.method public d([B[BLol/a;)[B
    .locals 3

    const/16 p1, 0x20

    new-array p1, p1, [B

    iget-object v0, p0, Lol/o$a;->p:Lol/e;

    iget-object p3, p3, Lol/a;->a:[B

    array-length v1, p3

    const/4 v2, 0x0

    invoke-virtual {v0, p3, v2, v1}, Lol/e;->update([BII)V

    iget-object p3, p0, Lol/o$a;->p:Lol/e;

    array-length v0, p2

    invoke-virtual {p3, p2, v2, v0}, Lol/e;->update([BII)V

    iget-object p2, p0, Lol/o$a;->p:Lol/e;

    invoke-virtual {p2, p1, v2}, Lol/e;->c([BI)I

    iget p2, p0, Lol/o;->b:I

    invoke-static {p1, p2}, Lorg/bouncycastle/util/a;->Q([BI)[B

    move-result-object p1

    return-object p1
.end method

.method public e([B[B[B)[B
    .locals 5

    iget v0, p0, Lol/o;->b:I

    new-array v1, v0, [B

    iget-object v2, p0, Lol/o$a;->n:Lol/g;

    array-length v3, p1

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4, v3}, Lol/g;->update([BII)V

    iget-object p1, p0, Lol/o$a;->n:Lol/g;

    array-length v2, p2

    invoke-virtual {p1, p2, v4, v2}, Lol/g;->update([BII)V

    iget-object p1, p0, Lol/o$a;->n:Lol/g;

    array-length p2, p3

    invoke-virtual {p1, p3, v4, p2}, Lol/g;->update([BII)V

    iget-object p1, p0, Lol/o$a;->n:Lol/g;

    invoke-virtual {p1, v1, v4, v0}, Lol/g;->e([BII)I

    return-object v1
.end method

.method public f([BLol/a;[B)[B
    .locals 4

    iget p1, p0, Lol/o;->b:I

    new-array v0, p1, [B

    invoke-virtual {p0, p2, p3}, Lol/o$a;->h(Lol/a;[B)[B

    move-result-object p3

    iget-object v1, p0, Lol/o$a;->n:Lol/g;

    iget-object p2, p2, Lol/a;->a:[B

    array-length v2, p2

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v3, v2}, Lol/g;->update([BII)V

    iget-object p2, p0, Lol/o$a;->n:Lol/g;

    array-length v1, p3

    invoke-virtual {p2, p3, v3, v1}, Lol/g;->update([BII)V

    iget-object p2, p0, Lol/o$a;->n:Lol/g;

    invoke-virtual {p2, v0, v3, p1}, Lol/g;->e([BII)I

    return-object v0
.end method

.method public g([B)V
    .locals 1

    new-instance v0, Lol/g;

    invoke-direct {v0, p1}, Lol/g;-><init>([B)V

    iput-object v0, p0, Lol/o$a;->n:Lol/g;

    new-instance p1, Lol/d;

    invoke-direct {p1, v0}, Lol/d;-><init>(Lol/g;)V

    iput-object p1, p0, Lol/o$a;->o:Lol/d;

    new-instance p1, Lol/e;

    iget-object v0, p0, Lol/o$a;->n:Lol/g;

    invoke-direct {p1, v0}, Lol/e;-><init>(Lol/g;)V

    iput-object p1, p0, Lol/o$a;->p:Lol/e;

    return-void
.end method

.method public h(Lol/a;[B)[B
    .locals 5

    iget-boolean v0, p0, Lol/o;->a:Z

    if-eqz v0, :cond_0

    array-length v0, p2

    new-array v1, v0, [B

    iget-object v2, p0, Lol/o$a;->n:Lol/g;

    iget-object p1, p1, Lol/a;->a:[B

    array-length v3, p1

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4, v3}, Lol/g;->update([BII)V

    iget-object p1, p0, Lol/o$a;->n:Lol/g;

    invoke-virtual {p1, v1, v4, v0}, Lol/g;->e([BII)I

    array-length p1, p2

    invoke-static {p1, v1, p2}, Lorg/bouncycastle/util/c;->d(I[B[B)V

    :cond_0
    return-object p2
.end method
