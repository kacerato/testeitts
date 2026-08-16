.class public LYd/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/p;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lee/p;

.field public transient c:Lke/b;

.field public transient d:LSd/i;


# direct methods
.method public constructor <init>(Lee/p;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LYd/v;->c:Lke/b;

    iput-object v0, p0, LYd/v;->d:LSd/i;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/v;->b:Lee/p;

    return-void
.end method

.method public static synthetic a(LYd/v;)Lee/p;
    .locals 0

    iget-object p0, p0, LYd/v;->b:Lee/p;

    return-object p0
.end method


# virtual methods
.method public C(C)Z
    .locals 1

    iget-object v0, p0, LYd/v;->b:Lee/p;

    invoke-interface {v0, p1}, Lee/p;->C(C)Z

    move-result p1

    return p1
.end method

.method public D0(C)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public D6(CSS)S
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public F2(CS)S
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public I5(Lhe/r;)Z
    .locals 1

    iget-object v0, p0, LYd/v;->b:Lee/p;

    invoke-interface {v0, p1}, Lee/p;->I5(Lhe/r;)Z

    move-result p1

    return p1
.end method

.method public L(S)Z
    .locals 1

    iget-object v0, p0, LYd/v;->b:Lee/p;

    invoke-interface {v0, p1}, Lee/p;->L(S)Z

    move-result p1

    return p1
.end method

.method public N(Lhe/t0;)Z
    .locals 1

    iget-object v0, p0, LYd/v;->b:Lee/p;

    invoke-interface {v0, p1}, Lee/p;->N(Lhe/t0;)Z

    move-result p1

    return p1
.end method

.method public Q9(CS)S
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public R9(Lee/p;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public V([C)[C
    .locals 1

    iget-object v0, p0, LYd/v;->b:Lee/p;

    invoke-interface {v0, p1}, Lee/p;->V([C)[C

    move-result-object p1

    return-object p1
.end method

.method public Wd(CS)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public b(C)S
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

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, LYd/v;->b:Lee/p;

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

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LYd/v;->b:Lee/p;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()S
    .locals 1

    iget-object v0, p0, LYd/v;->b:Lee/p;

    invoke-interface {v0}, Lee/p;->i()S

    move-result v0

    return v0
.end method

.method public i0([S)[S
    .locals 1

    iget-object v0, p0, LYd/v;->b:Lee/p;

    invoke-interface {v0, p1}, Lee/p;->i0([S)[S

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/v;->b:Lee/p;

    invoke-interface {v0}, Lee/p;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/s;
    .locals 1

    new-instance v0, LYd/v$a;

    invoke-direct {v0, p0}, LYd/v$a;-><init>(LYd/v;)V

    return-object v0
.end method

.method public j()[C
    .locals 1

    iget-object v0, p0, LYd/v;->b:Lee/p;

    invoke-interface {v0}, Lee/p;->j()[C

    move-result-object v0

    return-object v0
.end method

.method public k()LSd/i;
    .locals 1

    iget-object v0, p0, LYd/v;->d:LSd/i;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/v;->b:Lee/p;

    invoke-interface {v0}, Lee/p;->k()LSd/i;

    move-result-object v0

    invoke-static {v0}, LSd/c;->h1(LSd/i;)LSd/i;

    move-result-object v0

    iput-object v0, p0, LYd/v;->d:LSd/i;

    :cond_0
    iget-object v0, p0, LYd/v;->d:LSd/i;

    return-object v0
.end method

.method public keySet()Lke/b;
    .locals 1

    iget-object v0, p0, LYd/v;->c:Lke/b;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/v;->b:Lee/p;

    invoke-interface {v0}, Lee/p;->keySet()Lke/b;

    move-result-object v0

    invoke-static {v0}, LSd/c;->B2(Lke/b;)Lke/b;

    move-result-object v0

    iput-object v0, p0, LYd/v;->c:Lke/b;

    :cond_0
    iget-object v0, p0, LYd/v;->c:Lke/b;

    return-object v0
.end method

.method public l()C
    .locals 1

    iget-object v0, p0, LYd/v;->b:Lee/p;

    invoke-interface {v0}, Lee/p;->l()C

    move-result v0

    return v0
.end method

.method public o0(C)S
    .locals 1

    iget-object v0, p0, LYd/v;->b:Lee/p;

    invoke-interface {v0, p1}, Lee/p;->o0(C)S

    move-result p1

    return p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Character;",
            "+",
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation

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

.method public size()I
    .locals 1

    iget-object v0, p0, LYd/v;->b:Lee/p;

    invoke-interface {v0}, Lee/p;->size()I

    move-result v0

    return v0
.end method

.method public t9(Lhe/r;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/v;->b:Lee/p;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[S
    .locals 1

    iget-object v0, p0, LYd/v;->b:Lee/p;

    invoke-interface {v0}, Lee/p;->values()[S

    move-result-object v0

    return-object v0
.end method

.method public y(Lhe/q;)Z
    .locals 1

    iget-object v0, p0, LYd/v;->b:Lee/p;

    invoke-interface {v0, p1}, Lee/p;->y(Lhe/q;)Z

    move-result p1

    return p1
.end method
