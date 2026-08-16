.class public LYd/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/h;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lee/h;

.field public transient c:Lke/a;

.field public transient d:LSd/i;


# direct methods
.method public constructor <init>(Lee/h;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LYd/k;->c:Lke/a;

    iput-object v0, p0, LYd/k;->d:LSd/i;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/k;->b:Lee/h;

    return-void
.end method

.method public static synthetic a(LYd/k;)Lee/h;
    .locals 0

    iget-object p0, p0, LYd/k;->b:Lee/h;

    return-object p0
.end method


# virtual methods
.method public Cd(BS)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public D(B)Z
    .locals 1

    iget-object v0, p0, LYd/k;->b:Lee/h;

    invoke-interface {v0, p1}, Lee/h;->D(B)Z

    move-result p1

    return p1
.end method

.method public Dd(Lhe/i;)Z
    .locals 1

    iget-object v0, p0, LYd/k;->b:Lee/h;

    invoke-interface {v0, p1}, Lee/h;->Dd(Lhe/i;)Z

    move-result p1

    return p1
.end method

.method public E0(B)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public L(S)Z
    .locals 1

    iget-object v0, p0, LYd/k;->b:Lee/h;

    invoke-interface {v0, p1}, Lee/h;->L(S)Z

    move-result p1

    return p1
.end method

.method public Lc(Lee/h;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public N(Lhe/t0;)Z
    .locals 1

    iget-object v0, p0, LYd/k;->b:Lee/h;

    invoke-interface {v0, p1}, Lee/h;->N(Lhe/t0;)Z

    move-result p1

    return p1
.end method

.method public P7(Lhe/i;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public X([B)[B
    .locals 1

    iget-object v0, p0, LYd/k;->b:Lee/h;

    invoke-interface {v0, p1}, Lee/h;->X([B)[B

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

    iget-object v0, p0, LYd/k;->b:Lee/h;

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

    iget-object v0, p0, LYd/k;->b:Lee/h;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()S
    .locals 1

    iget-object v0, p0, LYd/k;->b:Lee/h;

    invoke-interface {v0}, Lee/h;->i()S

    move-result v0

    return v0
.end method

.method public i0([S)[S
    .locals 1

    iget-object v0, p0, LYd/k;->b:Lee/h;

    invoke-interface {v0, p1}, Lee/h;->i0([S)[S

    move-result-object p1

    return-object p1
.end method

.method public ia(BS)S
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public ic(BSS)S
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/k;->b:Lee/h;

    invoke-interface {v0}, Lee/h;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/j;
    .locals 1

    new-instance v0, LYd/k$a;

    invoke-direct {v0, p0}, LYd/k$a;-><init>(LYd/k;)V

    return-object v0
.end method

.method public j()[B
    .locals 1

    iget-object v0, p0, LYd/k;->b:Lee/h;

    invoke-interface {v0}, Lee/h;->j()[B

    move-result-object v0

    return-object v0
.end method

.method public k()LSd/i;
    .locals 1

    iget-object v0, p0, LYd/k;->d:LSd/i;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/k;->b:Lee/h;

    invoke-interface {v0}, Lee/h;->k()LSd/i;

    move-result-object v0

    invoke-static {v0}, LSd/c;->h1(LSd/i;)LSd/i;

    move-result-object v0

    iput-object v0, p0, LYd/k;->d:LSd/i;

    :cond_0
    iget-object v0, p0, LYd/k;->d:LSd/i;

    return-object v0
.end method

.method public keySet()Lke/a;
    .locals 1

    iget-object v0, p0, LYd/k;->c:Lke/a;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/k;->b:Lee/h;

    invoke-interface {v0}, Lee/h;->keySet()Lke/a;

    move-result-object v0

    invoke-static {v0}, LSd/c;->A2(Lke/a;)Lke/a;

    move-result-object v0

    iput-object v0, p0, LYd/k;->c:Lke/a;

    :cond_0
    iget-object v0, p0, LYd/k;->c:Lke/a;

    return-object v0
.end method

.method public l()B
    .locals 1

    iget-object v0, p0, LYd/k;->b:Lee/h;

    invoke-interface {v0}, Lee/h;->l()B

    move-result v0

    return v0
.end method

.method public m(B)S
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
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public r(LUd/h;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public s0(B)S
    .locals 1

    iget-object v0, p0, LYd/k;->b:Lee/h;

    invoke-interface {v0, p1}, Lee/h;->s0(B)S

    move-result p1

    return p1
.end method

.method public s4(BS)S
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LYd/k;->b:Lee/h;

    invoke-interface {v0}, Lee/h;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/k;->b:Lee/h;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[S
    .locals 1

    iget-object v0, p0, LYd/k;->b:Lee/h;

    invoke-interface {v0}, Lee/h;->values()[S

    move-result-object v0

    return-object v0
.end method

.method public w(Lhe/h;)Z
    .locals 1

    iget-object v0, p0, LYd/k;->b:Lee/h;

    invoke-interface {v0, p1}, Lee/h;->w(Lhe/h;)Z

    move-result p1

    return p1
.end method
