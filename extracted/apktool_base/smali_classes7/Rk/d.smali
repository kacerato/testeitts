.class public abstract LRk/d;
.super LQk/c;
.source "SourceFile"


# instance fields
.field public b:LXi/c;


# direct methods
.method public constructor <init>(Lhi/b;LXi/c;)V
    .locals 0

    invoke-direct {p0, p1}, LQk/c;-><init>(Lhi/b;)V

    iput-object p2, p0, LRk/d;->b:LXi/c;

    return-void
.end method


# virtual methods
.method public b(Lhi/b;[B)LQk/r;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorException;
        }
    .end annotation

    invoke-virtual {p0}, LQk/c;->a()Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    invoke-virtual {p0, v0}, LRk/d;->c(Loh/x;)LBi/b;

    move-result-object v0

    iget-object v1, p0, LRk/d;->b:LXi/c;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, LBi/b;->a(ZLBi/k;)V

    :try_start_0
    array-length v1, p2

    invoke-interface {v0, p2, v2, v1}, LBi/b;->b([BII)[B

    move-result-object p2

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object v0

    sget-object v1, LXh/t;->n1:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, LQk/r;

    invoke-direct {v0, p1, p2}, LQk/r;-><init>(Lhi/b;[B)V

    return-object v0

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance v0, LQk/r;

    invoke-direct {v0, p1, p2}, LQk/r;-><init>(Lhi/b;[B)V
    :try_end_0
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_0
    new-instance p2, Lorg/bouncycastle/operator/OperatorException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to recover secret key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/operator/OperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public abstract c(Loh/x;)LBi/b;
.end method
