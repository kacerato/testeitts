.class public LYd/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/c;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lee/c;

.field public transient c:Lke/a;

.field public transient d:LSd/e;


# direct methods
.method public constructor <init>(Lee/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LYd/d;->c:Lke/a;

    iput-object v0, p0, LYd/d;->d:LSd/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/d;->b:Lee/c;

    return-void
.end method

.method public static synthetic a(LYd/d;)Lee/c;
    .locals 0

    iget-object p0, p0, LYd/d;->b:Lee/c;

    return-object p0
.end method


# virtual methods
.method public Ac(Lhe/c;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public D(B)Z
    .locals 1

    iget-object v0, p0, LYd/d;->b:Lee/c;

    invoke-interface {v0, p1}, Lee/c;->D(B)Z

    move-result p1

    return p1
.end method

.method public E0(B)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public I(Lhe/z;)Z
    .locals 1

    iget-object v0, p0, LYd/d;->b:Lee/c;

    invoke-interface {v0, p1}, Lee/c;->I(Lhe/z;)Z

    move-result p1

    return p1
.end method

.method public Jb(Lee/c;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public T(D)Z
    .locals 1

    iget-object v0, p0, LYd/d;->b:Lee/c;

    invoke-interface {v0, p1, p2}, Lee/c;->T(D)Z

    move-result p1

    return p1
.end method

.method public T4(BDD)D
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public U3(BD)D
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public X([B)[B
    .locals 1

    iget-object v0, p0, LYd/d;->b:Lee/c;

    invoke-interface {v0, p1}, Lee/c;->X([B)[B

    move-result-object p1

    return-object p1
.end method

.method public b0([D)[D
    .locals 1

    iget-object v0, p0, LYd/d;->b:Lee/c;

    invoke-interface {v0, p1}, Lee/c;->b0([D)[D

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, LYd/d;->b:Lee/c;

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

.method public fa(BD)D
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LYd/d;->b:Lee/c;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()D
    .locals 2

    iget-object v0, p0, LYd/d;->b:Lee/c;

    invoke-interface {v0}, Lee/c;->i()D

    move-result-wide v0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/d;->b:Lee/c;

    invoke-interface {v0}, Lee/c;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/d;
    .locals 1

    new-instance v0, LYd/d$a;

    invoke-direct {v0, p0}, LYd/d$a;-><init>(LYd/d;)V

    return-object v0
.end method

.method public j()[B
    .locals 1

    iget-object v0, p0, LYd/d;->b:Lee/c;

    invoke-interface {v0}, Lee/c;->j()[B

    move-result-object v0

    return-object v0
.end method

.method public k()LSd/e;
    .locals 1

    iget-object v0, p0, LYd/d;->d:LSd/e;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/d;->b:Lee/c;

    invoke-interface {v0}, Lee/c;->k()LSd/e;

    move-result-object v0

    invoke-static {v0}, LSd/c;->d1(LSd/e;)LSd/e;

    move-result-object v0

    iput-object v0, p0, LYd/d;->d:LSd/e;

    :cond_0
    iget-object v0, p0, LYd/d;->d:LSd/e;

    return-object v0
.end method

.method public ke(BD)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public keySet()Lke/a;
    .locals 1

    iget-object v0, p0, LYd/d;->c:Lke/a;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/d;->b:Lee/c;

    invoke-interface {v0}, Lee/c;->keySet()Lke/a;

    move-result-object v0

    invoke-static {v0}, LSd/c;->A2(Lke/a;)Lke/a;

    move-result-object v0

    iput-object v0, p0, LYd/d;->c:Lke/a;

    :cond_0
    iget-object v0, p0, LYd/d;->c:Lke/a;

    return-object v0
.end method

.method public l()B
    .locals 1

    iget-object v0, p0, LYd/d;->b:Lee/c;

    invoke-interface {v0}, Lee/c;->l()B

    move-result v0

    return v0
.end method

.method public m(B)D
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public p(LUd/c;)V
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
            "Ljava/lang/Byte;",
            "+",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public s0(B)D
    .locals 2

    iget-object v0, p0, LYd/d;->b:Lee/c;

    invoke-interface {v0, p1}, Lee/c;->s0(B)D

    move-result-wide v0

    return-wide v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LYd/d;->b:Lee/c;

    invoke-interface {v0}, Lee/c;->size()I

    move-result v0

    return v0
.end method

.method public t3(Lhe/c;)Z
    .locals 1

    iget-object v0, p0, LYd/d;->b:Lee/c;

    invoke-interface {v0, p1}, Lee/c;->t3(Lhe/c;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/d;->b:Lee/c;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[D
    .locals 1

    iget-object v0, p0, LYd/d;->b:Lee/c;

    invoke-interface {v0}, Lee/c;->values()[D

    move-result-object v0

    return-object v0
.end method

.method public w(Lhe/h;)Z
    .locals 1

    iget-object v0, p0, LYd/d;->b:Lee/c;

    invoke-interface {v0, p1}, Lee/c;->w(Lhe/h;)Z

    move-result p1

    return p1
.end method
