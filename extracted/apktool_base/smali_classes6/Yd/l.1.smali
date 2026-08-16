.class public LYd/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/i;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lee/i;

.field public transient c:Lke/b;

.field public transient d:LSd/a;


# direct methods
.method public constructor <init>(Lee/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LYd/l;->c:Lke/b;

    iput-object v0, p0, LYd/l;->d:LSd/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/l;->b:Lee/i;

    return-void
.end method

.method public static synthetic a(LYd/l;)Lee/i;
    .locals 0

    iget-object p0, p0, LYd/l;->b:Lee/i;

    return-object p0
.end method


# virtual methods
.method public C(C)Z
    .locals 1

    iget-object v0, p0, LYd/l;->b:Lee/i;

    invoke-interface {v0, p1}, Lee/i;->C(C)Z

    move-result p1

    return p1
.end method

.method public D0(C)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public F9(CB)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Fd(CB)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public M(Lhe/h;)Z
    .locals 1

    iget-object v0, p0, LYd/l;->b:Lee/i;

    invoke-interface {v0, p1}, Lee/i;->M(Lhe/h;)Z

    move-result p1

    return p1
.end method

.method public P(B)Z
    .locals 1

    iget-object v0, p0, LYd/l;->b:Lee/i;

    invoke-interface {v0, p1}, Lee/i;->P(B)Z

    move-result p1

    return p1
.end method

.method public Q4(Lhe/j;)Z
    .locals 1

    iget-object v0, p0, LYd/l;->b:Lee/i;

    invoke-interface {v0, p1}, Lee/i;->Q4(Lhe/j;)Z

    move-result p1

    return p1
.end method

.method public V([C)[C
    .locals 1

    iget-object v0, p0, LYd/l;->b:Lee/i;

    invoke-interface {v0, p1}, Lee/i;->V([C)[C

    move-result-object p1

    return-object p1
.end method

.method public Vc(Lee/i;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public a0([B)[B
    .locals 1

    iget-object v0, p0, LYd/l;->b:Lee/i;

    invoke-interface {v0, p1}, Lee/i;->a0([B)[B

    move-result-object p1

    return-object p1
.end method

.method public b(C)B
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

    iget-object v0, p0, LYd/l;->b:Lee/i;

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

    iget-object v0, p0, LYd/l;->b:Lee/i;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()B
    .locals 1

    iget-object v0, p0, LYd/l;->b:Lee/i;

    invoke-interface {v0}, Lee/i;->i()B

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/l;->b:Lee/i;

    invoke-interface {v0}, Lee/i;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/k;
    .locals 1

    new-instance v0, LYd/l$a;

    invoke-direct {v0, p0}, LYd/l$a;-><init>(LYd/l;)V

    return-object v0
.end method

.method public j()[C
    .locals 1

    iget-object v0, p0, LYd/l;->b:Lee/i;

    invoke-interface {v0}, Lee/i;->j()[C

    move-result-object v0

    return-object v0
.end method

.method public k()LSd/a;
    .locals 1

    iget-object v0, p0, LYd/l;->d:LSd/a;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/l;->b:Lee/i;

    invoke-interface {v0}, Lee/i;->k()LSd/a;

    move-result-object v0

    invoke-static {v0}, LSd/c;->b1(LSd/a;)LSd/a;

    move-result-object v0

    iput-object v0, p0, LYd/l;->d:LSd/a;

    :cond_0
    iget-object v0, p0, LYd/l;->d:LSd/a;

    return-object v0
.end method

.method public keySet()Lke/b;
    .locals 1

    iget-object v0, p0, LYd/l;->c:Lke/b;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/l;->b:Lee/i;

    invoke-interface {v0}, Lee/i;->keySet()Lke/b;

    move-result-object v0

    invoke-static {v0}, LSd/c;->B2(Lke/b;)Lke/b;

    move-result-object v0

    iput-object v0, p0, LYd/l;->c:Lke/b;

    :cond_0
    iget-object v0, p0, LYd/l;->c:Lke/b;

    return-object v0
.end method

.method public l()C
    .locals 1

    iget-object v0, p0, LYd/l;->b:Lee/i;

    invoke-interface {v0}, Lee/i;->l()C

    move-result v0

    return v0
.end method

.method public na(Lhe/j;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public o0(C)B
    .locals 1

    iget-object v0, p0, LYd/l;->b:Lee/i;

    invoke-interface {v0, p1}, Lee/i;->o0(C)B

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
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public rc(CBB)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public s(LUd/a;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LYd/l;->b:Lee/i;

    invoke-interface {v0}, Lee/i;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/l;->b:Lee/i;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[B
    .locals 1

    iget-object v0, p0, LYd/l;->b:Lee/i;

    invoke-interface {v0}, Lee/i;->values()[B

    move-result-object v0

    return-object v0
.end method

.method public y(Lhe/q;)Z
    .locals 1

    iget-object v0, p0, LYd/l;->b:Lee/i;

    invoke-interface {v0, p1}, Lee/i;->y(Lhe/q;)Z

    move-result p1

    return p1
.end method

.method public z4(CB)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
