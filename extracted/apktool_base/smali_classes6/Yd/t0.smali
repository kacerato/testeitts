.class public LYd/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/c0;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lee/c0<",
        "TK;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lee/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lee/c0<",
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

.field public transient d:LSd/g;


# direct methods
.method public constructor <init>(Lee/c0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lee/c0<",
            "TK;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LYd/t0;->c:Ljava/util/Set;

    iput-object v0, p0, LYd/t0;->d:LSd/g;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/t0;->b:Lee/c0;

    return-void
.end method

.method public static synthetic a(LYd/t0;)Lee/c0;
    .locals 0

    iget-object p0, p0, LYd/t0;->b:Lee/c0;

    return-object p0
.end method


# virtual methods
.method public Ba(Lee/c0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lee/c0<",
            "+TK;>;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Be(Lhe/h0;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhe/h0<",
            "-TK;>;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public C0([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;)[TK;"
        }
    .end annotation

    iget-object v0, p0, LYd/t0;->b:Lee/c0;

    invoke-interface {v0, p1}, Lee/c0;->C0([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public Eb(Ljava/lang/Object;II)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;II)I"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
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

    iget-object v0, p0, LYd/t0;->b:Lee/c0;

    invoke-interface {v0, p1}, Lee/c0;->G(Lhe/k0;)Z

    move-result p1

    return p1
.end method

.method public Q(I)Z
    .locals 1

    iget-object v0, p0, LYd/t0;->b:Lee/c0;

    invoke-interface {v0, p1}, Lee/c0;->Q(I)Z

    move-result p1

    return p1
.end method

.method public Y9(Ljava/lang/Object;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)I"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public a4(Ljava/lang/Object;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)I"
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

    iget-object v0, p0, LYd/t0;->b:Lee/c0;

    invoke-interface {v0, p1}, Lee/c0;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public e0([I)[I
    .locals 1

    iget-object v0, p0, LYd/t0;->b:Lee/c0;

    invoke-interface {v0, p1}, Lee/c0;->e0([I)[I

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, LYd/t0;->b:Lee/c0;

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

.method public get(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, LYd/t0;->b:Lee/c0;

    invoke-interface {v0, p1}, Lee/c0;->get(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LYd/t0;->b:Lee/c0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, LYd/t0;->b:Lee/c0;

    invoke-interface {v0}, Lee/c0;->i()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/t0;->b:Lee/c0;

    invoke-interface {v0}, Lee/c0;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/j0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LZd/j0<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, LYd/t0$a;

    invoke-direct {v0, p0}, LYd/t0$a;-><init>(LYd/t0;)V

    return-object v0
.end method

.method public j()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LYd/t0;->b:Lee/c0;

    invoke-interface {v0}, Lee/c0;->j()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public k()LSd/g;
    .locals 1

    iget-object v0, p0, LYd/t0;->d:LSd/g;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/t0;->b:Lee/c0;

    invoke-interface {v0}, Lee/c0;->k()LSd/g;

    move-result-object v0

    invoke-static {v0}, LSd/c;->f1(LSd/g;)LSd/g;

    move-result-object v0

    iput-object v0, p0, LYd/t0;->d:LSd/g;

    :cond_0
    iget-object v0, p0, LYd/t0;->d:LSd/g;

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

    iget-object v0, p0, LYd/t0;->c:Ljava/util/Set;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/t0;->b:Lee/c0;

    invoke-interface {v0}, Lee/c0;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, LYd/t0;->c:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, LYd/t0;->c:Ljava/util/Set;

    return-object v0
.end method

.method public m0(Lhe/S;)Z
    .locals 1

    iget-object v0, p0, LYd/t0;->b:Lee/c0;

    invoke-interface {v0, p1}, Lee/c0;->m0(Lhe/S;)Z

    move-result p1

    return p1
.end method

.method public n9(Lhe/h0;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhe/h0<",
            "-TK;>;)Z"
        }
    .end annotation

    iget-object v0, p0, LYd/t0;->b:Lee/c0;

    invoke-interface {v0, p1}, Lee/c0;->n9(Lhe/h0;)Z

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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public s5(Ljava/lang/Object;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LYd/t0;->b:Lee/c0;

    invoke-interface {v0}, Lee/c0;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/t0;->b:Lee/c0;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[I
    .locals 1

    iget-object v0, p0, LYd/t0;->b:Lee/c0;

    invoke-interface {v0}, Lee/c0;->values()[I

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
