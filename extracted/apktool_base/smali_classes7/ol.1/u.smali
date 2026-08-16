.class public Lol/u;
.super Lol/s;
.source "SourceFile"


# instance fields
.field public final d:Lol/n;

.field public final e:Lol/j;


# direct methods
.method public constructor <init>(Lol/t;Lol/n;Lol/j;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0, p1}, Lol/s;-><init>(ZLol/t;)V

    iput-object p2, p0, Lol/u;->d:Lol/n;

    iput-object p3, p0, Lol/u;->e:Lol/j;

    return-void
.end method

.method public constructor <init>(Lol/t;[B)V
    .locals 5

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0, p1}, Lol/s;-><init>(ZLol/t;)V

    invoke-virtual {p1}, Lol/t;->e()I

    move-result p1

    array-length v0, p2

    mul-int/lit8 v1, p1, 0x4

    if-ne v0, v1, :cond_0

    new-instance v0, Lol/n;

    const/4 v2, 0x0

    invoke-static {p2, v2, p1}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v2

    mul-int/lit8 v3, p1, 0x2

    invoke-static {p2, p1, v3}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v4

    invoke-direct {v0, v2, v4}, Lol/n;-><init>([B[B)V

    iput-object v0, p0, Lol/u;->d:Lol/n;

    new-instance v0, Lol/j;

    mul-int/lit8 p1, p1, 0x3

    invoke-static {p2, v3, p1}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v2

    invoke-static {p2, p1, v1}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object p1

    invoke-direct {v0, v2, p1}, Lol/j;-><init>([B[B)V

    iput-object v0, p0, Lol/u;->e:Lol/j;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "private key encoding does not match parameters"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lol/t;[B[B[B[B)V
    .locals 1

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0, p1}, Lol/s;-><init>(ZLol/t;)V

    new-instance p1, Lol/n;

    invoke-direct {p1, p2, p3}, Lol/n;-><init>([B[B)V

    iput-object p1, p0, Lol/u;->d:Lol/n;

    new-instance p1, Lol/j;

    invoke-direct {p1, p4, p5}, Lol/j;-><init>([B[B)V

    iput-object p1, p0, Lol/u;->e:Lol/j;

    return-void
.end method


# virtual methods
.method public e()[B
    .locals 2

    iget-object v0, p0, Lol/u;->e:Lol/j;

    iget-object v1, v0, Lol/j;->a:[B

    iget-object v0, v0, Lol/j;->b:[B

    invoke-static {v1, v0}, Lorg/bouncycastle/util/a;->B([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public f()[B
    .locals 1

    iget-object v0, p0, Lol/u;->d:Lol/n;

    iget-object v0, v0, Lol/n;->b:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public g()[B
    .locals 2

    iget-object v0, p0, Lol/u;->e:Lol/j;

    iget-object v1, v0, Lol/j;->a:[B

    iget-object v0, v0, Lol/j;->b:[B

    invoke-static {v1, v0}, Lorg/bouncycastle/util/a;->B([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 4

    iget-object v0, p0, Lol/u;->d:Lol/n;

    iget-object v1, v0, Lol/n;->a:[B

    iget-object v0, v0, Lol/n;->b:[B

    iget-object v2, p0, Lol/u;->e:Lol/j;

    iget-object v3, v2, Lol/j;->a:[B

    iget-object v2, v2, Lol/j;->b:[B

    filled-new-array {v1, v0, v3, v2}, [[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/a;->E([[B)[B

    move-result-object v0

    return-object v0
.end method

.method public h()[B
    .locals 1

    iget-object v0, p0, Lol/u;->e:Lol/j;

    iget-object v0, v0, Lol/j;->a:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public i()[B
    .locals 1

    iget-object v0, p0, Lol/u;->e:Lol/j;

    iget-object v0, v0, Lol/j;->b:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public j()[B
    .locals 1

    iget-object v0, p0, Lol/u;->d:Lol/n;

    iget-object v0, v0, Lol/n;->a:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method
