.class public LYd/Y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/K;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lee/K;

.field public transient c:Lke/e;

.field public transient d:LSd/g;


# direct methods
.method public constructor <init>(Lee/K;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LYd/Y;->c:Lke/e;

    iput-object v0, p0, LYd/Y;->d:LSd/g;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/Y;->b:Lee/K;

    return-void
.end method

.method public static synthetic a(LYd/Y;)Lee/K;
    .locals 0

    iget-object p0, p0, LYd/Y;->b:Lee/K;

    return-object p0
.end method


# virtual methods
.method public F(I)Z
    .locals 1

    iget-object v0, p0, LYd/Y;->b:Lee/K;

    invoke-interface {v0, p1}, Lee/K;->F(I)Z

    move-result p1

    return p1
.end method

.method public F0(I)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public J(Lhe/S;)Z
    .locals 1

    iget-object v0, p0, LYd/Y;->b:Lee/K;

    invoke-interface {v0, p1}, Lee/K;->J(Lhe/S;)Z

    move-result p1

    return p1
.end method

.method public Ob(II)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Q(I)Z
    .locals 1

    iget-object v0, p0, LYd/Y;->b:Lee/K;

    invoke-interface {v0, p1}, Lee/K;->Q(I)Z

    move-result p1

    return p1
.end method

.method public V6(Lee/K;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public be(Lhe/O;)Z
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

    iget-object v0, p0, LYd/Y;->b:Lee/K;

    invoke-interface {v0, p1}, Lee/K;->e0([I)[I

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, LYd/Y;->b:Lee/K;

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

.method public f0([I)[I
    .locals 1

    iget-object v0, p0, LYd/Y;->b:Lee/K;

    invoke-interface {v0, p1}, Lee/K;->f0([I)[I

    move-result-object p1

    return-object p1
.end method

.method public f5(II)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public get(I)I
    .locals 1

    iget-object v0, p0, LYd/Y;->b:Lee/K;

    invoke-interface {v0, p1}, Lee/K;->get(I)I

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LYd/Y;->b:Lee/K;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, LYd/Y;->b:Lee/K;

    invoke-interface {v0}, Lee/K;->i()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/Y;->b:Lee/K;

    invoke-interface {v0}, Lee/K;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/P;
    .locals 1

    new-instance v0, LYd/Y$a;

    invoke-direct {v0, p0}, LYd/Y$a;-><init>(LYd/Y;)V

    return-object v0
.end method

.method public j()[I
    .locals 1

    iget-object v0, p0, LYd/Y;->b:Lee/K;

    invoke-interface {v0}, Lee/K;->j()[I

    move-result-object v0

    return-object v0
.end method

.method public jd(II)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public k()LSd/g;
    .locals 1

    iget-object v0, p0, LYd/Y;->d:LSd/g;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/Y;->b:Lee/K;

    invoke-interface {v0}, Lee/K;->k()LSd/g;

    move-result-object v0

    invoke-static {v0}, LSd/c;->f1(LSd/g;)LSd/g;

    move-result-object v0

    iput-object v0, p0, LYd/Y;->d:LSd/g;

    :cond_0
    iget-object v0, p0, LYd/Y;->d:LSd/g;

    return-object v0
.end method

.method public k8(Lhe/O;)Z
    .locals 1

    iget-object v0, p0, LYd/Y;->b:Lee/K;

    invoke-interface {v0, p1}, Lee/K;->k8(Lhe/O;)Z

    move-result p1

    return p1
.end method

.method public keySet()Lke/e;
    .locals 1

    iget-object v0, p0, LYd/Y;->c:Lke/e;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/Y;->b:Lee/K;

    invoke-interface {v0}, Lee/K;->keySet()Lke/e;

    move-result-object v0

    invoke-static {v0}, LSd/c;->E2(Lke/e;)Lke/e;

    move-result-object v0

    iput-object v0, p0, LYd/Y;->c:Lke/e;

    :cond_0
    iget-object v0, p0, LYd/Y;->c:Lke/e;

    return-object v0
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, LYd/Y;->b:Lee/K;

    invoke-interface {v0}, Lee/K;->l()I

    move-result v0

    return v0
.end method

.method public m0(Lhe/S;)Z
    .locals 1

    iget-object v0, p0, LYd/Y;->b:Lee/K;

    invoke-interface {v0, p1}, Lee/K;->m0(Lhe/S;)Z

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
            "Ljava/lang/Integer;",
            "+",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(I)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LYd/Y;->b:Lee/K;

    invoke-interface {v0}, Lee/K;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/Y;->b:Lee/K;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[I
    .locals 1

    iget-object v0, p0, LYd/Y;->b:Lee/K;

    invoke-interface {v0}, Lee/K;->values()[I

    move-result-object v0

    return-object v0
.end method

.method public xb(III)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
