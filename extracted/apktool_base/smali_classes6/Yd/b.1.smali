.class public LYd/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee/b;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lee/b;

.field public transient c:Lke/a;

.field public transient d:LSd/b;


# direct methods
.method public constructor <init>(Lee/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LYd/b;->c:Lke/a;

    iput-object v0, p0, LYd/b;->d:LSd/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, LYd/b;->b:Lee/b;

    return-void
.end method

.method public static synthetic a(LYd/b;)Lee/b;
    .locals 0

    iget-object p0, p0, LYd/b;->b:Lee/b;

    return-object p0
.end method


# virtual methods
.method public D(B)Z
    .locals 1

    iget-object v0, p0, LYd/b;->b:Lee/b;

    invoke-interface {v0, p1}, Lee/b;->D(B)Z

    move-result p1

    return p1
.end method

.method public E0(B)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public K(Lhe/q;)Z
    .locals 1

    iget-object v0, p0, LYd/b;->b:Lee/b;

    invoke-interface {v0, p1}, Lee/b;->K(Lhe/q;)Z

    move-result p1

    return p1
.end method

.method public L4(BCC)C
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public O(C)Z
    .locals 1

    iget-object v0, p0, LYd/b;->b:Lee/b;

    invoke-interface {v0, p1}, Lee/b;->O(C)Z

    move-result p1

    return p1
.end method

.method public O6(Lee/b;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public R3(BC)C
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public R6(Lhe/b;)Z
    .locals 1

    iget-object v0, p0, LYd/b;->b:Lee/b;

    invoke-interface {v0, p1}, Lee/b;->R6(Lhe/b;)Z

    move-result p1

    return p1
.end method

.method public U9(Lhe/b;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public X([B)[B
    .locals 1

    iget-object v0, p0, LYd/b;->b:Lee/b;

    invoke-interface {v0, p1}, Lee/b;->X([B)[B

    move-result-object p1

    return-object p1
.end method

.method public Z([C)[C
    .locals 1

    iget-object v0, p0, LYd/b;->b:Lee/b;

    invoke-interface {v0, p1}, Lee/b;->Z([C)[C

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public ea(BC)C
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, LYd/b;->b:Lee/b;

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

    iget-object v0, p0, LYd/b;->b:Lee/b;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()C
    .locals 1

    iget-object v0, p0, LYd/b;->b:Lee/b;

    invoke-interface {v0}, Lee/b;->i()C

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, LYd/b;->b:Lee/b;

    invoke-interface {v0}, Lee/b;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()LZd/c;
    .locals 1

    new-instance v0, LYd/b$a;

    invoke-direct {v0, p0}, LYd/b$a;-><init>(LYd/b;)V

    return-object v0
.end method

.method public j()[B
    .locals 1

    iget-object v0, p0, LYd/b;->b:Lee/b;

    invoke-interface {v0}, Lee/b;->j()[B

    move-result-object v0

    return-object v0
.end method

.method public k()LSd/b;
    .locals 1

    iget-object v0, p0, LYd/b;->d:LSd/b;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/b;->b:Lee/b;

    invoke-interface {v0}, Lee/b;->k()LSd/b;

    move-result-object v0

    invoke-static {v0}, LSd/c;->c1(LSd/b;)LSd/b;

    move-result-object v0

    iput-object v0, p0, LYd/b;->d:LSd/b;

    :cond_0
    iget-object v0, p0, LYd/b;->d:LSd/b;

    return-object v0
.end method

.method public keySet()Lke/a;
    .locals 1

    iget-object v0, p0, LYd/b;->c:Lke/a;

    if-nez v0, :cond_0

    iget-object v0, p0, LYd/b;->b:Lee/b;

    invoke-interface {v0}, Lee/b;->keySet()Lke/a;

    move-result-object v0

    invoke-static {v0}, LSd/c;->A2(Lke/a;)Lke/a;

    move-result-object v0

    iput-object v0, p0, LYd/b;->c:Lke/a;

    :cond_0
    iget-object v0, p0, LYd/b;->c:Lke/a;

    return-object v0
.end method

.method public l()B
    .locals 1

    iget-object v0, p0, LYd/b;->b:Lee/b;

    invoke-interface {v0}, Lee/b;->l()B

    move-result v0

    return v0
.end method

.method public le(BC)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public m(B)C
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
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public s0(B)C
    .locals 1

    iget-object v0, p0, LYd/b;->b:Lee/b;

    invoke-interface {v0, p1}, Lee/b;->s0(B)C

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LYd/b;->b:Lee/b;

    invoke-interface {v0}, Lee/b;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LYd/b;->b:Lee/b;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[C
    .locals 1

    iget-object v0, p0, LYd/b;->b:Lee/b;

    invoke-interface {v0}, Lee/b;->values()[C

    move-result-object v0

    return-object v0
.end method

.method public w(Lhe/h;)Z
    .locals 1

    iget-object v0, p0, LYd/b;->b:Lee/b;

    invoke-interface {v0, p1}, Lee/b;->w(Lhe/h;)Z

    move-result p1

    return p1
.end method
