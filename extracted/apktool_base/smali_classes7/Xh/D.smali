.class public LXh/D;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements LXh/t;


# instance fields
.field public b:Loh/s;

.field public c:Loh/G;

.field public d:LXh/g;

.field public e:Loh/G;

.field public f:Loh/G;

.field public g:Loh/G;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loh/s;

    iput-object v0, p0, LXh/D;->b:Loh/s;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loh/G;

    iput-object v0, p0, LXh/D;->c:Loh/G;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LXh/g;->w(Ljava/lang/Object;)LXh/g;

    move-result-object v0

    iput-object v0, p0, LXh/D;->d:LXh/g;

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loh/B;

    instance-of v1, v0, Loh/M;

    if-eqz v1, :cond_2

    check-cast v0, Loh/M;

    invoke-virtual {v0}, Loh/M;->g()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    invoke-static {v0, v2}, Loh/G;->G(Loh/M;Z)Loh/G;

    move-result-object v0

    iput-object v0, p0, LXh/D;->f:Loh/G;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown tag value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Loh/M;->g()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {v0, v2}, Loh/G;->G(Loh/M;Z)Loh/G;

    move-result-object v0

    iput-object v0, p0, LXh/D;->e:Loh/G;

    goto :goto_0

    :cond_2
    check-cast v0, Loh/G;

    iput-object v0, p0, LXh/D;->g:Loh/G;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public constructor <init>(Loh/s;Loh/G;LXh/g;Loh/G;Loh/G;Loh/G;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LXh/D;->b:Loh/s;

    iput-object p2, p0, LXh/D;->c:Loh/G;

    iput-object p3, p0, LXh/D;->d:LXh/g;

    iput-object p4, p0, LXh/D;->e:Loh/G;

    iput-object p5, p0, LXh/D;->f:Loh/G;

    iput-object p6, p0, LXh/D;->g:Loh/G;

    return-void
.end method

.method public static z(Ljava/lang/Object;)LXh/D;
    .locals 1

    instance-of v0, p0, LXh/D;

    if-eqz v0, :cond_0

    check-cast p0, LXh/D;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LXh/D;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LXh/D;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public A()Loh/G;
    .locals 1

    iget-object v0, p0, LXh/D;->g:Loh/G;

    return-object v0
.end method

.method public B()Loh/s;
    .locals 1

    iget-object v0, p0, LXh/D;->b:Loh/s;

    return-object v0
.end method

.method public r()Loh/B;
    .locals 5

    new-instance v0, Loh/h;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, LXh/D;->b:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LXh/D;->c:Loh/G;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LXh/D;->d:LXh/g;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LXh/D;->e:Loh/G;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v3, Loh/K0;

    invoke-direct {v3, v2, v2, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, LXh/D;->f:Loh/G;

    if-eqz v1, :cond_1

    new-instance v3, Loh/K0;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_1
    iget-object v1, p0, LXh/D;->g:Loh/G;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/g0;

    invoke-direct {v1, v0}, Loh/g0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Loh/G;
    .locals 1

    iget-object v0, p0, LXh/D;->f:Loh/G;

    return-object v0
.end method

.method public v()Loh/G;
    .locals 1

    iget-object v0, p0, LXh/D;->e:Loh/G;

    return-object v0
.end method

.method public x()LXh/g;
    .locals 1

    iget-object v0, p0, LXh/D;->d:LXh/g;

    return-object v0
.end method

.method public y()Loh/G;
    .locals 1

    iget-object v0, p0, LXh/D;->c:Loh/G;

    return-object v0
.end method
