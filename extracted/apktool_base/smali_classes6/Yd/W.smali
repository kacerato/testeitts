.class public LYd/W;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/I;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lee/I;

.field public transient c:Lke/e;

.field public transient d:LSd/e;


# direct methods
.method public constructor <init>(Lee/I;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LYd/W;->c:Lke/e;

    iput-object v0, p0, LYd/W;->d:LSd/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/W;->b:Lee/I;

    return-void
.end method

.method public static synthetic a(LYd/W;)Lee/I;
    .locals 0

    iget-object p0, p0, LYd/W;->b:Lee/I;

    return-object p0
.end method


# virtual methods
.method public F(I)Z
    .locals 1

    iget-object v0, p0, LYd/W;->b:Lee/I;

    invoke-interface {v0, p1}, Lee/I;->F(I)Z

    move-result p1

    return p1
.end method

.method public F0(I)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public F6(IDD)D
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Fb(ID)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public I(Lhe/z;)Z
    .locals 1

    iget-object v0, p0, LYd/W;->b:Lee/I;

    invoke-interface {v0, p1}, Lee/I;->I(Lhe/z;)Z

    move-result p1

    return p1
.end method

.method public Id(ID)D
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public J(Lhe/S;)Z
    .locals 1

    iget-object v0, p0, LYd/W;->b:Lee/I;

    invoke-interface {v0, p1}, Lee/I;->J(Lhe/S;)Z

    move-result p1

    return p1
.end method

.method public T(D)Z
    .locals 1

    iget-object v0, p0, LYd/W;->b:Lee/I;

    invoke-interface {v0, p1, p2}, Lee/I;->T(D)Z

    move-result p1

    return p1
.end method

.method public W4(ID)D
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public W7(Lee/I;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public b0([D)[D
    .locals 1

    iget-object v0, p0, LYd/W;->b:Lee/I;

    invoke-interface {v0, p1}, Lee/I;->b0([D)[D

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

    iget-object v0, p0, LYd/W;->b:Lee/I;

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

    iget-object v0, p0, LYd/W;->b:Lee/I;

    invoke-interface {v0, p1}, Lee/I;->f0([I)[I

    move-result-object p1

    return-object p1
.end method

.method public get(I)D
    .locals 2

    iget-object v0, p0, LYd/W;->b:Lee/I;

    invoke-interface {v0, p1}, Lee/I;->get(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LYd/W;->b:Lee/I;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()D
    .locals 2

    iget-object v0, p0, LYd/W;->b:Lee/I;

    invoke-interface {v0}, Lee/I;->i()D

    move-result-wide v0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/W;->b:Lee/I;

    invoke-interface {v0}, Lee/I;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/N;
    .locals 1

    new-instance v0, LYd/W$a;

    invoke-direct {v0, p0}, LYd/W$a;-><init>(LYd/W;)V

    return-object v0
.end method

.method public j()[I
    .locals 1

    iget-object v0, p0, LYd/W;->b:Lee/I;

    invoke-interface {v0}, Lee/I;->j()[I

    move-result-object v0

    return-object v0
.end method

.method public k()LSd/e;
    .locals 1

    iget-object v0, p0, LYd/W;->d:LSd/e;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/W;->b:Lee/I;

    invoke-interface {v0}, Lee/I;->k()LSd/e;

    move-result-object v0

    invoke-static {v0}, LSd/c;->d1(LSd/e;)LSd/e;

    move-result-object v0

    iput-object v0, p0, LYd/W;->d:LSd/e;

    :cond_0
    iget-object v0, p0, LYd/W;->d:LSd/e;

    return-object v0
.end method

.method public keySet()Lke/e;
    .locals 1

    iget-object v0, p0, LYd/W;->c:Lke/e;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/W;->b:Lee/I;

    invoke-interface {v0}, Lee/I;->keySet()Lke/e;

    move-result-object v0

    invoke-static {v0}, LSd/c;->E2(Lke/e;)Lke/e;

    move-result-object v0

    iput-object v0, p0, LYd/W;->c:Lke/e;

    :cond_0
    iget-object v0, p0, LYd/W;->c:Lke/e;

    return-object v0
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, LYd/W;->b:Lee/I;

    invoke-interface {v0}, Lee/I;->l()I

    move-result v0

    return v0
.end method

.method public p(LUd/c;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public p3(Lhe/M;)Z
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
            "Ljava/lang/Integer;",
            "+",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public qc(Lhe/M;)Z
    .locals 1

    iget-object v0, p0, LYd/W;->b:Lee/I;

    invoke-interface {v0, p1}, Lee/I;->qc(Lhe/M;)Z

    move-result p1

    return p1
.end method

.method public remove(I)D
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LYd/W;->b:Lee/I;

    invoke-interface {v0}, Lee/I;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/W;->b:Lee/I;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[D
    .locals 1

    iget-object v0, p0, LYd/W;->b:Lee/I;

    invoke-interface {v0}, Lee/I;->values()[D

    move-result-object v0

    return-object v0
.end method
