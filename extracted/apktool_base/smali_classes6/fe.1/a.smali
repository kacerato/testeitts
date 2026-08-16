.class public Lfe/a;
.super LWd/q;
.source "SourceFile"

# interfaces
.implements Lee/Y;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfe/a$f;,
        Lfe/a$e;,
        Lfe/a$d;,
        Lfe/a$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "LWd/q<",
        "TK;>;",
        "Lee/Y<",
        "TK;>;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field public static final v:J = 0x1L


# instance fields
.field public final s:Lhe/d0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhe/d0<",
            "TK;>;"
        }
    .end annotation
.end field

.field public transient t:[B

.field public u:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LWd/q;-><init>()V

    .line 2
    new-instance v0, Lfe/a$a;

    invoke-direct {v0, p0}, Lfe/a$a;-><init>(Lfe/a;)V

    iput-object v0, p0, Lfe/a;->s:Lhe/d0;

    return-void
.end method

.method public constructor <init>(Loe/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Loe/a<",
            "-TK;>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, LWd/q;-><init>(Loe/a;)V

    .line 4
    new-instance p1, Lfe/a$a;

    invoke-direct {p1, p0}, Lfe/a$a;-><init>(Lfe/a;)V

    iput-object p1, p0, Lfe/a;->s:Lhe/d0;

    .line 5
    sget-byte p1, LVd/a;->d:B

    iput-byte p1, p0, Lfe/a;->u:B

    return-void
.end method

.method public constructor <init>(Loe/a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Loe/a<",
            "-TK;>;I)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, LWd/q;-><init>(Loe/a;I)V

    .line 7
    new-instance p1, Lfe/a$a;

    invoke-direct {p1, p0}, Lfe/a$a;-><init>(Lfe/a;)V

    iput-object p1, p0, Lfe/a;->s:Lhe/d0;

    .line 8
    sget-byte p1, LVd/a;->d:B

    iput-byte p1, p0, Lfe/a;->u:B

    return-void
.end method

.method public constructor <init>(Loe/a;IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Loe/a<",
            "-TK;>;IF)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2, p3}, LWd/q;-><init>(Loe/a;IF)V

    .line 10
    new-instance p1, Lfe/a$a;

    invoke-direct {p1, p0}, Lfe/a$a;-><init>(Lfe/a;)V

    iput-object p1, p0, Lfe/a;->s:Lhe/d0;

    .line 11
    sget-byte p1, LVd/a;->d:B

    iput-byte p1, p0, Lfe/a;->u:B

    return-void
.end method

.method public constructor <init>(Loe/a;IFB)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Loe/a<",
            "-TK;>;IFB)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2, p3}, LWd/q;-><init>(Loe/a;IF)V

    .line 13
    new-instance p1, Lfe/a$a;

    invoke-direct {p1, p0}, Lfe/a$a;-><init>(Lfe/a;)V

    iput-object p1, p0, Lfe/a;->s:Lhe/d0;

    .line 14
    iput-byte p4, p0, Lfe/a;->u:B

    if-eqz p4, :cond_0

    .line 15
    iget-object p1, p0, Lfe/a;->t:[B

    invoke-static {p1, p4}, Ljava/util/Arrays;->fill([BB)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Loe/a;Lee/Y;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Loe/a<",
            "-TK;>;",
            "Lee/Y<",
            "+TK;>;)V"
        }
    .end annotation

    .line 16
    invoke-interface {p2}, Lee/Y;->size()I

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-interface {p2}, Lee/Y;->i()B

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lfe/a;-><init>(Loe/a;IFB)V

    .line 17
    instance-of p1, p2, Lfe/a;

    if-eqz p1, :cond_1

    .line 18
    move-object p1, p2

    check-cast p1, Lfe/a;

    .line 19
    iget v0, p1, LWd/H;->d:F

    iput v0, p0, LWd/H;->d:F

    .line 20
    iget-byte v0, p1, Lfe/a;->u:B

    iput-byte v0, p0, Lfe/a;->u:B

    .line 21
    iget-object p1, p1, LWd/q;->q:Loe/a;

    iput-object p1, p0, LWd/q;->q:Loe/a;

    if-eqz v0, :cond_0

    .line 22
    iget-object p1, p0, Lfe/a;->t:[B

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([BB)V

    :cond_0
    const/high16 p1, 0x41200000    # 10.0f

    .line 23
    iget v0, p0, LWd/H;->d:F

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    invoke-virtual {p0, p1}, Lfe/a;->jf(I)I

    .line 24
    :cond_1
    invoke-virtual {p0, p2}, Lfe/a;->W8(Lee/Y;)V

    return-void
.end method

.method public static synthetic Ff(Lfe/a;)I
    .locals 0

    iget p0, p0, LWd/H;->b:I

    return p0
.end method

.method public static synthetic Gf(Lfe/a;)I
    .locals 0

    iget p0, p0, LWd/H;->b:I

    return p0
.end method


# virtual methods
.method public C0([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;)[TK;"
        }
    .end annotation

    invoke-virtual {p0}, LWd/H;->size()I

    move-result v0

    array-length v1, p1

    if-ge v1, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, LWd/b0;->l:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-lez v1, :cond_2

    aget-object v1, v0, v3

    sget-object v4, LWd/b0;->p:Ljava/lang/Object;

    if-eq v1, v4, :cond_1

    sget-object v4, LWd/b0;->o:Ljava/lang/Object;

    if-eq v1, v4, :cond_1

    add-int/lit8 v4, v2, 0x1

    aput-object v1, p1, v2

    move v1, v3

    move v2, v4

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public C9(Ljava/lang/Object;BB)B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;BB)B"
        }
    .end annotation

    invoke-virtual {p0, p1}, LWd/b0;->wf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x1

    if-gez p1, :cond_0

    neg-int p1, p1

    sub-int/2addr p1, v0

    iget-object p3, p0, Lfe/a;->t:[B

    aget-byte v0, p3, p1

    add-int/2addr v0, p2

    int-to-byte p2, v0

    aput-byte p2, p3, p1

    const/4 v0, 0x0

    move p3, p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lfe/a;->t:[B

    aput-byte p3, p2, p1

    :goto_0
    if-eqz v0, :cond_1

    iget-boolean p1, p0, LWd/b0;->m:Z

    invoke-virtual {p0, p1}, LWd/H;->ef(Z)V

    :cond_1
    return p3
.end method

.method public G(Lhe/k0;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhe/k0<",
            "-TK;>;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, LWd/b0;->rf(Lhe/k0;)Z

    move-result p1

    return p1
.end method

.method public final Hf(BI)B
    .locals 3

    iget-byte v0, p0, Lfe/a;->u:B

    const/4 v1, 0x1

    if-gez p2, :cond_0

    neg-int p2, p2

    sub-int/2addr p2, v1

    iget-object v0, p0, Lfe/a;->t:[B

    aget-byte v0, v0, p2

    const/4 v1, 0x0

    :cond_0
    iget-object v2, p0, Lfe/a;->t:[B

    aput-byte p1, v2, p2

    if-eqz v1, :cond_1

    iget-boolean p1, p0, LWd/b0;->m:Z

    invoke-virtual {p0, p1}, LWd/H;->ef(Z)V

    :cond_1
    return v0
.end method

.method public L7(Lhe/d0;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhe/d0<",
            "-TK;>;)Z"
        }
    .end annotation

    iget-object v0, p0, LWd/b0;->l:[Ljava/lang/Object;

    iget-object v1, p0, Lfe/a;->t:[B

    array-length v2, v0

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1

    aget-object v2, v0, v3

    sget-object v4, LWd/b0;->p:Ljava/lang/Object;

    if-eq v2, v4, :cond_0

    sget-object v4, LWd/b0;->o:Ljava/lang/Object;

    if-eq v2, v4, :cond_0

    aget-byte v4, v1, v3

    invoke-interface {p1, v2, v4}, Lhe/d0;->a(Ljava/lang/Object;B)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public M(Lhe/h;)Z
    .locals 5

    iget-object v0, p0, LWd/b0;->l:[Ljava/lang/Object;

    iget-object v1, p0, Lfe/a;->t:[B

    array-length v2, v1

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1

    aget-object v2, v0, v3

    sget-object v4, LWd/b0;->p:Ljava/lang/Object;

    if-eq v2, v4, :cond_0

    sget-object v4, LWd/b0;->o:Ljava/lang/Object;

    if-eq v2, v4, :cond_0

    aget-byte v2, v1, v3

    invoke-interface {p1, v2}, Lhe/h;->a(B)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public P(B)Z
    .locals 5

    iget-object v0, p0, LWd/b0;->l:[Ljava/lang/Object;

    iget-object v1, p0, Lfe/a;->t:[B

    array-length v2, v1

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1

    aget-object v2, v0, v3

    sget-object v4, LWd/b0;->p:Ljava/lang/Object;

    if-eq v2, v4, :cond_0

    sget-object v4, LWd/b0;->o:Ljava/lang/Object;

    if-eq v2, v4, :cond_0

    aget-byte v2, v1, v3

    if-ne p1, v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public W8(Lee/Y;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lee/Y<",
            "+TK;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lfe/a;->s:Lhe/d0;

    invoke-interface {p1, v0}, Lee/Y;->L7(Lhe/d0;)Z

    return-void
.end method

.method public Zd(Lhe/d0;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhe/d0<",
            "-TK;>;)Z"
        }
    .end annotation

    iget-object v0, p0, LWd/b0;->l:[Ljava/lang/Object;

    iget-object v1, p0, Lfe/a;->t:[B

    invoke-virtual {p0}, LWd/H;->kf()V

    const/4 v2, 0x1

    :try_start_0
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v5, v3, -0x1

    if-lez v3, :cond_1

    aget-object v3, v0, v5

    sget-object v6, LWd/b0;->p:Ljava/lang/Object;

    if-eq v3, v6, :cond_0

    sget-object v6, LWd/b0;->o:Ljava/lang/Object;

    if-eq v3, v6, :cond_0

    aget-byte v6, v1, v5

    invoke-interface {p1, v3, v6}, Lhe/d0;->a(Ljava/lang/Object;B)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v5}, Lfe/a;->hf(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v2

    :cond_0
    move v3, v5

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v2}, LWd/H;->ff(Z)V

    return v4

    :goto_1
    invoke-virtual {p0, v2}, LWd/H;->ff(Z)V

    throw p1
.end method

.method public a0([B)[B
    .locals 7

    invoke-virtual {p0}, LWd/H;->size()I

    move-result v0

    array-length v1, p1

    if-ge v1, v0, :cond_0

    new-array p1, v0, [B

    :cond_0
    iget-object v1, p0, Lfe/a;->t:[B

    iget-object v2, p0, LWd/b0;->l:[Ljava/lang/Object;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v5, v3, -0x1

    if-lez v3, :cond_2

    aget-object v3, v2, v5

    sget-object v6, LWd/b0;->p:Ljava/lang/Object;

    if-eq v3, v6, :cond_1

    sget-object v6, LWd/b0;->o:Ljava/lang/Object;

    if-eq v3, v6, :cond_1

    add-int/lit8 v3, v4, 0x1

    aget-byte v6, v1, v5

    aput-byte v6, p1, v4

    move v4, v3

    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    array-length v1, p1

    if-le v1, v0, :cond_3

    iget-byte v1, p0, Lfe/a;->u:B

    aput-byte v1, p1, v0

    :cond_3
    return-object p1
.end method

.method public clear()V
    .locals 4

    invoke-super {p0}, LWd/H;->clear()V

    iget-object v0, p0, LWd/b0;->l:[Ljava/lang/Object;

    array-length v1, v0

    sget-object v2, LWd/b0;->p:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget-object v0, p0, Lfe/a;->t:[B

    array-length v1, v0

    iget-byte v2, p0, Lfe/a;->u:B

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([BIIB)V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, LWd/b0;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Lee/Y;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lee/Y;

    invoke-interface {p1}, Lee/Y;->size()I

    move-result v0

    invoke-virtual {p0}, LWd/H;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lfe/a;->iterator()LZd/f0;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, LZd/a;->g()V

    invoke-interface {v0}, LZd/f0;->key()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, LZd/f0;->value()B

    move-result v3

    iget-byte v4, p0, Lfe/a;->u:B

    if-ne v3, v4, :cond_4

    invoke-interface {p1, v2}, Lee/Y;->get(Ljava/lang/Object;)B

    move-result v3

    invoke-interface {p1}, Lee/Y;->i()B

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-interface {p1, v2}, Lee/Y;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_3
    return v1

    :cond_4
    invoke-interface {p1, v2}, Lee/Y;->get(Ljava/lang/Object;)B

    move-result v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v3, v2, :cond_2

    return v1

    :catch_0
    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method public get(Ljava/lang/Object;)B
    .locals 1

    invoke-virtual {p0, p1}, LWd/b0;->tf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    iget-byte p1, p0, Lfe/a;->u:B

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lfe/a;->t:[B

    aget-byte p1, v0, p1

    :goto_0
    return p1
.end method

.method public gf(I)V
    .locals 6

    iget-object v0, p0, LWd/b0;->l:[Ljava/lang/Object;

    array-length v1, v0

    iget-object v2, p0, Lfe/a;->t:[B

    new-array v3, p1, [Ljava/lang/Object;

    iput-object v3, p0, LWd/b0;->l:[Ljava/lang/Object;

    sget-object v4, LWd/b0;->p:Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    new-array p1, p1, [B

    iput-object p1, p0, Lfe/a;->t:[B

    iget-byte v3, p0, Lfe/a;->u:B

    invoke-static {p1, v3}, Ljava/util/Arrays;->fill([BB)V

    :goto_0
    add-int/lit8 p1, v1, -0x1

    if-lez v1, :cond_2

    aget-object v1, v0, p1

    sget-object v3, LWd/b0;->p:Ljava/lang/Object;

    if-eq v1, v3, :cond_1

    sget-object v3, LWd/b0;->o:Ljava/lang/Object;

    if-eq v1, v3, :cond_1

    invoke-virtual {p0, v1}, LWd/b0;->wf(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_0

    iget-object v4, p0, LWd/b0;->l:[Ljava/lang/Object;

    neg-int v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    invoke-virtual {p0, v4, v1}, LWd/b0;->Df(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lfe/a;->t:[B

    aget-byte v4, v2, p1

    aput-byte v4, v1, v3

    :cond_1
    move v1, p1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public hashCode()I
    .locals 7

    iget-object v0, p0, LWd/b0;->l:[Ljava/lang/Object;

    iget-object v1, p0, Lfe/a;->t:[B

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    add-int/lit8 v5, v2, -0x1

    if-lez v2, :cond_2

    aget-object v2, v0, v5

    sget-object v6, LWd/b0;->p:Ljava/lang/Object;

    if-eq v2, v6, :cond_1

    sget-object v6, LWd/b0;->o:Ljava/lang/Object;

    if-eq v2, v6, :cond_1

    aget-byte v2, v1, v5

    invoke-static {v2}, LVd/b;->d(I)I

    move-result v2

    aget-object v6, v0, v5

    if-nez v6, :cond_0

    move v6, v3

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    :goto_1
    xor-int/2addr v2, v6

    add-int/2addr v4, v2

    :cond_1
    move v2, v5

    goto :goto_0

    :cond_2
    return v4
.end method

.method public hf(I)V
    .locals 2

    iget-object v0, p0, Lfe/a;->t:[B

    iget-byte v1, p0, Lfe/a;->u:B

    aput-byte v1, v0, p1

    invoke-super {p0, p1}, LWd/b0;->hf(I)V

    return-void
.end method

.method public i()B
    .locals 1

    iget-byte v0, p0, Lfe/a;->u:B

    return v0
.end method

.method public iterator()LZd/f0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LZd/f0<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lfe/a$f;

    invoke-direct {v0, p0, p0}, Lfe/a$f;-><init>(Lfe/a;Lfe/a;)V

    return-object v0
.end method

.method public j()[Ljava/lang/Object;
    .locals 6

    invoke-virtual {p0}, LWd/H;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, LWd/b0;->l:[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v2, -0x1

    if-lez v2, :cond_1

    aget-object v2, v1, v4

    sget-object v5, LWd/b0;->p:Ljava/lang/Object;

    if-eq v2, v5, :cond_0

    sget-object v5, LWd/b0;->o:Ljava/lang/Object;

    if-eq v2, v5, :cond_0

    add-int/lit8 v5, v3, 0x1

    aput-object v2, v0, v3

    move v2, v4

    move v3, v5

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public jf(I)I
    .locals 1

    invoke-super {p0, p1}, LWd/b0;->jf(I)I

    move-result p1

    new-array v0, p1, [B

    iput-object v0, p0, Lfe/a;->t:[B

    return p1
.end method

.method public k()LSd/a;
    .locals 1

    new-instance v0, Lfe/a$e;

    invoke-direct {v0, p0}, Lfe/a$e;-><init>(Lfe/a;)V

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lfe/a$c;

    invoke-direct {v0, p0}, Lfe/a$c;-><init>(Lfe/a;)V

    return-object v0
.end method

.method public m5(Ljava/lang/Object;B)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;B)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, LWd/b0;->tf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lfe/a;->t:[B

    aget-byte v1, v0, p1

    add-int/2addr v1, p2

    int-to-byte p2, v1

    aput-byte p2, v0, p1

    const/4 p1, 0x1

    return p1
.end method

.method public oa(Ljava/lang/Object;B)B
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;B)B"
        }
    .end annotation

    invoke-virtual {p0, p1}, LWd/b0;->wf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lfe/a;->Hf(BI)B

    move-result p1

    return p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p0, v1, v0}, Lfe/a;->oa(Ljava/lang/Object;B)B

    goto :goto_0

    :cond_0
    return-void
.end method

.method public r4(Ljava/lang/Object;B)B
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;B)B"
        }
    .end annotation

    invoke-virtual {p0, p1}, LWd/b0;->wf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    iget-object p2, p0, Lfe/a;->t:[B

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x1

    aget-byte p1, p2, p1

    return p1

    :cond_0
    invoke-virtual {p0, p2, p1}, Lfe/a;->Hf(BI)B

    move-result p1

    return p1
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    invoke-super {p0, p1}, LWd/q;->readExternal(Ljava/io/ObjectInput;)V

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loe/a;

    iput-object v0, p0, LWd/q;->q:Loe/a;

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Lfe/a;->u:B

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lfe/a;->jf(I)I

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v2

    invoke-virtual {p0, v0, v2}, Lfe/a;->oa(Ljava/lang/Object;B)B

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)B
    .locals 1

    iget-byte v0, p0, Lfe/a;->u:B

    invoke-virtual {p0, p1}, LWd/b0;->tf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lfe/a;->t:[B

    aget-byte v0, v0, p1

    invoke-virtual {p0, p1}, Lfe/a;->hf(I)V

    :cond_0
    return v0
.end method

.method public s(LUd/a;)V
    .locals 5

    iget-object v0, p0, LWd/b0;->l:[Ljava/lang/Object;

    iget-object v1, p0, Lfe/a;->t:[B

    array-length v2, v1

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1

    aget-object v2, v0, v3

    if-eqz v2, :cond_0

    sget-object v4, LWd/b0;->o:Ljava/lang/Object;

    if-eq v2, v4, :cond_0

    aget-byte v2, v1, v3

    invoke-interface {p1, v2}, LUd/a;->a(B)B

    move-result v2

    aput-byte v2, v1, v3

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lfe/a$b;

    invoke-direct {v1, p0, v0}, Lfe/a$b;-><init>(Lfe/a;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v1}, Lfe/a;->L7(Lhe/d0;)Z

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[B
    .locals 7

    invoke-virtual {p0}, LWd/H;->size()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lfe/a;->t:[B

    iget-object v2, p0, LWd/b0;->l:[Ljava/lang/Object;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v5, v3, -0x1

    if-lez v3, :cond_1

    aget-object v3, v2, v5

    sget-object v6, LWd/b0;->p:Ljava/lang/Object;

    if-eq v3, v6, :cond_0

    sget-object v6, LWd/b0;->o:Ljava/lang/Object;

    if-eq v3, v6, :cond_0

    add-int/lit8 v3, v4, 0x1

    aget-byte v6, v1, v5

    aput-byte v6, v0, v4

    move v4, v3

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    invoke-super {p0, p1}, LWd/q;->writeExternal(Ljava/io/ObjectOutput;)V

    iget-object v0, p0, LWd/q;->q:Loe/a;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-byte v0, p0, Lfe/a;->u:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget v0, p0, LWd/H;->b:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget-object v0, p0, LWd/b0;->l:[Ljava/lang/Object;

    array-length v0, v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    iget-object v0, p0, LWd/b0;->l:[Ljava/lang/Object;

    aget-object v0, v0, v1

    sget-object v2, LWd/b0;->o:Ljava/lang/Object;

    if-eq v0, v2, :cond_0

    sget-object v2, LWd/b0;->p:Ljava/lang/Object;

    if-eq v0, v2, :cond_0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lfe/a;->t:[B

    aget-byte v0, v0, v1

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public x0(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lfe/a;->m5(Ljava/lang/Object;B)Z

    move-result p1

    return p1
.end method
