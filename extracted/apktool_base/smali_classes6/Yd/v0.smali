.class public LYd/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/e0;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lee/e0<",
        "TK;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lee/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lee/e0<",
            "TK;>;"
        }
    .end annotation
.end field

.field public transient c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field public transient d:LSd/i;


# direct methods
.method public constructor <init>(Lee/e0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lee/e0<",
            "TK;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LYd/v0;->c:Ljava/util/Set;

    iput-object v0, p0, LYd/v0;->d:LSd/i;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/v0;->b:Lee/e0;

    return-void
.end method

.method public static synthetic a(LYd/v0;)Lee/e0;
    .locals 0

    iget-object p0, p0, LYd/v0;->b:Lee/e0;

    return-object p0
.end method


# virtual methods
.method public C0([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;)[TK;"
        }
    .end annotation

    iget-object v0, p0, LYd/v0;->b:Lee/e0;

    invoke-interface {v0, p1}, Lee/e0;->C0([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public G(Lhe/k0;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhe/k0<",
            "-TK;>;)Z"
        }
    .end annotation

    iget-object v0, p0, LYd/v0;->b:Lee/e0;

    invoke-interface {v0, p1}, Lee/e0;->G(Lhe/k0;)Z

    move-result p1

    return p1
.end method

.method public Ic(Lee/e0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lee/e0<",
            "+TK;>;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public L(S)Z
    .locals 1

    iget-object v0, p0, LYd/v0;->b:Lee/e0;

    invoke-interface {v0, p1}, Lee/e0;->L(S)Z

    move-result p1

    return p1
.end method

.method public N(Lhe/t0;)Z
    .locals 1

    iget-object v0, p0, LYd/v0;->b:Lee/e0;

    invoke-interface {v0, p1}, Lee/e0;->N(Lhe/t0;)Z

    move-result p1

    return p1
.end method

.method public N3(Ljava/lang/Object;S)S
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;S)S"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public S4(Ljava/lang/Object;S)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;S)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public T6(Lhe/l0;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhe/l0<",
            "-TK;>;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public U2(Ljava/lang/Object;SS)S
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;SS)S"
        }
    .end annotation

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

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, LYd/v0;->b:Lee/e0;

    invoke-interface {v0, p1}, Lee/e0;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, LYd/v0;->b:Lee/e0;

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

.method public ga(Ljava/lang/Object;S)S
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;S)S"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public get(Ljava/lang/Object;)S
    .locals 1

    iget-object v0, p0, LYd/v0;->b:Lee/e0;

    invoke-interface {v0, p1}, Lee/e0;->get(Ljava/lang/Object;)S

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LYd/v0;->b:Lee/e0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()S
    .locals 1

    iget-object v0, p0, LYd/v0;->b:Lee/e0;

    invoke-interface {v0}, Lee/e0;->i()S

    move-result v0

    return v0
.end method

.method public i0([S)[S
    .locals 1

    iget-object v0, p0, LYd/v0;->b:Lee/e0;

    invoke-interface {v0, p1}, Lee/e0;->i0([S)[S

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/v0;->b:Lee/e0;

    invoke-interface {v0}, Lee/e0;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/l0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LZd/l0<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, LYd/v0$a;

    invoke-direct {v0, p0}, LYd/v0$a;-><init>(LYd/v0;)V

    return-object v0
.end method

.method public j()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LYd/v0;->b:Lee/e0;

    invoke-interface {v0}, Lee/e0;->j()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public k()LSd/i;
    .locals 1

    iget-object v0, p0, LYd/v0;->d:LSd/i;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/v0;->b:Lee/e0;

    invoke-interface {v0}, Lee/e0;->k()LSd/i;

    move-result-object v0

    invoke-static {v0}, LSd/c;->h1(LSd/i;)LSd/i;

    move-result-object v0

    iput-object v0, p0, LYd/v0;->d:LSd/i;

    :cond_0
    iget-object v0, p0, LYd/v0;->d:LSd/i;

    return-object v0
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

    iget-object v0, p0, LYd/v0;->c:Ljava/util/Set;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/v0;->b:Lee/e0;

    invoke-interface {v0}, Lee/e0;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, LYd/v0;->c:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, LYd/v0;->c:Ljava/util/Set;

    return-object v0
.end method

.method public l3(Lhe/l0;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhe/l0<",
            "-TK;>;)Z"
        }
    .end annotation

    iget-object v0, p0, LYd/v0;->b:Lee/e0;

    invoke-interface {v0, p1}, Lee/e0;->l3(Lhe/l0;)Z

    move-result p1

    return p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+",
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

.method public remove(Ljava/lang/Object;)S
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LYd/v0;->b:Lee/e0;

    invoke-interface {v0}, Lee/e0;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/v0;->b:Lee/e0;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[S
    .locals 1

    iget-object v0, p0, LYd/v0;->b:Lee/e0;

    invoke-interface {v0}, Lee/e0;->values()[S

    move-result-object v0

    return-object v0
.end method

.method public x0(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
