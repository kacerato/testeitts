.class public LXh/E;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/s;

.field public c:LXh/l;

.field public d:Lhi/b;

.field public e:Loh/G;

.field public f:Lhi/b;

.field public g:Loh/y;

.field public h:Loh/G;


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

    iput-object v0, p0, LXh/E;->b:Loh/s;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LXh/l;->v(Ljava/lang/Object;)LXh/l;

    move-result-object v0

    iput-object v0, p0, LXh/E;->c:LXh/l;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v0

    iput-object v0, p0, LXh/E;->d:Lhi/b;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Loh/M;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Loh/M;

    invoke-static {v0, v3}, Loh/G;->G(Loh/M;Z)Loh/G;

    move-result-object v0

    iput-object v0, p0, LXh/E;->e:Loh/G;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v0

    iput-object v0, p0, LXh/E;->f:Lhi/b;

    goto :goto_1

    :cond_0
    iput-object v2, p0, LXh/E;->e:Loh/G;

    goto :goto_0

    :goto_1
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v0

    iput-object v0, p0, LXh/E;->g:Loh/y;

    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Loh/M;

    invoke-static {p1, v3}, Loh/G;->G(Loh/M;Z)Loh/G;

    move-result-object p1

    iput-object p1, p0, LXh/E;->h:Loh/G;

    goto :goto_2

    :cond_1
    iput-object v2, p0, LXh/E;->h:Loh/G;

    :goto_2
    return-void
.end method

.method public constructor <init>(Loh/s;LXh/l;Lhi/b;Loh/G;Lhi/b;Loh/y;Loh/G;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LXh/E;->b:Loh/s;

    iput-object p2, p0, LXh/E;->c:LXh/l;

    iput-object p3, p0, LXh/E;->d:Lhi/b;

    iput-object p4, p0, LXh/E;->e:Loh/G;

    iput-object p5, p0, LXh/E;->f:Lhi/b;

    iput-object p6, p0, LXh/E;->g:Loh/y;

    iput-object p7, p0, LXh/E;->h:Loh/G;

    return-void
.end method

.method public static z(Ljava/lang/Object;)LXh/E;
    .locals 3

    instance-of v0, p0, LXh/E;

    if-eqz v0, :cond_0

    check-cast p0, LXh/E;

    return-object p0

    :cond_0
    instance-of v0, p0, Loh/E;

    if-eqz v0, :cond_1

    new-instance v0, LXh/E;

    check-cast p0, Loh/E;

    invoke-direct {v0, p0}, LXh/E;-><init>(Loh/E;)V

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


# virtual methods
.method public A()LXh/l;
    .locals 1

    iget-object v0, p0, LXh/E;->c:LXh/l;

    return-object v0
.end method

.method public B()Loh/G;
    .locals 1

    iget-object v0, p0, LXh/E;->h:Loh/G;

    return-object v0
.end method

.method public C()Loh/s;
    .locals 1

    iget-object v0, p0, LXh/E;->b:Loh/s;

    return-object v0
.end method

.method public r()Loh/B;
    .locals 5

    new-instance v0, Loh/h;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, LXh/E;->b:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LXh/E;->c:LXh/l;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LXh/E;->d:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LXh/E;->e:Loh/G;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v3, Loh/K0;

    invoke-direct {v3, v2, v2, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, LXh/E;->f:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LXh/E;->g:Loh/y;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LXh/E;->h:Loh/G;

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

    iget-object v0, p0, LXh/E;->e:Loh/G;

    return-object v0
.end method

.method public v()Lhi/b;
    .locals 1

    iget-object v0, p0, LXh/E;->d:Lhi/b;

    return-object v0
.end method

.method public x()Lhi/b;
    .locals 1

    iget-object v0, p0, LXh/E;->f:Lhi/b;

    return-object v0
.end method

.method public y()Loh/y;
    .locals 1

    iget-object v0, p0, LXh/E;->g:Loh/y;

    return-object v0
.end method
