.class public LAi/k;
.super Lorg/bouncycastle/cms/C0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Loh/x;[C)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/cms/C0;-><init>(Loh/x;[C)V

    return-void
.end method


# virtual methods
.method public b(ILhi/b;I)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-virtual {p2}, Lhi/b;->x()Loh/g;

    move-result-object p2

    invoke-static {p2}, LXh/q;->u(Ljava/lang/Object;)LXh/q;

    move-result-object p2

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/cms/C0;->a:[C

    invoke-static {p1}, LBi/L;->b([C)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/cms/C0;->a:[C

    invoke-static {p1}, LBi/L;->c([C)[B

    move-result-object p1

    :goto_0
    :try_start_0
    new-instance v0, LOi/J;

    invoke-virtual {p2}, LXh/q;->y()Lhi/b;

    move-result-object v1

    invoke-static {v1}, LAi/p;->f(Lhi/b;)LBi/D;

    move-result-object v1

    invoke-direct {v0, v1}, LOi/J;-><init>(LBi/y;)V

    invoke-virtual {p2}, LXh/q;->z()[B

    move-result-object v1

    invoke-virtual {p2}, LXh/q;->v()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigInteger;->intValue()I

    move-result p2

    invoke-virtual {v0, p1, v1, p2}, LBi/L;->j([B[BI)V

    invoke-virtual {v0, p3}, LOi/J;->e(I)LBi/k;

    move-result-object p1

    check-cast p1, LXi/o0;

    invoke-virtual {p1}, LXi/o0;->b()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception creating derived key: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public c(Lhi/b;[BLQk/r;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-static {p3}, LAi/o;->a(LQk/r;)LBi/k;

    move-result-object p3

    check-cast p3, LXi/o0;

    invoke-virtual {p3}, LXi/o0;->b()[B

    move-result-object p3

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object v0

    invoke-static {v0}, LAi/p;->c(Loh/x;)LBi/Z;

    move-result-object v0

    new-instance v1, LXi/w0;

    new-instance v2, LXi/o0;

    invoke-direct {v2, p2}, LXi/o0;-><init>([B)V

    invoke-virtual {p1}, Lhi/b;->x()Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p1

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    invoke-direct {v1, v2, p1}, LXi/w0;-><init>(LBi/k;[B)V

    const/4 p1, 0x1

    invoke-interface {v0, p1, v1}, LBi/Z;->a(ZLBi/k;)V

    array-length p1, p3

    const/4 p2, 0x0

    invoke-interface {v0, p3, p2, p1}, LBi/Z;->c([BII)[B

    move-result-object p1

    return-object p1
.end method
