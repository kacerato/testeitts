.class public Luh/f;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/s;

.field public c:Luh/I;

.field public d:Loh/G;

.field public e:Lhi/b;

.field public f:Lhi/b;

.field public g:Luh/o;

.field public h:Loh/G;

.field public i:Loh/y;

.field public j:Loh/G;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    check-cast v1, Loh/s;

    iput-object v1, p0, Luh/f;->b:Loh/s;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    instance-of v2, v1, Loh/M;

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v2, :cond_0

    check-cast v1, Loh/M;

    invoke-static {v1, v0}, Luh/I;->x(Loh/M;Z)Luh/I;

    move-result-object v1

    iput-object v1, p0, Luh/f;->c:Luh/I;

    invoke-virtual {p1, v4}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-static {v1}, Loh/G;->F(Ljava/lang/Object;)Loh/G;

    move-result-object v1

    iput-object v1, p0, Luh/f;->d:Loh/G;

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v5

    invoke-static {v5}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v5

    iput-object v5, p0, Luh/f;->e:Lhi/b;

    add-int/lit8 v5, v2, 0x2

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    instance-of v6, v1, Loh/M;

    if-eqz v6, :cond_1

    check-cast v1, Loh/M;

    invoke-static {v1, v0}, Lhi/b;->w(Loh/M;Z)Lhi/b;

    move-result-object v1

    iput-object v1, p0, Luh/f;->f:Lhi/b;

    add-int/2addr v2, v3

    invoke-virtual {p1, v5}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    move v5, v2

    :cond_1
    invoke-static {v1}, Luh/o;->w(Ljava/lang/Object;)Luh/o;

    move-result-object v1

    iput-object v1, p0, Luh/f;->g:Luh/o;

    add-int/lit8 v1, v5, 0x1

    invoke-virtual {p1, v5}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    instance-of v3, v2, Loh/M;

    if-eqz v3, :cond_2

    check-cast v2, Loh/M;

    invoke-static {v2, v0}, Loh/G;->G(Loh/M;Z)Loh/G;

    move-result-object v2

    iput-object v2, p0, Luh/f;->h:Loh/G;

    add-int/2addr v5, v4

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    move v1, v5

    :cond_2
    invoke-static {v2}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v2

    iput-object v2, p0, Luh/f;->i:Loh/y;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v2

    if-le v2, v1, :cond_3

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    check-cast p1, Loh/M;

    invoke-static {p1, v0}, Loh/G;->G(Loh/M;Z)Loh/G;

    move-result-object p1

    iput-object p1, p0, Luh/f;->j:Loh/G;

    :cond_3
    return-void
.end method

.method public constructor <init>(Luh/I;Loh/G;Lhi/b;Lhi/b;Luh/o;Loh/G;Loh/y;Loh/G;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    if-nez p4, :cond_0

    if-eqz p6, :cond_1

    :cond_0
    if-eqz p4, :cond_2

    if-eqz p6, :cond_2

    :cond_1
    new-instance v0, Loh/s;

    invoke-static {p1}, Luh/f;->u(Luh/I;)I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    iput-object v0, p0, Luh/f;->b:Loh/s;

    iput-object p1, p0, Luh/f;->c:Luh/I;

    iput-object p3, p0, Luh/f;->e:Lhi/b;

    iput-object p4, p0, Luh/f;->f:Lhi/b;

    iput-object p2, p0, Luh/f;->d:Loh/G;

    iput-object p5, p0, Luh/f;->g:Luh/o;

    iput-object p6, p0, Luh/f;->h:Loh/G;

    iput-object p7, p0, Luh/f;->i:Loh/y;

    iput-object p8, p0, Luh/f;->j:Loh/G;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "digestAlgorithm and authAttrs must be set together"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static A(Loh/M;Z)Luh/f;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Luh/f;->z(Ljava/lang/Object;)Luh/f;

    move-result-object p0

    return-object p0
.end method

.method public static u(Luh/I;)I
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Luh/I;->v()Loh/G;

    move-result-object v1

    invoke-virtual {v1}, Loh/G;->I()Ljava/util/Enumeration;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    instance-of v5, v2, Loh/M;

    if-eqz v5, :cond_1

    check-cast v2, Loh/M;

    invoke-virtual {v2}, Loh/M;->g()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Loh/M;->g()I

    move-result v2

    if-ne v2, v4, :cond_1

    move v0, v4

    :cond_3
    invoke-virtual {p0}, Luh/I;->u()Loh/G;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Luh/I;->u()Loh/G;

    move-result-object p0

    invoke-virtual {p0}, Loh/G;->I()Ljava/util/Enumeration;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Loh/M;

    if-eqz v2, :cond_4

    check-cast v1, Loh/M;

    invoke-virtual {v1}, Loh/M;->g()I

    move-result v1

    if-ne v1, v3, :cond_4

    goto :goto_1

    :cond_5
    move v4, v0

    :goto_1
    return v4
.end method

.method public static z(Ljava/lang/Object;)Luh/f;
    .locals 1

    instance-of v0, p0, Luh/f;

    if-eqz v0, :cond_0

    check-cast p0, Luh/f;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Luh/f;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Luh/f;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public B()Loh/y;
    .locals 1

    iget-object v0, p0, Luh/f;->i:Loh/y;

    return-object v0
.end method

.method public C()Lhi/b;
    .locals 1

    iget-object v0, p0, Luh/f;->e:Lhi/b;

    return-object v0
.end method

.method public D()Luh/I;
    .locals 1

    iget-object v0, p0, Luh/f;->c:Luh/I;

    return-object v0
.end method

.method public E()Loh/G;
    .locals 1

    iget-object v0, p0, Luh/f;->d:Loh/G;

    return-object v0
.end method

.method public F()Loh/G;
    .locals 1

    iget-object v0, p0, Luh/f;->j:Loh/G;

    return-object v0
.end method

.method public G()Loh/s;
    .locals 1

    iget-object v0, p0, Luh/f;->b:Loh/s;

    return-object v0
.end method

.method public r()Loh/B;
    .locals 5

    new-instance v0, Loh/h;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Luh/f;->b:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/f;->c:Luh/I;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v3, Loh/K0;

    invoke-direct {v3, v2, v2, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Luh/f;->d:Loh/G;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/f;->e:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/f;->f:Lhi/b;

    if-eqz v1, :cond_1

    new-instance v3, Loh/K0;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_1
    iget-object v1, p0, Luh/f;->g:Luh/o;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/f;->h:Loh/G;

    if-eqz v1, :cond_2

    new-instance v3, Loh/K0;

    const/4 v4, 0x2

    invoke-direct {v3, v2, v4, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_2
    iget-object v1, p0, Luh/f;->i:Loh/y;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/f;->j:Loh/G;

    if-eqz v1, :cond_3

    new-instance v3, Loh/K0;

    const/4 v4, 0x3

    invoke-direct {v3, v2, v4, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_3
    new-instance v1, Loh/g0;

    invoke-direct {v1, v0}, Loh/g0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public v()Loh/G;
    .locals 1

    iget-object v0, p0, Luh/f;->h:Loh/G;

    return-object v0
.end method

.method public x()Lhi/b;
    .locals 1

    iget-object v0, p0, Luh/f;->f:Lhi/b;

    return-object v0
.end method

.method public y()Luh/o;
    .locals 1

    iget-object v0, p0, Luh/f;->g:Luh/o;

    return-object v0
.end method
