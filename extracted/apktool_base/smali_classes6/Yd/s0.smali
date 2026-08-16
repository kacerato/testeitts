.class public LYd/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/b0;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lee/b0<",
        "TK;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lee/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lee/b0<",
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

.field public transient d:LSd/f;


# direct methods
.method public constructor <init>(Lee/b0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lee/b0<",
            "TK;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LYd/s0;->c:Ljava/util/Set;

    iput-object v0, p0, LYd/s0;->d:LSd/f;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/s0;->b:Lee/b0;

    return-void
.end method

.method public static synthetic a(LYd/s0;)Lee/b0;
    .locals 0

    iget-object p0, p0, LYd/s0;->b:Lee/b0;

    return-object p0
.end method


# virtual methods
.method public B(Lhe/I;)Z
    .locals 1

    iget-object v0, p0, LYd/s0;->b:Lee/b0;

    invoke-interface {v0, p1}, Lee/b0;->B(Lhe/I;)Z

    move-result p1

    return p1
.end method

.method public C0([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;)[TK;"
        }
    .end annotation

    iget-object v0, p0, LYd/s0;->b:Lee/b0;

    invoke-interface {v0, p1}, Lee/b0;->C0([Ljava/lang/Object;)[Ljava/lang/Object;

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

    iget-object v0, p0, LYd/s0;->b:Lee/b0;

    invoke-interface {v0, p1}, Lee/b0;->G(Lhe/k0;)Z

    move-result p1

    return p1
.end method

.method public U(F)Z
    .locals 1

    iget-object v0, p0, LYd/s0;->b:Lee/b0;

    invoke-interface {v0, p1}, Lee/b0;->U(F)Z

    move-result p1

    return p1
.end method

.method public Z8(Lee/b0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lee/b0<",
            "+TK;>;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public c0([F)[F
    .locals 1

    iget-object v0, p0, LYd/s0;->b:Lee/b0;

    invoke-interface {v0, p1}, Lee/b0;->c0([F)[F

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, LYd/s0;->b:Lee/b0;

    invoke-interface {v0, p1}, Lee/b0;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public e5(Ljava/lang/Object;F)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;F)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, LYd/s0;->b:Lee/b0;

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

.method public get(Ljava/lang/Object;)F
    .locals 1

    iget-object v0, p0, LYd/s0;->b:Lee/b0;

    invoke-interface {v0, p1}, Lee/b0;->get(Ljava/lang/Object;)F

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LYd/s0;->b:Lee/b0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()F
    .locals 1

    iget-object v0, p0, LYd/s0;->b:Lee/b0;

    invoke-interface {v0}, Lee/b0;->i()F

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/s0;->b:Lee/b0;

    invoke-interface {v0}, Lee/b0;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LZd/i0<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, LYd/s0$a;

    invoke-direct {v0, p0}, LYd/s0$a;-><init>(LYd/s0;)V

    return-object v0
.end method

.method public j()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LYd/s0;->b:Lee/b0;

    invoke-interface {v0}, Lee/b0;->j()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public j4(Ljava/lang/Object;F)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;F)F"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public k()LSd/f;
    .locals 1

    iget-object v0, p0, LYd/s0;->d:LSd/f;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/s0;->b:Lee/b0;

    invoke-interface {v0}, Lee/b0;->k()LSd/f;

    move-result-object v0

    invoke-static {v0}, LSd/c;->e1(LSd/f;)LSd/f;

    move-result-object v0

    iput-object v0, p0, LYd/s0;->d:LSd/f;

    :cond_0
    iget-object v0, p0, LYd/s0;->d:LSd/f;

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

    iget-object v0, p0, LYd/s0;->c:Ljava/util/Set;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/s0;->b:Lee/b0;

    invoke-interface {v0}, Lee/b0;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, LYd/s0;->c:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, LYd/s0;->c:Ljava/util/Set;

    return-object v0
.end method

.method public n(LUd/d;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public pb(Ljava/lang/Object;FF)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;FF)F"
        }
    .end annotation

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
            "+TK;+",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LYd/s0;->b:Lee/b0;

    invoke-interface {v0}, Lee/b0;->size()I

    move-result v0

    return v0
.end method

.method public tc(Lhe/g0;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhe/g0<",
            "-TK;>;)Z"
        }
    .end annotation

    iget-object v0, p0, LYd/s0;->b:Lee/b0;

    invoke-interface {v0, p1}, Lee/b0;->tc(Lhe/g0;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/s0;->b:Lee/b0;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v9(Lhe/g0;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhe/g0<",
            "-TK;>;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public values()[F
    .locals 1

    iget-object v0, p0, LYd/s0;->b:Lee/b0;

    invoke-interface {v0}, Lee/b0;->values()[F

    move-result-object v0

    return-object v0
.end method

.method public wa(Ljava/lang/Object;F)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;F)F"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
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
