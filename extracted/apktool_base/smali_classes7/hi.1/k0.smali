.class public Lhi/k0;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements Lhi/E0;
.implements LXh/t;


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

.field public m:Lhi/z0;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 7

    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lhi/k0;->b:Loh/E;

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

    iput-object v1, p0, Lhi/k0;->c:Loh/s;

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Loh/s;

    const-wide/16 v3, 0x0

    invoke-direct {v1, v3, v4}, Loh/s;-><init>(J)V

    iput-object v1, p0, Lhi/k0;->c:Loh/s;

    const/4 v1, -0x1

    :goto_0
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v3

    iput-object v3, p0, Lhi/k0;->d:Loh/s;

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p1, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v3

    iput-object v3, p0, Lhi/k0;->e:Lhi/b;

    add-int/lit8 v3, v1, 0x3

    invoke-virtual {p1, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object v3

    iput-object v3, p0, Lhi/k0;->f:Lfi/d;

    add-int/lit8 v3, v1, 0x4

    invoke-virtual {p1, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    check-cast v3, Loh/E;

    invoke-virtual {v3, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v4

    invoke-static {v4}, Lhi/o0;->v(Ljava/lang/Object;)Lhi/o0;

    move-result-object v4

    iput-object v4, p0, Lhi/k0;->g:Lhi/o0;

    invoke-virtual {v3, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Lhi/o0;->v(Ljava/lang/Object;)Lhi/o0;

    move-result-object v3

    iput-object v3, p0, Lhi/k0;->h:Lhi/o0;

    add-int/lit8 v3, v1, 0x5

    invoke-virtual {p1, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object v3

    iput-object v3, p0, Lhi/k0;->i:Lfi/d;

    add-int/lit8 v1, v1, 0x6

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Lhi/h0;->w(Ljava/lang/Object;)Lhi/h0;

    move-result-object v3

    iput-object v3, p0, Lhi/k0;->j:Lhi/h0;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v3

    sub-int/2addr v3, v1

    sub-int/2addr v3, v2

    :goto_1
    if-lez v3, :cond_4

    add-int v4, v1, v3

    invoke-virtual {p1, v4}, Loh/E;->I(I)Loh/g;

    move-result-object v4

    invoke-static {v4}, Loh/M;->R(Ljava/lang/Object;)Loh/M;

    move-result-object v4

    invoke-virtual {v4}, Loh/M;->g()I

    move-result v5

    if-eq v5, v2, :cond_3

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {v4}, Lhi/z0;->z(Ljava/lang/Object;)Lhi/z0;

    move-result-object v4

    iput-object v4, p0, Lhi/k0;->m:Lhi/z0;

    goto :goto_2

    :cond_2
    invoke-static {v4, v0}, Loh/c;->I(Loh/M;Z)Loh/c;

    move-result-object v4

    iput-object v4, p0, Lhi/k0;->l:Loh/c;

    goto :goto_2

    :cond_3
    invoke-static {v4, v0}, Loh/c;->I(Loh/M;Z)Loh/c;

    move-result-object v4

    iput-object v4, p0, Lhi/k0;->k:Loh/c;

    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public static w(Ljava/lang/Object;)Lhi/k0;
    .locals 1

    instance-of v0, p0, Lhi/k0;

    if-eqz v0, :cond_0

    check-cast p0, Lhi/k0;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lhi/k0;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lhi/k0;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static x(Loh/M;Z)Lhi/k0;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Lhi/k0;->w(Ljava/lang/Object;)Lhi/k0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A()Loh/s;
    .locals 1

    iget-object v0, p0, Lhi/k0;->d:Loh/s;

    return-object v0
.end method

.method public B()Lhi/b;
    .locals 1

    iget-object v0, p0, Lhi/k0;->e:Lhi/b;

    return-object v0
.end method

.method public C()Lhi/o0;
    .locals 1

    iget-object v0, p0, Lhi/k0;->g:Lhi/o0;

    return-object v0
.end method

.method public D()Lfi/d;
    .locals 1

    iget-object v0, p0, Lhi/k0;->i:Lfi/d;

    return-object v0
.end method

.method public E()Lhi/h0;
    .locals 1

    iget-object v0, p0, Lhi/k0;->j:Lhi/h0;

    return-object v0
.end method

.method public F()Loh/c;
    .locals 1

    iget-object v0, p0, Lhi/k0;->l:Loh/c;

    return-object v0
.end method

.method public G()I
    .locals 1

    iget-object v0, p0, Lhi/k0;->c:Loh/s;

    invoke-virtual {v0}, Loh/s;->O()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public H()Loh/s;
    .locals 1

    iget-object v0, p0, Lhi/k0;->c:Loh/s;

    return-object v0
.end method

.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, Lhi/k0;->b:Loh/E;

    return-object v0
.end method

.method public u()Lhi/o0;
    .locals 1

    iget-object v0, p0, Lhi/k0;->h:Lhi/o0;

    return-object v0
.end method

.method public v()Lhi/z0;
    .locals 1

    iget-object v0, p0, Lhi/k0;->m:Lhi/z0;

    return-object v0
.end method

.method public y()Lfi/d;
    .locals 1

    iget-object v0, p0, Lhi/k0;->f:Lfi/d;

    return-object v0
.end method

.method public z()Loh/c;
    .locals 1

    iget-object v0, p0, Lhi/k0;->k:Loh/c;

    return-object v0
.end method
