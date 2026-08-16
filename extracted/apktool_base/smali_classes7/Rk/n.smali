.class public LRk/n;
.super LRk/g;
.source "SourceFile"


# instance fields
.field public b:LQk/o;


# direct methods
.method public constructor <init>(LQk/o;)V
    .locals 0

    invoke-direct {p0}, LRk/g;-><init>()V

    iput-object p1, p0, LRk/n;->b:LQk/o;

    return-void
.end method


# virtual methods
.method public e(Lhi/b;)LBi/S;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    iget-object v0, p0, LRk/n;->b:LQk/o;

    invoke-interface {v0, p1}, LQk/o;->c(Lhi/b;)Lhi/b;

    move-result-object p1

    iget-object v0, p0, LRk/g;->a:LRk/l;

    invoke-interface {v0, p1}, LRk/l;->a(Lhi/b;)LBi/D;

    move-result-object p1

    new-instance v0, Lbj/a;

    new-instance v1, Lbj/f;

    invoke-direct {v1}, Lbj/f;-><init>()V

    invoke-direct {v0, v1, p1}, Lbj/a;-><init>(LBi/s;LBi/y;)V

    return-object v0
.end method

.method public f(Lhi/h0;)LXi/c;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/crypto/util/q;->b(Lhi/h0;)LXi/c;

    move-result-object p1

    return-object p1
.end method
