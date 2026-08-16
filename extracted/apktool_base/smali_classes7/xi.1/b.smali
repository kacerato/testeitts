.class public Lxi/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/util/r;


# instance fields
.field public final b:Lli/a;

.field public final c:Lli/b;

.field public final d:Ljava/math/BigInteger;

.field public final e:Ljava/util/Date;

.field public final f:Lli/e;

.field public final g:Ljava/util/Collection;

.field public final h:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Lli/a;Lli/b;Ljava/math/BigInteger;Ljava/util/Date;Lli/e;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxi/b;->b:Lli/a;

    iput-object p2, p0, Lxi/b;->c:Lli/b;

    iput-object p3, p0, Lxi/b;->d:Ljava/math/BigInteger;

    iput-object p4, p0, Lxi/b;->e:Ljava/util/Date;

    iput-object p5, p0, Lxi/b;->f:Lli/e;

    iput-object p6, p0, Lxi/b;->g:Ljava/util/Collection;

    iput-object p7, p0, Lxi/b;->h:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public Z2(Ljava/lang/Object;)Z
    .locals 8

    instance-of v0, p1, Lli/e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lli/e;

    iget-object v0, p0, Lxi/b;->f:Lli/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lli/e;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lxi/b;->d:Ljava/math/BigInteger;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lli/e;->m()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v2, p0, Lxi/b;->d:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lxi/b;->b:Lli/a;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lli/e;->g()Lli/a;

    move-result-object v0

    iget-object v2, p0, Lxi/b;->b:Lli/a;

    invoke-virtual {v0, v2}, Lli/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lxi/b;->c:Lli/b;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lli/e;->h()Lli/b;

    move-result-object v0

    iget-object v2, p0, Lxi/b;->c:Lli/b;

    invoke-virtual {v0, v2}, Lli/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lxi/b;->e:Ljava/util/Date;

    if-eqz v0, :cond_5

    invoke-virtual {p1, v0}, Lli/e;->u(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    :cond_5
    iget-object v0, p0, Lxi/b;->g:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lxi/b;->h:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_6
    sget-object v0, Lhi/B;->I:Loh/x;

    invoke-virtual {p1, v0}, Lli/e;->d(Loh/x;)Lhi/B;

    move-result-object p1

    if-eqz p1, :cond_e

    :try_start_0
    invoke-virtual {p1}, Lhi/B;->A()Loh/g;

    move-result-object p1

    invoke-static {p1}, Lhi/m0;->u(Ljava/lang/Object;)Lhi/m0;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lhi/m0;->v()[Lhi/n0;

    move-result-object p1

    iget-object v0, p0, Lxi/b;->g:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    move v3, v0

    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_9

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lhi/n0;->v()[Lhi/l0;

    move-result-object v4

    move v5, v1

    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_8

    iget-object v6, p0, Lxi/b;->g:Ljava/util/Collection;

    aget-object v7, v4, v5

    invoke-virtual {v7}, Lhi/l0;->x()Lhi/E;

    move-result-object v7

    invoke-static {v7}, Lhi/E;->v(Ljava/lang/Object;)Lhi/E;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    move v3, v2

    goto :goto_2

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_8
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_9
    if-nez v3, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Lxi/b;->h:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v1

    move v3, v0

    :goto_3
    array-length v4, p1

    if-ge v0, v4, :cond_d

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lhi/n0;->v()[Lhi/l0;

    move-result-object v4

    move v5, v1

    :goto_4
    array-length v6, v4

    if-ge v5, v6, :cond_c

    iget-object v6, p0, Lxi/b;->h:Ljava/util/Collection;

    aget-object v7, v4, v5

    invoke-virtual {v7}, Lhi/l0;->v()Lhi/E;

    move-result-object v7

    invoke-static {v7}, Lhi/E;->v(Ljava/lang/Object;)Lhi/E;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    move v3, v2

    goto :goto_5

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_c
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_d
    if-nez v3, :cond_e

    :catch_0
    return v1

    :cond_e
    return v2
.end method

.method public a()Lli/e;
    .locals 1

    iget-object v0, p0, Lxi/b;->f:Lli/e;

    return-object v0
.end method

.method public b()Ljava/util/Date;
    .locals 3

    iget-object v0, p0, Lxi/b;->e:Ljava/util/Date;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lxi/b;->e:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Lli/a;
    .locals 1

    iget-object v0, p0, Lxi/b;->b:Lli/a;

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 9

    new-instance v8, Lxi/b;

    iget-object v1, p0, Lxi/b;->b:Lli/a;

    iget-object v2, p0, Lxi/b;->c:Lli/b;

    iget-object v3, p0, Lxi/b;->d:Ljava/math/BigInteger;

    iget-object v4, p0, Lxi/b;->e:Ljava/util/Date;

    iget-object v5, p0, Lxi/b;->f:Lli/e;

    iget-object v6, p0, Lxi/b;->g:Ljava/util/Collection;

    iget-object v7, p0, Lxi/b;->h:Ljava/util/Collection;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lxi/b;-><init>(Lli/a;Lli/b;Ljava/math/BigInteger;Ljava/util/Date;Lli/e;Ljava/util/Collection;Ljava/util/Collection;)V

    return-object v8
.end method

.method public d()Lli/b;
    .locals 1

    iget-object v0, p0, Lxi/b;->c:Lli/b;

    return-object v0
.end method

.method public e()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lxi/b;->d:Ljava/math/BigInteger;

    return-object v0
.end method

.method public f()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lxi/b;->h:Ljava/util/Collection;

    return-object v0
.end method

.method public g()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lxi/b;->g:Ljava/util/Collection;

    return-object v0
.end method
