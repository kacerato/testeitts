.class public Lcm/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Luh/G;

.field public b:Ljava/net/URI;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LQk/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    new-instance v0, Lcm/e;

    iget-object v1, p0, Lcm/d;->a:Luh/G;

    invoke-direct {v0, v1}, Lcm/e;-><init>(Luh/G;)V

    invoke-virtual {v0, p1}, Lcm/e;->e(LQk/p;)V

    return-void
.end method

.method public b(Ljava/net/URI;)V
    .locals 0

    iput-object p1, p0, Lcm/d;->b:Ljava/net/URI;

    return-void
.end method

.method public c(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcm/d;->d(ZLjava/lang/String;Ljava/lang/String;Luh/c;)V

    return-void
.end method

.method public d(ZLjava/lang/String;Ljava/lang/String;Luh/c;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    new-instance v1, Loh/M0;

    invoke-direct {v1, p2}, Loh/M0;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz p3, :cond_1

    new-instance v0, Loh/z0;

    invoke-direct {v0, p3}, Loh/z0;-><init>(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, p1, v1, v0, p4}, Lcm/d;->e(ZLoh/Q;Loh/q;Luh/c;)V

    return-void
.end method

.method public final e(ZLoh/Q;Loh/q;Luh/c;)V
    .locals 1

    new-instance v0, Luh/G;

    invoke-static {p1}, Loh/e;->I(Z)Loh/e;

    move-result-object p1

    invoke-direct {v0, p1, p2, p3, p4}, Luh/G;-><init>(Loh/e;Loh/Q;Loh/q;Luh/c;)V

    iput-object v0, p0, Lcm/d;->a:Luh/G;

    return-void
.end method
