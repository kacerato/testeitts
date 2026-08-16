.class public LRk/r;
.super LRk/e;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lhi/b;LXi/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LRk/e;-><init>(Lhi/b;LXi/c;)V

    return-void
.end method

.method public constructor <init>(Lhi/b;Lhi/h0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p2}, Lorg/bouncycastle/crypto/util/q;->b(Lhi/h0;)LXi/c;

    move-result-object p2

    invoke-direct {p0, p1, p2}, LRk/e;-><init>(Lhi/b;LXi/c;)V

    return-void
.end method


# virtual methods
.method public c(Loh/x;)LBi/b;
    .locals 1

    new-instance p1, LKi/c;

    new-instance v0, LLi/e0;

    invoke-direct {v0}, LLi/e0;-><init>()V

    invoke-direct {p1, v0}, LKi/c;-><init>(LBi/b;)V

    return-object p1
.end method
