.class public Ljk/f$c;
.super Ljk/f$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljk/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final k:I = 0x1

.field public static final l:I = 0x2

.field public static final m:I = 0x3


# instance fields
.field public g:I

.field public h:I

.field public i:[I

.field public j:Ljk/o;


# direct methods
.method public constructor <init>(I[ILjk/o;)V
    .locals 1

    invoke-direct {p0}, Ljk/f$a;-><init>()V

    iput p1, p0, Ljk/f$c;->h:I

    array-length p1, p2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    iput p1, p0, Ljk/f$c;->g:I

    iput-object p2, p0, Ljk/f$c;->i:[I

    iput-object p3, p0, Ljk/f$c;->j:Ljk/o;

    return-void
.end method


# virtual methods
.method public A()I
    .locals 3

    iget-object v0, p0, Ljk/f$c;->i:[I

    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public B()I
    .locals 3

    iget-object v0, p0, Ljk/f$c;->i:[I

    array-length v1, v0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    const/4 v1, 0x2

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public C()I
    .locals 1

    iget v0, p0, Ljk/f$c;->h:I

    return v0
.end method

.method public D()I
    .locals 1

    iget v0, p0, Ljk/f$c;->g:I

    return v0
.end method

.method public a(Ljk/f;)Ljk/f;
    .locals 3

    iget-object v0, p0, Ljk/f$c;->j:Ljk/o;

    invoke-virtual {v0}, Ljk/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljk/o;

    check-cast p1, Ljk/f$c;

    iget-object p1, p1, Ljk/f$c;->j:Ljk/o;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljk/o;->f(Ljk/o;I)V

    new-instance p1, Ljk/f$c;

    iget v1, p0, Ljk/f$c;->h:I

    iget-object v2, p0, Ljk/f$c;->i:[I

    invoke-direct {p1, v1, v2, v0}, Ljk/f$c;-><init>(I[ILjk/o;)V

    return-object p1
.end method

.method public b()Ljk/f;
    .locals 4

    new-instance v0, Ljk/f$c;

    iget v1, p0, Ljk/f$c;->h:I

    iget-object v2, p0, Ljk/f$c;->i:[I

    iget-object v3, p0, Ljk/f$c;->j:Ljk/o;

    invoke-virtual {v3}, Ljk/o;->d()Ljk/o;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ljk/f$c;-><init>(I[ILjk/o;)V

    return-object v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Ljk/f$c;->j:Ljk/o;

    invoke-virtual {v0}, Ljk/o;->k()I

    move-result v0

    return v0
.end method

.method public d(Ljk/f;)Ljk/f;
    .locals 0

    invoke-virtual {p1}, Ljk/f;->h()Ljk/f;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljk/f$c;->k(Ljk/f;)Ljk/f;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljk/f$c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ljk/f$c;

    iget v1, p0, Ljk/f$c;->h:I

    iget v3, p1, Ljk/f$c;->h:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Ljk/f$c;->g:I

    iget v3, p1, Ljk/f$c;->g:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Ljk/f$c;->i:[I

    iget-object v3, p1, Ljk/f$c;->i:[I

    invoke-static {v1, v3}, Lorg/bouncycastle/util/a;->i([I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljk/f$c;->j:Ljk/o;

    iget-object p1, p1, Ljk/f$c;->j:Ljk/o;

    invoke-virtual {v1, p1}, Ljk/o;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "F2m"

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Ljk/f$c;->h:I

    return v0
.end method

.method public h()Ljk/f;
    .locals 4

    new-instance v0, Ljk/f$c;

    iget v1, p0, Ljk/f$c;->h:I

    iget-object v2, p0, Ljk/f$c;->i:[I

    iget-object v3, p0, Ljk/f$c;->j:Ljk/o;

    invoke-virtual {v3, v1, v2}, Ljk/o;->I(I[I)Ljk/o;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ljk/f$c;-><init>(I[ILjk/o;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Ljk/f$c;->j:Ljk/o;

    invoke-virtual {v0}, Ljk/o;->hashCode()I

    move-result v0

    iget v1, p0, Ljk/f$c;->h:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Ljk/f$c;->i:[I

    invoke-static {v1}, Lorg/bouncycastle/util/a;->w0([I)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Ljk/f$c;->j:Ljk/o;

    invoke-virtual {v0}, Ljk/o;->G()Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Ljk/f$c;->j:Ljk/o;

    invoke-virtual {v0}, Ljk/o;->H()Z

    move-result v0

    return v0
.end method

.method public k(Ljk/f;)Ljk/f;
    .locals 4

    new-instance v0, Ljk/f$c;

    iget v1, p0, Ljk/f$c;->h:I

    iget-object v2, p0, Ljk/f$c;->i:[I

    iget-object v3, p0, Ljk/f$c;->j:Ljk/o;

    check-cast p1, Ljk/f$c;

    iget-object p1, p1, Ljk/f$c;->j:Ljk/o;

    invoke-virtual {v3, p1, v1, v2}, Ljk/o;->J(Ljk/o;I[I)Ljk/o;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Ljk/f$c;-><init>(I[ILjk/o;)V

    return-object v0
.end method

.method public l(Ljk/f;Ljk/f;Ljk/f;)Ljk/f;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Ljk/f$c;->m(Ljk/f;Ljk/f;Ljk/f;)Ljk/f;

    move-result-object p1

    return-object p1
.end method

.method public m(Ljk/f;Ljk/f;Ljk/f;)Ljk/f;
    .locals 4

    iget-object v0, p0, Ljk/f$c;->j:Ljk/o;

    check-cast p1, Ljk/f$c;

    iget-object p1, p1, Ljk/f$c;->j:Ljk/o;

    check-cast p2, Ljk/f$c;

    iget-object p2, p2, Ljk/f$c;->j:Ljk/o;

    check-cast p3, Ljk/f$c;

    iget-object p3, p3, Ljk/f$c;->j:Ljk/o;

    iget v1, p0, Ljk/f$c;->h:I

    iget-object v2, p0, Ljk/f$c;->i:[I

    invoke-virtual {v0, p1, v1, v2}, Ljk/o;->P(Ljk/o;I[I)Ljk/o;

    move-result-object v1

    iget v2, p0, Ljk/f$c;->h:I

    iget-object v3, p0, Ljk/f$c;->i:[I

    invoke-virtual {p2, p3, v2, v3}, Ljk/o;->P(Ljk/o;I[I)Ljk/o;

    move-result-object p2

    if-eq v1, v0, :cond_0

    if-ne v1, p1, :cond_1

    :cond_0
    invoke-virtual {v1}, Ljk/o;->clone()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljk/o;

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {v1, p2, p1}, Ljk/o;->f(Ljk/o;I)V

    iget p1, p0, Ljk/f$c;->h:I

    iget-object p2, p0, Ljk/f$c;->i:[I

    invoke-virtual {v1, p1, p2}, Ljk/o;->R(I[I)V

    new-instance p1, Ljk/f$c;

    iget p2, p0, Ljk/f$c;->h:I

    iget-object p3, p0, Ljk/f$c;->i:[I

    invoke-direct {p1, p2, p3, v1}, Ljk/f$c;-><init>(I[ILjk/o;)V

    return-object p1
.end method

.method public n()Ljk/f;
    .locals 0

    return-object p0
.end method

.method public o()Ljk/f;
    .locals 1

    iget-object v0, p0, Ljk/f$c;->j:Ljk/o;

    invoke-virtual {v0}, Ljk/o;->H()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ljk/f$c;->j:Ljk/o;

    invoke-virtual {v0}, Ljk/o;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Ljk/f$c;->h:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljk/f$c;->s(I)Ljk/f;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, p0

    :goto_1
    return-object v0
.end method

.method public p()Ljk/f;
    .locals 4

    new-instance v0, Ljk/f$c;

    iget v1, p0, Ljk/f$c;->h:I

    iget-object v2, p0, Ljk/f$c;->i:[I

    iget-object v3, p0, Ljk/f$c;->j:Ljk/o;

    invoke-virtual {v3, v1, v2}, Ljk/o;->N(I[I)Ljk/o;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ljk/f$c;-><init>(I[ILjk/o;)V

    return-object v0
.end method

.method public q(Ljk/f;Ljk/f;)Ljk/f;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljk/f$c;->r(Ljk/f;Ljk/f;)Ljk/f;

    move-result-object p1

    return-object p1
.end method

.method public r(Ljk/f;Ljk/f;)Ljk/f;
    .locals 4

    iget-object v0, p0, Ljk/f$c;->j:Ljk/o;

    check-cast p1, Ljk/f$c;

    iget-object p1, p1, Ljk/f$c;->j:Ljk/o;

    check-cast p2, Ljk/f$c;

    iget-object p2, p2, Ljk/f$c;->j:Ljk/o;

    iget v1, p0, Ljk/f$c;->h:I

    iget-object v2, p0, Ljk/f$c;->i:[I

    invoke-virtual {v0, v1, v2}, Ljk/o;->e0(I[I)Ljk/o;

    move-result-object v1

    iget v2, p0, Ljk/f$c;->h:I

    iget-object v3, p0, Ljk/f$c;->i:[I

    invoke-virtual {p1, p2, v2, v3}, Ljk/o;->P(Ljk/o;I[I)Ljk/o;

    move-result-object p1

    if-ne v1, v0, :cond_0

    invoke-virtual {v1}, Ljk/o;->clone()Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Ljk/o;

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {v1, p1, p2}, Ljk/o;->f(Ljk/o;I)V

    iget p1, p0, Ljk/f$c;->h:I

    iget-object p2, p0, Ljk/f$c;->i:[I

    invoke-virtual {v1, p1, p2}, Ljk/o;->R(I[I)V

    new-instance p1, Ljk/f$c;

    iget p2, p0, Ljk/f$c;->h:I

    iget-object v0, p0, Ljk/f$c;->i:[I

    invoke-direct {p1, p2, v0, v1}, Ljk/f$c;-><init>(I[ILjk/o;)V

    return-object p1
.end method

.method public s(I)Ljk/f;
    .locals 4

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Ljk/f$c;

    iget v1, p0, Ljk/f$c;->h:I

    iget-object v2, p0, Ljk/f$c;->i:[I

    iget-object v3, p0, Ljk/f$c;->j:Ljk/o;

    invoke-virtual {v3, p1, v1, v2}, Ljk/o;->O(II[I)Ljk/o;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Ljk/f$c;-><init>(I[ILjk/o;)V

    :goto_0
    return-object v0
.end method

.method public t(Ljk/f;)Ljk/f;
    .locals 0

    invoke-virtual {p0, p1}, Ljk/f$c;->a(Ljk/f;)Ljk/f;

    move-result-object p1

    return-object p1
.end method

.method public u()Z
    .locals 1

    iget-object v0, p0, Ljk/f$c;->j:Ljk/o;

    invoke-virtual {v0}, Ljk/o;->h0()Z

    move-result v0

    return v0
.end method

.method public v()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Ljk/f$c;->j:Ljk/o;

    invoke-virtual {v0}, Ljk/o;->i0()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public z()I
    .locals 2

    iget-object v0, p0, Ljk/f$c;->i:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method
