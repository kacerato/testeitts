.class public abstract LRk/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/security/SecureRandom;

.field public b:Lhi/b;

.field public c:Lhi/b;

.field public d:LRk/l;


# direct methods
.method public constructor <init>(Lhi/b;Lhi/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LRk/f;->b:Lhi/b;

    iput-object p2, p0, LRk/f;->c:Lhi/b;

    sget-object p1, LRk/j;->b:LRk/l;

    iput-object p1, p0, LRk/f;->d:LRk/l;

    return-void
.end method

.method public static synthetic a(LRk/f;)Lhi/b;
    .locals 0

    iget-object p0, p0, LRk/f;->b:Lhi/b;

    return-object p0
.end method


# virtual methods
.method public b(LXi/c;)LQk/f;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    iget-object v0, p0, LRk/f;->b:Lhi/b;

    iget-object v1, p0, LRk/f;->c:Lhi/b;

    invoke-virtual {p0, v0, v1}, LRk/f;->c(Lhi/b;Lhi/b;)LBi/S;

    move-result-object v0

    iget-object v1, p0, LRk/f;->a:Ljava/security/SecureRandom;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    new-instance v3, LXi/x0;

    invoke-direct {v3, p1, v1}, LXi/x0;-><init>(LBi/k;Ljava/security/SecureRandom;)V

    invoke-interface {v0, v2, v3}, LBi/S;->a(ZLBi/k;)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, v2, p1}, LBi/S;->a(ZLBi/k;)V

    :goto_0
    new-instance p1, LRk/f$a;

    invoke-direct {p1, p0, v0}, LRk/f$a;-><init>(LRk/f;LBi/S;)V

    return-object p1
.end method

.method public abstract c(Lhi/b;Lhi/b;)LBi/S;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation
.end method

.method public d(Ljava/security/SecureRandom;)LRk/f;
    .locals 0

    iput-object p1, p0, LRk/f;->a:Ljava/security/SecureRandom;

    return-object p0
.end method
