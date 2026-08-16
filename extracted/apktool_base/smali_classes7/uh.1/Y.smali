.class public Luh/Y;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/s;

.field public c:Luh/X;

.field public d:Lhi/b;

.field public e:Loh/G;

.field public f:Lhi/b;

.field public g:Loh/y;

.field public h:Loh/G;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loh/s;

    iput-object v0, p0, Luh/Y;->b:Loh/s;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Luh/X;->v(Ljava/lang/Object;)Luh/X;

    move-result-object v0

    iput-object v0, p0, Luh/Y;->c:Luh/X;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v0

    iput-object v0, p0, Luh/Y;->d:Lhi/b;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Loh/M;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Loh/M;

    invoke-static {v0, v3}, Loh/G;->G(Loh/M;Z)Loh/G;

    move-result-object v0

    iput-object v0, p0, Luh/Y;->e:Loh/G;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v0

    iput-object v0, p0, Luh/Y;->f:Lhi/b;

    goto :goto_1

    :cond_0
    iput-object v2, p0, Luh/Y;->e:Loh/G;

    goto :goto_0

    :goto_1
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v0

    iput-object v0, p0, Luh/Y;->g:Loh/y;

    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Loh/M;

    invoke-static {p1, v3}, Loh/G;->G(Loh/M;Z)Loh/G;

    move-result-object p1

    iput-object p1, p0, Luh/Y;->h:Loh/G;

    goto :goto_2

    :cond_1
    iput-object v2, p0, Luh/Y;->h:Loh/G;

    :goto_2
    return-void
.end method

.method public constructor <init>(Luh/X;Lhi/b;Loh/G;Lhi/b;Loh/y;Loh/G;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Luh/X;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Loh/s;

    const-wide/16 v1, 0x3

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    :goto_0
    iput-object v0, p0, Luh/Y;->b:Loh/s;

    goto :goto_1

    :cond_0
    new-instance v0, Loh/s;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    goto :goto_0

    :goto_1
    iput-object p1, p0, Luh/Y;->c:Luh/X;

    iput-object p2, p0, Luh/Y;->d:Lhi/b;

    iput-object p3, p0, Luh/Y;->e:Loh/G;

    iput-object p4, p0, Luh/Y;->f:Lhi/b;

    iput-object p5, p0, Luh/Y;->g:Loh/y;

    iput-object p6, p0, Luh/Y;->h:Loh/G;

    return-void
.end method

.method public constructor <init>(Luh/X;Lhi/b;Luh/c;Lhi/b;Loh/y;Luh/c;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Luh/X;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Loh/s;

    const-wide/16 v1, 0x3

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    :goto_0
    iput-object v0, p0, Luh/Y;->b:Loh/s;

    goto :goto_1

    :cond_0
    new-instance v0, Loh/s;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    goto :goto_0

    :goto_1
    iput-object p1, p0, Luh/Y;->c:Luh/X;

    iput-object p2, p0, Luh/Y;->d:Lhi/b;

    invoke-static {p3}, Loh/G;->F(Ljava/lang/Object;)Loh/G;

    move-result-object p1

    iput-object p1, p0, Luh/Y;->e:Loh/G;

    iput-object p4, p0, Luh/Y;->f:Lhi/b;

    iput-object p5, p0, Luh/Y;->g:Loh/y;

    invoke-static {p6}, Loh/G;->F(Ljava/lang/Object;)Loh/G;

    move-result-object p1

    iput-object p1, p0, Luh/Y;->h:Loh/G;

    return-void
.end method

.method public static z(Ljava/lang/Object;)Luh/Y;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    instance-of v0, p0, Luh/Y;

    if-eqz v0, :cond_0

    check-cast p0, Luh/Y;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Luh/Y;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Luh/Y;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public A()Luh/X;
    .locals 1

    iget-object v0, p0, Luh/Y;->c:Luh/X;

    return-object v0
.end method

.method public B()Loh/G;
    .locals 1

    iget-object v0, p0, Luh/Y;->h:Loh/G;

    return-object v0
.end method

.method public C()Loh/s;
    .locals 1

    iget-object v0, p0, Luh/Y;->b:Loh/s;

    return-object v0
.end method

.method public r()Loh/B;
    .locals 5

    new-instance v0, Loh/h;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Luh/Y;->b:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/Y;->c:Luh/X;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/Y;->d:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/Y;->e:Loh/G;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v3, Loh/K0;

    invoke-direct {v3, v2, v2, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Luh/Y;->f:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/Y;->g:Loh/y;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/Y;->h:Loh/G;

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

    iget-object v0, p0, Luh/Y;->e:Loh/G;

    return-object v0
.end method

.method public v()Lhi/b;
    .locals 1

    iget-object v0, p0, Luh/Y;->d:Lhi/b;

    return-object v0
.end method

.method public x()Lhi/b;
    .locals 1

    iget-object v0, p0, Luh/Y;->f:Lhi/b;

    return-object v0
.end method

.method public y()Loh/y;
    .locals 1

    iget-object v0, p0, Luh/Y;->g:Loh/y;

    return-object v0
.end method
