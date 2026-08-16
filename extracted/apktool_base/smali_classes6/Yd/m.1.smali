.class public LYd/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/j;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lee/j;

.field public transient c:Lke/b;

.field public transient d:LSd/b;


# direct methods
.method public constructor <init>(Lee/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LYd/m;->c:Lke/b;

    iput-object v0, p0, LYd/m;->d:LSd/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/m;->b:Lee/j;

    return-void
.end method

.method public static synthetic a(LYd/m;)Lee/j;
    .locals 0

    iget-object p0, p0, LYd/m;->b:Lee/j;

    return-object p0
.end method


# virtual methods
.method public A4(CC)C
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Bb(Lhe/k;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public C(C)Z
    .locals 1

    iget-object v0, p0, LYd/m;->b:Lee/j;

    invoke-interface {v0, p1}, Lee/j;->C(C)Z

    move-result p1

    return p1
.end method

.method public D0(C)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Ec(CCC)C
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Ed(CC)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public H9(CC)C
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public K(Lhe/q;)Z
    .locals 1

    iget-object v0, p0, LYd/m;->b:Lee/j;

    invoke-interface {v0, p1}, Lee/j;->K(Lhe/q;)Z

    move-result p1

    return p1
.end method

.method public O(C)Z
    .locals 1

    iget-object v0, p0, LYd/m;->b:Lee/j;

    invoke-interface {v0, p1}, Lee/j;->O(C)Z

    move-result p1

    return p1
.end method

.method public V([C)[C
    .locals 1

    iget-object v0, p0, LYd/m;->b:Lee/j;

    invoke-interface {v0, p1}, Lee/j;->V([C)[C

    move-result-object p1

    return-object p1
.end method

.method public Z([C)[C
    .locals 1

    iget-object v0, p0, LYd/m;->b:Lee/j;

    invoke-interface {v0, p1}, Lee/j;->Z([C)[C

    move-result-object p1

    return-object p1
.end method

.method public b(C)C
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

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, LYd/m;->b:Lee/j;

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

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LYd/m;->b:Lee/j;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()C
    .locals 1

    iget-object v0, p0, LYd/m;->b:Lee/j;

    invoke-interface {v0}, Lee/j;->i()C

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/m;->b:Lee/j;

    invoke-interface {v0}, Lee/j;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/l;
    .locals 1

    new-instance v0, LYd/m$a;

    invoke-direct {v0, p0}, LYd/m$a;-><init>(LYd/m;)V

    return-object v0
.end method

.method public j()[C
    .locals 1

    iget-object v0, p0, LYd/m;->b:Lee/j;

    invoke-interface {v0}, Lee/j;->j()[C

    move-result-object v0

    return-object v0
.end method

.method public k()LSd/b;
    .locals 1

    iget-object v0, p0, LYd/m;->d:LSd/b;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/m;->b:Lee/j;

    invoke-interface {v0}, Lee/j;->k()LSd/b;

    move-result-object v0

    invoke-static {v0}, LSd/c;->c1(LSd/b;)LSd/b;

    move-result-object v0

    iput-object v0, p0, LYd/m;->d:LSd/b;

    :cond_0
    iget-object v0, p0, LYd/m;->d:LSd/b;

    return-object v0
.end method

.method public keySet()Lke/b;
    .locals 1

    iget-object v0, p0, LYd/m;->c:Lke/b;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/m;->b:Lee/j;

    invoke-interface {v0}, Lee/j;->keySet()Lke/b;

    move-result-object v0

    invoke-static {v0}, LSd/c;->B2(Lke/b;)Lke/b;

    move-result-object v0

    iput-object v0, p0, LYd/m;->c:Lke/b;

    :cond_0
    iget-object v0, p0, LYd/m;->c:Lke/b;

    return-object v0
.end method

.method public l()C
    .locals 1

    iget-object v0, p0, LYd/m;->b:Lee/j;

    invoke-interface {v0}, Lee/j;->l()C

    move-result v0

    return v0
.end method

.method public nb(Lhe/k;)Z
    .locals 1

    iget-object v0, p0, LYd/m;->b:Lee/j;

    invoke-interface {v0, p1}, Lee/j;->nb(Lhe/k;)Z

    move-result p1

    return p1
.end method

.method public o0(C)C
    .locals 1

    iget-object v0, p0, LYd/m;->b:Lee/j;

    invoke-interface {v0, p1}, Lee/j;->o0(C)C

    move-result p1

    return p1
.end method

.method public pd(Lee/j;)V
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
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LYd/m;->b:Lee/j;

    invoke-interface {v0}, Lee/j;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/m;->b:Lee/j;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[C
    .locals 1

    iget-object v0, p0, LYd/m;->b:Lee/j;

    invoke-interface {v0}, Lee/j;->values()[C

    move-result-object v0

    return-object v0
.end method

.method public y(Lhe/q;)Z
    .locals 1

    iget-object v0, p0, LYd/m;->b:Lee/j;

    invoke-interface {v0, p1}, Lee/j;->y(Lhe/q;)Z

    move-result p1

    return p1
.end method
