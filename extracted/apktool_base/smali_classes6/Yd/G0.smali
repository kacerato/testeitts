.class public LYd/G0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/h0;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lee/h0;

.field public transient c:Lke/g;

.field public transient d:LSd/e;


# direct methods
.method public constructor <init>(Lee/h0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LYd/G0;->c:Lke/g;

    iput-object v0, p0, LYd/G0;->d:LSd/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/G0;->b:Lee/h0;

    return-void
.end method

.method public static synthetic a(LYd/G0;)Lee/h0;
    .locals 0

    iget-object p0, p0, LYd/G0;->b:Lee/h0;

    return-object p0
.end method


# virtual methods
.method public E3(SD)D
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public I(Lhe/z;)Z
    .locals 1

    iget-object v0, p0, LYd/G0;->b:Lee/h0;

    invoke-interface {v0, p1}, Lee/h0;->I(Lhe/z;)Z

    move-result p1

    return p1
.end method

.method public I0(S)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Nc(Lhe/o0;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Q7(Lee/h0;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public T(D)Z
    .locals 1

    iget-object v0, p0, LYd/G0;->b:Lee/h0;

    invoke-interface {v0, p1, p2}, Lee/h0;->T(D)Z

    move-result p1

    return p1
.end method

.method public Y([S)[S
    .locals 1

    iget-object v0, p0, LYd/G0;->b:Lee/h0;

    invoke-interface {v0, p1}, Lee/h0;->Y([S)[S

    move-result-object p1

    return-object p1
.end method

.method public b0([D)[D
    .locals 1

    iget-object v0, p0, LYd/G0;->b:Lee/h0;

    invoke-interface {v0, p1}, Lee/h0;->b0([D)[D

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public d(S)D
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, LYd/G0;->b:Lee/h0;

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

.method public g8(SD)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LYd/G0;->b:Lee/h0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()D
    .locals 2

    iget-object v0, p0, LYd/G0;->b:Lee/h0;

    invoke-interface {v0}, Lee/h0;->i()D

    move-result-wide v0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/G0;->b:Lee/h0;

    invoke-interface {v0}, Lee/h0;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/p0;
    .locals 1

    new-instance v0, LYd/G0$a;

    invoke-direct {v0, p0}, LYd/G0$a;-><init>(LYd/G0;)V

    return-object v0
.end method

.method public j()[S
    .locals 1

    iget-object v0, p0, LYd/G0;->b:Lee/h0;

    invoke-interface {v0}, Lee/h0;->j()[S

    move-result-object v0

    return-object v0
.end method

.method public k()LSd/e;
    .locals 1

    iget-object v0, p0, LYd/G0;->d:LSd/e;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/G0;->b:Lee/h0;

    invoke-interface {v0}, Lee/h0;->k()LSd/e;

    move-result-object v0

    invoke-static {v0}, LSd/c;->d1(LSd/e;)LSd/e;

    move-result-object v0

    iput-object v0, p0, LYd/G0;->d:LSd/e;

    :cond_0
    iget-object v0, p0, LYd/G0;->d:LSd/e;

    return-object v0
.end method

.method public keySet()Lke/g;
    .locals 1

    iget-object v0, p0, LYd/G0;->c:Lke/g;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/G0;->b:Lee/h0;

    invoke-interface {v0}, Lee/h0;->keySet()Lke/g;

    move-result-object v0

    invoke-static {v0}, LSd/c;->G2(Lke/g;)Lke/g;

    move-result-object v0

    iput-object v0, p0, LYd/G0;->c:Lke/g;

    :cond_0
    iget-object v0, p0, LYd/G0;->c:Lke/g;

    return-object v0
.end method

.method public l()S
    .locals 1

    iget-object v0, p0, LYd/G0;->b:Lee/h0;

    invoke-interface {v0}, Lee/h0;->l()S

    move-result v0

    return v0
.end method

.method public lc(SDD)D
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public m8(Lhe/o0;)Z
    .locals 1

    iget-object v0, p0, LYd/G0;->b:Lee/h0;

    invoke-interface {v0, p1}, Lee/h0;->m8(Lhe/o0;)Z

    move-result p1

    return p1
.end method

.method public ma(SD)D
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public n0(S)D
    .locals 2

    iget-object v0, p0, LYd/G0;->b:Lee/h0;

    invoke-interface {v0, p1}, Lee/h0;->n0(S)D

    move-result-wide v0

    return-wide v0
.end method

.method public p(LUd/c;)V
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
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LYd/G0;->b:Lee/h0;

    invoke-interface {v0}, Lee/h0;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/G0;->b:Lee/h0;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v(Lhe/t0;)Z
    .locals 1

    iget-object v0, p0, LYd/G0;->b:Lee/h0;

    invoke-interface {v0, p1}, Lee/h0;->v(Lhe/t0;)Z

    move-result p1

    return p1
.end method

.method public values()[D
    .locals 1

    iget-object v0, p0, LYd/G0;->b:Lee/h0;

    invoke-interface {v0}, Lee/h0;->values()[D

    move-result-object v0

    return-object v0
.end method

.method public z(S)Z
    .locals 1

    iget-object v0, p0, LYd/G0;->b:Lee/h0;

    invoke-interface {v0, p1}, Lee/h0;->z(S)Z

    move-result p1

    return p1
.end method
