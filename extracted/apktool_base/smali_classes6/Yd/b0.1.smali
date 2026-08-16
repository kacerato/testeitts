.class public LYd/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/M;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lee/M<",
        "TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lee/M;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lee/M<",
            "TV;>;"
        }
    .end annotation
.end field

.field public transient c:Lke/e;

.field public transient d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lee/M;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lee/M<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LYd/b0;->c:Lke/e;

    iput-object v0, p0, LYd/b0;->d:Ljava/util/Collection;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/b0;->b:Lee/M;

    return-void
.end method

.method public static synthetic a(LYd/b0;)Lee/M;
    .locals 0

    iget-object p0, p0, LYd/b0;->b:Lee/M;

    return-object p0
.end method


# virtual methods
.method public F(I)Z
    .locals 1

    iget-object v0, p0, LYd/b0;->b:Lee/M;

    invoke-interface {v0, p1}, Lee/M;->F(I)Z

    move-result p1

    return p1
.end method

.method public Gd(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public J(Lhe/S;)Z
    .locals 1

    iget-object v0, p0, LYd/b0;->b:Lee/M;

    invoke-interface {v0, p1}, Lee/M;->J(Lhe/S;)Z

    move-result p1

    return p1
.end method

.method public Ja(Lee/M;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lee/M<",
            "+TV;>;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Mb(Lhe/Q;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhe/Q<",
            "-TV;>;)Z"
        }
    .end annotation

    iget-object v0, p0, LYd/b0;->b:Lee/M;

    invoke-interface {v0, p1}, Lee/M;->Mb(Lhe/Q;)Z

    move-result p1

    return p1
.end method

.method public Pb(Lhe/Q;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhe/Q<",
            "-TV;>;)Z"
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

    iget-object v0, p0, LYd/b0;->b:Lee/M;

    invoke-interface {v0, p1}, Lee/M;->S(Lhe/k0;)Z

    move-result p1

    return p1
.end method

.method public ae(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
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

    iget-object v0, p0, LYd/b0;->b:Lee/M;

    invoke-interface {v0, p1}, Lee/M;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, LYd/b0;->b:Lee/M;

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

.method public f0([I)[I
    .locals 1

    iget-object v0, p0, LYd/b0;->b:Lee/M;

    invoke-interface {v0, p1}, Lee/M;->f0([I)[I

    move-result-object p1

    return-object p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object v0, p0, LYd/b0;->b:Lee/M;

    invoke-interface {v0, p1}, Lee/M;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LYd/b0;->b:Lee/M;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/b0;->b:Lee/M;

    invoke-interface {v0}, Lee/M;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/T;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LZd/T<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, LYd/b0$a;

    invoke-direct {v0, p0}, LYd/b0$a;-><init>(LYd/b0;)V

    return-object v0
.end method

.method public j()[I
    .locals 1

    iget-object v0, p0, LYd/b0;->b:Lee/M;

    invoke-interface {v0}, Lee/M;->j()[I

    move-result-object v0

    return-object v0
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

    iget-object v0, p0, LYd/b0;->d:Ljava/util/Collection;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/b0;->b:Lee/M;

    invoke-interface {v0}, Lee/M;->k()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, LYd/b0;->d:Ljava/util/Collection;

    :cond_0
    iget-object v0, p0, LYd/b0;->d:Ljava/util/Collection;

    return-object v0
.end method

.method public keySet()Lke/e;
    .locals 1

    iget-object v0, p0, LYd/b0;->c:Lke/e;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/b0;->b:Lee/M;

    invoke-interface {v0}, Lee/M;->keySet()Lke/e;

    move-result-object v0

    invoke-static {v0}, LSd/c;->E2(Lke/e;)Lke/e;

    move-result-object v0

    iput-object v0, p0, LYd/b0;->c:Lke/e;

    :cond_0
    iget-object v0, p0, LYd/b0;->c:Lke/e;

    return-object v0
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, LYd/b0;->b:Lee/M;

    invoke-interface {v0}, Lee/M;->l()I

    move-result v0

    return v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Integer;",
            "+TV;>;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
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

.method public remove(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LYd/b0;->b:Lee/M;

    invoke-interface {v0}, Lee/M;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/b0;->b:Lee/M;

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

    iget-object v0, p0, LYd/b0;->b:Lee/M;

    invoke-interface {v0, p1}, Lee/M;->v0([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public values()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LYd/b0;->b:Lee/M;

    invoke-interface {v0}, Lee/M;->values()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
