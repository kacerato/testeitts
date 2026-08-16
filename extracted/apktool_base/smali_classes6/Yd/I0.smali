.class public LYd/I0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/j0;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lee/j0;

.field public transient c:Lke/g;

.field public transient d:LSd/g;


# direct methods
.method public constructor <init>(Lee/j0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LYd/I0;->c:Lke/g;

    iput-object v0, p0, LYd/I0;->d:LSd/g;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/I0;->b:Lee/j0;

    return-void
.end method

.method public static synthetic a(LYd/I0;)Lee/j0;
    .locals 0

    iget-object p0, p0, LYd/I0;->b:Lee/j0;

    return-object p0
.end method


# virtual methods
.method public A3(SI)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public De(Lhe/q0;)Z
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

.method public Q(I)Z
    .locals 1

    iget-object v0, p0, LYd/I0;->b:Lee/j0;

    invoke-interface {v0, p1}, Lee/j0;->Q(I)Z

    move-result p1

    return p1
.end method

.method public Ta(Lee/j0;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Y([S)[S
    .locals 1

    iget-object v0, p0, LYd/I0;->b:Lee/j0;

    invoke-interface {v0, p1}, Lee/j0;->Y([S)[S

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public d(S)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public d8(SI)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public e0([I)[I
    .locals 1

    iget-object v0, p0, LYd/I0;->b:Lee/j0;

    invoke-interface {v0, p1}, Lee/j0;->e0([I)[I

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, LYd/I0;->b:Lee/j0;

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

.method public f(LUd/e;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LYd/I0;->b:Lee/j0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, LYd/I0;->b:Lee/j0;

    invoke-interface {v0}, Lee/j0;->i()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/I0;->b:Lee/j0;

    invoke-interface {v0}, Lee/j0;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/r0;
    .locals 1

    new-instance v0, LYd/I0$a;

    invoke-direct {v0, p0}, LYd/I0$a;-><init>(LYd/I0;)V

    return-object v0
.end method

.method public j()[S
    .locals 1

    iget-object v0, p0, LYd/I0;->b:Lee/j0;

    invoke-interface {v0}, Lee/j0;->j()[S

    move-result-object v0

    return-object v0
.end method

.method public k()LSd/g;
    .locals 1

    iget-object v0, p0, LYd/I0;->d:LSd/g;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/I0;->b:Lee/j0;

    invoke-interface {v0}, Lee/j0;->k()LSd/g;

    move-result-object v0

    invoke-static {v0}, LSd/c;->f1(LSd/g;)LSd/g;

    move-result-object v0

    iput-object v0, p0, LYd/I0;->d:LSd/g;

    :cond_0
    iget-object v0, p0, LYd/I0;->d:LSd/g;

    return-object v0
.end method

.method public keySet()Lke/g;
    .locals 1

    iget-object v0, p0, LYd/I0;->c:Lke/g;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/I0;->b:Lee/j0;

    invoke-interface {v0}, Lee/j0;->keySet()Lke/g;

    move-result-object v0

    invoke-static {v0}, LSd/c;->G2(Lke/g;)Lke/g;

    move-result-object v0

    iput-object v0, p0, LYd/I0;->c:Lke/g;

    :cond_0
    iget-object v0, p0, LYd/I0;->c:Lke/g;

    return-object v0
.end method

.method public l()S
    .locals 1

    iget-object v0, p0, LYd/I0;->b:Lee/j0;

    invoke-interface {v0}, Lee/j0;->l()S

    move-result v0

    return v0
.end method

.method public m0(Lhe/S;)Z
    .locals 1

    iget-object v0, p0, LYd/I0;->b:Lee/j0;

    invoke-interface {v0, p1}, Lee/j0;->m0(Lhe/S;)Z

    move-result p1

    return p1
.end method

.method public n0(S)I
    .locals 1

    iget-object v0, p0, LYd/I0;->b:Lee/j0;

    invoke-interface {v0, p1}, Lee/j0;->n0(S)I

    move-result p1

    return p1
.end method

.method public o9(SII)I
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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LYd/I0;->b:Lee/j0;

    invoke-interface {v0}, Lee/j0;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/I0;->b:Lee/j0;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v(Lhe/t0;)Z
    .locals 1

    iget-object v0, p0, LYd/I0;->b:Lee/j0;

    invoke-interface {v0, p1}, Lee/j0;->v(Lhe/t0;)Z

    move-result p1

    return p1
.end method

.method public va(SI)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public values()[I
    .locals 1

    iget-object v0, p0, LYd/I0;->b:Lee/j0;

    invoke-interface {v0}, Lee/j0;->values()[I

    move-result-object v0

    return-object v0
.end method

.method public w8(Lhe/q0;)Z
    .locals 1

    iget-object v0, p0, LYd/I0;->b:Lee/j0;

    invoke-interface {v0, p1}, Lee/j0;->w8(Lhe/q0;)Z

    move-result p1

    return p1
.end method

.method public z(S)Z
    .locals 1

    iget-object v0, p0, LYd/I0;->b:Lee/j0;

    invoke-interface {v0, p1}, Lee/j0;->z(S)Z

    move-result p1

    return p1
.end method
