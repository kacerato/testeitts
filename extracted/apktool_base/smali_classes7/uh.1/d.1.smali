.class public Luh/d;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/s;

.field public c:Luh/I;

.field public d:Loh/G;

.field public e:Luh/r;

.field public f:Loh/G;

.field public g:Loh/y;

.field public h:Loh/G;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-interface {v1}, Loh/g;->r()Loh/B;

    move-result-object v1

    invoke-static {v1}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v1

    iput-object v1, p0, Luh/d;->b:Loh/s;

    invoke-virtual {v1, v0}, Loh/s;->J(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-interface {v1}, Loh/g;->r()Loh/B;

    move-result-object v1

    instance-of v2, v1, Loh/M;

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v2, :cond_0

    check-cast v1, Loh/M;

    invoke-static {v1, v0}, Luh/I;->x(Loh/M;Z)Luh/I;

    move-result-object v1

    iput-object v1, p0, Luh/d;->c:Luh/I;

    invoke-virtual {p1, v4}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-interface {v1}, Loh/g;->r()Loh/B;

    move-result-object v1

    move v4, v3

    :cond_0
    invoke-static {v1}, Loh/G;->F(Ljava/lang/Object;)Loh/G;

    move-result-object v1

    iput-object v1, p0, Luh/d;->d:Loh/G;

    invoke-virtual {v1}, Loh/G;->size()I

    move-result v1

    if-eqz v1, :cond_5

    add-int/lit8 v1, v4, 0x1

    invoke-virtual {p1, v4}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-interface {v2}, Loh/g;->r()Loh/B;

    move-result-object v2

    invoke-static {v2}, Luh/r;->y(Ljava/lang/Object;)Luh/r;

    move-result-object v2

    iput-object v2, p0, Luh/d;->e:Luh/r;

    add-int/lit8 v2, v4, 0x2

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-interface {v1}, Loh/g;->r()Loh/B;

    move-result-object v1

    instance-of v5, v1, Loh/M;

    if-eqz v5, :cond_1

    check-cast v1, Loh/M;

    invoke-static {v1, v0}, Loh/G;->G(Loh/M;Z)Loh/G;

    move-result-object v1

    iput-object v1, p0, Luh/d;->f:Loh/G;

    add-int/2addr v4, v3

    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-interface {v1}, Loh/g;->r()Loh/B;

    move-result-object v1

    move v2, v4

    goto :goto_0

    :cond_1
    iget-object v3, p0, Luh/d;->e:Luh/r;

    invoke-virtual {v3}, Luh/r;->v()Loh/x;

    move-result-object v3

    sget-object v4, Luh/l;->m8:Loh/x;

    invoke-virtual {v3, v4}, Loh/B;->A(Loh/B;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Luh/d;->f:Loh/G;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Loh/G;->size()I

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "authAttrs must be present with non-data content"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    invoke-static {v1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v1

    iput-object v1, p0, Luh/d;->g:Loh/y;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v1

    if-le v1, v2, :cond_4

    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-interface {p1}, Loh/g;->r()Loh/B;

    move-result-object p1

    check-cast p1, Loh/M;

    invoke-static {p1, v0}, Loh/G;->G(Loh/M;Z)Loh/G;

    move-result-object p1

    iput-object p1, p0, Luh/d;->h:Loh/G;

    :cond_4
    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "AuthEnvelopedData requires at least 1 RecipientInfo"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "AuthEnvelopedData version number must be 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Luh/I;Loh/G;Luh/r;Loh/G;Loh/y;Loh/G;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/s;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    iput-object v0, p0, Luh/d;->b:Loh/s;

    iput-object p1, p0, Luh/d;->c:Luh/I;

    iput-object p2, p0, Luh/d;->d:Loh/G;

    invoke-virtual {p2}, Loh/G;->size()I

    move-result p1

    if-eqz p1, :cond_2

    iput-object p3, p0, Luh/d;->e:Luh/r;

    iput-object p4, p0, Luh/d;->f:Loh/G;

    invoke-virtual {p3}, Luh/r;->v()Loh/x;

    move-result-object p1

    sget-object p2, Luh/l;->m8:Loh/x;

    invoke-virtual {p1, p2}, Loh/B;->A(Loh/B;)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Loh/G;->size()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "authAttrs must be present with non-data content"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p5, p0, Luh/d;->g:Loh/y;

    iput-object p6, p0, Luh/d;->h:Loh/G;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "AuthEnvelopedData requires at least 1 RecipientInfo"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static w(Ljava/lang/Object;)Luh/d;
    .locals 1

    instance-of v0, p0, Luh/d;

    if-eqz v0, :cond_0

    check-cast p0, Luh/d;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Luh/d;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Luh/d;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static x(Loh/M;Z)Luh/d;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Luh/d;->w(Ljava/lang/Object;)Luh/d;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A()Loh/G;
    .locals 1

    iget-object v0, p0, Luh/d;->d:Loh/G;

    return-object v0
.end method

.method public B()Loh/G;
    .locals 1

    iget-object v0, p0, Luh/d;->h:Loh/G;

    return-object v0
.end method

.method public C()Loh/s;
    .locals 1

    iget-object v0, p0, Luh/d;->b:Loh/s;

    return-object v0
.end method

.method public r()Loh/B;
    .locals 5

    new-instance v0, Loh/h;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Luh/d;->b:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/d;->c:Luh/I;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v3, Loh/K0;

    invoke-direct {v3, v2, v2, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Luh/d;->d:Loh/G;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/d;->e:Luh/r;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/d;->f:Loh/G;

    if-eqz v1, :cond_1

    new-instance v3, Loh/K0;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_1
    iget-object v1, p0, Luh/d;->g:Loh/y;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/d;->h:Loh/G;

    if-eqz v1, :cond_2

    new-instance v3, Loh/K0;

    const/4 v4, 0x2

    invoke-direct {v3, v2, v4, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_2
    new-instance v1, Loh/g0;

    invoke-direct {v1, v0}, Loh/g0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Loh/G;
    .locals 1

    iget-object v0, p0, Luh/d;->f:Loh/G;

    return-object v0
.end method

.method public v()Luh/r;
    .locals 1

    iget-object v0, p0, Luh/d;->e:Luh/r;

    return-object v0
.end method

.method public y()Loh/y;
    .locals 1

    iget-object v0, p0, Luh/d;->g:Loh/y;

    return-object v0
.end method

.method public z()Luh/I;
    .locals 1

    iget-object v0, p0, Luh/d;->c:Luh/I;

    return-object v0
.end method
