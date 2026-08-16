.class public Lal/k;
.super Lal/i;
.source "SourceFile"


# instance fields
.field public final d:[B


# direct methods
.method public constructor <init>(Lal/j;[B)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0, p1}, Lal/i;-><init>(ZLal/j;)V

    invoke-static {p2}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Lal/k;->d:[B

    return-void
.end method

.method public constructor <init>(Lal/j;[B[B[B[B[B)V
    .locals 2

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0, p1}, Lal/i;-><init>(ZLal/j;)V

    array-length p1, p2

    array-length v0, p3

    add-int/2addr p1, v0

    array-length v0, p4

    add-int/2addr p1, v0

    array-length v0, p5

    add-int/2addr p1, v0

    array-length v0, p6

    add-int/2addr p1, v0

    new-array p1, p1, [B

    iput-object p1, p0, Lal/k;->d:[B

    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p2, p2

    array-length v0, p3

    invoke-static {p3, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p3, p3

    add-int/2addr p2, p3

    array-length p3, p4

    invoke-static {p4, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p3, p4

    add-int/2addr p2, p3

    array-length p3, p5

    invoke-static {p5, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p3, p5

    add-int/2addr p2, p3

    array-length p3, p6

    invoke-static {p6, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public e()[B
    .locals 3

    iget-object v0, p0, Lal/k;->d:[B

    invoke-virtual {p0}, Lal/i;->d()Lal/j;

    move-result-object v1

    invoke-virtual {v1}, Lal/j;->h()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x28

    iget-object v2, p0, Lal/k;->d:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x20

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public f()[B
    .locals 3

    iget-object v0, p0, Lal/k;->d:[B

    const/16 v1, 0x20

    const/16 v2, 0x28

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public g()[B
    .locals 3

    iget-object v0, p0, Lal/k;->d:[B

    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lal/k;->d:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public h()[B
    .locals 3

    iget-object v0, p0, Lal/k;->d:[B

    invoke-virtual {p0}, Lal/i;->d()Lal/j;

    move-result-object v1

    invoke-virtual {v1}, Lal/j;->h()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    const/16 v2, 0x28

    add-int/2addr v1, v2

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public i()[B
    .locals 1

    iget-object v0, p0, Lal/k;->d:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public j()[B
    .locals 3

    iget-object v0, p0, Lal/k;->d:[B

    array-length v1, v0

    add-int/lit8 v1, v1, -0x20

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public k()[B
    .locals 3

    invoke-virtual {p0}, Lal/i;->d()Lal/j;

    move-result-object v0

    invoke-virtual {v0}, Lal/j;->a()Lal/d;

    move-result-object v0

    invoke-virtual {v0}, Lal/d;->s()I

    move-result v1

    new-array v1, v1, [B

    iget-object v2, p0, Lal/k;->d:[B

    invoke-virtual {v0, v2}, Lal/d;->m([B)[B

    return-object v1
.end method
