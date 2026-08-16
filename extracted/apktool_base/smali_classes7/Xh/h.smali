.class public LXh/h;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/s;

.field public c:Loh/s;

.field public d:Loh/s;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/s;

    invoke-direct {v0, p1}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, LXh/h;->b:Loh/s;

    new-instance p1, Loh/s;

    invoke-direct {p1, p2}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, LXh/h;->c:Loh/s;

    if-eqz p3, :cond_0

    new-instance p1, Loh/s;

    int-to-long p2, p3

    invoke-direct {p1, p2, p3}, Loh/s;-><init>(J)V

    :goto_0
    iput-object p1, p0, LXh/h;->d:Loh/s;

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v0

    iput-object v0, p0, LXh/h;->b:Loh/s;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v0

    iput-object v0, p0, LXh/h;->c:Loh/s;

    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Loh/s;

    :goto_0
    iput-object p1, p0, LXh/h;->d:Loh/s;

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public static v(Ljava/lang/Object;)LXh/h;
    .locals 1

    instance-of v0, p0, LXh/h;

    if-eqz v0, :cond_0

    check-cast p0, LXh/h;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LXh/h;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LXh/h;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, LXh/h;->b:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LXh/h;->c:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    invoke-virtual {p0}, LXh/h;->x()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LXh/h;->d:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LXh/h;->c:Loh/s;

    invoke-virtual {v0}, Loh/s;->H()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public x()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LXh/h;->d:Loh/s;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Loh/s;->H()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public y()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LXh/h;->b:Loh/s;

    invoke-virtual {v0}, Loh/s;->H()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
