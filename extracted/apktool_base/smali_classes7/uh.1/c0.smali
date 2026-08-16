.class public Luh/c0;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/s;

.field public c:Loh/q;

.field public d:Luh/G;

.field public e:Loh/y;

.field public f:Luh/w;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v0

    iput-object v0, p0, Luh/c0;->b:Loh/s;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    instance-of v1, v1, Loh/q;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/q;->F(Ljava/lang/Object;)Loh/q;

    move-result-object v0

    iput-object v0, p0, Luh/c0;->c:Loh/q;

    const/4 v0, 0x2

    :cond_0
    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    instance-of v1, v1, Luh/G;

    if-nez v1, :cond_1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    instance-of v1, v1, Loh/E;

    if-eqz v1, :cond_2

    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Luh/G;->w(Ljava/lang/Object;)Luh/G;

    move-result-object v0

    iput-object v0, p0, Luh/c0;->d:Luh/G;

    move v0, v1

    :cond_2
    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    instance-of v1, v1, Loh/y;

    if-eqz v1, :cond_3

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v0

    iput-object v0, p0, Luh/c0;->e:Loh/y;

    move v0, v1

    :cond_3
    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Luh/w;->v(Ljava/lang/Object;)Luh/w;

    move-result-object p1

    iput-object p1, p0, Luh/c0;->f:Luh/w;

    return-void
.end method

.method public constructor <init>(Loh/q;Luh/G;Loh/y;Luh/w;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/s;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    iput-object v0, p0, Luh/c0;->b:Loh/s;

    iput-object p1, p0, Luh/c0;->c:Loh/q;

    iput-object p2, p0, Luh/c0;->d:Luh/G;

    iput-object p3, p0, Luh/c0;->e:Loh/y;

    iput-object p4, p0, Luh/c0;->f:Luh/w;

    return-void
.end method

.method public static y(Ljava/lang/Object;)Luh/c0;
    .locals 1

    if-eqz p0, :cond_1

    instance-of v0, p0, Luh/c0;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Luh/c0;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Luh/c0;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    :goto_0
    check-cast p0, Luh/c0;

    return-object p0
.end method


# virtual methods
.method public A()Luh/w;
    .locals 1

    iget-object v0, p0, Luh/c0;->f:Luh/w;

    return-object v0
.end method

.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Luh/c0;->b:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/c0;->c:Loh/q;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Luh/c0;->d:Luh/G;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_1
    iget-object v1, p0, Luh/c0;->e:Loh/y;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_2
    iget-object v1, p0, Luh/c0;->f:Luh/w;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/g0;

    invoke-direct {v1, v0}, Loh/g0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Loh/y;
    .locals 1

    iget-object v0, p0, Luh/c0;->e:Loh/y;

    return-object v0
.end method

.method public v()Loh/z0;
    .locals 3

    iget-object v0, p0, Luh/c0;->c:Loh/q;

    if-eqz v0, :cond_1

    instance-of v1, v0, Loh/z0;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Loh/z0;

    iget-object v1, p0, Luh/c0;->c:Loh/q;

    invoke-virtual {v1}, Loh/q;->getString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Loh/z0;-><init>(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    :goto_0
    check-cast v0, Loh/z0;

    :goto_1
    return-object v0
.end method

.method public x()Loh/q;
    .locals 1

    iget-object v0, p0, Luh/c0;->c:Loh/q;

    return-object v0
.end method

.method public z()Luh/G;
    .locals 1

    iget-object v0, p0, Luh/c0;->d:Luh/G;

    return-object v0
.end method
