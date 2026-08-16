.class public Lqh/g;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Ljava/math/BigInteger;

.field public final c:Ljava/lang/String;

.field public final d:Loh/n;

.field public final e:Loh/n;

.field public final f:Loh/y;

.field public final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;[BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lqh/g;->b:Ljava/math/BigInteger;

    iput-object p2, p0, Lqh/g;->c:Ljava/lang/String;

    new-instance p1, Loh/w0;

    invoke-direct {p1, p3}, Loh/w0;-><init>(Ljava/util/Date;)V

    iput-object p1, p0, Lqh/g;->d:Loh/n;

    new-instance p1, Loh/w0;

    invoke-direct {p1, p4}, Loh/w0;-><init>(Ljava/util/Date;)V

    iput-object p1, p0, Lqh/g;->e:Loh/n;

    new-instance p1, Loh/C0;

    invoke-static {p5}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p2

    invoke-direct {p1, p2}, Loh/C0;-><init>([B)V

    iput-object p1, p0, Lqh/g;->f:Loh/y;

    iput-object p6, p0, Lqh/g;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v0

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lqh/g;->b:Ljava/math/BigInteger;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/Q;->F(Ljava/lang/Object;)Loh/Q;

    move-result-object v0

    invoke-virtual {v0}, Loh/Q;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lqh/g;->c:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/n;->J(Ljava/lang/Object;)Loh/n;

    move-result-object v0

    iput-object v0, p0, Lqh/g;->d:Loh/n;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/n;->J(Ljava/lang/Object;)Loh/n;

    move-result-object v0

    iput-object v0, p0, Lqh/g;->e:Loh/n;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v0

    iput-object v0, p0, Lqh/g;->f:Loh/y;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/Q;->F(Ljava/lang/Object;)Loh/Q;

    move-result-object p1

    invoke-virtual {p1}, Loh/Q;->getString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lqh/g;->g:Ljava/lang/String;

    return-void
.end method

.method public static z(Ljava/lang/Object;)Lqh/g;
    .locals 1

    instance-of v0, p0, Lqh/g;

    if-eqz v0, :cond_0

    check-cast p0, Lqh/g;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lqh/g;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lqh/g;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public A()Loh/n;
    .locals 1

    iget-object v0, p0, Lqh/g;->e:Loh/n;

    return-object v0
.end method

.method public B()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lqh/g;->b:Ljava/math/BigInteger;

    return-object v0
.end method

.method public r()Loh/B;
    .locals 3

    new-instance v0, Loh/h;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    new-instance v1, Loh/s;

    iget-object v2, p0, Lqh/g;->b:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/M0;

    iget-object v2, p0, Lqh/g;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Loh/M0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lqh/g;->d:Loh/n;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lqh/g;->e:Loh/n;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lqh/g;->f:Loh/y;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lqh/g;->g:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Loh/M0;

    iget-object v2, p0, Lqh/g;->g:Ljava/lang/String;

    invoke-direct {v1, v2}, Loh/M0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqh/g;->g:Ljava/lang/String;

    return-object v0
.end method

.method public v()Loh/n;
    .locals 1

    iget-object v0, p0, Lqh/g;->d:Loh/n;

    return-object v0
.end method

.method public x()[B
    .locals 1

    iget-object v0, p0, Lqh/g;->f:Loh/y;

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqh/g;->c:Ljava/lang/String;

    return-object v0
.end method
