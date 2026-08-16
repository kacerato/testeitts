.class public LYd/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/l;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lee/l;

.field public transient c:Lke/b;

.field public transient d:LSd/f;


# direct methods
.method public constructor <init>(Lee/l;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LYd/p;->c:Lke/b;

    iput-object v0, p0, LYd/p;->d:LSd/f;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/p;->b:Lee/l;

    return-void
.end method

.method public static synthetic a(LYd/p;)Lee/l;
    .locals 0

    iget-object p0, p0, LYd/p;->b:Lee/l;

    return-object p0
.end method


# virtual methods
.method public B(Lhe/I;)Z
    .locals 1

    iget-object v0, p0, LYd/p;->b:Lee/l;

    invoke-interface {v0, p1}, Lee/l;->B(Lhe/I;)Z

    move-result p1

    return p1
.end method

.method public B9(CF)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public C(C)Z
    .locals 1

    iget-object v0, p0, LYd/p;->b:Lee/l;

    invoke-interface {v0, p1}, Lee/l;->C(C)Z

    move-result p1

    return p1
.end method

.method public C4(CF)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public D0(C)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public E6(Lee/l;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public M4(CFF)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Sd(CF)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public U(F)Z
    .locals 1

    iget-object v0, p0, LYd/p;->b:Lee/l;

    invoke-interface {v0, p1}, Lee/l;->U(F)Z

    move-result p1

    return p1
.end method

.method public V([C)[C
    .locals 1

    iget-object v0, p0, LYd/p;->b:Lee/l;

    invoke-interface {v0, p1}, Lee/l;->V([C)[C

    move-result-object p1

    return-object p1
.end method

.method public X8(Lhe/m;)Z
    .locals 1

    iget-object v0, p0, LYd/p;->b:Lee/l;

    invoke-interface {v0, p1}, Lee/l;->X8(Lhe/m;)Z

    move-result p1

    return p1
.end method

.method public b(C)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public c0([F)[F
    .locals 1

    iget-object v0, p0, LYd/p;->b:Lee/l;

    invoke-interface {v0, p1}, Lee/l;->c0([F)[F

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

    iget-object v0, p0, LYd/p;->b:Lee/l;

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

.method public fd(Lhe/m;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LYd/p;->b:Lee/l;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()F
    .locals 1

    iget-object v0, p0, LYd/p;->b:Lee/l;

    invoke-interface {v0}, Lee/l;->i()F

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/p;->b:Lee/l;

    invoke-interface {v0}, Lee/l;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/n;
    .locals 1

    new-instance v0, LYd/p$a;

    invoke-direct {v0, p0}, LYd/p$a;-><init>(LYd/p;)V

    return-object v0
.end method

.method public j()[C
    .locals 1

    iget-object v0, p0, LYd/p;->b:Lee/l;

    invoke-interface {v0}, Lee/l;->j()[C

    move-result-object v0

    return-object v0
.end method

.method public k()LSd/f;
    .locals 1

    iget-object v0, p0, LYd/p;->d:LSd/f;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/p;->b:Lee/l;

    invoke-interface {v0}, Lee/l;->k()LSd/f;

    move-result-object v0

    invoke-static {v0}, LSd/c;->e1(LSd/f;)LSd/f;

    move-result-object v0

    iput-object v0, p0, LYd/p;->d:LSd/f;

    :cond_0
    iget-object v0, p0, LYd/p;->d:LSd/f;

    return-object v0
.end method

.method public keySet()Lke/b;
    .locals 1

    iget-object v0, p0, LYd/p;->c:Lke/b;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/p;->b:Lee/l;

    invoke-interface {v0}, Lee/l;->keySet()Lke/b;

    move-result-object v0

    invoke-static {v0}, LSd/c;->B2(Lke/b;)Lke/b;

    move-result-object v0

    iput-object v0, p0, LYd/p;->c:Lke/b;

    :cond_0
    iget-object v0, p0, LYd/p;->c:Lke/b;

    return-object v0
.end method

.method public l()C
    .locals 1

    iget-object v0, p0, LYd/p;->b:Lee/l;

    invoke-interface {v0}, Lee/l;->l()C

    move-result v0

    return v0
.end method

.method public n(LUd/d;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public o0(C)F
    .locals 1

    iget-object v0, p0, LYd/p;->b:Lee/l;

    invoke-interface {v0, p1}, Lee/l;->o0(C)F

    move-result p1

    return p1
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
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LYd/p;->b:Lee/l;

    invoke-interface {v0}, Lee/l;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/p;->b:Lee/l;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[F
    .locals 1

    iget-object v0, p0, LYd/p;->b:Lee/l;

    invoke-interface {v0}, Lee/l;->values()[F

    move-result-object v0

    return-object v0
.end method

.method public y(Lhe/q;)Z
    .locals 1

    iget-object v0, p0, LYd/p;->b:Lee/l;

    invoke-interface {v0, p1}, Lee/l;->y(Lhe/q;)Z

    move-result p1

    return p1
.end method
