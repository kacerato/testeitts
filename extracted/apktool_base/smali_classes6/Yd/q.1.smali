.class public LYd/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/m;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lee/m;

.field public transient c:Lke/b;

.field public transient d:LSd/g;


# direct methods
.method public constructor <init>(Lee/m;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LYd/q;->c:Lke/b;

    iput-object v0, p0, LYd/q;->d:LSd/g;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/q;->b:Lee/m;

    return-void
.end method

.method public static synthetic a(LYd/q;)Lee/m;
    .locals 0

    iget-object p0, p0, LYd/q;->b:Lee/m;

    return-object p0
.end method


# virtual methods
.method public C(C)Z
    .locals 1

    iget-object v0, p0, LYd/q;->b:Lee/m;

    invoke-interface {v0, p1}, Lee/m;->C(C)Z

    move-result p1

    return p1
.end method

.method public D0(C)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public E4(CI)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Od(CI)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Q(I)Z
    .locals 1

    iget-object v0, p0, LYd/q;->b:Lee/m;

    invoke-interface {v0, p1}, Lee/m;->Q(I)Z

    move-result p1

    return p1
.end method

.method public V([C)[C
    .locals 1

    iget-object v0, p0, LYd/q;->b:Lee/m;

    invoke-interface {v0, p1}, Lee/m;->V([C)[C

    move-result-object p1

    return-object p1
.end method

.method public b(C)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bb(Lee/m;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public c4(Lhe/n;)Z
    .locals 0

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

.method public e0([I)[I
    .locals 1

    iget-object v0, p0, LYd/q;->b:Lee/m;

    invoke-interface {v0, p1}, Lee/m;->e0([I)[I

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, LYd/q;->b:Lee/m;

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

    iget-object v0, p0, LYd/q;->b:Lee/m;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, LYd/q;->b:Lee/m;

    invoke-interface {v0}, Lee/m;->i()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/q;->b:Lee/m;

    invoke-interface {v0}, Lee/m;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/o;
    .locals 1

    new-instance v0, LYd/q$a;

    invoke-direct {v0, p0}, LYd/q$a;-><init>(LYd/q;)V

    return-object v0
.end method

.method public j()[C
    .locals 1

    iget-object v0, p0, LYd/q;->b:Lee/m;

    invoke-interface {v0}, Lee/m;->j()[C

    move-result-object v0

    return-object v0
.end method

.method public k()LSd/g;
    .locals 1

    iget-object v0, p0, LYd/q;->d:LSd/g;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/q;->b:Lee/m;

    invoke-interface {v0}, Lee/m;->k()LSd/g;

    move-result-object v0

    invoke-static {v0}, LSd/c;->f1(LSd/g;)LSd/g;

    move-result-object v0

    iput-object v0, p0, LYd/q;->d:LSd/g;

    :cond_0
    iget-object v0, p0, LYd/q;->d:LSd/g;

    return-object v0
.end method

.method public keySet()Lke/b;
    .locals 1

    iget-object v0, p0, LYd/q;->c:Lke/b;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/q;->b:Lee/m;

    invoke-interface {v0}, Lee/m;->keySet()Lke/b;

    move-result-object v0

    invoke-static {v0}, LSd/c;->B2(Lke/b;)Lke/b;

    move-result-object v0

    iput-object v0, p0, LYd/q;->c:Lke/b;

    :cond_0
    iget-object v0, p0, LYd/q;->c:Lke/b;

    return-object v0
.end method

.method public l()C
    .locals 1

    iget-object v0, p0, LYd/q;->b:Lee/m;

    invoke-interface {v0}, Lee/m;->l()C

    move-result v0

    return v0
.end method

.method public m0(Lhe/S;)Z
    .locals 1

    iget-object v0, p0, LYd/q;->b:Lee/m;

    invoke-interface {v0, p1}, Lee/m;->m0(Lhe/S;)Z

    move-result p1

    return p1
.end method

.method public o0(C)I
    .locals 1

    iget-object v0, p0, LYd/q;->b:Lee/m;

    invoke-interface {v0, p1}, Lee/m;->o0(C)I

    move-result p1

    return p1
.end method

.method public o4(CII)I
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
            "Ljava/lang/Character;",
            "+",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public qb(Lhe/n;)Z
    .locals 1

    iget-object v0, p0, LYd/q;->b:Lee/m;

    invoke-interface {v0, p1}, Lee/m;->qb(Lhe/n;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LYd/q;->b:Lee/m;

    invoke-interface {v0}, Lee/m;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/q;->b:Lee/m;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[I
    .locals 1

    iget-object v0, p0, LYd/q;->b:Lee/m;

    invoke-interface {v0}, Lee/m;->values()[I

    move-result-object v0

    return-object v0
.end method

.method public x9(CI)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public y(Lhe/q;)Z
    .locals 1

    iget-object v0, p0, LYd/q;->b:Lee/m;

    invoke-interface {v0, p1}, Lee/m;->y(Lhe/q;)Z

    move-result p1

    return p1
.end method
