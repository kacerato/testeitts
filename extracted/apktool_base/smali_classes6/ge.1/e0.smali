.class public Lge/e0;
.super LWd/b0;
.source "SourceFile"

# interfaces
.implements Lee/d0;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lge/e0$f;,
        Lge/e0$e;,
        Lge/e0$d;,
        Lge/e0$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "LWd/b0<",
        "TK;>;",
        "Lee/d0<",
        "TK;>;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field public static final t:J = 0x1L


# instance fields
.field public final q:Lhe/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhe/i0<",
            "TK;>;"
        }
    .end annotation
.end field

.field public transient r:[J

.field public s:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, LWd/b0;-><init>()V

    .line 2
    new-instance v0, Lge/e0$a;

    invoke-direct {v0, p0}, Lge/e0$a;-><init>(Lge/e0;)V

    iput-object v0, p0, Lge/e0;->q:Lhe/i0;

    .line 3
    sget-wide v0, LVd/a;->h:J

    iput-wide v0, p0, Lge/e0;->s:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 4
    invoke-direct {p0, p1}, LWd/b0;-><init>(I)V

    .line 5
    new-instance p1, Lge/e0$a;

    invoke-direct {p1, p0}, Lge/e0$a;-><init>(Lge/e0;)V

    iput-object p1, p0, Lge/e0;->q:Lhe/i0;

    .line 6
    sget-wide v0, LVd/a;->h:J

    iput-wide v0, p0, Lge/e0;->s:J

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, LWd/b0;-><init>(IF)V

    .line 8
    new-instance p1, Lge/e0$a;

    invoke-direct {p1, p0}, Lge/e0$a;-><init>(Lge/e0;)V

    iput-object p1, p0, Lge/e0;->q:Lhe/i0;

    .line 9
    sget-wide p1, LVd/a;->h:J

    iput-wide p1, p0, Lge/e0;->s:J

    return-void
.end method

.method public constructor <init>(IFJ)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, LWd/b0;-><init>(IF)V

    .line 11
    new-instance p1, Lge/e0$a;

    invoke-direct {p1, p0}, Lge/e0$a;-><init>(Lge/e0;)V

    iput-object p1, p0, Lge/e0;->q:Lhe/i0;

    .line 12
    iput-wide p3, p0, Lge/e0;->s:J

    const-wide/16 p1, 0x0

    cmp-long p1, p3, p1

    if-eqz p1, :cond_0

    .line 13
    iget-object p1, p0, Lge/e0;->r:[J

    invoke-static {p1, p3, p4}, Ljava/util/Arrays;->fill([JJ)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lee/d0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lee/d0<",
            "+TK;>;)V"
        }
    .end annotation

    .line 14
    invoke-interface {p1}, Lee/d0;->size()I

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-interface {p1}, Lee/d0;->i()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lge/e0;-><init>(IFJ)V

    .line 15
    instance-of v0, p1, Lge/e0;

    if-eqz v0, :cond_1

    .line 16
    move-object v0, p1

    check-cast v0, Lge/e0;

    .line 17
    iget v1, v0, LWd/H;->d:F

    iput v1, p0, LWd/H;->d:F

    .line 18
    iget-wide v0, v0, Lge/e0;->s:J

    iput-wide v0, p0, Lge/e0;->s:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 19
    iget-object v2, p0, Lge/e0;->r:[J

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    :cond_0
    const/high16 v0, 0x41200000    # 10.0f

    .line 20
    iget v1, p0, LWd/H;->d:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p0, v0}, Lge/e0;->jf(I)I

    .line 21
    :cond_1
    invoke-virtual {p0, p1}, Lge/e0;->R2(Lee/d0;)V

    return-void
.end method

.method public static synthetic Ff(Lge/e0;)I
    .locals 0

    iget p0, p0, LWd/H;->b:I

    return p0
.end method

.method public static synthetic Gf(Lge/e0;)I
    .locals 0

    iget p0, p0, LWd/H;->b:I

    return p0
.end method

.method private Hf(JI)J
    .locals 6

    iget-wide v0, p0, Lge/e0;->s:J

    const/4 v2, 0x1

    if-gez p3, :cond_0

    neg-int p3, p3

    sub-int/2addr p3, v2

    iget-object v0, p0, Lge/e0;->r:[J

    aget-wide v1, v0, p3

    const/4 v0, 0x0

    move-wide v4, v1

    move v2, v0

    move-wide v0, v4

    :cond_0
    iget-object v3, p0, Lge/e0;->r:[J

    aput-wide p1, v3, p3

    if-eqz v2, :cond_1

    iget-boolean p1, p0, LWd/b0;->m:Z

    invoke-virtual {p0, p1}, LWd/H;->ef(Z)V

    :cond_1
    return-wide v0
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

.method public J6(Ljava/lang/Object;JJ)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;JJ)J"
        }
    .end annotation

    invoke-virtual {p0, p1}, LWd/b0;->wf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x1

    if-gez p1, :cond_0

    neg-int p1, p1

    sub-int/2addr p1, v0

    iget-object p4, p0, Lge/e0;->r:[J

    aget-wide v0, p4, p1

    add-long/2addr p2, v0

    aput-wide p2, p4, p1

    const/4 v0, 0x0

    move-wide p4, p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lge/e0;->r:[J

    aput-wide p4, p2, p1

    :goto_0
    if-eqz v0, :cond_1

    iget-boolean p1, p0, LWd/b0;->m:Z

    invoke-virtual {p0, p1}, LWd/H;->ef(Z)V

    :cond_1
    return-wide p4
.end method

.method public R(J)Z
    .locals 6

    iget-object v0, p0, LWd/b0;->l:[Ljava/lang/Object;

    iget-object v1, p0, Lge/e0;->r:[J

    array-length v2, v1

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1

    aget-object v2, v0, v3

    sget-object v4, LWd/b0;->p:Ljava/lang/Object;

    if-eq v2, v4, :cond_0

    sget-object v4, LWd/b0;->o:Ljava/lang/Object;

    if-eq v2, v4, :cond_0

    aget-wide v4, v1, v3

    cmp-long v2, p1, v4

    if-nez v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public R2(Lee/d0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lee/d0<",
            "+TK;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lge/e0;->q:Lhe/i0;

    invoke-interface {p1, v0}, Lee/d0;->U7(Lhe/i0;)Z

    return-void
.end method

.method public U7(Lhe/i0;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhe/i0<",
            "-TK;>;)Z"
        }
    .end annotation

    iget-object v0, p0, LWd/b0;->l:[Ljava/lang/Object;

    iget-object v1, p0, Lge/e0;->r:[J

    array-length v2, v0

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1

    aget-object v2, v0, v3

    sget-object v4, LWd/b0;->p:Ljava/lang/Object;

    if-eq v2, v4, :cond_0

    sget-object v4, LWd/b0;->o:Ljava/lang/Object;

    if-eq v2, v4, :cond_0

    aget-wide v4, v1, v3

    invoke-interface {p1, v2, v4, v5}, Lhe/i0;->a(Ljava/lang/Object;J)Z

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

.method public ba(Ljava/lang/Object;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)J"
        }
    .end annotation

    invoke-virtual {p0, p1}, LWd/b0;->wf(Ljava/lang/Object;)I

    move-result p1

    invoke-direct {p0, p2, p3, p1}, Lge/e0;->Hf(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public clear()V
    .locals 6

    invoke-super {p0}, LWd/H;->clear()V

    iget-object v0, p0, LWd/b0;->l:[Ljava/lang/Object;

    array-length v1, v0

    sget-object v2, LWd/b0;->p:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget-object v0, p0, Lge/e0;->r:[J

    array-length v1, v0

    iget-wide v4, p0, Lge/e0;->s:J

    invoke-static {v0, v3, v1, v4, v5}, Ljava/util/Arrays;->fill([JIIJ)V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, LWd/b0;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    instance-of v0, p1, Lee/d0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lee/d0;

    invoke-interface {p1}, Lee/d0;->size()I

    move-result v0

    invoke-virtual {p0}, LWd/H;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lge/e0;->iterator()LZd/k0;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, LZd/a;->g()V

    invoke-interface {v0}, LZd/k0;->key()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, LZd/k0;->value()J

    move-result-wide v3

    iget-wide v5, p0, Lge/e0;->s:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_4

    invoke-interface {p1, v2}, Lee/d0;->get(Ljava/lang/Object;)J

    move-result-wide v3

    invoke-interface {p1}, Lee/d0;->i()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    invoke-interface {p1, v2}, Lee/d0;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_3
    return v1

    :cond_4
    invoke-interface {p1, v2}, Lee/d0;->get(Ljava/lang/Object;)J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v2, v3, v5

    if-eqz v2, :cond_2

    return v1

    :catch_0
    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method public g0([J)[J
    .locals 8

    invoke-virtual {p0}, LWd/H;->size()I

    move-result v0

    array-length v1, p1

    if-ge v1, v0, :cond_0

    new-array p1, v0, [J

    :cond_0
    iget-object v1, p0, Lge/e0;->r:[J

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

    aget-wide v6, v1, v5

    aput-wide v6, p1, v4

    move v4, v3

    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    array-length v1, p1

    if-le v1, v0, :cond_3

    iget-wide v1, p0, Lge/e0;->s:J

    aput-wide v1, p1, v0

    :cond_3
    return-object p1
.end method

.method public g4(Ljava/lang/Object;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)J"
        }
    .end annotation

    invoke-virtual {p0, p1}, LWd/b0;->wf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    iget-object p2, p0, Lge/e0;->r:[J

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x1

    aget-wide p1, p2, p1

    return-wide p1

    :cond_0
    invoke-direct {p0, p2, p3, p1}, Lge/e0;->Hf(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public get(Ljava/lang/Object;)J
    .locals 3

    invoke-virtual {p0, p1}, LWd/b0;->tf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    iget-wide v0, p0, Lge/e0;->s:J

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lge/e0;->r:[J

    aget-wide v1, v0, p1

    move-wide v0, v1

    :goto_0
    return-wide v0
.end method

.method public gf(I)V
    .locals 6

    iget-object v0, p0, LWd/b0;->l:[Ljava/lang/Object;

    array-length v1, v0

    iget-object v2, p0, Lge/e0;->r:[J

    new-array v3, p1, [Ljava/lang/Object;

    iput-object v3, p0, LWd/b0;->l:[Ljava/lang/Object;

    sget-object v4, LWd/b0;->p:Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    new-array p1, p1, [J

    iput-object p1, p0, Lge/e0;->r:[J

    iget-wide v3, p0, Lge/e0;->s:J

    invoke-static {p1, v3, v4}, Ljava/util/Arrays;->fill([JJ)V

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
    iget-object v4, p0, LWd/b0;->l:[Ljava/lang/Object;

    aput-object v1, v4, v3

    iget-object v1, p0, Lge/e0;->r:[J

    aget-wide v4, v2, p1

    aput-wide v4, v1, v3

    :cond_1
    move v1, p1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public h(LUd/f;)V
    .locals 6

    iget-object v0, p0, LWd/b0;->l:[Ljava/lang/Object;

    iget-object v1, p0, Lge/e0;->r:[J

    array-length v2, v1

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1

    aget-object v2, v0, v3

    if-eqz v2, :cond_0

    sget-object v4, LWd/b0;->o:Ljava/lang/Object;

    if-eq v2, v4, :cond_0

    aget-wide v4, v1, v3

    invoke-interface {p1, v4, v5}, LUd/f;->a(J)J

    move-result-wide v4

    aput-wide v4, v1, v3

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method public hashCode()I
    .locals 8

    iget-object v0, p0, LWd/b0;->l:[Ljava/lang/Object;

    iget-object v1, p0, Lge/e0;->r:[J

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

    aget-wide v6, v1, v5

    invoke-static {v6, v7}, LVd/b;->e(J)I

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
    .locals 3

    iget-object v0, p0, Lge/e0;->r:[J

    iget-wide v1, p0, Lge/e0;->s:J

    aput-wide v1, v0, p1

    invoke-super {p0, p1}, LWd/b0;->hf(I)V

    return-void
.end method

.method public i()J
    .locals 2

    iget-wide v0, p0, Lge/e0;->s:J

    return-wide v0
.end method

.method public iterator()LZd/k0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LZd/k0<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lge/e0$f;

    invoke-direct {v0, p0, p0}, Lge/e0$f;-><init>(Lge/e0;Lge/e0;)V

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

    new-array v0, p1, [J

    iput-object v0, p0, Lge/e0;->r:[J

    return p1
.end method

.method public k()LSd/h;
    .locals 1

    new-instance v0, Lge/e0$e;

    invoke-direct {v0, p0}, Lge/e0$e;-><init>(Lge/e0;)V

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

    new-instance v0, Lge/e0$c;

    invoke-direct {v0, p0}, Lge/e0$c;-><init>(Lge/e0;)V

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+",
            "Ljava/lang/Long;",
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

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lge/e0;->ba(Ljava/lang/Object;J)J

    goto :goto_0

    :cond_0
    return-void
.end method

.method public q5(Ljava/lang/Object;J)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, LWd/b0;->tf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lge/e0;->r:[J

    aget-wide v1, v0, p1

    add-long/2addr v1, p2

    aput-wide v1, v0, p1

    const/4 p1, 0x1

    return p1
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    invoke-super {p0, p1}, LWd/b0;->readExternal(Ljava/io/ObjectInput;)V

    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lge/e0;->s:J

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lge/e0;->jf(I)I

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lge/e0;->ba(Ljava/lang/Object;J)J

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)J
    .locals 3

    iget-wide v0, p0, Lge/e0;->s:J

    invoke-virtual {p0, p1}, LWd/b0;->tf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lge/e0;->r:[J

    aget-wide v1, v0, p1

    invoke-virtual {p0, p1}, Lge/e0;->hf(I)V

    move-wide v0, v1

    :cond_0
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lge/e0$b;

    invoke-direct {v1, p0, v0}, Lge/e0$b;-><init>(Lge/e0;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v1}, Lge/e0;->U7(Lhe/i0;)Z

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u4(Lhe/i0;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhe/i0<",
            "-TK;>;)Z"
        }
    .end annotation

    iget-object v0, p0, LWd/b0;->l:[Ljava/lang/Object;

    iget-object v1, p0, Lge/e0;->r:[J

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

    aget-wide v6, v1, v5

    invoke-interface {p1, v3, v6, v7}, Lhe/i0;->a(Ljava/lang/Object;J)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v5}, Lge/e0;->hf(I)V
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

.method public values()[J
    .locals 8

    invoke-virtual {p0}, LWd/H;->size()I

    move-result v0

    new-array v0, v0, [J

    iget-object v1, p0, Lge/e0;->r:[J

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

    aget-wide v6, v1, v5

    aput-wide v6, v0, v4

    move v4, v3

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    invoke-super {p0, p1}, LWd/b0;->writeExternal(Ljava/io/ObjectOutput;)V

    iget-wide v0, p0, Lge/e0;->s:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

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

    iget-object v0, p0, Lge/e0;->r:[J

    aget-wide v2, v0, v1

    invoke-interface {p1, v2, v3}, Ljava/io/DataOutput;->writeLong(J)V

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public x(Lhe/b0;)Z
    .locals 6

    iget-object v0, p0, LWd/b0;->l:[Ljava/lang/Object;

    iget-object v1, p0, Lge/e0;->r:[J

    array-length v2, v1

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1

    aget-object v2, v0, v3

    sget-object v4, LWd/b0;->p:Ljava/lang/Object;

    if-eq v2, v4, :cond_0

    sget-object v4, LWd/b0;->o:Ljava/lang/Object;

    if-eq v2, v4, :cond_0

    aget-wide v4, v1, v3

    invoke-interface {p1, v4, v5}, Lhe/b0;->a(J)Z

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

.method public x0(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    const-wide/16 v0, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lge/e0;->q5(Ljava/lang/Object;J)Z

    move-result p1

    return p1
.end method
