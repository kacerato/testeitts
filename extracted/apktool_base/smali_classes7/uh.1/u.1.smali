.class public Luh/u;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/s;

.field public c:Luh/I;

.field public d:Loh/G;

.field public e:Luh/r;

.field public f:Loh/G;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    check-cast v1, Loh/s;

    iput-object v1, p0, Luh/u;->b:Loh/s;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    instance-of v2, v1, Loh/M;

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    check-cast v1, Loh/M;

    invoke-static {v1, v0}, Luh/I;->x(Loh/M;Z)Luh/I;

    move-result-object v1

    iput-object v1, p0, Luh/u;->c:Luh/I;

    invoke-virtual {p1, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    const/4 v3, 0x3

    :cond_0
    invoke-static {v1}, Loh/G;->F(Ljava/lang/Object;)Loh/G;

    move-result-object v1

    iput-object v1, p0, Luh/u;->d:Loh/G;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p1, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Luh/r;->y(Ljava/lang/Object;)Luh/r;

    move-result-object v2

    iput-object v2, p0, Luh/u;->e:Luh/r;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v2

    if-le v2, v1, :cond_1

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    check-cast p1, Loh/M;

    invoke-static {p1, v0}, Loh/G;->G(Loh/M;Z)Loh/G;

    move-result-object p1

    iput-object p1, p0, Luh/u;->f:Loh/G;

    :cond_1
    return-void
.end method

.method public constructor <init>(Luh/I;Loh/G;Luh/r;Loh/G;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/s;

    invoke-static {p1, p2, p4}, Luh/u;->u(Luh/I;Loh/G;Loh/G;)I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    iput-object v0, p0, Luh/u;->b:Loh/s;

    iput-object p1, p0, Luh/u;->c:Luh/I;

    iput-object p2, p0, Luh/u;->d:Loh/G;

    iput-object p3, p0, Luh/u;->e:Luh/r;

    iput-object p4, p0, Luh/u;->f:Loh/G;

    return-void
.end method

.method public constructor <init>(Luh/I;Loh/G;Luh/r;Luh/c;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/s;

    invoke-static {p4}, Loh/G;->F(Ljava/lang/Object;)Loh/G;

    move-result-object v1

    invoke-static {p1, p2, v1}, Luh/u;->u(Luh/I;Loh/G;Loh/G;)I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    iput-object v0, p0, Luh/u;->b:Loh/s;

    iput-object p1, p0, Luh/u;->c:Luh/I;

    iput-object p2, p0, Luh/u;->d:Loh/G;

    iput-object p3, p0, Luh/u;->e:Luh/r;

    invoke-static {p4}, Loh/G;->F(Ljava/lang/Object;)Loh/G;

    move-result-object p1

    iput-object p1, p0, Luh/u;->f:Loh/G;

    return-void
.end method

.method public static u(Luh/I;Loh/G;Loh/G;)I
    .locals 6

    invoke-virtual {p1}, Loh/G;->I()Ljava/util/Enumeration;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Luh/Q;->v(Ljava/lang/Object;)Luh/Q;

    move-result-object v3

    invoke-virtual {v3}, Luh/Q;->x()Loh/s;

    move-result-object v4

    invoke-virtual {v4, v0}, Loh/s;->J(I)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_1

    move v2, v5

    :cond_1
    invoke-virtual {v3}, Luh/Q;->u()Loh/g;

    move-result-object v3

    instance-of v4, v3, Luh/N;

    if-nez v4, :cond_2

    instance-of v3, v3, Luh/L;

    if-eqz v3, :cond_0

    :cond_2
    move v1, v5

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    const/4 p0, 0x3

    return p0

    :cond_4
    const/4 p1, 0x2

    if-eqz v2, :cond_5

    return p1

    :cond_5
    if-nez p0, :cond_7

    if-eqz p2, :cond_6

    goto :goto_1

    :cond_6
    return v0

    :cond_7
    :goto_1
    return p1
.end method

.method public static w(Ljava/lang/Object;)Luh/u;
    .locals 1

    instance-of v0, p0, Luh/u;

    if-eqz v0, :cond_0

    check-cast p0, Luh/u;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Luh/u;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Luh/u;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static x(Loh/M;Z)Luh/u;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Luh/u;->w(Ljava/lang/Object;)Luh/u;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A()Loh/G;
    .locals 1

    iget-object v0, p0, Luh/u;->f:Loh/G;

    return-object v0
.end method

.method public B()Loh/s;
    .locals 1

    iget-object v0, p0, Luh/u;->b:Loh/s;

    return-object v0
.end method

.method public r()Loh/B;
    .locals 5

    new-instance v0, Loh/h;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Luh/u;->b:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/u;->c:Luh/I;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v3, Loh/K0;

    invoke-direct {v3, v2, v2, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Luh/u;->d:Loh/G;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/u;->e:Luh/r;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/u;->f:Loh/G;

    if-eqz v1, :cond_1

    new-instance v3, Loh/K0;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_1
    new-instance v1, Loh/g0;

    invoke-direct {v1, v0}, Loh/g0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public v()Luh/r;
    .locals 1

    iget-object v0, p0, Luh/u;->e:Luh/r;

    return-object v0
.end method

.method public y()Luh/I;
    .locals 1

    iget-object v0, p0, Luh/u;->c:Luh/I;

    return-object v0
.end method

.method public z()Loh/G;
    .locals 1

    iget-object v0, p0, Luh/u;->d:Loh/G;

    return-object v0
.end method
