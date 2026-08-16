.class public LRk/p;
.super LRk/f;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lhi/b;)V
    .locals 2

    new-instance v0, Lhi/b;

    sget-object v1, LSh/d;->e:Loh/x;

    invoke-direct {v0, v1}, Lhi/b;-><init>(Loh/x;)V

    invoke-direct {p0, p1, v0}, LRk/f;-><init>(Lhi/b;Lhi/b;)V

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

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object p1

    sget-object p2, LBh/a;->d:Loh/x;

    invoke-virtual {p1, p2}, Loh/B;->A(Loh/B;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lbj/j;

    invoke-direct {p1}, Lbj/j;-><init>()V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "unknown signature type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
