.class public Lli/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/r;


# instance fields
.field public final b:Loh/g;


# direct methods
.method public constructor <init>(Lfi/d;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lhi/s0;

    new-instance v1, Lhi/F;

    new-instance v2, Lhi/E;

    invoke-direct {v2, p1}, Lhi/E;-><init>(Lfi/d;)V

    invoke-direct {v1, v2}, Lhi/F;-><init>(Lhi/E;)V

    invoke-direct {v0, v1}, Lhi/s0;-><init>(Lhi/F;)V

    iput-object v0, p0, Lli/b;->b:Loh/g;

    return-void
.end method

.method public constructor <init>(Lhi/e;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lhi/e;->x()Loh/g;

    move-result-object p1

    iput-object p1, p0, Lli/b;->b:Loh/g;

    return-void
.end method

.method private b(Lfi/d;Lhi/F;)Z
    .locals 5

    invoke-virtual {p2}, Lhi/F;->y()[Lhi/E;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p2

    if-eq v1, v2, :cond_1

    aget-object v2, p2, v1

    invoke-virtual {v2}, Lhi/E;->g()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lhi/E;->x()Loh/g;

    move-result-object v2

    invoke-static {v2}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object v2

    invoke-virtual {v2, p1}, Lfi/d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public Z2(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Lli/h;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lli/h;

    iget-object v0, p0, Lli/b;->b:Loh/g;

    instance-of v2, v0, Lhi/s0;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    check-cast v0, Lhi/s0;

    invoke-virtual {v0}, Lhi/s0;->u()Lhi/K;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lhi/s0;->u()Lhi/K;

    move-result-object v2

    invoke-virtual {v2}, Lhi/K;->z()Loh/s;

    move-result-object v2

    invoke-virtual {p1}, Lli/h;->i()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2, v4}, Loh/s;->L(Ljava/math/BigInteger;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lli/h;->e()Lfi/d;

    move-result-object p1

    invoke-virtual {v0}, Lhi/s0;->u()Lhi/K;

    move-result-object v0

    invoke-virtual {v0}, Lhi/K;->x()Lhi/F;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lli/b;->b(Lfi/d;Lhi/F;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v1, v3

    :cond_1
    return v1

    :cond_2
    invoke-virtual {v0}, Lhi/s0;->x()Lhi/F;

    move-result-object v0

    invoke-virtual {p1}, Lli/h;->l()Lfi/d;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lli/b;->b(Lfi/d;Lhi/F;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v3

    :cond_3
    check-cast v0, Lhi/F;

    invoke-virtual {p1}, Lli/h;->l()Lfi/d;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lli/b;->b(Lfi/d;Lhi/F;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v3

    :cond_4
    return v1
.end method

.method public a()[Lfi/d;
    .locals 5

    iget-object v0, p0, Lli/b;->b:Loh/g;

    instance-of v1, v0, Lhi/s0;

    if-eqz v1, :cond_0

    check-cast v0, Lhi/s0;

    invoke-virtual {v0}, Lhi/s0;->x()Lhi/F;

    move-result-object v0

    goto :goto_0

    :cond_0
    check-cast v0, Lhi/F;

    :goto_0
    invoke-virtual {v0}, Lhi/F;->y()[Lhi/E;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_1
    array-length v3, v0

    if-eq v2, v3, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lhi/E;->g()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lhi/E;->x()Loh/g;

    move-result-object v3

    invoke-static {v3}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lfi/d;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfi/d;

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lli/b;

    iget-object v1, p0, Lli/b;->b:Loh/g;

    invoke-static {v1}, Lhi/e;->u(Ljava/lang/Object;)Lhi/e;

    move-result-object v1

    invoke-direct {v0, v1}, Lli/b;-><init>(Lhi/e;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lli/b;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lli/b;

    iget-object v0, p0, Lli/b;->b:Loh/g;

    iget-object p1, p1, Lli/b;->b:Loh/g;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lli/b;->b:Loh/g;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
