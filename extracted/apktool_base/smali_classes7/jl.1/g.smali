.class public Ljl/g;
.super Ljl/e;
.source "SourceFile"


# instance fields
.field public final d:[B

.field public final e:[B

.field public final f:[B

.field public final g:[B


# direct methods
.method public constructor <init>(Ljl/f;[B[B[B[B)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Ljl/e;-><init>(ZLjl/f;)V

    invoke-static {p2}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Ljl/g;->d:[B

    invoke-static {p3}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Ljl/g;->e:[B

    invoke-static {p4}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Ljl/g;->f:[B

    invoke-static {p5}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Ljl/g;->g:[B

    return-void
.end method


# virtual methods
.method public e()[B
    .locals 1

    iget-object v0, p0, Ljl/g;->d:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public f()[B
    .locals 1

    iget-object v0, p0, Ljl/g;->g:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public g()[B
    .locals 1

    iget-object v0, p0, Ljl/g;->e:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 5

    invoke-virtual {p0}, Ljl/e;->d()Ljl/f;

    move-result-object v0

    invoke-virtual {v0}, Ljl/f;->d()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Ljl/g;->d:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Ljl/g;->e:[B

    iget-object v2, p0, Ljl/g;->d:[B

    array-length v2, v2

    array-length v4, v1

    invoke-static {v1, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Ljl/g;->f:[B

    iget-object v2, p0, Ljl/g;->d:[B

    array-length v2, v2

    iget-object v4, p0, Ljl/g;->e:[B

    array-length v4, v4

    add-int/2addr v2, v4

    array-length v4, v1

    invoke-static {v1, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Ljl/g;->g:[B

    iget-object v2, p0, Ljl/g;->d:[B

    array-length v2, v2

    iget-object v4, p0, Ljl/g;->e:[B

    array-length v4, v4

    add-int/2addr v2, v4

    iget-object v4, p0, Ljl/g;->f:[B

    array-length v4, v4

    add-int/2addr v2, v4

    array-length v4, v1

    invoke-static {v1, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public h()[B
    .locals 1

    iget-object v0, p0, Ljl/g;->f:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method
