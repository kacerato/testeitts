.class public LYd/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/Z;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lee/Z<",
        "TK;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lee/Z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lee/Z<",
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

.field public transient d:LSd/b;


# direct methods
.method public constructor <init>(Lee/Z;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lee/Z<",
            "TK;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LYd/q0;->c:Ljava/util/Set;

    iput-object v0, p0, LYd/q0;->d:LSd/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/q0;->b:Lee/Z;

    return-void
.end method

.method public static synthetic a(LYd/q0;)Lee/Z;
    .locals 0

    iget-object p0, p0, LYd/q0;->b:Lee/Z;

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

    iget-object v0, p0, LYd/q0;->b:Lee/Z;

    invoke-interface {v0, p1}, Lee/Z;->C0([Ljava/lang/Object;)[Ljava/lang/Object;

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

    iget-object v0, p0, LYd/q0;->b:Lee/Z;

    invoke-interface {v0, p1}, Lee/Z;->G(Lhe/k0;)Z

    move-result p1

    return p1
.end method

.method public K(Lhe/q;)Z
    .locals 1

    iget-object v0, p0, LYd/q0;->b:Lee/Z;

    invoke-interface {v0, p1}, Lee/Z;->K(Lhe/q;)Z

    move-result p1

    return p1
.end method

.method public O(C)Z
    .locals 1

    iget-object v0, p0, LYd/q0;->b:Lee/Z;

    invoke-interface {v0, p1}, Lee/Z;->O(C)Z

    move-result p1

    return p1
.end method

.method public Ya(Lee/Z;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lee/Z<",
            "+TK;>;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Z([C)[C
    .locals 1

    iget-object v0, p0, LYd/q0;->b:Lee/Z;

    invoke-interface {v0, p1}, Lee/Z;->Z([C)[C

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

    iget-object v0, p0, LYd/q0;->b:Lee/Z;

    invoke-interface {v0, p1}, Lee/Z;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, LYd/q0;->b:Lee/Z;

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

.method public g(LUd/b;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public get(Ljava/lang/Object;)C
    .locals 1

    iget-object v0, p0, LYd/q0;->b:Lee/Z;

    invoke-interface {v0, p1}, Lee/Z;->get(Ljava/lang/Object;)C

    move-result p1

    return p1
.end method

.method public h4(Ljava/lang/Object;C)C
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;C)C"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LYd/q0;->b:Lee/Z;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()C
    .locals 1

    iget-object v0, p0, LYd/q0;->b:Lee/Z;

    invoke-interface {v0}, Lee/Z;->i()C

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/q0;->b:Lee/Z;

    invoke-interface {v0}, Lee/Z;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/g0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LZd/g0<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, LYd/q0$a;

    invoke-direct {v0, p0}, LYd/q0$a;-><init>(LYd/q0;)V

    return-object v0
.end method

.method public j()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LYd/q0;->b:Lee/Z;

    invoke-interface {v0}, Lee/Z;->j()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public je(Lhe/e0;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhe/e0<",
            "-TK;>;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public k()LSd/b;
    .locals 1

    iget-object v0, p0, LYd/q0;->d:LSd/b;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/q0;->b:Lee/Z;

    invoke-interface {v0}, Lee/Z;->k()LSd/b;

    move-result-object v0

    invoke-static {v0}, LSd/c;->c1(LSd/b;)LSd/b;

    move-result-object v0

    iput-object v0, p0, LYd/q0;->d:LSd/b;

    :cond_0
    iget-object v0, p0, LYd/q0;->d:LSd/b;

    return-object v0
.end method

.method public k5(Ljava/lang/Object;C)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;C)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
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

    iget-object v0, p0, LYd/q0;->c:Ljava/util/Set;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/q0;->b:Lee/Z;

    invoke-interface {v0}, Lee/Z;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, LYd/q0;->c:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, LYd/q0;->c:Ljava/util/Set;

    return-object v0
.end method

.method public m9(Ljava/lang/Object;CC)C
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;CC)C"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public p7(Lhe/e0;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhe/e0<",
            "-TK;>;)Z"
        }
    .end annotation

    iget-object v0, p0, LYd/q0;->b:Lee/Z;

    invoke-interface {v0, p1}, Lee/Z;->p7(Lhe/e0;)Z

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
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public qa(Ljava/lang/Object;C)C
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;C)C"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)C
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LYd/q0;->b:Lee/Z;

    invoke-interface {v0}, Lee/Z;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/q0;->b:Lee/Z;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[C
    .locals 1

    iget-object v0, p0, LYd/q0;->b:Lee/Z;

    invoke-interface {v0}, Lee/Z;->values()[C

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
