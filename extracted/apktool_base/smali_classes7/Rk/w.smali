.class public LRk/w;
.super LQk/L;
.source "SourceFile"


# instance fields
.field public b:Ljava/security/SecureRandom;

.field public c:LBi/Z;

.field public d:LXi/o0;


# direct methods
.method public constructor <init>(Lhi/b;LBi/Z;LXi/o0;)V
    .locals 0

    invoke-direct {p0, p1}, LQk/L;-><init>(Lhi/b;)V

    iput-object p2, p0, LRk/w;->c:LBi/Z;

    iput-object p3, p0, LRk/w;->d:LXi/o0;

    return-void
.end method


# virtual methods
.method public b(LQk/r;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorException;
        }
    .end annotation

    invoke-static {p1}, LRk/y;->a(LQk/r;)[B

    move-result-object p1

    iget-object v0, p0, LRk/w;->b:Ljava/security/SecureRandom;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, LRk/w;->c:LBi/Z;

    iget-object v2, p0, LRk/w;->d:LXi/o0;

    invoke-interface {v0, v1, v2}, LBi/Z;->a(ZLBi/k;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, LRk/w;->c:LBi/Z;

    new-instance v3, LXi/x0;

    iget-object v4, p0, LRk/w;->d:LXi/o0;

    invoke-direct {v3, v4, v0}, LXi/x0;-><init>(LBi/k;Ljava/security/SecureRandom;)V

    invoke-interface {v2, v1, v3}, LBi/Z;->a(ZLBi/k;)V

    :goto_0
    iget-object v0, p0, LRk/w;->c:LBi/Z;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, LBi/Z;->c([BII)[B

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/security/SecureRandom;)LRk/w;
    .locals 0

    iput-object p1, p0, LRk/w;->b:Ljava/security/SecureRandom;

    return-object p0
.end method
