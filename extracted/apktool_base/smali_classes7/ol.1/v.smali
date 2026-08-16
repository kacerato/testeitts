.class public Lol/v;
.super Lol/s;
.source "SourceFile"


# instance fields
.field public final d:Lol/j;


# direct methods
.method public constructor <init>(Lol/t;Lol/j;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lol/s;-><init>(ZLol/t;)V

    iput-object p2, p0, Lol/v;->d:Lol/j;

    return-void
.end method

.method public constructor <init>(Lol/t;[B)V
    .locals 3

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1}, Lol/s;-><init>(ZLol/t;)V

    invoke-virtual {p1}, Lol/t;->e()I

    move-result p1

    array-length v1, p2

    mul-int/lit8 v2, p1, 0x2

    if-ne v1, v2, :cond_0

    new-instance v1, Lol/j;

    invoke-static {p2, v0, p1}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v0

    invoke-static {p2, p1, v2}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lol/j;-><init>([B[B)V

    iput-object v1, p0, Lol/v;->d:Lol/j;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "public key encoding does not match parameters"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public e()[B
    .locals 1

    iget-object v0, p0, Lol/v;->d:Lol/j;

    iget-object v0, v0, Lol/j;->b:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public f()[B
    .locals 1

    iget-object v0, p0, Lol/v;->d:Lol/j;

    iget-object v0, v0, Lol/j;->a:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2

    iget-object v0, p0, Lol/v;->d:Lol/j;

    iget-object v1, v0, Lol/j;->a:[B

    iget-object v0, v0, Lol/j;->b:[B

    invoke-static {v1, v0}, Lorg/bouncycastle/util/a;->B([B[B)[B

    move-result-object v0

    return-object v0
.end method
