.class public LRk/v;
.super LQk/K;
.source "SourceFile"


# instance fields
.field public b:Ljava/security/SecureRandom;

.field public c:LBi/Z;

.field public d:LXi/o0;


# direct methods
.method public constructor <init>(Lhi/b;LBi/Z;LXi/o0;)V
    .locals 0

    invoke-direct {p0, p1}, LQk/K;-><init>(Lhi/b;)V

    iput-object p2, p0, LRk/v;->c:LBi/Z;

    iput-object p3, p0, LRk/v;->d:LXi/o0;

    return-void
.end method


# virtual methods
.method public b(Lhi/b;[B)LQk/r;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorException;
        }
    .end annotation

    iget-object v0, p0, LRk/v;->c:LBi/Z;

    iget-object v1, p0, LRk/v;->d:LXi/o0;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, LBi/Z;->a(ZLBi/k;)V

    :try_start_0
    new-instance v0, LQk/r;

    iget-object v1, p0, LRk/v;->c:LBi/Z;

    array-length v3, p2

    invoke-interface {v1, p2, v2, v3}, LBi/Z;->d([BII)[B

    move-result-object p2

    invoke-direct {v0, p1, p2}, LQk/r;-><init>(Lhi/b;[B)V
    :try_end_0
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/operator/OperatorException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to unwrap key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/operator/OperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public c(Ljava/security/SecureRandom;)LRk/v;
    .locals 0

    iput-object p1, p0, LRk/v;->b:Ljava/security/SecureRandom;

    return-object p0
.end method
