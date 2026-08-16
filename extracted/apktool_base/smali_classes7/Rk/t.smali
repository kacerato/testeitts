.class public LRk/t;
.super LRk/g;
.source "SourceFile"


# instance fields
.field public b:LQk/o;


# direct methods
.method public constructor <init>(LQk/o;)V
    .locals 0

    invoke-direct {p0}, LRk/g;-><init>()V

    iput-object p1, p0, LRk/t;->b:LQk/o;

    return-void
.end method


# virtual methods
.method public e(Lhi/b;)LBi/S;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    iget-object v0, p0, LRk/t;->b:LQk/o;

    invoke-interface {v0, p1}, LQk/o;->c(Lhi/b;)Lhi/b;

    move-result-object p1

    iget-object v0, p0, LRk/g;->a:LRk/l;

    invoke-interface {v0, p1}, LRk/l;->a(Lhi/b;)LBi/D;

    move-result-object p1

    new-instance v0, Lbj/w;

    invoke-direct {v0, p1}, Lbj/w;-><init>(LBi/y;)V

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
