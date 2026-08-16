.class public LYd/H0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/i0;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lee/i0;

.field public transient c:Lke/g;

.field public transient d:LSd/f;


# direct methods
.method public constructor <init>(Lee/i0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LYd/H0;->c:Lke/g;

    iput-object v0, p0, LYd/H0;->d:LSd/f;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/H0;->b:Lee/i0;

    return-void
.end method

.method public static synthetic a(LYd/H0;)Lee/i0;
    .locals 0

    iget-object p0, p0, LYd/H0;->b:Lee/i0;

    return-object p0
.end method


# virtual methods
.method public A6(Lee/i0;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public B(Lhe/I;)Z
    .locals 1

    iget-object v0, p0, LYd/H0;->b:Lee/i0;

    invoke-interface {v0, p1}, Lee/i0;->B(Lhe/I;)Z

    move-result p1

    return p1
.end method

.method public B8(Lhe/p0;)Z
    .locals 1

    iget-object v0, p0, LYd/H0;->b:Lee/i0;

    invoke-interface {v0, p1}, Lee/i0;->B8(Lhe/p0;)Z

    move-result p1

    return p1
.end method

.method public I0(S)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public J3(SF)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Kd(Lhe/p0;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public U(F)Z
    .locals 1

    iget-object v0, p0, LYd/H0;->b:Lee/i0;

    invoke-interface {v0, p1}, Lee/i0;->U(F)Z

    move-result p1

    return p1
.end method

.method public Y([S)[S
    .locals 1

    iget-object v0, p0, LYd/H0;->b:Lee/i0;

    invoke-interface {v0, p1}, Lee/i0;->Y([S)[S

    move-result-object p1

    return-object p1
.end method

.method public c0([F)[F
    .locals 1

    iget-object v0, p0, LYd/H0;->b:Lee/i0;

    invoke-interface {v0, p1}, Lee/i0;->c0([F)[F

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public d(S)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public e8(SF)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, LYd/H0;->b:Lee/i0;

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

    iget-object v0, p0, LYd/H0;->b:Lee/i0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()F
    .locals 1

    iget-object v0, p0, LYd/H0;->b:Lee/i0;

    invoke-interface {v0}, Lee/i0;->i()F

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/H0;->b:Lee/i0;

    invoke-interface {v0}, Lee/i0;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/q0;
    .locals 1

    new-instance v0, LYd/H0$a;

    invoke-direct {v0, p0}, LYd/H0$a;-><init>(LYd/H0;)V

    return-object v0
.end method

.method public j()[S
    .locals 1

    iget-object v0, p0, LYd/H0;->b:Lee/i0;

    invoke-interface {v0}, Lee/i0;->j()[S

    move-result-object v0

    return-object v0
.end method

.method public k()LSd/f;
    .locals 1

    iget-object v0, p0, LYd/H0;->d:LSd/f;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/H0;->b:Lee/i0;

    invoke-interface {v0}, Lee/i0;->k()LSd/f;

    move-result-object v0

    invoke-static {v0}, LSd/c;->e1(LSd/f;)LSd/f;

    move-result-object v0

    iput-object v0, p0, LYd/H0;->d:LSd/f;

    :cond_0
    iget-object v0, p0, LYd/H0;->d:LSd/f;

    return-object v0
.end method

.method public keySet()Lke/g;
    .locals 1

    iget-object v0, p0, LYd/H0;->c:Lke/g;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/H0;->b:Lee/i0;

    invoke-interface {v0}, Lee/i0;->keySet()Lke/g;

    move-result-object v0

    invoke-static {v0}, LSd/c;->G2(Lke/g;)Lke/g;

    move-result-object v0

    iput-object v0, p0, LYd/H0;->c:Lke/g;

    :cond_0
    iget-object v0, p0, LYd/H0;->c:Lke/g;

    return-object v0
.end method

.method public l()S
    .locals 1

    iget-object v0, p0, LYd/H0;->b:Lee/i0;

    invoke-interface {v0}, Lee/i0;->l()S

    move-result v0

    return v0
.end method

.method public n(LUd/d;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public n0(S)F
    .locals 1

    iget-object v0, p0, LYd/H0;->b:Lee/i0;

    invoke-interface {v0, p1}, Lee/i0;->n0(S)F

    move-result p1

    return p1
.end method

.method public pa(SF)F
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
            "Ljava/lang/Short;",
            "+",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LYd/H0;->b:Lee/i0;

    invoke-interface {v0}, Lee/i0;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/H0;->b:Lee/i0;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v(Lhe/t0;)Z
    .locals 1

    iget-object v0, p0, LYd/H0;->b:Lee/i0;

    invoke-interface {v0, p1}, Lee/i0;->v(Lhe/t0;)Z

    move-result p1

    return p1
.end method

.method public values()[F
    .locals 1

    iget-object v0, p0, LYd/H0;->b:Lee/i0;

    invoke-interface {v0}, Lee/i0;->values()[F

    move-result-object v0

    return-object v0
.end method

.method public yb(SFF)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public z(S)Z
    .locals 1

    iget-object v0, p0, LYd/H0;->b:Lee/i0;

    invoke-interface {v0, p1}, Lee/i0;->z(S)Z

    move-result p1

    return p1
.end method
