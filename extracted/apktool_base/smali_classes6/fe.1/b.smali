.class public Lfe/b;
.super LWd/q;
.source "SourceFile"

# interfaces
.implements Lee/Z;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfe/b$f;,
        Lfe/b$e;,
        Lfe/b$d;,
        Lfe/b$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "LWd/q<",
        "TK;>;",
        "Lee/Z<",
        "TK;>;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field public static final v:J = 0x1L


# instance fields
.field public final s:Lhe/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhe/e0<",
            "TK;>;"
        }
    .end annotation
.end field

.field public transient t:[C

.field public u:C


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LWd/q;-><init>()V

    .line 2
    new-instance v0, Lfe/b$a;

    invoke-direct {v0, p0}, Lfe/b$a;-><init>(Lfe/b;)V

    iput-object v0, p0, Lfe/b;->s:Lhe/e0;

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
    new-instance p1, Lfe/b$a;

    invoke-direct {p1, p0}, Lfe/b$a;-><init>(Lfe/b;)V

    iput-object p1, p0, Lfe/b;->s:Lhe/e0;

    .line 5
    sget-char p1, LVd/a;->f:C

    iput-char p1, p0, Lfe/b;->u:C

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
    new-instance p1, Lfe/b$a;

    invoke-direct {p1, p0}, Lfe/b$a;-><init>(Lfe/b;)V

    iput-object p1, p0, Lfe/b;->s:Lhe/e0;

    .line 8
    sget-char p1, LVd/a;->f:C

    iput-char p1, p0, Lfe/b;->u:C

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
    new-instance p1, Lfe/b$a;

    invoke-direct {p1, p0}, Lfe/b$a;-><init>(Lfe/b;)V

    iput-object p1, p0, Lfe/b;->s:Lhe/e0;

    .line 11
    sget-char p1, LVd/a;->f:C

    iput-char p1, p0, Lfe/b;->u:C

    return-void
.end method

.method public constructor <init>(Loe/a;IFC)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Loe/a<",
            "-TK;>;IFC)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2, p3}, LWd/q;-><init>(Loe/a;IF)V

    .line 13
    new-instance p1, Lfe/b$a;

    invoke-direct {p1, p0}, Lfe/b$a;-><init>(Lfe/b;)V

    iput-object p1, p0, Lfe/b;->s:Lhe/e0;

    .line 14
    iput-char p4, p0, Lfe/b;->u:C

    if-eqz p4, :cond_0

    .line 15
    iget-object p1, p0, Lfe/b;->t:[C

    invoke-static {p1, p4}, Ljava/util/Arrays;->fill([CC)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Loe/a;Lee/Z;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Loe/a<",
            "-TK;>;",
            "Lee/Z<",
            "+TK;>;)V"
        }
    .end annotation

    .line 16
    invoke-interface {p2}, Lee/Z;->size()I

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-interface {p2}, Lee/Z;->i()C

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lfe/b;-><init>(Loe/a;IFC)V

    .line 17
    instance-of p1, p2, Lfe/b;

    if-eqz p1, :cond_1

    .line 18
    move-object p1, p2

    check-cast p1, Lfe/b;

    .line 19
    iget v0, p1, LWd/H;->d:F

    iput v0, p0, LWd/H;->d:F

    .line 20
    iget-char v0, p1, Lfe/b;->u:C

    iput-char v0, p0, Lfe/b;->u:C

    .line 21
    iget-object p1, p1, LWd/q;->q:Loe/a;

    iput-object p1, p0, LWd/q;->q:Loe/a;

    if-eqz v0, :cond_0

    .line 22
    iget-object p1, p0, Lfe/b;->t:[C

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([CC)V

    :cond_0
    const/high16 p1, 0x41200000    # 10.0f

    .line 23
    iget v0, p0, LWd/H;->d:F

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    invoke-virtual {p0, p1}, Lfe/b;->jf(I)I

    .line 24
    :cond_1
    invoke-virtual {p0, p2}, Lfe/b;->Ya(Lee/Z;)V

    return-void
.end method

.method public static synthetic Ff(Lfe/b;)I
    .locals 0

    iget p0, p0, LWd/H;->b:I

    return p0
.end method

.method public static synthetic Gf(Lfe/b;)I
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

.method public final Hf(CI)C
    .locals 3

    iget-char v0, p0, Lfe/b;->u:C

    const/4 v1, 0x1

    if-gez p2, :cond_0

    neg-int p2, p2

    sub-int/2addr p2, v1

    iget-object v0, p0, Lfe/b;->t:[C

    aget-char v0, v0, p2

    const/4 v1, 0x0

    :cond_0
    iget-object v2, p0, Lfe/b;->t:[C

    aput-char p1, v2, p2

    if-eqz v1, :cond_1

    iget-boolean p1, p0, LWd/b0;->m:Z

    invoke-virtual {p0, p1}, LWd/H;->ef(Z)V

    :cond_1
    return v0
.end method

.method public K(Lhe/q;)Z
    .locals 5

    iget-object v0, p0, LWd/b0;->l:[Ljava/lang/Object;

    iget-object v1, p0, Lfe/b;->t:[C

    array-length v2, v1

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1

    aget-object v2, v0, v3

    sget-object v4, LWd/b0;->p:Ljava/lang/Object;

    if-eq v2, v4, :cond_0

    sget-object v4, LWd/b0;->o:Ljava/lang/Object;

    if-eq v2, v4, :cond_0

    aget-char v2, v1, v3

    invoke-interface {p1, v2}, Lhe/q;->a(C)Z

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

.method public O(C)Z
    .locals 5

    iget-object v0, p0, LWd/b0;->l:[Ljava/lang/Object;

    iget-object v1, p0, Lfe/b;->t:[C

    array-length v2, v1

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1

    aget-object v2, v0, v3

    sget-object v4, LWd/b0;->p:Ljava/lang/Object;

    if-eq v2, v4, :cond_0

    sget-object v4, LWd/b0;->o:Ljava/lang/Object;

    if-eq v2, v4, :cond_0

    aget-char v2, v1, v3

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

.method public Ya(Lee/Z;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lee/Z<",
            "+TK;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lfe/b;->s:Lhe/e0;

    invoke-interface {p1, v0}, Lee/Z;->p7(Lhe/e0;)Z

    return-void
.end method

.method public Z([C)[C
    .locals 7

    invoke-virtual {p0}, LWd/H;->size()I

    move-result v0

    array-length v1, p1

    if-ge v1, v0, :cond_0

    new-array p1, v0, [C

    :cond_0
    iget-object v1, p0, Lfe/b;->t:[C

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

    aget-char v6, v1, v5

    aput-char v6, p1, v4

    move v4, v3

    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    array-length v1, p1

    if-le v1, v0, :cond_3

    iget-char v1, p0, Lfe/b;->u:C

    aput-char v1, p1, v0

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

    iget-object v0, p0, Lfe/b;->t:[C

    array-length v1, v0

    iget-char v2, p0, Lfe/b;->u:C

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([CIIC)V

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

    instance-of v0, p1, Lee/Z;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lee/Z;

    invoke-interface {p1}, Lee/Z;->size()I

    move-result v0

    invoke-virtual {p0}, LWd/H;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lfe/b;->iterator()LZd/g0;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, LZd/a;->g()V

    invoke-interface {v0}, LZd/g0;->key()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, LZd/g0;->value()C

    move-result v3

    iget-char v4, p0, Lfe/b;->u:C

    if-ne v3, v4, :cond_4

    invoke-interface {p1, v2}, Lee/Z;->get(Ljava/lang/Object;)C

    move-result v3

    invoke-interface {p1}, Lee/Z;->i()C

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-interface {p1, v2}, Lee/Z;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_3
    return v1

    :cond_4
    invoke-interface {p1, v2}, Lee/Z;->get(Ljava/lang/Object;)C

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

.method public g(LUd/b;)V
    .locals 5

    iget-object v0, p0, LWd/b0;->l:[Ljava/lang/Object;

    iget-object v1, p0, Lfe/b;->t:[C

    array-length v2, v1

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1

    aget-object v2, v0, v3

    if-eqz v2, :cond_0

    sget-object v4, LWd/b0;->o:Ljava/lang/Object;

    if-eq v2, v4, :cond_0

    aget-char v2, v1, v3

    invoke-interface {p1, v2}, LUd/b;->a(C)C

    move-result v2

    aput-char v2, v1, v3

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method public get(Ljava/lang/Object;)C
    .locals 1

    invoke-virtual {p0, p1}, LWd/b0;->tf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    iget-char p1, p0, Lfe/b;->u:C

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lfe/b;->t:[C

    aget-char p1, v0, p1

    :goto_0
    return p1
.end method

.method public gf(I)V
    .locals 6

    iget-object v0, p0, LWd/b0;->l:[Ljava/lang/Object;

    array-length v1, v0

    iget-object v2, p0, Lfe/b;->t:[C

    new-array v3, p1, [Ljava/lang/Object;

    iput-object v3, p0, LWd/b0;->l:[Ljava/lang/Object;

    sget-object v4, LWd/b0;->p:Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    new-array p1, p1, [C

    iput-object p1, p0, Lfe/b;->t:[C

    iget-char v3, p0, Lfe/b;->u:C

    invoke-static {p1, v3}, Ljava/util/Arrays;->fill([CC)V

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
    iget-object v1, p0, Lfe/b;->t:[C

    aget-char v4, v2, p1

    aput-char v4, v1, v3

    :cond_1
    move v1, p1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public h4(Ljava/lang/Object;C)C
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;C)C"
        }
    .end annotation

    invoke-virtual {p0, p1}, LWd/b0;->wf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    iget-object p2, p0, Lfe/b;->t:[C

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x1

    aget-char p1, p2, p1

    return p1

    :cond_0
    invoke-virtual {p0, p2, p1}, Lfe/b;->Hf(CI)C

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 7

    iget-object v0, p0, LWd/b0;->l:[Ljava/lang/Object;

    iget-object v1, p0, Lfe/b;->t:[C

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

    aget-char v2, v1, v5

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

    iget-object v0, p0, Lfe/b;->t:[C

    iget-char v1, p0, Lfe/b;->u:C

    aput-char v1, v0, p1

    invoke-super {p0, p1}, LWd/b0;->hf(I)V

    return-void
.end method

.method public i()C
    .locals 1

    iget-char v0, p0, Lfe/b;->u:C

    return v0
.end method

.method public iterator()LZd/g0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LZd/g0<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lfe/b$f;

    invoke-direct {v0, p0, p0}, Lfe/b$f;-><init>(Lfe/b;Lfe/b;)V

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

.method public je(Lhe/e0;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhe/e0<",
            "-TK;>;)Z"
        }
    .end annotation

    iget-object v0, p0, LWd/b0;->l:[Ljava/lang/Object;

    iget-object v1, p0, Lfe/b;->t:[C

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

    aget-char v6, v1, v5

    invoke-interface {p1, v3, v6}, Lhe/e0;->a(Ljava/lang/Object;C)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v5}, Lfe/b;->hf(I)V
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

.method public jf(I)I
    .locals 1

    invoke-super {p0, p1}, LWd/b0;->jf(I)I

    move-result p1

    new-array v0, p1, [C

    iput-object v0, p0, Lfe/b;->t:[C

    return p1
.end method

.method public k()LSd/b;
    .locals 1

    new-instance v0, Lfe/b$e;

    invoke-direct {v0, p0}, Lfe/b$e;-><init>(Lfe/b;)V

    return-object v0
.end method

.method public k5(Ljava/lang/Object;C)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;C)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, LWd/b0;->tf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lfe/b;->t:[C

    aget-char v1, v0, p1

    add-int/2addr v1, p2

    int-to-char p2, v1

    aput-char p2, v0, p1

    const/4 p1, 0x1

    return p1
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

    new-instance v0, Lfe/b$c;

    invoke-direct {v0, p0}, Lfe/b$c;-><init>(Lfe/b;)V

    return-object v0
.end method

.method public m9(Ljava/lang/Object;CC)C
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;CC)C"
        }
    .end annotation

    invoke-virtual {p0, p1}, LWd/b0;->wf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x1

    if-gez p1, :cond_0

    neg-int p1, p1

    sub-int/2addr p1, v0

    iget-object p3, p0, Lfe/b;->t:[C

    aget-char v0, p3, p1

    add-int/2addr v0, p2

    int-to-char p2, v0

    aput-char p2, p3, p1

    const/4 v0, 0x0

    move p3, p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lfe/b;->t:[C

    aput-char p3, p2, p1

    :goto_0
    if-eqz v0, :cond_1

    iget-boolean p1, p0, LWd/b0;->m:Z

    invoke-virtual {p0, p1}, LWd/H;->ef(Z)V

    :cond_1
    return p3
.end method

.method public p7(Lhe/e0;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhe/e0<",
            "-TK;>;)Z"
        }
    .end annotation

    iget-object v0, p0, LWd/b0;->l:[Ljava/lang/Object;

    iget-object v1, p0, Lfe/b;->t:[C

    array-length v2, v0

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1

    aget-object v2, v0, v3

    sget-object v4, LWd/b0;->p:Ljava/lang/Object;

    if-eq v2, v4, :cond_0

    sget-object v4, LWd/b0;->o:Ljava/lang/Object;

    if-eq v2, v4, :cond_0

    aget-char v4, v1, v3

    invoke-interface {p1, v2, v4}, Lhe/e0;->a(Ljava/lang/Object;C)Z

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

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+",
            "Ljava/lang/Character;",
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

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p0, v1, v0}, Lfe/b;->qa(Ljava/lang/Object;C)C

    goto :goto_0

    :cond_0
    return-void
.end method

.method public qa(Ljava/lang/Object;C)C
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;C)C"
        }
    .end annotation

    invoke-virtual {p0, p1}, LWd/b0;->wf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lfe/b;->Hf(CI)C

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

    invoke-interface {p1}, Ljava/io/DataInput;->readChar()C

    move-result v0

    iput-char v0, p0, Lfe/b;->u:C

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lfe/b;->jf(I)I

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/io/DataInput;->readChar()C

    move-result v2

    invoke-virtual {p0, v0, v2}, Lfe/b;->qa(Ljava/lang/Object;C)C

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)C
    .locals 1

    iget-char v0, p0, Lfe/b;->u:C

    invoke-virtual {p0, p1}, LWd/b0;->tf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lfe/b;->t:[C

    aget-char v0, v0, p1

    invoke-virtual {p0, p1}, Lfe/b;->hf(I)V

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lfe/b$b;

    invoke-direct {v1, p0, v0}, Lfe/b$b;-><init>(Lfe/b;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v1}, Lfe/b;->p7(Lhe/e0;)Z

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[C
    .locals 7

    invoke-virtual {p0}, LWd/H;->size()I

    move-result v0

    new-array v0, v0, [C

    iget-object v1, p0, Lfe/b;->t:[C

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

    aget-char v6, v1, v5

    aput-char v6, v0, v4

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

    iget-char v0, p0, Lfe/b;->u:C

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeChar(I)V

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

    iget-object v0, p0, Lfe/b;->t:[C

    aget-char v0, v0, v1

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeChar(I)V

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

    invoke-virtual {p0, p1, v0}, Lfe/b;->k5(Ljava/lang/Object;C)Z

    move-result p1

    return p1
.end method
