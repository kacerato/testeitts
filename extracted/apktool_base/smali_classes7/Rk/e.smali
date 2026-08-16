.class public abstract LRk/e;
.super LQk/d;
.source "SourceFile"


# instance fields
.field public b:LXi/c;

.field public c:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lhi/b;LXi/c;)V
    .locals 0

    invoke-direct {p0, p1}, LQk/d;-><init>(Lhi/b;)V

    iput-object p2, p0, LRk/e;->b:LXi/c;

    return-void
.end method


# virtual methods
.method public b(LQk/r;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorException;
        }
    .end annotation

    invoke-virtual {p0}, LQk/d;->a()Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    invoke-virtual {p0, v0}, LRk/e;->c(Loh/x;)LBi/b;

    move-result-object v0

    iget-object v1, p0, LRk/e;->b:LXi/c;

    iget-object v2, p0, LRk/e;->c:Ljava/security/SecureRandom;

    if-eqz v2, :cond_0

    new-instance v3, LXi/x0;

    invoke-direct {v3, v1, v2}, LXi/x0;-><init>(LBi/k;Ljava/security/SecureRandom;)V

    move-object v1, v3

    :cond_0
    :try_start_0
    invoke-static {p1}, LRk/y;->a(LQk/r;)[B

    move-result-object p1

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, LBi/b;->a(ZLBi/k;)V

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, LBi/b;->b([BII)[B

    move-result-object p1
    :try_end_0
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/operator/OperatorException;

    const-string v1, "unable to encrypt contents key"

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/operator/OperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public abstract c(Loh/x;)LBi/b;
.end method

.method public d(Ljava/security/SecureRandom;)LRk/e;
    .locals 0

    iput-object p1, p0, LRk/e;->c:Ljava/security/SecureRandom;

    return-object p0
.end method
