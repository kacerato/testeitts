.class public LAi/i;
.super LAi/j;
.source "SourceFile"


# direct methods
.method public constructor <init>([C)V
    .locals 0

    invoke-direct {p0, p1}, LAi/j;-><init>([C)V

    return-void
.end method


# virtual methods
.method public d(Lhi/b;Lhi/b;[B[B)Lorg/bouncycastle/cms/J0;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, LAi/j;->g(Lhi/b;Lhi/b;[B[B)LXi/o0;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p3, p1, p2}, LAi/p;->a(ZLBi/k;Lhi/b;)Ljava/lang/Object;

    move-result-object p1

    new-instance p3, Lorg/bouncycastle/cms/J0;

    new-instance p4, LAi/i$a;

    invoke-direct {p4, p0, p2, p1}, LAi/i$a;-><init>(LAi/i;Lhi/b;Ljava/lang/Object;)V

    invoke-direct {p3, p4}, Lorg/bouncycastle/cms/J0;-><init>(LQk/t;)V

    return-object p3
.end method
