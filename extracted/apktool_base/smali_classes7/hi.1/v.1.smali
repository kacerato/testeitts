.class public Lhi/v;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Loh/s;

.field public c:Lhi/b;

.field public d:Lfi/d;

.field public e:Loh/E;

.field public f:Lfi/d;

.field public g:Lhi/h0;

.field public h:Lhi/C;

.field public final i:Loh/c;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 7

    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v1

    iput-object v1, p0, Lhi/v;->b:Loh/s;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    move v3, v1

    :goto_0
    instance-of v4, v2, Loh/M;

    if-eqz v4, :cond_4

    invoke-static {v2}, Loh/M;->R(Ljava/lang/Object;)Loh/M;

    move-result-object v2

    invoke-virtual {v2}, Loh/M;->g()I

    move-result v4

    if-eqz v4, :cond_3

    if-eq v4, v1, :cond_2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v2, v1}, Lfi/d;->y(Loh/M;Z)Lfi/d;

    move-result-object v2

    iput-object v2, p0, Lhi/v;->f:Lfi/d;

    goto :goto_1

    :cond_1
    invoke-static {v2, v0}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object v2

    iput-object v2, p0, Lhi/v;->e:Loh/E;

    goto :goto_1

    :cond_2
    invoke-static {v2, v1}, Lfi/d;->y(Loh/M;Z)Lfi/d;

    move-result-object v2

    iput-object v2, p0, Lhi/v;->d:Lfi/d;

    goto :goto_1

    :cond_3
    invoke-static {v2, v0}, Lhi/b;->w(Loh/M;Z)Lhi/b;

    move-result-object v2

    iput-object v2, p0, Lhi/v;->c:Lhi/b;

    :goto_1
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p1, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    move-object v6, v3

    move v3, v2

    move-object v2, v6

    goto :goto_0

    :cond_4
    invoke-static {v2}, Lhi/h0;->w(Ljava/lang/Object;)Lhi/h0;

    move-result-object v1

    iput-object v1, p0, Lhi/v;->g:Lhi/h0;

    invoke-virtual {p1, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    :goto_2
    instance-of v2, v1, Loh/M;

    if-eqz v2, :cond_6

    invoke-static {v1}, Loh/M;->R(Ljava/lang/Object;)Loh/M;

    move-result-object v1

    invoke-virtual {v1}, Loh/M;->g()I

    move-result v2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {v1, v0}, Lhi/C;->D(Loh/M;Z)Lhi/C;

    move-result-object v1

    iput-object v1, p0, Lhi/v;->h:Lhi/C;

    :goto_3
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p1, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    move v3, v1

    move-object v1, v2

    goto :goto_2

    :cond_6
    invoke-static {v1}, Loh/c;->H(Ljava/lang/Object;)Loh/c;

    move-result-object p1

    iput-object p1, p0, Lhi/v;->i:Loh/c;

    return-void
.end method

.method public static v(Lhi/C;)Lhi/v;
    .locals 1

    sget-object v0, Lhi/B;->N:Loh/x;

    invoke-static {p0, v0}, Lhi/C;->A(Lhi/C;Loh/x;)Loh/g;

    move-result-object p0

    invoke-static {p0}, Lhi/v;->y(Ljava/lang/Object;)Lhi/v;

    move-result-object p0

    return-object p0
.end method

.method public static y(Ljava/lang/Object;)Lhi/v;
    .locals 1

    instance-of v0, p0, Lhi/v;

    if-eqz v0, :cond_0

    check-cast p0, Lhi/v;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lhi/v;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lhi/v;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public A()Loh/s;
    .locals 1

    iget-object v0, p0, Lhi/v;->b:Loh/s;

    return-object v0
.end method

.method public B()Lhi/b;
    .locals 1

    iget-object v0, p0, Lhi/v;->c:Lhi/b;

    return-object v0
.end method

.method public C()Loh/c;
    .locals 1

    iget-object v0, p0, Lhi/v;->i:Loh/c;

    return-object v0
.end method

.method public D()Lfi/d;
    .locals 1

    iget-object v0, p0, Lhi/v;->f:Lfi/d;

    return-object v0
.end method

.method public E()Lhi/h0;
    .locals 1

    iget-object v0, p0, Lhi/v;->g:Lhi/h0;

    return-object v0
.end method

.method public F()Loh/E;
    .locals 1

    iget-object v0, p0, Lhi/v;->e:Loh/E;

    return-object v0
.end method

.method public G(Lhi/j0;Lhi/C;)Lhi/v;
    .locals 12

    iget-object v0, p1, Lhi/j0;->e:Lhi/b;

    iget-object v1, p1, Lhi/j0;->f:Lfi/d;

    new-instance v2, Loh/G0;

    iget-object v3, p1, Lhi/j0;->g:Lhi/o0;

    iget-object v4, p1, Lhi/j0;->h:Lhi/o0;

    const/4 v5, 0x2

    new-array v6, v5, [Loh/g;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v3, 0x1

    aput-object v4, v6, v3

    invoke-direct {v2, v6}, Loh/G0;-><init>([Loh/g;)V

    iget-object p1, p1, Lhi/j0;->i:Lfi/d;

    invoke-virtual {p0}, Lhi/v;->r()Loh/B;

    move-result-object v4

    invoke-static {v4}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v4

    new-instance v6, Loh/h;

    invoke-direct {v6}, Loh/h;-><init>()V

    invoke-virtual {v4}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Loh/g;

    :goto_0
    invoke-virtual {v6, v8}, Loh/h;->a(Loh/g;)V

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Loh/g;

    instance-of v9, v8, Loh/M;

    if-eqz v9, :cond_5

    invoke-static {v8}, Loh/M;->R(Ljava/lang/Object;)Loh/M;

    move-result-object v9

    invoke-virtual {v9}, Loh/M;->g()I

    move-result v10

    if-eqz v10, :cond_4

    if-eq v10, v3, :cond_3

    if-eq v10, v5, :cond_2

    const/4 v11, 0x3

    if-eq v10, v11, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v9, v3}, Lfi/d;->y(Loh/M;Z)Lfi/d;

    move-result-object v9

    invoke-virtual {v9, p1}, Lfi/d;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    :goto_2
    goto :goto_0

    :cond_2
    invoke-static {v9, v7}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object v9

    invoke-virtual {v9, v2}, Loh/B;->A(Loh/B;)Z

    move-result v9

    if-nez v9, :cond_0

    goto :goto_2

    :cond_3
    invoke-static {v9, v3}, Lfi/d;->y(Loh/M;Z)Lfi/d;

    move-result-object v9

    invoke-virtual {v9, v1}, Lfi/d;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    goto :goto_2

    :cond_4
    invoke-static {v9, v7}, Lhi/b;->w(Loh/M;Z)Lhi/b;

    move-result-object v9

    invoke-virtual {v9, v0}, Loh/v;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    goto :goto_2

    :cond_5
    invoke-virtual {v6, v8}, Loh/h;->a(Loh/g;)V

    :cond_6
    :goto_3
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Loh/g;

    instance-of v0, p1, Loh/M;

    if-eqz v0, :cond_a

    invoke-static {p1}, Loh/M;->R(Ljava/lang/Object;)Loh/M;

    move-result-object p1

    invoke-virtual {p1}, Loh/M;->g()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {p1, v7}, Lhi/C;->D(Loh/M;Z)Lhi/C;

    move-result-object p1

    new-instance v0, Lhi/D;

    invoke-direct {v0}, Lhi/D;-><init>()V

    invoke-virtual {p1}, Lhi/C;->F()Ljava/util/Enumeration;

    move-result-object v2

    :cond_8
    :goto_4
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Loh/x;

    invoke-virtual {p1, v3}, Lhi/C;->x(Loh/x;)Lhi/B;

    move-result-object v3

    invoke-virtual {v3}, Lhi/B;->x()Loh/x;

    move-result-object v5

    invoke-virtual {p2, v5}, Lhi/C;->x(Loh/x;)Lhi/B;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v3, v5}, Lhi/B;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v0, v3}, Lhi/D;->a(Lhi/B;)V

    goto :goto_4

    :cond_9
    invoke-virtual {v0}, Lhi/D;->h()Z

    move-result p1

    if-nez p1, :cond_6

    new-instance p1, Loh/K0;

    invoke-virtual {v0}, Lhi/D;->e()Lhi/C;

    move-result-object v0

    invoke-direct {p1, v7, v1, v0}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v6, p1}, Loh/h;->a(Loh/g;)V

    goto :goto_3

    :cond_a
    invoke-virtual {v6, p1}, Loh/h;->a(Loh/g;)V

    new-instance p1, Lhi/v;

    new-instance p2, Loh/G0;

    invoke-direct {p2, v6}, Loh/G0;-><init>(Loh/h;)V

    invoke-direct {p1, p2}, Lhi/v;-><init>(Loh/E;)V

    return-object p1
.end method

.method public r()Loh/B;
    .locals 5

    new-instance v0, Loh/h;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lhi/v;->b:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lhi/v;->c:Lhi/b;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v2, v1}, Lhi/v;->u(Loh/h;IZLoh/v;)V

    iget-object v1, p0, Lhi/v;->d:Lfi/d;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3, v3, v1}, Lhi/v;->u(Loh/h;IZLoh/v;)V

    const/4 v1, 0x2

    iget-object v4, p0, Lhi/v;->e:Loh/E;

    invoke-virtual {p0, v0, v1, v2, v4}, Lhi/v;->u(Loh/h;IZLoh/v;)V

    const/4 v1, 0x3

    iget-object v4, p0, Lhi/v;->f:Lfi/d;

    invoke-virtual {p0, v0, v1, v3, v4}, Lhi/v;->u(Loh/h;IZLoh/v;)V

    iget-object v1, p0, Lhi/v;->g:Lhi/h0;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    const/4 v1, 0x4

    iget-object v3, p0, Lhi/v;->h:Lhi/C;

    invoke-virtual {p0, v0, v1, v2, v3}, Lhi/v;->u(Loh/h;IZLoh/v;)V

    iget-object v1, p0, Lhi/v;->i:Loh/c;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public final u(Loh/h;IZLoh/v;)V
    .locals 1

    if-eqz p4, :cond_0

    new-instance v0, Loh/K0;

    invoke-direct {v0, p3, p2, p4}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {p1, v0}, Loh/h;->a(Loh/g;)V

    :cond_0
    return-void
.end method

.method public x()Lhi/C;
    .locals 1

    iget-object v0, p0, Lhi/v;->h:Lhi/C;

    return-object v0
.end method

.method public z()Lfi/d;
    .locals 1

    iget-object v0, p0, Lhi/v;->d:Lfi/d;

    return-object v0
.end method
