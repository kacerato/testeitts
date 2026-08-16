.class public LXh/y;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Ljava/math/BigInteger;

.field public c:Ljava/math/BigInteger;

.field public d:Ljava/math/BigInteger;

.field public e:Ljava/math/BigInteger;

.field public f:Ljava/math/BigInteger;

.field public g:Ljava/math/BigInteger;

.field public h:Ljava/math/BigInteger;

.field public i:Ljava/math/BigInteger;

.field public j:Ljava/math/BigInteger;

.field public k:Loh/E;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LXh/y;->k:Loh/E;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LXh/y;->b:Ljava/math/BigInteger;

    iput-object p1, p0, LXh/y;->c:Ljava/math/BigInteger;

    iput-object p2, p0, LXh/y;->d:Ljava/math/BigInteger;

    iput-object p3, p0, LXh/y;->e:Ljava/math/BigInteger;

    iput-object p4, p0, LXh/y;->f:Ljava/math/BigInteger;

    iput-object p5, p0, LXh/y;->g:Ljava/math/BigInteger;

    iput-object p6, p0, LXh/y;->h:Ljava/math/BigInteger;

    iput-object p7, p0, LXh/y;->i:Ljava/math/BigInteger;

    iput-object p8, p0, LXh/y;->j:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LXh/y;->k:Loh/E;

    invoke-virtual {p1}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loh/s;

    invoke-virtual {v0}, Loh/s;->O()I

    move-result v1

    if-ltz v1, :cond_1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LXh/y;->b:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loh/s;

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LXh/y;->c:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loh/s;

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LXh/y;->d:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loh/s;

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LXh/y;->e:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loh/s;

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LXh/y;->f:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loh/s;

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LXh/y;->g:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loh/s;

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LXh/y;->h:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loh/s;

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LXh/y;->i:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loh/s;

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LXh/y;->j:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Loh/E;

    iput-object p1, p0, LXh/y;->k:Loh/E;

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "wrong version for RSA private key"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static y(Ljava/lang/Object;)LXh/y;
    .locals 1

    instance-of v0, p0, LXh/y;

    if-eqz v0, :cond_0

    check-cast p0, LXh/y;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LXh/y;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LXh/y;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static z(Loh/M;Z)LXh/y;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, LXh/y;->y(Ljava/lang/Object;)LXh/y;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LXh/y;->c:Ljava/math/BigInteger;

    return-object v0
.end method

.method public B()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LXh/y;->f:Ljava/math/BigInteger;

    return-object v0
.end method

.method public C()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LXh/y;->g:Ljava/math/BigInteger;

    return-object v0
.end method

.method public D()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LXh/y;->e:Ljava/math/BigInteger;

    return-object v0
.end method

.method public E()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LXh/y;->d:Ljava/math/BigInteger;

    return-object v0
.end method

.method public F()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LXh/y;->b:Ljava/math/BigInteger;

    return-object v0
.end method

.method public r()Loh/B;
    .locals 3

    new-instance v0, Loh/h;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    new-instance v1, Loh/s;

    iget-object v2, p0, LXh/y;->b:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/s;

    invoke-virtual {p0}, LXh/y;->A()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/s;

    invoke-virtual {p0}, LXh/y;->E()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/s;

    invoke-virtual {p0}, LXh/y;->D()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/s;

    invoke-virtual {p0}, LXh/y;->B()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/s;

    invoke-virtual {p0}, LXh/y;->C()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/s;

    invoke-virtual {p0}, LXh/y;->v()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/s;

    invoke-virtual {p0}, LXh/y;->x()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/s;

    invoke-virtual {p0}, LXh/y;->u()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LXh/y;->k:Loh/E;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LXh/y;->j:Ljava/math/BigInteger;

    return-object v0
.end method

.method public v()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LXh/y;->h:Ljava/math/BigInteger;

    return-object v0
.end method

.method public x()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LXh/y;->i:Ljava/math/BigInteger;

    return-object v0
.end method
