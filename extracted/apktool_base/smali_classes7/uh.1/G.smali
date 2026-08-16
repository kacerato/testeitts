.class public Luh/G;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/e;

.field public c:Loh/Q;

.field public d:Loh/q;

.field public e:Luh/c;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/e;->G(Ljava/lang/Object;)Loh/e;

    move-result-object v0

    iput-object v0, p0, Luh/G;->b:Loh/e;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    instance-of v0, v0, Loh/Q;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/Q;->F(Ljava/lang/Object;)Loh/Q;

    move-result-object v0

    iput-object v0, p0, Luh/G;->c:Loh/Q;

    const/4 v1, 0x2

    :cond_0
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    instance-of v0, v0, Loh/q;

    if-eqz v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Loh/q;->F(Ljava/lang/Object;)Loh/q;

    move-result-object v1

    iput-object v1, p0, Luh/G;->d:Loh/q;

    move v1, v0

    :cond_1
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Luh/c;->v(Ljava/lang/Object;)Luh/c;

    move-result-object p1

    iput-object p1, p0, Luh/G;->e:Luh/c;

    :cond_2
    return-void
.end method

.method public constructor <init>(Loh/e;Loh/Q;Loh/q;Luh/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Luh/G;->b:Loh/e;

    iput-object p2, p0, Luh/G;->c:Loh/Q;

    iput-object p3, p0, Luh/G;->d:Loh/q;

    iput-object p4, p0, Luh/G;->e:Luh/c;

    return-void
.end method

.method public static w(Ljava/lang/Object;)Luh/G;
    .locals 1

    instance-of v0, p0, Luh/G;

    if-eqz v0, :cond_0

    check-cast p0, Luh/G;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Luh/G;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Luh/G;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public A()Z
    .locals 1

    iget-object v0, p0, Luh/G;->b:Loh/e;

    invoke-virtual {v0}, Loh/e;->J()Z

    move-result v0

    return v0
.end method

.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Luh/G;->b:Loh/e;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/G;->c:Loh/Q;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Luh/G;->d:Loh/q;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_1
    iget-object v1, p0, Luh/G;->e:Luh/c;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_2
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Loh/M0;
    .locals 2

    iget-object v0, p0, Luh/G;->c:Loh/Q;

    if-eqz v0, :cond_1

    instance-of v1, v0, Loh/M0;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Loh/M0;

    iget-object v1, p0, Luh/G;->c:Loh/Q;

    invoke-virtual {v1}, Loh/Q;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Loh/M0;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    check-cast v0, Loh/M0;

    :goto_1
    return-object v0
.end method

.method public v()Loh/Q;
    .locals 1

    iget-object v0, p0, Luh/G;->c:Loh/Q;

    return-object v0
.end method

.method public x()Loh/z0;
    .locals 3

    iget-object v0, p0, Luh/G;->d:Loh/q;

    if-eqz v0, :cond_1

    instance-of v1, v0, Loh/z0;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Loh/z0;

    iget-object v1, p0, Luh/G;->d:Loh/q;

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

.method public y()Loh/q;
    .locals 1

    iget-object v0, p0, Luh/G;->d:Loh/q;

    return-object v0
.end method

.method public z()Luh/c;
    .locals 1

    iget-object v0, p0, Luh/G;->e:Luh/c;

    return-object v0
.end method
