.class public LYd/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/x;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lee/x;

.field public transient c:Lke/c;

.field public transient d:LSd/i;


# direct methods
.method public constructor <init>(Lee/x;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LYd/G;->c:Lke/c;

    iput-object v0, p0, LYd/G;->d:LSd/i;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/G;->b:Lee/x;

    return-void
.end method

.method public static synthetic b(LYd/G;)Lee/x;
    .locals 0

    iget-object p0, p0, LYd/G;->b:Lee/x;

    return-object p0
.end method


# virtual methods
.method public A(D)Z
    .locals 1

    iget-object v0, p0, LYd/G;->b:Lee/x;

    invoke-interface {v0, p1, p2}, Lee/x;->A(D)Z

    move-result p1

    return p1
.end method

.method public H4(Lee/x;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Je(Lhe/A;)Z
    .locals 1

    iget-object v0, p0, LYd/G;->b:Lee/x;

    invoke-interface {v0, p1}, Lee/x;->Je(Lhe/A;)Z

    move-result p1

    return p1
.end method

.method public L(S)Z
    .locals 1

    iget-object v0, p0, LYd/G;->b:Lee/x;

    invoke-interface {v0, p1}, Lee/x;->L(S)Z

    move-result p1

    return p1
.end method

.method public N(Lhe/t0;)Z
    .locals 1

    iget-object v0, p0, LYd/G;->b:Lee/x;

    invoke-interface {v0, p1}, Lee/x;->N(Lhe/t0;)Z

    move-result p1

    return p1
.end method

.method public Sa(DS)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public W([D)[D
    .locals 1

    iget-object v0, p0, LYd/G;->b:Lee/x;

    invoke-interface {v0, p1}, Lee/x;->W([D)[D

    move-result-object p1

    return-object p1
.end method

.method public Y2(DS)S
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public a(D)S
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

    iget-object v0, p0, LYd/G;->b:Lee/x;

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

    iget-object v0, p0, LYd/G;->b:Lee/x;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()S
    .locals 1

    iget-object v0, p0, LYd/G;->b:Lee/x;

    invoke-interface {v0}, Lee/x;->i()S

    move-result v0

    return v0
.end method

.method public i0([S)[S
    .locals 1

    iget-object v0, p0, LYd/G;->b:Lee/x;

    invoke-interface {v0, p1}, Lee/x;->i0([S)[S

    move-result-object p1

    return-object p1
.end method

.method public increment(D)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/G;->b:Lee/x;

    invoke-interface {v0}, Lee/x;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/B;
    .locals 1

    new-instance v0, LYd/G$a;

    invoke-direct {v0, p0}, LYd/G$a;-><init>(LYd/G;)V

    return-object v0
.end method

.method public j()[D
    .locals 1

    iget-object v0, p0, LYd/G;->b:Lee/x;

    invoke-interface {v0}, Lee/x;->j()[D

    move-result-object v0

    return-object v0
.end method

.method public k()LSd/i;
    .locals 1

    iget-object v0, p0, LYd/G;->d:LSd/i;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/G;->b:Lee/x;

    invoke-interface {v0}, Lee/x;->k()LSd/i;

    move-result-object v0

    invoke-static {v0}, LSd/c;->h1(LSd/i;)LSd/i;

    move-result-object v0

    iput-object v0, p0, LYd/G;->d:LSd/i;

    :cond_0
    iget-object v0, p0, LYd/G;->d:LSd/i;

    return-object v0
.end method

.method public k0(Lhe/z;)Z
    .locals 1

    iget-object v0, p0, LYd/G;->b:Lee/x;

    invoke-interface {v0, p1}, Lee/x;->k0(Lhe/z;)Z

    move-result p1

    return p1
.end method

.method public keySet()Lke/c;
    .locals 1

    iget-object v0, p0, LYd/G;->c:Lke/c;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/G;->b:Lee/x;

    invoke-interface {v0}, Lee/x;->keySet()Lke/c;

    move-result-object v0

    invoke-static {v0}, LSd/c;->C2(Lke/c;)Lke/c;

    move-result-object v0

    iput-object v0, p0, LYd/G;->c:Lke/c;

    :cond_0
    iget-object v0, p0, LYd/G;->c:Lke/c;

    return-object v0
.end method

.method public l()D
    .locals 2

    iget-object v0, p0, LYd/G;->b:Lee/x;

    invoke-interface {v0}, Lee/x;->l()D

    move-result-wide v0

    return-wide v0
.end method

.method public p0(D)S
    .locals 1

    iget-object v0, p0, LYd/G;->b:Lee/x;

    invoke-interface {v0, p1, p2}, Lee/x;->p0(D)S

    move-result p1

    return p1
.end method

.method public p8(DSS)S
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
            "Ljava/lang/Double;",
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

.method public s9(DS)S
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LYd/G;->b:Lee/x;

    invoke-interface {v0}, Lee/x;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/G;->b:Lee/x;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u9(Lhe/A;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public values()[S
    .locals 1

    iget-object v0, p0, LYd/G;->b:Lee/x;

    invoke-interface {v0}, Lee/x;->values()[S

    move-result-object v0

    return-object v0
.end method
