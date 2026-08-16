.class public LRk/s;
.super LRk/f;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lhi/b;Lhi/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LRk/f;-><init>(Lhi/b;Lhi/b;)V

    return-void
.end method


# virtual methods
.method public c(Lhi/b;Lhi/b;)LBi/S;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    iget-object p1, p0, LRk/f;->d:LRk/l;

    invoke-interface {p1, p2}, LRk/l;->a(Lhi/b;)LBi/D;

    move-result-object p1

    new-instance p2, Lbj/w;

    invoke-direct {p2, p1}, Lbj/w;-><init>(LBi/y;)V

    return-object p2
.end method
