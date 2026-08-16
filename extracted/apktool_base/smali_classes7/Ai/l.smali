.class public LAi/l;
.super LAi/g;
.source "SourceFile"


# direct methods
.method public constructor <init>(LXi/c;)V
    .locals 0

    invoke-direct {p0, p1}, LAi/g;-><init>(LXi/c;)V

    return-void
.end method


# virtual methods
.method public a(Lhi/b;Lhi/b;[B)Lorg/bouncycastle/cms/J0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, LAi/g;->g(Lhi/b;Lhi/b;[B)LBi/k;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p3, p1, p2}, LAi/p;->a(ZLBi/k;Lhi/b;)Ljava/lang/Object;

    move-result-object p1

    new-instance p3, Lorg/bouncycastle/cms/J0;

    new-instance v0, LAi/l$a;

    invoke-direct {v0, p0, p2, p1}, LAi/l$a;-><init>(LAi/l;Lhi/b;Ljava/lang/Object;)V

    invoke-direct {p3, v0}, Lorg/bouncycastle/cms/J0;-><init>(LQk/t;)V

    return-object p3
.end method
