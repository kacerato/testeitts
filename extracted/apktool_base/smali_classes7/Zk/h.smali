.class public LZk/h;
.super LZk/f;
.source "SourceFile"


# instance fields
.field public d:[B

.field public e:[B

.field public f:[B


# direct methods
.method public constructor <init>(LZk/g;[B[B[B)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, LZk/f;-><init>(ZLZk/g;)V

    invoke-static {p2}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, LZk/h;->d:[B

    invoke-static {p3}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, LZk/h;->e:[B

    invoke-static {p4}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, LZk/h;->f:[B

    return-void
.end method


# virtual methods
.method public e()[B
    .locals 1

    iget-object v0, p0, LZk/h;->d:[B

    return-object v0
.end method

.method public f()[B
    .locals 1

    iget-object v0, p0, LZk/h;->e:[B

    return-object v0
.end method

.method public g()[B
    .locals 1

    iget-object v0, p0, LZk/h;->f:[B

    return-object v0
.end method

.method public getEncoded()[B
    .locals 3

    iget-object v0, p0, LZk/h;->d:[B

    iget-object v1, p0, LZk/h;->e:[B

    iget-object v2, p0, LZk/h;->f:[B

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/a;->C([B[B[B)[B

    move-result-object v0

    return-object v0
.end method
