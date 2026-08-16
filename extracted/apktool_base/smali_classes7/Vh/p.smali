.class public LVh/p;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:LVh/b;

.field public c:LVh/c;

.field public d:Loh/n;

.field public e:Loh/n;

.field public f:Lhi/C;


# direct methods
.method public constructor <init>(LVh/b;LVh/c;Loh/n;Loh/n;Lhi/C;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LVh/p;->b:LVh/b;

    iput-object p2, p0, LVh/p;->c:LVh/c;

    iput-object p3, p0, LVh/p;->d:Loh/n;

    iput-object p4, p0, LVh/p;->e:Loh/n;

    iput-object p5, p0, LVh/p;->f:Lhi/C;

    return-void
.end method

.method public constructor <init>(LVh/b;LVh/c;Loh/n;Loh/n;Lhi/z0;)V
    .locals 6

    .line 2
    invoke-static {p5}, Lhi/C;->C(Ljava/lang/Object;)Lhi/C;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, LVh/p;-><init>(LVh/b;LVh/c;Loh/n;Loh/n;Lhi/C;)V

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, LVh/b;->v(Ljava/lang/Object;)LVh/b;

    move-result-object v0

    iput-object v0, p0, LVh/p;->b:LVh/b;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, LVh/c;->u(Ljava/lang/Object;)LVh/c;

    move-result-object v1

    iput-object v1, p0, LVh/p;->c:LVh/c;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Loh/n;->J(Ljava/lang/Object;)Loh/n;

    move-result-object v1

    iput-object v1, p0, LVh/p;->d:Loh/n;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-le v1, v3, :cond_1

    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    check-cast v1, Loh/M;

    invoke-static {v1, v0}, Loh/n;->K(Loh/M;Z)Loh/n;

    move-result-object v1

    iput-object v1, p0, LVh/p;->e:Loh/n;

    invoke-virtual {p1, v3}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    check-cast p1, Loh/M;

    :cond_0
    invoke-static {p1, v0}, Lhi/C;->D(Loh/M;Z)Lhi/C;

    move-result-object p1

    iput-object p1, p0, LVh/p;->f:Lhi/C;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v1

    if-le v1, v2, :cond_2

    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    check-cast p1, Loh/M;

    invoke-virtual {p1}, Loh/M;->g()I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1, v0}, Loh/n;->K(Loh/M;Z)Loh/n;

    move-result-object p1

    iput-object p1, p0, LVh/p;->e:Loh/n;

    :cond_2
    :goto_0
    return-void
.end method

.method public static w(Ljava/lang/Object;)LVh/p;
    .locals 1

    instance-of v0, p0, LVh/p;

    if-eqz v0, :cond_0

    check-cast p0, LVh/p;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LVh/p;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LVh/p;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static x(Loh/M;Z)LVh/p;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, LVh/p;->w(Ljava/lang/Object;)LVh/p;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A()Loh/n;
    .locals 1

    iget-object v0, p0, LVh/p;->d:Loh/n;

    return-object v0
.end method

.method public r()Loh/B;
    .locals 5

    new-instance v0, Loh/h;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, LVh/p;->b:LVh/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LVh/p;->c:LVh/c;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LVh/p;->d:Loh/n;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LVh/p;->e:Loh/n;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    new-instance v3, Loh/K0;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, LVh/p;->f:Lhi/C;

    if-eqz v1, :cond_1

    new-instance v3, Loh/K0;

    invoke-direct {v3, v2, v2, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_1
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()LVh/b;
    .locals 1

    iget-object v0, p0, LVh/p;->b:LVh/b;

    return-object v0
.end method

.method public v()LVh/c;
    .locals 1

    iget-object v0, p0, LVh/p;->c:LVh/c;

    return-object v0
.end method

.method public y()Loh/n;
    .locals 1

    iget-object v0, p0, LVh/p;->e:Loh/n;

    return-object v0
.end method

.method public z()Lhi/C;
    .locals 1

    iget-object v0, p0, LVh/p;->f:Lhi/C;

    return-object v0
.end method
