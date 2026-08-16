.class public LYd/D0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/f0;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lee/f0;

.field public transient c:Lke/g;

.field public transient d:LSd/a;


# direct methods
.method public constructor <init>(Lee/f0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LYd/D0;->c:Lke/g;

    iput-object v0, p0, LYd/D0;->d:LSd/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/D0;->b:Lee/f0;

    return-void
.end method

.method public static synthetic a(LYd/D0;)Lee/f0;
    .locals 0

    iget-object p0, p0, LYd/D0;->b:Lee/f0;

    return-object p0
.end method


# virtual methods
.method public I0(S)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public K3(SB)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public M(Lhe/h;)Z
    .locals 1

    iget-object v0, p0, LYd/D0;->b:Lee/f0;

    invoke-interface {v0, p1}, Lee/f0;->M(Lhe/h;)Z

    move-result p1

    return p1
.end method

.method public P(B)Z
    .locals 1

    iget-object v0, p0, LYd/D0;->b:Lee/f0;

    invoke-interface {v0, p1}, Lee/f0;->P(B)Z

    move-result p1

    return p1
.end method

.method public Y([S)[S
    .locals 1

    iget-object v0, p0, LYd/D0;->b:Lee/f0;

    invoke-interface {v0, p1}, Lee/f0;->Y([S)[S

    move-result-object p1

    return-object p1
.end method

.method public Z7(SB)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public a0([B)[B
    .locals 1

    iget-object v0, p0, LYd/D0;->b:Lee/f0;

    invoke-interface {v0, p1}, Lee/f0;->a0([B)[B

    move-result-object p1

    return-object p1
.end method

.method public a7(SBB)B
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

.method public d(S)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, LYd/D0;->b:Lee/f0;

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

    iget-object v0, p0, LYd/D0;->b:Lee/f0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public hd(Lee/f0;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public i()B
    .locals 1

    iget-object v0, p0, LYd/D0;->b:Lee/f0;

    invoke-interface {v0}, Lee/f0;->i()B

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/D0;->b:Lee/f0;

    invoke-interface {v0}, Lee/f0;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/n0;
    .locals 1

    new-instance v0, LYd/D0$a;

    invoke-direct {v0, p0}, LYd/D0$a;-><init>(LYd/D0;)V

    return-object v0
.end method

.method public j()[S
    .locals 1

    iget-object v0, p0, LYd/D0;->b:Lee/f0;

    invoke-interface {v0}, Lee/f0;->j()[S

    move-result-object v0

    return-object v0
.end method

.method public ja(SB)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public k()LSd/a;
    .locals 1

    iget-object v0, p0, LYd/D0;->d:LSd/a;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/D0;->b:Lee/f0;

    invoke-interface {v0}, Lee/f0;->k()LSd/a;

    move-result-object v0

    invoke-static {v0}, LSd/c;->b1(LSd/a;)LSd/a;

    move-result-object v0

    iput-object v0, p0, LYd/D0;->d:LSd/a;

    :cond_0
    iget-object v0, p0, LYd/D0;->d:LSd/a;

    return-object v0
.end method

.method public keySet()Lke/g;
    .locals 1

    iget-object v0, p0, LYd/D0;->c:Lke/g;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/D0;->b:Lee/f0;

    invoke-interface {v0}, Lee/f0;->keySet()Lke/g;

    move-result-object v0

    invoke-static {v0}, LSd/c;->G2(Lke/g;)Lke/g;

    move-result-object v0

    iput-object v0, p0, LYd/D0;->c:Lke/g;

    :cond_0
    iget-object v0, p0, LYd/D0;->c:Lke/g;

    return-object v0
.end method

.method public l()S
    .locals 1

    iget-object v0, p0, LYd/D0;->b:Lee/f0;

    invoke-interface {v0}, Lee/f0;->l()S

    move-result v0

    return v0
.end method

.method public n0(S)B
    .locals 1

    iget-object v0, p0, LYd/D0;->b:Lee/f0;

    invoke-interface {v0, p1}, Lee/f0;->n0(S)B

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
            "Ljava/lang/Short;",
            "+",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public s(LUd/a;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LYd/D0;->b:Lee/f0;

    invoke-interface {v0}, Lee/f0;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/D0;->b:Lee/f0;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v(Lhe/t0;)Z
    .locals 1

    iget-object v0, p0, LYd/D0;->b:Lee/f0;

    invoke-interface {v0, p1}, Lee/f0;->v(Lhe/t0;)Z

    move-result p1

    return p1
.end method

.method public values()[B
    .locals 1

    iget-object v0, p0, LYd/D0;->b:Lee/f0;

    invoke-interface {v0}, Lee/f0;->values()[B

    move-result-object v0

    return-object v0
.end method

.method public xc(Lhe/m0;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public z(S)Z
    .locals 1

    iget-object v0, p0, LYd/D0;->b:Lee/f0;

    invoke-interface {v0, p1}, Lee/f0;->z(S)Z

    move-result p1

    return p1
.end method

.method public z5(Lhe/m0;)Z
    .locals 1

    iget-object v0, p0, LYd/D0;->b:Lee/f0;

    invoke-interface {v0, p1}, Lee/f0;->z5(Lhe/m0;)Z

    move-result p1

    return p1
.end method
