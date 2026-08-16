.class public LYd/E0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/g0;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lee/g0;

.field public transient c:Lke/g;

.field public transient d:LSd/b;


# direct methods
.method public constructor <init>(Lee/g0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LYd/E0;->c:Lke/g;

    iput-object v0, p0, LYd/E0;->d:LSd/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/E0;->b:Lee/g0;

    return-void
.end method

.method public static synthetic a(LYd/E0;)Lee/g0;
    .locals 0

    iget-object p0, p0, LYd/E0;->b:Lee/g0;

    return-object p0
.end method


# virtual methods
.method public Ab(Lee/g0;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public D3(SC)C
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

.method public K(Lhe/q;)Z
    .locals 1

    iget-object v0, p0, LYd/E0;->b:Lee/g0;

    invoke-interface {v0, p1}, Lee/g0;->K(Lhe/q;)Z

    move-result p1

    return p1
.end method

.method public O(C)Z
    .locals 1

    iget-object v0, p0, LYd/E0;->b:Lee/g0;

    invoke-interface {v0, p1}, Lee/g0;->O(C)Z

    move-result p1

    return p1
.end method

.method public Wb(SCC)C
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Y([S)[S
    .locals 1

    iget-object v0, p0, LYd/E0;->b:Lee/g0;

    invoke-interface {v0, p1}, Lee/g0;->Y([S)[S

    move-result-object p1

    return-object p1
.end method

.method public Z([C)[C
    .locals 1

    iget-object v0, p0, LYd/E0;->b:Lee/g0;

    invoke-interface {v0, p1}, Lee/g0;->Z([C)[C

    move-result-object p1

    return-object p1
.end method

.method public Z5(Lhe/n0;)Z
    .locals 1

    iget-object v0, p0, LYd/E0;->b:Lee/g0;

    invoke-interface {v0, p1}, Lee/g0;->Z5(Lhe/n0;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public d(S)C
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, LYd/E0;->b:Lee/g0;

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

.method public fc(Lhe/n0;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public g(LUd/b;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public h8(SC)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LYd/E0;->b:Lee/g0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()C
    .locals 1

    iget-object v0, p0, LYd/E0;->b:Lee/g0;

    invoke-interface {v0}, Lee/g0;->i()C

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/E0;->b:Lee/g0;

    invoke-interface {v0}, Lee/g0;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/o0;
    .locals 1

    new-instance v0, LYd/E0$a;

    invoke-direct {v0, p0}, LYd/E0$a;-><init>(LYd/E0;)V

    return-object v0
.end method

.method public j()[S
    .locals 1

    iget-object v0, p0, LYd/E0;->b:Lee/g0;

    invoke-interface {v0}, Lee/g0;->j()[S

    move-result-object v0

    return-object v0
.end method

.method public k()LSd/b;
    .locals 1

    iget-object v0, p0, LYd/E0;->d:LSd/b;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/E0;->b:Lee/g0;

    invoke-interface {v0}, Lee/g0;->k()LSd/b;

    move-result-object v0

    invoke-static {v0}, LSd/c;->c1(LSd/b;)LSd/b;

    move-result-object v0

    iput-object v0, p0, LYd/E0;->d:LSd/b;

    :cond_0
    iget-object v0, p0, LYd/E0;->d:LSd/b;

    return-object v0
.end method

.method public ka(SC)C
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public keySet()Lke/g;
    .locals 1

    iget-object v0, p0, LYd/E0;->c:Lke/g;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/E0;->b:Lee/g0;

    invoke-interface {v0}, Lee/g0;->keySet()Lke/g;

    move-result-object v0

    invoke-static {v0}, LSd/c;->G2(Lke/g;)Lke/g;

    move-result-object v0

    iput-object v0, p0, LYd/E0;->c:Lke/g;

    :cond_0
    iget-object v0, p0, LYd/E0;->c:Lke/g;

    return-object v0
.end method

.method public l()S
    .locals 1

    iget-object v0, p0, LYd/E0;->b:Lee/g0;

    invoke-interface {v0}, Lee/g0;->l()S

    move-result v0

    return v0
.end method

.method public n0(S)C
    .locals 1

    iget-object v0, p0, LYd/E0;->b:Lee/g0;

    invoke-interface {v0, p1}, Lee/g0;->n0(S)C

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
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LYd/E0;->b:Lee/g0;

    invoke-interface {v0}, Lee/g0;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/E0;->b:Lee/g0;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v(Lhe/t0;)Z
    .locals 1

    iget-object v0, p0, LYd/E0;->b:Lee/g0;

    invoke-interface {v0, p1}, Lee/g0;->v(Lhe/t0;)Z

    move-result p1

    return p1
.end method

.method public values()[C
    .locals 1

    iget-object v0, p0, LYd/E0;->b:Lee/g0;

    invoke-interface {v0}, Lee/g0;->values()[C

    move-result-object v0

    return-object v0
.end method

.method public z(S)Z
    .locals 1

    iget-object v0, p0, LYd/E0;->b:Lee/g0;

    invoke-interface {v0, p1}, Lee/g0;->z(S)Z

    move-result p1

    return p1
.end method
