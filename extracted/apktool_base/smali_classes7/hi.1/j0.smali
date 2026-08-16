.class public Lhi/j0;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/E;

.field public c:Loh/s;

.field public d:Loh/s;

.field public e:Lhi/b;

.field public f:Lfi/d;

.field public g:Lhi/o0;

.field public h:Lhi/o0;

.field public i:Lfi/d;

.field public j:Lhi/h0;

.field public k:Loh/c;

.field public l:Loh/c;

.field public m:Lhi/C;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 9

    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lhi/j0;->b:Loh/E;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    instance-of v1, v1, Loh/M;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    check-cast v1, Loh/M;

    invoke-static {v1, v2}, Loh/s;->G(Loh/M;Z)Loh/s;

    move-result-object v1

    iput-object v1, p0, Lhi/j0;->c:Loh/s;

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Loh/s;

    const-wide/16 v3, 0x0

    invoke-direct {v1, v3, v4}, Loh/s;-><init>(J)V

    iput-object v1, p0, Lhi/j0;->c:Loh/s;

    const/4 v1, -0x1

    :goto_0
    iget-object v3, p0, Lhi/j0;->c:Loh/s;

    invoke-virtual {v3, v0}, Loh/s;->J(I)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_1

    move v5, v0

    move v3, v2

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lhi/j0;->c:Loh/s;

    invoke-virtual {v3, v2}, Loh/s;->J(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v0

    move v5, v2

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lhi/j0;->c:Loh/s;

    invoke-virtual {v3, v4}, Loh/s;->J(I)Z

    move-result v3

    if-eqz v3, :cond_a

    move v3, v0

    move v5, v3

    :goto_1
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p1, v6}, Loh/E;->I(I)Loh/g;

    move-result-object v6

    invoke-static {v6}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v6

    iput-object v6, p0, Lhi/j0;->d:Loh/s;

    add-int/lit8 v6, v1, 0x2

    invoke-virtual {p1, v6}, Loh/E;->I(I)Loh/g;

    move-result-object v6

    invoke-static {v6}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v6

    iput-object v6, p0, Lhi/j0;->e:Lhi/b;

    add-int/lit8 v6, v1, 0x3

    invoke-virtual {p1, v6}, Loh/E;->I(I)Loh/g;

    move-result-object v6

    invoke-static {v6}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object v6

    iput-object v6, p0, Lhi/j0;->f:Lfi/d;

    add-int/lit8 v6, v1, 0x4

    invoke-virtual {p1, v6}, Loh/E;->I(I)Loh/g;

    move-result-object v6

    check-cast v6, Loh/E;

    invoke-virtual {v6, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v7

    invoke-static {v7}, Lhi/o0;->v(Ljava/lang/Object;)Lhi/o0;

    move-result-object v7

    iput-object v7, p0, Lhi/j0;->g:Lhi/o0;

    invoke-virtual {v6, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v6

    invoke-static {v6}, Lhi/o0;->v(Ljava/lang/Object;)Lhi/o0;

    move-result-object v6

    iput-object v6, p0, Lhi/j0;->h:Lhi/o0;

    add-int/lit8 v6, v1, 0x5

    invoke-virtual {p1, v6}, Loh/E;->I(I)Loh/g;

    move-result-object v6

    invoke-static {v6}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object v6

    iput-object v6, p0, Lhi/j0;->i:Lfi/d;

    add-int/lit8 v1, v1, 0x6

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v6

    invoke-static {v6}, Lhi/h0;->w(Ljava/lang/Object;)Lhi/h0;

    move-result-object v6

    iput-object v6, p0, Lhi/j0;->j:Lhi/h0;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v6

    sub-int/2addr v6, v1

    sub-int/2addr v6, v2

    if-eqz v6, :cond_4

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "version 1 certificate contains extra data"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    if-lez v6, :cond_9

    add-int v3, v1, v6

    invoke-virtual {p1, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    check-cast v3, Loh/M;

    invoke-virtual {v3}, Loh/M;->g()I

    move-result v7

    if-eq v7, v2, :cond_8

    if-eq v7, v4, :cond_7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_6

    if-nez v5, :cond_5

    invoke-static {v3, v2}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object v3

    invoke-static {v3}, Lhi/C;->C(Ljava/lang/Object;)Lhi/C;

    move-result-object v3

    iput-object v3, p0, Lhi/j0;->m:Lhi/C;

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "version 2 certificate cannot contain extensions"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown tag encountered in structure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Loh/M;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    invoke-static {v3, v0}, Loh/c;->I(Loh/M;Z)Loh/c;

    move-result-object v3

    iput-object v3, p0, Lhi/j0;->l:Loh/c;

    goto :goto_3

    :cond_8
    invoke-static {v3, v0}, Loh/c;->I(Loh/M;Z)Loh/c;

    move-result-object v3

    iput-object v3, p0, Lhi/j0;->k:Loh/c;

    :goto_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_9
    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "version number not recognised"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static w(Ljava/lang/Object;)Lhi/j0;
    .locals 1

    instance-of v0, p0, Lhi/j0;

    if-eqz v0, :cond_0

    check-cast p0, Lhi/j0;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lhi/j0;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lhi/j0;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static x(Loh/M;Z)Lhi/j0;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Lhi/j0;->w(Ljava/lang/Object;)Lhi/j0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A()Loh/s;
    .locals 1

    iget-object v0, p0, Lhi/j0;->d:Loh/s;

    return-object v0
.end method

.method public B()Lhi/b;
    .locals 1

    iget-object v0, p0, Lhi/j0;->e:Lhi/b;

    return-object v0
.end method

.method public C()Lhi/o0;
    .locals 1

    iget-object v0, p0, Lhi/j0;->g:Lhi/o0;

    return-object v0
.end method

.method public D()Lfi/d;
    .locals 1

    iget-object v0, p0, Lhi/j0;->i:Lfi/d;

    return-object v0
.end method

.method public E()Lhi/h0;
    .locals 1

    iget-object v0, p0, Lhi/j0;->j:Lhi/h0;

    return-object v0
.end method

.method public F()Loh/c;
    .locals 1

    iget-object v0, p0, Lhi/j0;->l:Loh/c;

    return-object v0
.end method

.method public G()Loh/s;
    .locals 1

    iget-object v0, p0, Lhi/j0;->c:Loh/s;

    return-object v0
.end method

.method public H()I
    .locals 1

    iget-object v0, p0, Lhi/j0;->c:Loh/s;

    invoke-virtual {v0}, Loh/s;->O()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public r()Loh/B;
    .locals 6

    const-string v0, "org.bouncycastle.x509.allow_non-der_tbscert"

    invoke-static {v0}, Lorg/bouncycastle/util/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {v0}, Lorg/bouncycastle/util/q;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhi/j0;->b:Loh/E;

    return-object v0

    :cond_0
    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    iget-object v1, p0, Lhi/j0;->c:Loh/s;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Loh/s;->J(I)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_1

    new-instance v1, Loh/K0;

    iget-object v4, p0, Lhi/j0;->c:Loh/s;

    invoke-direct {v1, v3, v2, v4}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_1
    iget-object v1, p0, Lhi/j0;->d:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lhi/j0;->e:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lhi/j0;->f:Lfi/d;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/h;

    const/4 v4, 0x2

    invoke-direct {v1, v4}, Loh/h;-><init>(I)V

    iget-object v5, p0, Lhi/j0;->g:Lhi/o0;

    invoke-virtual {v1, v5}, Loh/h;->a(Loh/g;)V

    iget-object v5, p0, Lhi/j0;->h:Lhi/o0;

    invoke-virtual {v1, v5}, Loh/h;->a(Loh/g;)V

    new-instance v5, Loh/G0;

    invoke-direct {v5, v1}, Loh/G0;-><init>(Loh/h;)V

    invoke-virtual {v0, v5}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lhi/j0;->i:Lfi/d;

    if-eqz v1, :cond_2

    :goto_0
    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    goto :goto_1

    :cond_2
    new-instance v1, Loh/G0;

    invoke-direct {v1}, Loh/G0;-><init>()V

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lhi/j0;->j:Lhi/h0;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lhi/j0;->k:Loh/c;

    if-eqz v1, :cond_3

    new-instance v5, Loh/K0;

    invoke-direct {v5, v2, v3, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v5}, Loh/h;->a(Loh/g;)V

    :cond_3
    iget-object v1, p0, Lhi/j0;->l:Loh/c;

    if-eqz v1, :cond_4

    new-instance v5, Loh/K0;

    invoke-direct {v5, v2, v4, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v5}, Loh/h;->a(Loh/g;)V

    :cond_4
    iget-object v1, p0, Lhi/j0;->m:Lhi/C;

    if-eqz v1, :cond_5

    new-instance v2, Loh/K0;

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    :cond_5
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1

    :cond_6
    iget-object v0, p0, Lhi/j0;->b:Loh/E;

    return-object v0
.end method

.method public u()Lhi/o0;
    .locals 1

    iget-object v0, p0, Lhi/j0;->h:Lhi/o0;

    return-object v0
.end method

.method public v()Lhi/C;
    .locals 1

    iget-object v0, p0, Lhi/j0;->m:Lhi/C;

    return-object v0
.end method

.method public y()Lfi/d;
    .locals 1

    iget-object v0, p0, Lhi/j0;->f:Lfi/d;

    return-object v0
.end method

.method public z()Loh/c;
    .locals 1

    iget-object v0, p0, Lhi/j0;->k:Loh/c;

    return-object v0
.end method
