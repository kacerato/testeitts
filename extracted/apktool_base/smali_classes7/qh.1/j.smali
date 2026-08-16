.class public Lqh/j;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Ljava/math/BigInteger;

.field public final c:Lhi/b;

.field public final d:Loh/n;

.field public final e:Loh/n;

.field public final f:Lqh/h;

.field public final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lhi/b;Ljava/util/Date;Ljava/util/Date;Lqh/h;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lqh/j;->b:Ljava/math/BigInteger;

    iput-object p1, p0, Lqh/j;->c:Lhi/b;

    new-instance p1, Loh/w0;

    invoke-direct {p1, p2}, Loh/w0;-><init>(Ljava/util/Date;)V

    iput-object p1, p0, Lqh/j;->d:Loh/n;

    new-instance p1, Loh/w0;

    invoke-direct {p1, p3}, Loh/w0;-><init>(Ljava/util/Date;)V

    iput-object p1, p0, Lqh/j;->e:Loh/n;

    iput-object p4, p0, Lqh/j;->f:Lqh/h;

    iput-object p5, p0, Lqh/j;->g:Ljava/lang/String;

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

    iput-object v0, p0, Lqh/j;->b:Ljava/math/BigInteger;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v0

    iput-object v0, p0, Lqh/j;->c:Lhi/b;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/n;->J(Ljava/lang/Object;)Loh/n;

    move-result-object v0

    iput-object v0, p0, Lqh/j;->d:Loh/n;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/n;->J(Ljava/lang/Object;)Loh/n;

    move-result-object v0

    iput-object v0, p0, Lqh/j;->e:Loh/n;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lqh/h;->u(Ljava/lang/Object;)Lqh/h;

    move-result-object v0

    iput-object v0, p0, Lqh/j;->f:Lqh/h;

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
    iput-object p1, p0, Lqh/j;->g:Ljava/lang/String;

    return-void
.end method

.method public static w(Ljava/lang/Object;)Lqh/j;
    .locals 1

    instance-of v0, p0, Lqh/j;

    if-eqz v0, :cond_0

    check-cast p0, Lqh/j;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lqh/j;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lqh/j;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public A()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lqh/j;->b:Ljava/math/BigInteger;

    return-object v0
.end method

.method public r()Loh/B;
    .locals 3

    new-instance v0, Loh/h;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    new-instance v1, Loh/s;

    iget-object v2, p0, Lqh/j;->b:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lqh/j;->c:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lqh/j;->d:Loh/n;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lqh/j;->e:Loh/n;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lqh/j;->f:Lqh/h;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lqh/j;->g:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Loh/M0;

    iget-object v2, p0, Lqh/j;->g:Ljava/lang/String;

    invoke-direct {v1, v2}, Loh/M0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqh/j;->g:Ljava/lang/String;

    return-object v0
.end method

.method public v()Loh/n;
    .locals 1

    iget-object v0, p0, Lqh/j;->d:Loh/n;

    return-object v0
.end method

.method public x()Lhi/b;
    .locals 1

    iget-object v0, p0, Lqh/j;->c:Lhi/b;

    return-object v0
.end method

.method public y()Loh/n;
    .locals 1

    iget-object v0, p0, Lqh/j;->e:Loh/n;

    return-object v0
.end method

.method public z()Lqh/h;
    .locals 1

    iget-object v0, p0, Lqh/j;->f:Lqh/h;

    return-object v0
.end method
