.class public LYd/K0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/k0;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lee/k0;

.field public transient c:Lke/g;

.field public transient d:LSd/h;


# direct methods
.method public constructor <init>(Lee/k0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LYd/K0;->c:Lke/g;

    iput-object v0, p0, LYd/K0;->d:LSd/h;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/K0;->b:Lee/k0;

    return-void
.end method

.method public static synthetic a(LYd/K0;)Lee/k0;
    .locals 0

    iget-object p0, p0, LYd/K0;->b:Lee/k0;

    return-object p0
.end method


# virtual methods
.method public C3(SJ)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Hc(Lhe/r0;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public I0(S)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public N9(SJJ)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public R(J)Z
    .locals 1

    iget-object v0, p0, LYd/K0;->b:Lee/k0;

    invoke-interface {v0, p1, p2}, Lee/k0;->R(J)Z

    move-result p1

    return p1
.end method

.method public Y([S)[S
    .locals 1

    iget-object v0, p0, LYd/K0;->b:Lee/k0;

    invoke-interface {v0, p1}, Lee/k0;->Y([S)[S

    move-result-object p1

    return-object p1
.end method

.method public Z2(Lee/k0;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public c8(SJ)Z
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

.method public d(S)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, LYd/K0;->b:Lee/k0;

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

.method public g0([J)[J
    .locals 1

    iget-object v0, p0, LYd/K0;->b:Lee/k0;

    invoke-interface {v0, p1}, Lee/k0;->g0([J)[J

    move-result-object p1

    return-object p1
.end method

.method public h(LUd/f;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LYd/K0;->b:Lee/k0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()J
    .locals 2

    iget-object v0, p0, LYd/K0;->b:Lee/k0;

    invoke-interface {v0}, Lee/k0;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/K0;->b:Lee/k0;

    invoke-interface {v0}, Lee/k0;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/t0;
    .locals 1

    new-instance v0, LYd/K0$a;

    invoke-direct {v0, p0}, LYd/K0$a;-><init>(LYd/K0;)V

    return-object v0
.end method

.method public j()[S
    .locals 1

    iget-object v0, p0, LYd/K0;->b:Lee/k0;

    invoke-interface {v0}, Lee/k0;->j()[S

    move-result-object v0

    return-object v0
.end method

.method public k()LSd/h;
    .locals 1

    iget-object v0, p0, LYd/K0;->d:LSd/h;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/K0;->b:Lee/k0;

    invoke-interface {v0}, Lee/k0;->k()LSd/h;

    move-result-object v0

    invoke-static {v0}, LSd/c;->g1(LSd/h;)LSd/h;

    move-result-object v0

    iput-object v0, p0, LYd/K0;->d:LSd/h;

    :cond_0
    iget-object v0, p0, LYd/K0;->d:LSd/h;

    return-object v0
.end method

.method public keySet()Lke/g;
    .locals 1

    iget-object v0, p0, LYd/K0;->c:Lke/g;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/K0;->b:Lee/k0;

    invoke-interface {v0}, Lee/k0;->keySet()Lke/g;

    move-result-object v0

    invoke-static {v0}, LSd/c;->G2(Lke/g;)Lke/g;

    move-result-object v0

    iput-object v0, p0, LYd/K0;->c:Lke/g;

    :cond_0
    iget-object v0, p0, LYd/K0;->c:Lke/g;

    return-object v0
.end method

.method public l()S
    .locals 1

    iget-object v0, p0, LYd/K0;->b:Lee/k0;

    invoke-interface {v0}, Lee/k0;->l()S

    move-result v0

    return v0
.end method

.method public n0(S)J
    .locals 2

    iget-object v0, p0, LYd/K0;->b:Lee/k0;

    invoke-interface {v0, p1}, Lee/k0;->n0(S)J

    move-result-wide v0

    return-wide v0
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
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public ra(Lhe/r0;)Z
    .locals 1

    iget-object v0, p0, LYd/K0;->b:Lee/k0;

    invoke-interface {v0, p1}, Lee/k0;->ra(Lhe/r0;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LYd/K0;->b:Lee/k0;

    invoke-interface {v0}, Lee/k0;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/K0;->b:Lee/k0;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v(Lhe/t0;)Z
    .locals 1

    iget-object v0, p0, LYd/K0;->b:Lee/k0;

    invoke-interface {v0, p1}, Lee/k0;->v(Lhe/t0;)Z

    move-result p1

    return p1
.end method

.method public values()[J
    .locals 1

    iget-object v0, p0, LYd/K0;->b:Lee/k0;

    invoke-interface {v0}, Lee/k0;->values()[J

    move-result-object v0

    return-object v0
.end method

.method public x(Lhe/b0;)Z
    .locals 1

    iget-object v0, p0, LYd/K0;->b:Lee/k0;

    invoke-interface {v0, p1}, Lee/k0;->x(Lhe/b0;)Z

    move-result p1

    return p1
.end method

.method public xa(SJ)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public z(S)Z
    .locals 1

    iget-object v0, p0, LYd/K0;->b:Lee/k0;

    invoke-interface {v0, p1}, Lee/k0;->z(S)Z

    move-result p1

    return p1
.end method
