.class public LPi/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LPi/a;

.field public final b:LPi/c;

.field public final c:[B

.field public final d:[B


# direct methods
.method public constructor <init>(LPi/a;LPi/c;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LPi/e;->a:LPi/a;

    iput-object p2, p0, LPi/e;->b:LPi/c;

    iput-object p3, p0, LPi/e;->c:[B

    iput-object p4, p0, LPi/e;->d:[B

    return-void
.end method


# virtual methods
.method public a([B[BI)[B
    .locals 1

    iget-object v0, p0, LPi/e;->b:LPi/c;

    invoke-virtual {v0, p1, p2, p3}, LPi/c;->a([B[BI)[B

    move-result-object p1

    return-object p1
.end method

.method public b([BI)[B
    .locals 6

    iget-object v0, p0, LPi/e;->b:LPi/c;

    iget-object v1, p0, LPi/e;->c:[B

    iget-object v2, p0, LPi/e;->d:[B

    const-string v3, "sec"

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, LPi/c;->c([B[BLjava/lang/String;[BI)[B

    move-result-object p1

    return-object p1
.end method

.method public c([B[B)[B
    .locals 1

    iget-object v0, p0, LPi/e;->b:LPi/c;

    invoke-virtual {v0, p1, p2}, LPi/c;->b([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public d([B[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-object v0, p0, LPi/e;->a:LPi/a;

    invoke-virtual {v0, p1, p2}, LPi/a;->b([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public e([B[BII)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-object v0, p0, LPi/e;->a:LPi/a;

    invoke-virtual {v0, p1, p2, p3, p4}, LPi/a;->c([B[BII)[B

    move-result-object p1

    return-object p1
.end method

.method public f([B[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-object v0, p0, LPi/e;->a:LPi/a;

    invoke-virtual {v0, p1, p2}, LPi/a;->d([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public g([B[BII)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-object v0, p0, LPi/e;->a:LPi/a;

    invoke-virtual {v0, p1, p2, p3, p4}, LPi/a;->e([B[BII)[B

    move-result-object p1

    return-object p1
.end method
