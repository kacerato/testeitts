.class public LYd/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/G;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lee/G;

.field public transient c:Lke/e;

.field public transient d:LSd/a;


# direct methods
.method public constructor <init>(Lee/G;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LYd/T;->c:Lke/e;

    iput-object v0, p0, LYd/T;->d:LSd/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/T;->b:Lee/G;

    return-void
.end method

.method public static synthetic a(LYd/T;)Lee/G;
    .locals 0

    iget-object p0, p0, LYd/T;->b:Lee/G;

    return-object p0
.end method


# virtual methods
.method public F(I)Z
    .locals 1

    iget-object v0, p0, LYd/T;->b:Lee/G;

    invoke-interface {v0, p1}, Lee/G;->F(I)Z

    move-result p1

    return p1
.end method

.method public F0(I)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Ib(IB)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public J(Lhe/S;)Z
    .locals 1

    iget-object v0, p0, LYd/T;->b:Lee/G;

    invoke-interface {v0, p1}, Lee/G;->J(Lhe/S;)Z

    move-result p1

    return p1
.end method

.method public K6(Lhe/K;)Z
    .locals 1

    iget-object v0, p0, LYd/T;->b:Lee/G;

    invoke-interface {v0, p1}, Lee/G;->K6(Lhe/K;)Z

    move-result p1

    return p1
.end method

.method public M(Lhe/h;)Z
    .locals 1

    iget-object v0, p0, LYd/T;->b:Lee/G;

    invoke-interface {v0, p1}, Lee/G;->M(Lhe/h;)Z

    move-result p1

    return p1
.end method

.method public P(B)Z
    .locals 1

    iget-object v0, p0, LYd/T;->b:Lee/G;

    invoke-interface {v0, p1}, Lee/G;->P(B)Z

    move-result p1

    return p1
.end method

.method public Td(IB)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public V4(IB)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public a0([B)[B
    .locals 1

    iget-object v0, p0, LYd/T;->b:Lee/G;

    invoke-interface {v0, p1}, Lee/G;->a0([B)[B

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

    iget-object v0, p0, LYd/T;->b:Lee/G;

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

    iget-object v0, p0, LYd/T;->b:Lee/G;

    invoke-interface {v0, p1}, Lee/G;->f0([I)[I

    move-result-object p1

    return-object p1
.end method

.method public get(I)B
    .locals 1

    iget-object v0, p0, LYd/T;->b:Lee/G;

    invoke-interface {v0, p1}, Lee/G;->get(I)B

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LYd/T;->b:Lee/G;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()B
    .locals 1

    iget-object v0, p0, LYd/T;->b:Lee/G;

    invoke-interface {v0}, Lee/G;->i()B

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/T;->b:Lee/G;

    invoke-interface {v0}, Lee/G;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/L;
    .locals 1

    new-instance v0, LYd/T$a;

    invoke-direct {v0, p0}, LYd/T$a;-><init>(LYd/T;)V

    return-object v0
.end method

.method public j()[I
    .locals 1

    iget-object v0, p0, LYd/T;->b:Lee/G;

    invoke-interface {v0}, Lee/G;->j()[I

    move-result-object v0

    return-object v0
.end method

.method public k()LSd/a;
    .locals 1

    iget-object v0, p0, LYd/T;->d:LSd/a;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/T;->b:Lee/G;

    invoke-interface {v0}, Lee/G;->k()LSd/a;

    move-result-object v0

    invoke-static {v0}, LSd/c;->b1(LSd/a;)LSd/a;

    move-result-object v0

    iput-object v0, p0, LYd/T;->d:LSd/a;

    :cond_0
    iget-object v0, p0, LYd/T;->d:LSd/a;

    return-object v0
.end method

.method public keySet()Lke/e;
    .locals 1

    iget-object v0, p0, LYd/T;->c:Lke/e;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/T;->b:Lee/G;

    invoke-interface {v0}, Lee/G;->keySet()Lke/e;

    move-result-object v0

    invoke-static {v0}, LSd/c;->E2(Lke/e;)Lke/e;

    move-result-object v0

    iput-object v0, p0, LYd/T;->c:Lke/e;

    :cond_0
    iget-object v0, p0, LYd/T;->c:Lke/e;

    return-object v0
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, LYd/T;->b:Lee/G;

    invoke-interface {v0}, Lee/G;->l()I

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
            "+",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(I)B
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

    iget-object v0, p0, LYd/T;->b:Lee/G;

    invoke-interface {v0}, Lee/G;->size()I

    move-result v0

    return v0
.end method

.method public t7(Lee/G;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/T;->b:Lee/G;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[B
    .locals 1

    iget-object v0, p0, LYd/T;->b:Lee/G;

    invoke-interface {v0}, Lee/G;->values()[B

    move-result-object v0

    return-object v0
.end method

.method public x5(Lhe/K;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public z7(IBB)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
