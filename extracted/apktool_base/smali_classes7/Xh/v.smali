.class public LXh/v;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/s;

.field public c:Lhi/b;

.field public d:Loh/y;

.field public e:Loh/G;

.field public f:Loh/c;


# direct methods
.method public constructor <init>(Lhi/b;Loh/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v0}, LXh/v;-><init>(Lhi/b;Loh/g;Loh/G;[B)V

    return-void
.end method

.method public constructor <init>(Lhi/b;Loh/g;Loh/G;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, LXh/v;-><init>(Lhi/b;Loh/g;Loh/G;[B)V

    return-void
.end method

.method public constructor <init>(Lhi/b;Loh/g;Loh/G;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/s;

    if-eqz p4, :cond_0

    sget-object v1, Lorg/bouncycastle/util/b;->b:Ljava/math/BigInteger;

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/bouncycastle/util/b;->a:Ljava/math/BigInteger;

    :goto_0
    invoke-direct {v0, v1}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, LXh/v;->b:Loh/s;

    iput-object p1, p0, LXh/v;->c:Lhi/b;

    new-instance p1, Loh/C0;

    invoke-direct {p1, p2}, Loh/C0;-><init>(Loh/g;)V

    iput-object p1, p0, LXh/v;->d:Loh/y;

    iput-object p3, p0, LXh/v;->e:Loh/G;

    if-nez p4, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    new-instance p1, Loh/r0;

    invoke-direct {p1, p4}, Loh/r0;-><init>([B)V

    :goto_1
    iput-object p1, p0, LXh/v;->f:Loh/c;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 5

    .line 4
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v0

    iput-object v0, p0, LXh/v;->b:Loh/s;

    invoke-static {v0}, LXh/v;->C(Loh/s;)I

    move-result v0

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v1

    iput-object v1, p0, LXh/v;->c:Lhi/b;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v1

    iput-object v1, p0, LXh/v;->d:Loh/y;

    const/4 v1, -0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Loh/M;

    invoke-virtual {v2}, Loh/M;->g()I

    move-result v3

    if-le v3, v1, :cond_3

    const/4 v1, 0x0

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    if-lt v0, v4, :cond_0

    invoke-static {v2, v1}, Loh/c;->I(Loh/M;Z)Loh/c;

    move-result-object v1

    iput-object v1, p0, LXh/v;->f:Loh/c;

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'publicKey\' requires version v2(1) or later"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown optional field in private key info"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {v2, v1}, Loh/G;->G(Loh/M;Z)Loh/G;

    move-result-object v1

    iput-object v1, p0, LXh/v;->e:Loh/G;

    :goto_1
    move v1, v3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid optional field in private key info"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-void
.end method

.method public static C(Loh/s;)I
    .locals 1

    invoke-virtual {p0}, Loh/s;->O()I

    move-result p0

    if-ltz p0, :cond_0

    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid version for private key info"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static v(Ljava/lang/Object;)LXh/v;
    .locals 1

    instance-of v0, p0, LXh/v;

    if-eqz v0, :cond_0

    check-cast p0, LXh/v;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LXh/v;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LXh/v;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static w(Loh/M;Z)LXh/v;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, LXh/v;->v(Ljava/lang/Object;)LXh/v;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A()Loh/c;
    .locals 1

    iget-object v0, p0, LXh/v;->f:Loh/c;

    return-object v0
.end method

.method public B()Loh/s;
    .locals 1

    iget-object v0, p0, LXh/v;->b:Loh/s;

    return-object v0
.end method

.method public D()Z
    .locals 1

    iget-object v0, p0, LXh/v;->f:Loh/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public E()Loh/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LXh/v;->d:Loh/y;

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    invoke-static {v0}, Loh/B;->B([B)Loh/B;

    move-result-object v0

    return-object v0
.end method

.method public F()Loh/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LXh/v;->f:Loh/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Loh/c;->J()[B

    move-result-object v0

    invoke-static {v0}, Loh/B;->B([B)Loh/B;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public r()Loh/B;
    .locals 5

    new-instance v0, Loh/h;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, LXh/v;->b:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LXh/v;->c:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LXh/v;->d:Loh/y;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LXh/v;->e:Loh/G;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v3, Loh/K0;

    invoke-direct {v3, v2, v2, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, LXh/v;->f:Loh/c;

    if-eqz v1, :cond_1

    new-instance v3, Loh/K0;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_1
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Loh/G;
    .locals 1

    iget-object v0, p0, LXh/v;->e:Loh/G;

    return-object v0
.end method

.method public x()Loh/y;
    .locals 2

    new-instance v0, Loh/C0;

    iget-object v1, p0, LXh/v;->d:Loh/y;

    invoke-virtual {v1}, Loh/y;->H()[B

    move-result-object v1

    invoke-direct {v0, v1}, Loh/C0;-><init>([B)V

    return-object v0
.end method

.method public y()Lhi/b;
    .locals 1

    iget-object v0, p0, LXh/v;->c:Lhi/b;

    return-object v0
.end method

.method public z()I
    .locals 1

    iget-object v0, p0, LXh/v;->d:Loh/y;

    invoke-virtual {v0}, Loh/y;->I()I

    move-result v0

    return v0
.end method
