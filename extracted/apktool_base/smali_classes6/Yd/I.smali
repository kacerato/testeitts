.class public LYd/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/z;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lee/z;

.field public transient c:Lke/d;

.field public transient d:LSd/b;


# direct methods
.method public constructor <init>(Lee/z;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LYd/I;->c:Lke/d;

    iput-object v0, p0, LYd/I;->d:LSd/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/I;->b:Lee/z;

    return-void
.end method

.method public static synthetic a(LYd/I;)Lee/z;
    .locals 0

    iget-object p0, p0, LYd/I;->b:Lee/z;

    return-object p0
.end method


# virtual methods
.method public F5(FC)C
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public G0(F)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public H(F)Z
    .locals 1

    iget-object v0, p0, LYd/I;->b:Lee/z;

    invoke-interface {v0, p1}, Lee/z;->H(F)Z

    move-result p1

    return p1
.end method

.method public J9(FC)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public K(Lhe/q;)Z
    .locals 1

    iget-object v0, p0, LYd/I;->b:Lee/z;

    invoke-interface {v0, p1}, Lee/z;->K(Lhe/q;)Z

    move-result p1

    return p1
.end method

.method public O(C)Z
    .locals 1

    iget-object v0, p0, LYd/I;->b:Lee/z;

    invoke-interface {v0, p1}, Lee/z;->O(C)Z

    move-result p1

    return p1
.end method

.method public S7(Lee/z;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Z([C)[C
    .locals 1

    iget-object v0, p0, LYd/I;->b:Lee/z;

    invoke-interface {v0, p1}, Lee/z;->Z([C)[C

    move-result-object p1

    return-object p1
.end method

.method public Zb(Lhe/C;)Z
    .locals 1

    iget-object v0, p0, LYd/I;->b:Lee/z;

    invoke-interface {v0, p1}, Lee/z;->Zb(Lhe/C;)Z

    move-result p1

    return p1
.end method

.method public c(F)C
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

.method public d0([F)[F
    .locals 1

    iget-object v0, p0, LYd/I;->b:Lee/z;

    invoke-interface {v0, p1}, Lee/z;->d0([F)[F

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, LYd/I;->b:Lee/z;

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

    iget-object v0, p0, LYd/I;->b:Lee/z;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()C
    .locals 1

    iget-object v0, p0, LYd/I;->b:Lee/z;

    invoke-interface {v0}, Lee/z;->i()C

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/I;->b:Lee/z;

    invoke-interface {v0}, Lee/z;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/D;
    .locals 1

    new-instance v0, LYd/I$a;

    invoke-direct {v0, p0}, LYd/I$a;-><init>(LYd/I;)V

    return-object v0
.end method

.method public j()[F
    .locals 1

    iget-object v0, p0, LYd/I;->b:Lee/z;

    invoke-interface {v0}, Lee/z;->j()[F

    move-result-object v0

    return-object v0
.end method

.method public j0(Lhe/I;)Z
    .locals 1

    iget-object v0, p0, LYd/I;->b:Lee/z;

    invoke-interface {v0, p1}, Lee/z;->j0(Lhe/I;)Z

    move-result p1

    return p1
.end method

.method public k()LSd/b;
    .locals 1

    iget-object v0, p0, LYd/I;->d:LSd/b;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/I;->b:Lee/z;

    invoke-interface {v0}, Lee/z;->k()LSd/b;

    move-result-object v0

    invoke-static {v0}, LSd/c;->c1(LSd/b;)LSd/b;

    move-result-object v0

    iput-object v0, p0, LYd/I;->d:LSd/b;

    :cond_0
    iget-object v0, p0, LYd/I;->d:LSd/b;

    return-object v0
.end method

.method public keySet()Lke/d;
    .locals 1

    iget-object v0, p0, LYd/I;->c:Lke/d;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/I;->b:Lee/z;

    invoke-interface {v0}, Lee/z;->keySet()Lke/d;

    move-result-object v0

    invoke-static {v0}, LSd/c;->D2(Lke/d;)Lke/d;

    move-result-object v0

    iput-object v0, p0, LYd/I;->c:Lke/d;

    :cond_0
    iget-object v0, p0, LYd/I;->c:Lke/d;

    return-object v0
.end method

.method public l()F
    .locals 1

    iget-object v0, p0, LYd/I;->b:Lee/z;

    invoke-interface {v0}, Lee/z;->l()F

    move-result v0

    return v0
.end method

.method public p9(FCC)C
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
            "Ljava/lang/Float;",
            "+",
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public q0(F)C
    .locals 1

    iget-object v0, p0, LYd/I;->b:Lee/z;

    invoke-interface {v0, p1}, Lee/z;->q0(F)C

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LYd/I;->b:Lee/z;

    invoke-interface {v0}, Lee/z;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/I;->b:Lee/z;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v5(Lhe/C;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public values()[C
    .locals 1

    iget-object v0, p0, LYd/I;->b:Lee/z;

    invoke-interface {v0}, Lee/z;->values()[C

    move-result-object v0

    return-object v0
.end method

.method public xe(FC)C
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
