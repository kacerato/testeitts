.class public LYd/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/g;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lee/g<",
        "TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lee/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lee/g<",
            "TV;>;"
        }
    .end annotation
.end field

.field public transient c:Lke/a;

.field public transient d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lee/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lee/g<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LYd/i;->c:Lke/a;

    iput-object v0, p0, LYd/i;->d:Ljava/util/Collection;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/i;->b:Lee/g;

    return-void
.end method

.method public static synthetic a(LYd/i;)Lee/g;
    .locals 0

    iget-object p0, p0, LYd/i;->b:Lee/g;

    return-object p0
.end method


# virtual methods
.method public D(B)Z
    .locals 1

    iget-object v0, p0, LYd/i;->b:Lee/g;

    invoke-interface {v0, p1}, Lee/g;->D(B)Z

    move-result p1

    return p1
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

    iget-object v0, p0, LYd/i;->b:Lee/g;

    invoke-interface {v0, p1}, Lee/g;->S(Lhe/k0;)Z

    move-result p1

    return p1
.end method

.method public Tc(Lhe/g;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhe/g<",
            "-TV;>;)Z"
        }
    .end annotation

    iget-object v0, p0, LYd/i;->b:Lee/g;

    invoke-interface {v0, p1}, Lee/g;->Tc(Lhe/g;)Z

    move-result p1

    return p1
.end method

.method public X([B)[B
    .locals 1

    iget-object v0, p0, LYd/i;->b:Lee/g;

    invoke-interface {v0, p1}, Lee/g;->X([B)[B

    move-result-object p1

    return-object p1
.end method

.method public ab(BLjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BTV;)TV;"
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

    iget-object v0, p0, LYd/i;->b:Lee/g;

    invoke-interface {v0, p1}, Lee/g;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, LYd/i;->b:Lee/g;

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

    iget-object v0, p0, LYd/i;->b:Lee/g;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/i;->b:Lee/g;

    invoke-interface {v0}, Lee/g;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LZd/i<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, LYd/i$a;

    invoke-direct {v0, p0}, LYd/i$a;-><init>(LYd/i;)V

    return-object v0
.end method

.method public j()[B
    .locals 1

    iget-object v0, p0, LYd/i;->b:Lee/g;

    invoke-interface {v0}, Lee/g;->j()[B

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

    iget-object v0, p0, LYd/i;->d:Ljava/util/Collection;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/i;->b:Lee/g;

    invoke-interface {v0}, Lee/g;->k()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, LYd/i;->d:Ljava/util/Collection;

    :cond_0
    iget-object v0, p0, LYd/i;->d:Ljava/util/Collection;

    return-object v0
.end method

.method public k4(BLjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BTV;)TV;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public keySet()Lke/a;
    .locals 1

    iget-object v0, p0, LYd/i;->c:Lke/a;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/i;->b:Lee/g;

    invoke-interface {v0}, Lee/g;->keySet()Lke/a;

    move-result-object v0

    invoke-static {v0}, LSd/c;->A2(Lke/a;)Lke/a;

    move-result-object v0

    iput-object v0, p0, LYd/i;->c:Lke/a;

    :cond_0
    iget-object v0, p0, LYd/i;->c:Lke/a;

    return-object v0
.end method

.method public l()B
    .locals 1

    iget-object v0, p0, LYd/i;->b:Lee/g;

    invoke-interface {v0}, Lee/g;->l()B

    move-result v0

    return v0
.end method

.method public m(B)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)TV;"
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
            "Ljava/lang/Byte;",
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

.method public s0(B)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)TV;"
        }
    .end annotation

    iget-object v0, p0, LYd/i;->b:Lee/g;

    invoke-interface {v0, p1}, Lee/g;->s0(B)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LYd/i;->b:Lee/g;

    invoke-interface {v0}, Lee/g;->size()I

    move-result v0

    return v0
.end method

.method public t6(Lee/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lee/g<",
            "+TV;>;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/i;->b:Lee/g;

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

    iget-object v0, p0, LYd/i;->b:Lee/g;

    invoke-interface {v0, p1}, Lee/g;->v0([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public v4(Lhe/g;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhe/g<",
            "-TV;>;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public values()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LYd/i;->b:Lee/g;

    invoke-interface {v0}, Lee/g;->values()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public w(Lhe/h;)Z
    .locals 1

    iget-object v0, p0, LYd/i;->b:Lee/g;

    invoke-interface {v0, p1}, Lee/g;->w(Lhe/h;)Z

    move-result p1

    return p1
.end method
