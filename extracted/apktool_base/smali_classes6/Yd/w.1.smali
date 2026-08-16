.class public LYd/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/q;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lee/q;

.field public transient c:Lke/c;

.field public transient d:LSd/a;


# direct methods
.method public constructor <init>(Lee/q;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LYd/w;->c:Lke/c;

    iput-object v0, p0, LYd/w;->d:LSd/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/w;->b:Lee/q;

    return-void
.end method

.method public static synthetic b(LYd/w;)Lee/q;
    .locals 0

    iget-object p0, p0, LYd/w;->b:Lee/q;

    return-object p0
.end method


# virtual methods
.method public A(D)Z
    .locals 1

    iget-object v0, p0, LYd/w;->b:Lee/q;

    invoke-interface {v0, p1, p2}, Lee/q;->A(D)Z

    move-result p1

    return p1
.end method

.method public H2(DB)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Ia(DB)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public M(Lhe/h;)Z
    .locals 1

    iget-object v0, p0, LYd/w;->b:Lee/q;

    invoke-interface {v0, p1}, Lee/q;->M(Lhe/h;)Z

    move-result p1

    return p1
.end method

.method public P(B)Z
    .locals 1

    iget-object v0, p0, LYd/w;->b:Lee/q;

    invoke-interface {v0, p1}, Lee/q;->P(B)Z

    move-result p1

    return p1
.end method

.method public Q5(Lee/q;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public W([D)[D
    .locals 1

    iget-object v0, p0, LYd/w;->b:Lee/q;

    invoke-interface {v0, p1}, Lee/q;->W([D)[D

    move-result-object p1

    return-object p1
.end method

.method public a(D)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public a0([B)[B
    .locals 1

    iget-object v0, p0, LYd/w;->b:Lee/q;

    invoke-interface {v0, p1}, Lee/q;->a0([B)[B

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

    iget-object v0, p0, LYd/w;->b:Lee/q;

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

.method public fe(DBB)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public g9(DB)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public h9(Lhe/s;)Z
    .locals 1

    iget-object v0, p0, LYd/w;->b:Lee/q;

    invoke-interface {v0, p1}, Lee/q;->h9(Lhe/s;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LYd/w;->b:Lee/q;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()B
    .locals 1

    iget-object v0, p0, LYd/w;->b:Lee/q;

    invoke-interface {v0}, Lee/q;->i()B

    move-result v0

    return v0
.end method

.method public increment(D)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/w;->b:Lee/q;

    invoke-interface {v0}, Lee/q;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/t;
    .locals 1

    new-instance v0, LYd/w$a;

    invoke-direct {v0, p0}, LYd/w$a;-><init>(LYd/w;)V

    return-object v0
.end method

.method public j()[D
    .locals 1

    iget-object v0, p0, LYd/w;->b:Lee/q;

    invoke-interface {v0}, Lee/q;->j()[D

    move-result-object v0

    return-object v0
.end method

.method public k()LSd/a;
    .locals 1

    iget-object v0, p0, LYd/w;->d:LSd/a;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/w;->b:Lee/q;

    invoke-interface {v0}, Lee/q;->k()LSd/a;

    move-result-object v0

    invoke-static {v0}, LSd/c;->b1(LSd/a;)LSd/a;

    move-result-object v0

    iput-object v0, p0, LYd/w;->d:LSd/a;

    :cond_0
    iget-object v0, p0, LYd/w;->d:LSd/a;

    return-object v0
.end method

.method public k0(Lhe/z;)Z
    .locals 1

    iget-object v0, p0, LYd/w;->b:Lee/q;

    invoke-interface {v0, p1}, Lee/q;->k0(Lhe/z;)Z

    move-result p1

    return p1
.end method

.method public keySet()Lke/c;
    .locals 1

    iget-object v0, p0, LYd/w;->c:Lke/c;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/w;->b:Lee/q;

    invoke-interface {v0}, Lee/q;->keySet()Lke/c;

    move-result-object v0

    invoke-static {v0}, LSd/c;->C2(Lke/c;)Lke/c;

    move-result-object v0

    iput-object v0, p0, LYd/w;->c:Lke/c;

    :cond_0
    iget-object v0, p0, LYd/w;->c:Lke/c;

    return-object v0
.end method

.method public l()D
    .locals 2

    iget-object v0, p0, LYd/w;->b:Lee/q;

    invoke-interface {v0}, Lee/q;->l()D

    move-result-wide v0

    return-wide v0
.end method

.method public p0(D)B
    .locals 1

    iget-object v0, p0, LYd/w;->b:Lee/q;

    invoke-interface {v0, p1, p2}, Lee/q;->p0(D)B

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
            "Ljava/lang/Double;",
            "+",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

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

    iget-object v0, p0, LYd/w;->b:Lee/q;

    invoke-interface {v0}, Lee/q;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/w;->b:Lee/q;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[B
    .locals 1

    iget-object v0, p0, LYd/w;->b:Lee/q;

    invoke-interface {v0}, Lee/q;->values()[B

    move-result-object v0

    return-object v0
.end method

.method public vc(Lhe/s;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
