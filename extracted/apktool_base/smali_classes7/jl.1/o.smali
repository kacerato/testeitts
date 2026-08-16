.class public Ljl/o;
.super Ljl/m;
.source "SourceFile"


# instance fields
.field public final d:[B

.field public final e:[B

.field public final f:[B

.field public final g:[B

.field public final h:[B


# direct methods
.method public constructor <init>(Ljl/n;[B[B[B[B[B)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Ljl/m;-><init>(ZLjl/n;)V

    invoke-static {p2}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Ljl/o;->d:[B

    invoke-static {p3}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Ljl/o;->e:[B

    invoke-static {p4}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Ljl/o;->f:[B

    invoke-static {p5}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Ljl/o;->g:[B

    invoke-static {p6}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Ljl/o;->h:[B

    return-void
.end method


# virtual methods
.method public e()[B
    .locals 1

    iget-object v0, p0, Ljl/o;->d:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public f()[B
    .locals 1

    iget-object v0, p0, Ljl/o;->e:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public g()[B
    .locals 1

    iget-object v0, p0, Ljl/o;->h:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 5

    invoke-virtual {p0}, Ljl/m;->d()Ljl/n;

    move-result-object v0

    invoke-virtual {v0}, Ljl/n;->c()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Ljl/o;->d:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Ljl/o;->e:[B

    iget-object v2, p0, Ljl/o;->d:[B

    array-length v2, v2

    array-length v4, v1

    invoke-static {v1, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Ljl/o;->f:[B

    iget-object v2, p0, Ljl/o;->d:[B

    array-length v2, v2

    iget-object v4, p0, Ljl/o;->e:[B

    array-length v4, v4

    add-int/2addr v2, v4

    array-length v4, v1

    invoke-static {v1, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Ljl/o;->g:[B

    iget-object v2, p0, Ljl/o;->d:[B

    array-length v2, v2

    iget-object v4, p0, Ljl/o;->e:[B

    array-length v4, v4

    add-int/2addr v2, v4

    iget-object v4, p0, Ljl/o;->f:[B

    array-length v4, v4

    add-int/2addr v2, v4

    array-length v4, v1

    invoke-static {v1, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Ljl/o;->h:[B

    iget-object v2, p0, Ljl/o;->d:[B

    array-length v2, v2

    iget-object v4, p0, Ljl/o;->e:[B

    array-length v4, v4

    add-int/2addr v2, v4

    iget-object v4, p0, Ljl/o;->f:[B

    array-length v4, v4

    add-int/2addr v2, v4

    iget-object v4, p0, Ljl/o;->g:[B

    array-length v4, v4

    add-int/2addr v2, v4

    array-length v4, v1

    invoke-static {v1, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public h()[B
    .locals 1

    iget-object v0, p0, Ljl/o;->f:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public i()[B
    .locals 1

    iget-object v0, p0, Ljl/o;->g:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method
