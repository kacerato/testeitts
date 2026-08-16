.class public LYd/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/E;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lee/E<",
        "TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lee/E;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lee/E<",
            "TV;>;"
        }
    .end annotation
.end field

.field public transient c:Lke/d;

.field public transient d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lee/E;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lee/E<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LYd/P;->c:Lke/d;

    iput-object v0, p0, LYd/P;->d:Ljava/util/Collection;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/P;->b:Lee/E;

    return-void
.end method

.method public static synthetic a(LYd/P;)Lee/E;
    .locals 0

    iget-object p0, p0, LYd/P;->b:Lee/E;

    return-object p0
.end method


# virtual methods
.method public H(F)Z
    .locals 1

    iget-object v0, p0, LYd/P;->b:Lee/E;

    invoke-interface {v0, p1}, Lee/E;->H(F)Z

    move-result p1

    return p1
.end method

.method public He(Lhe/H;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhe/H<",
            "-TV;>;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Me(FLjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FTV;)TV;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public S(Lhe/k0;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhe/k0<",
            "-TV;>;)Z"
        }
    .end annotation

    iget-object v0, p0, LYd/P;->b:Lee/E;

    invoke-interface {v0, p1}, Lee/E;->S(Lhe/k0;)Z

    move-result p1

    return p1
.end method

.method public c(F)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TV;"
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

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, LYd/P;->b:Lee/E;

    invoke-interface {v0, p1}, Lee/E;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public d0([F)[F
    .locals 1

    iget-object v0, p0, LYd/P;->b:Lee/E;

    invoke-interface {v0, p1}, Lee/E;->d0([F)[F

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, LYd/P;->b:Lee/E;

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

    iget-object v0, p0, LYd/P;->b:Lee/E;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/P;->b:Lee/E;

    invoke-interface {v0}, Lee/E;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/J;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LZd/J<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, LYd/P$a;

    invoke-direct {v0, p0}, LYd/P$a;-><init>(LYd/P;)V

    return-object v0
.end method

.method public j()[F
    .locals 1

    iget-object v0, p0, LYd/P;->b:Lee/E;

    invoke-interface {v0}, Lee/E;->j()[F

    move-result-object v0

    return-object v0
.end method

.method public j0(Lhe/I;)Z
    .locals 1

    iget-object v0, p0, LYd/P;->b:Lee/E;

    invoke-interface {v0, p1}, Lee/E;->j0(Lhe/I;)Z

    move-result p1

    return p1
.end method

.method public k()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, LYd/P;->d:Ljava/util/Collection;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/P;->b:Lee/E;

    invoke-interface {v0}, Lee/E;->k()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, LYd/P;->d:Ljava/util/Collection;

    :cond_0
    iget-object v0, p0, LYd/P;->d:Ljava/util/Collection;

    return-object v0
.end method

.method public keySet()Lke/d;
    .locals 1

    iget-object v0, p0, LYd/P;->c:Lke/d;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/P;->b:Lee/E;

    invoke-interface {v0}, Lee/E;->keySet()Lke/d;

    move-result-object v0

    invoke-static {v0}, LSd/c;->D2(Lke/d;)Lke/d;

    move-result-object v0

    iput-object v0, p0, LYd/P;->c:Lke/d;

    :cond_0
    iget-object v0, p0, LYd/P;->c:Lke/d;

    return-object v0
.end method

.method public l()F
    .locals 1

    iget-object v0, p0, LYd/P;->b:Lee/E;

    invoke-interface {v0}, Lee/E;->l()F

    move-result v0

    return v0
.end method

.method public l9(FLjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FTV;)TV;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public n6(Lhe/H;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhe/H<",
            "-TV;>;)Z"
        }
    .end annotation

    iget-object v0, p0, LYd/P;->b:Lee/E;

    invoke-interface {v0, p1}, Lee/E;->n6(Lhe/H;)Z

    move-result p1

    return p1
.end method

.method public p6(Lee/E;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lee/E<",
            "+TV;>;)V"
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
            "+",
            "Ljava/lang/Float;",
            "+TV;>;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public q0(F)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TV;"
        }
    .end annotation

    iget-object v0, p0, LYd/P;->b:Lee/E;

    invoke-interface {v0, p1}, Lee/E;->q0(F)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public r0(LUd/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LUd/g<",
            "TV;TV;>;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LYd/P;->b:Lee/E;

    invoke-interface {v0}, Lee/E;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/P;->b:Lee/E;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v0([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TV;)[TV;"
        }
    .end annotation

    iget-object v0, p0, LYd/P;->b:Lee/E;

    invoke-interface {v0, p1}, Lee/E;->v0([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public values()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LYd/P;->b:Lee/E;

    invoke-interface {v0}, Lee/E;->values()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
