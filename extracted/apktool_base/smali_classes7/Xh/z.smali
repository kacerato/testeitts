.class public LXh/z;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:I

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
    .locals 1

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LXh/z;->k:Loh/E;

    const/4 v0, 0x0

    iput v0, p0, LXh/z;->b:I

    iput-object p1, p0, LXh/z;->c:Ljava/math/BigInteger;

    iput-object p2, p0, LXh/z;->d:Ljava/math/BigInteger;

    iput-object p3, p0, LXh/z;->e:Ljava/math/BigInteger;

    iput-object p4, p0, LXh/z;->f:Ljava/math/BigInteger;

    iput-object p5, p0, LXh/z;->g:Ljava/math/BigInteger;

    iput-object p6, p0, LXh/z;->h:Ljava/math/BigInteger;

    iput-object p7, p0, LXh/z;->i:Ljava/math/BigInteger;

    iput-object p8, p0, LXh/z;->j:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LXh/z;->k:Loh/E;

    invoke-virtual {p1}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loh/s;

    invoke-virtual {v0}, Loh/s;->O()I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    iput v0, p0, LXh/z;->b:I

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loh/s;

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LXh/z;->c:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loh/s;

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LXh/z;->d:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loh/s;

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LXh/z;->e:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loh/s;

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LXh/z;->f:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loh/s;

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LXh/z;->g:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loh/s;

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LXh/z;->h:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loh/s;

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LXh/z;->i:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loh/s;

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, LXh/z;->j:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Loh/E;

    iput-object p1, p0, LXh/z;->k:Loh/E;

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "wrong version for RSA private key"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static y(Ljava/lang/Object;)LXh/z;
    .locals 3

    instance-of v0, p0, LXh/z;

    if-eqz v0, :cond_0

    check-cast p0, LXh/z;

    return-object p0

    :cond_0
    instance-of v0, p0, Loh/E;

    if-eqz v0, :cond_1

    new-instance v0, LXh/z;

    check-cast p0, Loh/E;

    invoke-direct {v0, p0}, LXh/z;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static z(Loh/M;Z)LXh/z;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, LXh/z;->y(Ljava/lang/Object;)LXh/z;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LXh/z;->c:Ljava/math/BigInteger;

    return-object v0
.end method

.method public B()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LXh/z;->f:Ljava/math/BigInteger;

    return-object v0
.end method

.method public C()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LXh/z;->g:Ljava/math/BigInteger;

    return-object v0
.end method

.method public D()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LXh/z;->e:Ljava/math/BigInteger;

    return-object v0
.end method

.method public E()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LXh/z;->d:Ljava/math/BigInteger;

    return-object v0
.end method

.method public F()I
    .locals 1

    iget v0, p0, LXh/z;->b:I

    return v0
.end method

.method public r()Loh/B;
    .locals 4

    new-instance v0, Loh/h;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    new-instance v1, Loh/s;

    iget v2, p0, LXh/z;->b:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Loh/s;-><init>(J)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/s;

    invoke-virtual {p0}, LXh/z;->A()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/s;

    invoke-virtual {p0}, LXh/z;->E()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/s;

    invoke-virtual {p0}, LXh/z;->D()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/s;

    invoke-virtual {p0}, LXh/z;->B()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/s;

    invoke-virtual {p0}, LXh/z;->C()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/s;

    invoke-virtual {p0}, LXh/z;->v()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/s;

    invoke-virtual {p0}, LXh/z;->x()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/s;

    invoke-virtual {p0}, LXh/z;->u()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LXh/z;->k:Loh/E;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LXh/z;->j:Ljava/math/BigInteger;

    return-object v0
.end method

.method public v()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LXh/z;->h:Ljava/math/BigInteger;

    return-object v0
.end method

.method public x()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LXh/z;->i:Ljava/math/BigInteger;

    return-object v0
.end method
