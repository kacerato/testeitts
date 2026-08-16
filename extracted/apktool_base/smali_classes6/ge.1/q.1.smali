.class public Lge/q;
.super LWd/q;
.source "SourceFile"

# interfaces
.implements Lee/X;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lge/q$b;,
        Lge/q$f;,
        Lge/q$g;,
        Lge/q$c;,
        Lge/q$h;,
        Lge/q$d;,
        Lge/q$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "LWd/q<",
        "TK;>;",
        "Lee/X<",
        "TK;TV;>;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field public static final t:J = 0x1L


# instance fields
.field public transient s:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LWd/q;-><init>()V

    return-void
.end method

.method public constructor <init>(Loe/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Loe/a<",
            "-TK;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, LWd/q;-><init>(Loe/a;)V

    return-void
.end method

.method public constructor <init>(Loe/a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Loe/a<",
            "-TK;>;I)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, LWd/q;-><init>(Loe/a;I)V

    return-void
.end method

.method public constructor <init>(Loe/a;IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Loe/a<",
            "-TK;>;IF)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2, p3}, LWd/q;-><init>(Loe/a;IF)V

    return-void
.end method

.method public constructor <init>(Loe/a;Lge/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Loe/a<",
            "-TK;>;",
            "Lge/q<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 7
    invoke-virtual {p2}, LWd/H;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lge/q;-><init>(Loe/a;I)V

    .line 8
    invoke-virtual {p0, p2}, Lge/q;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Loe/a;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Loe/a<",
            "-TK;>;",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 5
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lge/q;-><init>(Loe/a;I)V

    .line 6
    invoke-virtual {p0, p2}, Lge/q;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic Ff(Lge/q;)Loe/a;
    .locals 0

    iget-object p0, p0, LWd/q;->q:Loe/a;

    return-object p0
.end method

.method public static synthetic Gf(Lge/q;Ljava/lang/Object;)I
    .locals 0

    invoke-virtual {p0, p1}, LWd/b0;->tf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static synthetic Hf(Lge/q;)Loe/a;
    .locals 0

    iget-object p0, p0, LWd/q;->q:Loe/a;

    return-object p0
.end method

.method public static synthetic If(Lge/q;)Loe/a;
    .locals 0

    iget-object p0, p0, LWd/q;->q:Loe/a;

    return-object p0
.end method

.method public static synthetic Jf(Lge/q;)Loe/a;
    .locals 0

    iget-object p0, p0, LWd/q;->q:Loe/a;

    return-object p0
.end method


# virtual methods
.method public A7(Lhe/j0;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhe/j0<",
            "-TK;-TV;>;)Z"
        }
    .end annotation

    iget-object v0, p0, LWd/b0;->l:[Ljava/lang/Object;

    iget-object v1, p0, Lge/q;->s:[Ljava/lang/Object;

    array-length v2, v0

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1

    aget-object v2, v0, v3

    sget-object v4, LWd/b0;->p:Ljava/lang/Object;

    if-eq v2, v4, :cond_0

    sget-object v4, LWd/b0;->o:Ljava/lang/Object;

    if-eq v2, v4, :cond_0

    aget-object v4, v1, v3

    invoke-interface {p1, v2, v4}, Lhe/j0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public F4(Lhe/j0;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhe/j0<",
            "-TK;-TV;>;)Z"
        }
    .end annotation

    iget-object v0, p0, LWd/b0;->l:[Ljava/lang/Object;

    iget-object v1, p0, Lge/q;->s:[Ljava/lang/Object;

    invoke-virtual {p0}, LWd/H;->kf()V

    const/4 v2, 0x1

    :try_start_0
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v5, v3, -0x1

    if-lez v3, :cond_1

    aget-object v3, v0, v5

    sget-object v6, LWd/b0;->p:Ljava/lang/Object;

    if-eq v3, v6, :cond_0

    sget-object v6, LWd/b0;->o:Ljava/lang/Object;

    if-eq v3, v6, :cond_0

    aget-object v6, v1, v5

    invoke-interface {p1, v3, v6}, Lhe/j0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v5}, Lge/q;->hf(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v2

    :cond_0
    move v3, v5

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v2}, LWd/H;->ff(Z)V

    return v4

    :goto_1
    invoke-virtual {p0, v2}, LWd/H;->ff(Z)V

    throw p1
.end method

.method public G(Lhe/k0;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhe/k0<",
            "-TK;>;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, LWd/b0;->rf(Lhe/k0;)Z

    move-result p1

    return p1
.end method

.method public final Kf(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)TV;"
        }
    .end annotation

    const/4 v0, 0x1

    if-gez p2, :cond_0

    neg-int p2, p2

    sub-int/2addr p2, v0

    iget-object v0, p0, Lge/q;->s:[Ljava/lang/Object;

    aget-object v0, v0, p2

    const/4 v1, 0x0

    move v3, v1

    move-object v1, v0

    move v0, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lge/q;->s:[Ljava/lang/Object;

    aput-object p1, v2, p2

    if-eqz v0, :cond_1

    iget-boolean p1, p0, LWd/b0;->m:Z

    invoke-virtual {p0, p1}, LWd/H;->ef(Z)V

    :cond_1
    return-object v1
.end method

.method public S(Lhe/k0;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhe/k0<",
            "-TV;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lge/q;->s:[Ljava/lang/Object;

    iget-object v1, p0, LWd/b0;->l:[Ljava/lang/Object;

    array-length v2, v0

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1

    aget-object v2, v1, v3

    sget-object v4, LWd/b0;->p:Ljava/lang/Object;

    if-eq v2, v4, :cond_0

    sget-object v4, LWd/b0;->o:Ljava/lang/Object;

    if-eq v2, v4, :cond_0

    aget-object v2, v0, v3

    invoke-interface {p1, v2}, Lhe/k0;->a(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public clear()V
    .locals 4

    invoke-virtual {p0}, LWd/H;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, LWd/H;->clear()V

    iget-object v0, p0, LWd/b0;->l:[Ljava/lang/Object;

    array-length v1, v0

    sget-object v2, LWd/b0;->p:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget-object v0, p0, Lge/q;->s:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, LWd/b0;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 6

    iget-object v0, p0, LWd/b0;->l:[Ljava/lang/Object;

    iget-object v1, p0, Lge/q;->s:[Ljava/lang/Object;

    const/4 v2, 0x1

    if-nez p1, :cond_1

    array-length v3, v1

    :goto_0
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_4

    aget-object v3, v0, v4

    sget-object v5, LWd/b0;->p:Ljava/lang/Object;

    if-eq v3, v5, :cond_0

    sget-object v5, LWd/b0;->o:Ljava/lang/Object;

    if-eq v3, v5, :cond_0

    aget-object v3, v1, v4

    if-ne p1, v3, :cond_0

    return v2

    :cond_0
    move v3, v4

    goto :goto_0

    :cond_1
    array-length v3, v1

    :goto_1
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_4

    aget-object v3, v0, v4

    sget-object v5, LWd/b0;->p:Ljava/lang/Object;

    if-eq v3, v5, :cond_3

    sget-object v5, LWd/b0;->o:Ljava/lang/Object;

    if-eq v3, v5, :cond_3

    aget-object v3, v1, v4

    if-eq p1, v3, :cond_2

    iget-object v5, p0, LWd/q;->q:Loe/a;

    invoke-interface {v5, p1, v3}, Loe/a;->I1(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    return v2

    :cond_3
    move v3, v4

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lge/q$c;

    invoke-direct {v0, p0}, Lge/q$c;-><init>(Lge/q;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0}, LWd/H;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    new-instance v0, Lge/q$d;

    invoke-direct {v0, p1}, Lge/q$d;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lge/q;->A7(Lhe/j0;)Z

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, LWd/b0;->tf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, LWd/q;->q:Loe/a;

    iget-object v2, p0, LWd/b0;->l:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {v1, v2, p1}, Loe/a;->I1(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lge/q;->s:[Ljava/lang/Object;

    aget-object p1, p1, v0

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public gf(I)V
    .locals 10

    iget-object v0, p0, LWd/b0;->l:[Ljava/lang/Object;

    array-length v0, v0

    invoke-virtual {p0}, LWd/H;->size()I

    move-result v7

    iget-object v8, p0, LWd/b0;->l:[Ljava/lang/Object;

    iget-object v9, p0, Lge/q;->s:[Ljava/lang/Object;

    new-array v1, p1, [Ljava/lang/Object;

    iput-object v1, p0, LWd/b0;->l:[Ljava/lang/Object;

    sget-object v2, LWd/b0;->p:Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lge/q;->s:[Ljava/lang/Object;

    :goto_0
    add-int/lit8 p1, v0, -0x1

    if-lez v0, :cond_3

    aget-object v3, v8, p1

    sget-object v0, LWd/b0;->p:Ljava/lang/Object;

    if-eq v3, v0, :cond_2

    sget-object v0, LWd/b0;->o:Ljava/lang/Object;

    if-ne v3, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v3}, LWd/b0;->wf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v1, p0, LWd/b0;->l:[Ljava/lang/Object;

    neg-int v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    invoke-virtual {p0}, LWd/H;->size()I

    move-result v4

    move-object v1, p0

    move v5, v7

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, LWd/b0;->Ef(Ljava/lang/Object;Ljava/lang/Object;II[Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lge/q;->s:[Ljava/lang/Object;

    aget-object v2, v9, p1

    aput-object v2, v1, v0

    :cond_2
    :goto_1
    move v0, p1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public hashCode()I
    .locals 2

    new-instance v0, Lge/q$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lge/q$e;-><init>(Lge/q;Lge/q$a;)V

    invoke-virtual {p0, v0}, Lge/q;->A7(Lhe/j0;)Z

    invoke-virtual {v0}, Lge/q$e;->b()I

    move-result v0

    return v0
.end method

.method public hf(I)V
    .locals 2

    iget-object v0, p0, Lge/q;->s:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    invoke-super {p0, p1}, LWd/b0;->hf(I)V

    return-void
.end method

.method public jf(I)I
    .locals 1

    invoke-super {p0, p1}, LWd/b0;->jf(I)I

    move-result p1

    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lge/q;->s:[Ljava/lang/Object;

    return p1
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lge/q$f;

    invoke-direct {v0, p0}, Lge/q$f;-><init>(Lge/q;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, LWd/b0;->wf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lge/q;->Kf(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0, v0}, LWd/H;->cf(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lge/q;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, LWd/b0;->wf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    iget-object p2, p0, Lge/q;->s:[Ljava/lang/Object;

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x1

    aget-object p1, p2, p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p2, p1}, Lge/q;->Kf(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public r0(LUd/g;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LUd/g<",
            "TV;TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lge/q;->s:[Ljava/lang/Object;

    iget-object v1, p0, LWd/b0;->l:[Ljava/lang/Object;

    array-length v2, v0

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1

    aget-object v2, v1, v3

    sget-object v4, LWd/b0;->p:Ljava/lang/Object;

    if-eq v2, v4, :cond_0

    sget-object v4, LWd/b0;->o:Ljava/lang/Object;

    if-eq v2, v4, :cond_0

    aget-object v2, v0, v3

    invoke-interface {p1, v2}, LUd/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v3

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, LWd/q;->readExternal(Ljava/io/ObjectInput;)V

    :cond_0
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lge/q;->jf(I)I

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lge/q;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, LWd/b0;->tf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lge/q;->s:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-virtual {p0, p1}, Lge/q;->hf(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lge/q$a;

    invoke-direct {v1, p0, v0}, Lge/q$a;-><init>(Lge/q;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v1}, Lge/q;->A7(Lhe/j0;)Z

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lge/q$h;

    invoke-direct {v0, p0}, Lge/q$h;-><init>(Lge/q;)V

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    invoke-super {p0, p1}, LWd/q;->writeExternal(Ljava/io/ObjectOutput;)V

    iget v0, p0, LWd/H;->b:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget-object v0, p0, LWd/b0;->l:[Ljava/lang/Object;

    array-length v0, v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    iget-object v0, p0, LWd/b0;->l:[Ljava/lang/Object;

    aget-object v0, v0, v1

    sget-object v2, LWd/b0;->o:Ljava/lang/Object;

    if-eq v0, v2, :cond_0

    sget-object v2, LWd/b0;->p:Ljava/lang/Object;

    if-eq v0, v2, :cond_0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lge/q;->s:[Ljava/lang/Object;

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method
