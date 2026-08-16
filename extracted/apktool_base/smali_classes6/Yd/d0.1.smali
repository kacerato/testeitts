.class public LYd/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/N;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lee/N;

.field public transient c:Lke/e;

.field public transient d:LSd/i;


# direct methods
.method public constructor <init>(Lee/N;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LYd/d0;->c:Lke/e;

    iput-object v0, p0, LYd/d0;->d:LSd/i;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/d0;->b:Lee/N;

    return-void
.end method

.method public static synthetic a(LYd/d0;)Lee/N;
    .locals 0

    iget-object p0, p0, LYd/d0;->b:Lee/N;

    return-object p0
.end method


# virtual methods
.method public E5(Lhe/T;)Z
    .locals 1

    iget-object v0, p0, LYd/d0;->b:Lee/N;

    invoke-interface {v0, p1}, Lee/N;->E5(Lhe/T;)Z

    move-result p1

    return p1
.end method

.method public F(I)Z
    .locals 1

    iget-object v0, p0, LYd/d0;->b:Lee/N;

    invoke-interface {v0, p1}, Lee/N;->F(I)Z

    move-result p1

    return p1
.end method

.method public F0(I)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public J(Lhe/S;)Z
    .locals 1

    iget-object v0, p0, LYd/d0;->b:Lee/N;

    invoke-interface {v0, p1}, Lee/N;->J(Lhe/S;)Z

    move-result p1

    return p1
.end method

.method public L(S)Z
    .locals 1

    iget-object v0, p0, LYd/d0;->b:Lee/N;

    invoke-interface {v0, p1}, Lee/N;->L(S)Z

    move-result p1

    return p1
.end method

.method public N(Lhe/t0;)Z
    .locals 1

    iget-object v0, p0, LYd/d0;->b:Lee/N;

    invoke-interface {v0, p1}, Lee/N;->N(Lhe/t0;)Z

    move-result p1

    return p1
.end method

.method public Ub(IS)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public eb(Lhe/T;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public ed(IS)S
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, LYd/d0;->b:Lee/N;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public f0([I)[I
    .locals 1

    iget-object v0, p0, LYd/d0;->b:Lee/N;

    invoke-interface {v0, p1}, Lee/N;->f0([I)[I

    move-result-object p1

    return-object p1
.end method

.method public get(I)S
    .locals 1

    iget-object v0, p0, LYd/d0;->b:Lee/N;

    invoke-interface {v0, p1}, Lee/N;->get(I)S

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LYd/d0;->b:Lee/N;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()S
    .locals 1

    iget-object v0, p0, LYd/d0;->b:Lee/N;

    invoke-interface {v0}, Lee/N;->i()S

    move-result v0

    return v0
.end method

.method public i0([S)[S
    .locals 1

    iget-object v0, p0, LYd/d0;->b:Lee/N;

    invoke-interface {v0, p1}, Lee/N;->i0([S)[S

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/d0;->b:Lee/N;

    invoke-interface {v0}, Lee/N;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/U;
    .locals 1

    new-instance v0, LYd/d0$a;

    invoke-direct {v0, p0}, LYd/d0$a;-><init>(LYd/d0;)V

    return-object v0
.end method

.method public j()[I
    .locals 1

    iget-object v0, p0, LYd/d0;->b:Lee/N;

    invoke-interface {v0}, Lee/N;->j()[I

    move-result-object v0

    return-object v0
.end method

.method public k()LSd/i;
    .locals 1

    iget-object v0, p0, LYd/d0;->d:LSd/i;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/d0;->b:Lee/N;

    invoke-interface {v0}, Lee/N;->k()LSd/i;

    move-result-object v0

    invoke-static {v0}, LSd/c;->h1(LSd/i;)LSd/i;

    move-result-object v0

    iput-object v0, p0, LYd/d0;->d:LSd/i;

    :cond_0
    iget-object v0, p0, LYd/d0;->d:LSd/i;

    return-object v0
.end method

.method public keySet()Lke/e;
    .locals 1

    iget-object v0, p0, LYd/d0;->c:Lke/e;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/d0;->b:Lee/N;

    invoke-interface {v0}, Lee/N;->keySet()Lke/e;

    move-result-object v0

    invoke-static {v0}, LSd/c;->E2(Lke/e;)Lke/e;

    move-result-object v0

    iput-object v0, p0, LYd/d0;->c:Lke/e;

    :cond_0
    iget-object v0, p0, LYd/d0;->c:Lke/e;

    return-object v0
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, LYd/d0;->b:Lee/N;

    invoke-interface {v0}, Lee/N;->l()I

    move-result v0

    return v0
.end method

.method public md(ISS)S
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public p5(IS)S
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Integer;",
            "+",
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public qe(Lee/N;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public r(LUd/h;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(I)S
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LYd/d0;->b:Lee/N;

    invoke-interface {v0}, Lee/N;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/d0;->b:Lee/N;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[S
    .locals 1

    iget-object v0, p0, LYd/d0;->b:Lee/N;

    invoke-interface {v0}, Lee/N;->values()[S

    move-result-object v0

    return-object v0
.end method
