.class public Lqn/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public final c:[Lqn/c;

.field public d:Lqn/c;

.field public final e:[Lqn/c;

.field public final f:I

.field public final g:I

.field public final h:Ljn/v;

.field public final i:Lqn/p;

.field public final j:Lqn/r;

.field public final k:Lqn/i;

.field public final l:Lqn/n;

.field public final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lqn/o;",
            ">;"
        }
    .end annotation
.end field

.field public n:Lqn/o;

.field public final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lqn/d;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Lqn/h;

.field public final r:Lrn/a;


# direct methods
.method public constructor <init>(Lqn/p;Lqn/r;Ljn/v;Lqn/i;Lqn/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "params",
            "storageParams",
            "navmesh",
            "tcomp",
            "tmprocs"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lqn/g;->m:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lqn/g;->o:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lqn/g;->p:Ljava/util/List;

    new-instance v0, Lqn/h;

    invoke-direct {v0}, Lqn/h;-><init>()V

    iput-object v0, p0, Lqn/g;->q:Lqn/h;

    new-instance v0, Lrn/a;

    invoke-direct {v0}, Lrn/a;-><init>()V

    iput-object v0, p0, Lqn/g;->r:Lrn/a;

    iput-object p1, p0, Lqn/g;->i:Lqn/p;

    iput-object p2, p0, Lqn/g;->j:Lqn/r;

    iput-object p3, p0, Lqn/g;->h:Ljn/v;

    iput-object p4, p0, Lqn/g;->k:Lqn/i;

    iput-object p5, p0, Lqn/g;->l:Lqn/n;

    iget p2, p1, Lqn/p;->j:I

    div-int/lit8 p2, p2, 0x4

    invoke-static {p2}, Ljn/g;->j(I)I

    move-result p2

    iput p2, p0, Lqn/g;->a:I

    const/4 p3, 0x1

    if-nez p2, :cond_0

    iput p3, p0, Lqn/g;->a:I

    :cond_0
    iget p2, p0, Lqn/g;->a:I

    add-int/lit8 p4, p2, -0x1

    iput p4, p0, Lqn/g;->b:I

    iget p1, p1, Lqn/p;->j:I

    new-array p4, p1, [Lqn/c;

    iput-object p4, p0, Lqn/g;->e:[Lqn/c;

    new-array p2, p2, [Lqn/c;

    iput-object p2, p0, Lqn/g;->c:[Lqn/c;

    sub-int/2addr p1, p3

    :goto_0
    if-ltz p1, :cond_1

    iget-object p2, p0, Lqn/g;->e:[Lqn/c;

    new-instance p3, Lqn/c;

    invoke-direct {p3, p1}, Lqn/c;-><init>(I)V

    aput-object p3, p2, p1

    iget-object p2, p0, Lqn/g;->e:[Lqn/c;

    aget-object p2, p2, p1

    iget-object p3, p0, Lqn/g;->d:Lqn/c;

    iput-object p3, p2, Lqn/c;->g:Lqn/c;

    iput-object p2, p0, Lqn/g;->d:Lqn/c;

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lqn/g;->i:Lqn/p;

    iget p1, p1, Lqn/p;->j:I

    invoke-static {p1}, Ljn/g;->j(I)I

    move-result p1

    invoke-static {p1}, Ljn/g;->g(I)I

    move-result p1

    iput p1, p0, Lqn/g;->g:I

    rsub-int/lit8 p1, p1, 0x20

    const/16 p2, 0x1f

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lqn/g;->f:I

    const/16 p2, 0xa

    if-lt p1, p2, :cond_2

    return-void

    :cond_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Too few salt bits: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public A()I
    .locals 1

    iget-object v0, p0, Lqn/g;->i:Lqn/p;

    iget v0, v0, Lqn/p;->j:I

    return v0
.end method

.method public B(Lqn/c;)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tile"
        }
    .end annotation

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget v0, p1, Lqn/c;->a:I

    iget p1, p1, Lqn/c;->b:I

    invoke-virtual {p0, p1, v0}, Lqn/g;->q(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public C(II)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tx",
            "ty"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lqn/g;->b:I

    invoke-static {p1, p2, v1}, Ljn/v;->k(III)I

    move-result v1

    iget-object v2, p0, Lqn/g;->c:[Lqn/c;

    aget-object v1, v2, v1

    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, v1, Lqn/c;->c:Lqn/m;

    if-eqz v2, :cond_0

    iget v3, v2, Lqn/m;->c:I

    if-ne v3, p1, :cond_0

    iget v2, v2, Lqn/m;->d:I

    if-ne v2, p2, :cond_0

    invoke-virtual {p0, v1}, Lqn/g;->B(Lqn/c;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, v1, Lqn/c;->g:Lqn/c;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public D([F[F)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bmin",
            "bmax"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[F)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lqn/g;->i:Lqn/p;

    iget v2, v1, Lqn/p;->d:I

    int-to-float v2, v2

    iget v3, v1, Lqn/p;->b:F

    mul-float/2addr v2, v3

    iget v4, v1, Lqn/p;->e:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    const/4 v3, 0x0

    aget v5, p1, v3

    iget-object v1, v1, Lqn/p;->a:[F

    aget v1, v1, v3

    sub-float/2addr v5, v1

    div-float/2addr v5, v2

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v1, v5

    aget v5, p2, v3

    iget-object v6, p0, Lqn/g;->i:Lqn/p;

    iget-object v6, v6, Lqn/p;->a:[F

    aget v3, v6, v3

    sub-float/2addr v5, v3

    div-float/2addr v5, v2

    float-to-double v2, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    const/4 v3, 0x2

    aget v5, p1, v3

    iget-object v6, p0, Lqn/g;->i:Lqn/p;

    iget-object v6, v6, Lqn/p;->a:[F

    aget v6, v6, v3

    sub-float/2addr v5, v6

    div-float/2addr v5, v4

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    aget v6, p2, v3

    iget-object v7, p0, Lqn/g;->i:Lqn/p;

    iget-object v7, v7, Lqn/p;->a:[F

    aget v3, v7, v3

    sub-float/2addr v6, v3

    div-float/2addr v6, v4

    float-to-double v3, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    :goto_0
    if-gt v5, v3, :cond_3

    move v4, v1

    :goto_1
    if-gt v4, v2, :cond_2

    invoke-virtual {p0, v4, v5}, Lqn/g;->C(II)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v10, p0, Lqn/g;->e:[Lqn/c;

    invoke-virtual {p0, v8, v9}, Lqn/g;->n(J)I

    move-result v8

    aget-object v8, v10, v8

    const/4 v9, 0x3

    new-array v10, v9, [F

    new-array v9, v9, [F

    iget-object v8, v8, Lqn/c;->c:Lqn/m;

    invoke-virtual {p0, v8, v10, v9}, Lqn/g;->i(Lqn/m;[F[F)V

    invoke-static {p1, p2, v10, v9}, Ljn/g;->l([F[F[F[F)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public E(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ref"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lqn/d;

    invoke-direct {v0}, Lqn/d;-><init>()V

    sget-object v1, Lqn/e;->REQUEST_REMOVE:Lqn/e;

    iput-object v1, v0, Lqn/d;->a:Lqn/e;

    iput-wide p1, v0, Lqn/d;->b:J

    iget-object p1, p0, Lqn/g;->o:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public F(J)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ref"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1, p2}, Lqn/g;->n(J)I

    move-result v0

    invoke-virtual {p0, p1, p2}, Lqn/g;->m(J)I

    move-result p1

    iget-object p2, p0, Lqn/g;->i:Lqn/p;

    iget p2, p2, Lqn/p;->j:I

    if-ge v0, p2, :cond_5

    iget-object p2, p0, Lqn/g;->e:[Lqn/c;

    aget-object p2, p2, v0

    iget v0, p2, Lqn/c;->b:I

    if-ne v0, p1, :cond_4

    iget-object p1, p2, Lqn/c;->c:Lqn/m;

    iget v0, p1, Lqn/m;->c:I

    iget p1, p1, Lqn/m;->d:I

    iget v1, p0, Lqn/g;->b:I

    invoke-static {v0, p1, v1}, Ljn/v;->k(III)I

    move-result p1

    iget-object v0, p0, Lqn/g;->c:[Lqn/c;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    if-eqz v0, :cond_2

    if-ne v0, p2, :cond_1

    if-eqz v2, :cond_0

    iget-object p1, v0, Lqn/c;->g:Lqn/c;

    iput-object p1, v2, Lqn/c;->g:Lqn/c;

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lqn/g;->c:[Lqn/c;

    iget-object v0, v0, Lqn/c;->g:Lqn/c;

    aput-object v0, v2, p1

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lqn/c;->g:Lqn/c;

    move-object v3, v2

    move-object v2, v0

    move-object v0, v3

    goto :goto_0

    :cond_2
    :goto_1
    iput-object v1, p2, Lqn/c;->c:Lqn/m;

    iput-object v1, p2, Lqn/c;->d:[B

    const/4 p1, 0x0

    iput p1, p2, Lqn/c;->e:I

    iput p1, p2, Lqn/c;->f:I

    iget p1, p2, Lqn/c;->b:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iget v1, p0, Lqn/g;->f:I

    shl-int v1, v0, v1

    sub-int/2addr v1, v0

    and-int/2addr p1, v1

    iput p1, p2, Lqn/c;->b:I

    if-nez p1, :cond_3

    add-int/2addr p1, v0

    iput p1, p2, Lqn/c;->b:I

    :cond_3
    iget-object p1, p0, Lqn/g;->d:Lqn/c;

    iput-object p1, p2, Lqn/c;->g:Lqn/c;

    iput-object p2, p0, Lqn/g;->d:Lqn/c;

    return-void

    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Invalid tile salt"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Invalid tile index"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Invalid tile ref"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public G()Z
    .locals 8

    iget-object v0, p0, Lqn/g;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lqn/g;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqn/d;

    iget-wide v2, v1, Lqn/d;->b:J

    invoke-virtual {p0, v2, v3}, Lqn/g;->k(J)I

    move-result v2

    iget-object v3, p0, Lqn/g;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lqn/g;->m:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lqn/o;

    iget-wide v3, v1, Lqn/d;->b:J

    invoke-virtual {p0, v3, v4}, Lqn/g;->l(J)I

    move-result v3

    iget v4, v2, Lqn/o;->m:I

    if-eq v4, v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, v1, Lqn/d;->a:Lqn/e;

    sget-object v3, Lqn/e;->REQUEST_ADD:Lqn/e;

    if-ne v1, v3, :cond_4

    const/4 v1, 0x3

    new-array v3, v1, [F

    new-array v1, v1, [F

    invoke-virtual {p0, v2, v3, v1}, Lqn/g;->t(Lqn/o;[F[F)V

    invoke-virtual {p0, v3, v1}, Lqn/g;->D([F[F)Ljava/util/List;

    move-result-object v1

    iput-object v1, v2, Lqn/o;->k:Ljava/util/List;

    iget-object v1, v2, Lqn/o;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, v2, Lqn/o;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, p0, Lqn/g;->p:Ljava/util/List;

    invoke-virtual {p0, v6, v4, v5}, Lqn/g;->j(Ljava/util/List;J)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lqn/g;->p:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v4, v2, Lqn/o;->l:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    sget-object v3, Lqn/e;->REQUEST_REMOVE:Lqn/e;

    if-ne v1, v3, :cond_0

    sget-object v1, Lqn/f;->DT_OBSTACLE_REMOVING:Lqn/f;

    iput-object v1, v2, Lqn/o;->n:Lqn/f;

    iget-object v1, v2, Lqn/o;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, v2, Lqn/o;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, p0, Lqn/g;->p:Ljava/util/List;

    invoke-virtual {p0, v6, v4, v5}, Lqn/g;->j(Ljava/util/List;J)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lqn/g;->p:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v4, v2, Lqn/o;->l:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lqn/g;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_7
    iget-object v0, p0, Lqn/g;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_c

    iget-object v0, p0, Lqn/g;->p:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lqn/g;->h(J)V

    move v3, v1

    :goto_3
    iget-object v4, p0, Lqn/g;->m:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_c

    iget-object v4, p0, Lqn/g;->m:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lqn/o;

    iget-object v5, v4, Lqn/o;->n:Lqn/f;

    sget-object v6, Lqn/f;->DT_OBSTACLE_PROCESSING:Lqn/f;

    if-eq v5, v6, :cond_8

    sget-object v7, Lqn/f;->DT_OBSTACLE_REMOVING:Lqn/f;

    if-ne v5, v7, :cond_b

    :cond_8
    iget-object v5, v4, Lqn/o;->l:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v5, v4, Lqn/o;->l:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, v4, Lqn/o;->n:Lqn/f;

    if-ne v5, v6, :cond_9

    sget-object v5, Lqn/f;->DT_OBSTACLE_PROCESSED:Lqn/f;

    iput-object v5, v4, Lqn/o;->n:Lqn/f;

    goto :goto_4

    :cond_9
    sget-object v6, Lqn/f;->DT_OBSTACLE_REMOVING:Lqn/f;

    if-ne v5, v6, :cond_b

    sget-object v5, Lqn/f;->DT_OBSTACLE_EMPTY:Lqn/f;

    iput-object v5, v4, Lqn/o;->n:Lqn/f;

    iget v5, v4, Lqn/o;->m:I

    add-int/2addr v5, v2

    const v6, 0xffff

    and-int/2addr v5, v6

    iput v5, v4, Lqn/o;->m:I

    if-nez v5, :cond_a

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lqn/o;->m:I

    :cond_a
    iget-object v5, p0, Lqn/g;->n:Lqn/o;

    iput-object v5, v4, Lqn/o;->o:Lqn/o;

    iput-object v4, p0, Lqn/g;->n:Lqn/o;

    :cond_b
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_c
    iget-object v0, p0, Lqn/g;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lqn/g;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    move v1, v2

    :cond_d
    return v1
.end method

.method public a([F[F)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bmin",
            "bmax"
        }
    .end annotation

    invoke-virtual {p0}, Lqn/g;->g()Lqn/o;

    move-result-object v0

    sget-object v1, Lqn/o$a;->BOX:Lqn/o$a;

    iput-object v1, v0, Lqn/o;->b:Lqn/o$a;

    iget-object v1, v0, Lqn/o;->d:[F

    invoke-static {v1, p1}, Ljn/g;->w([F[F)V

    iget-object p1, v0, Lqn/o;->e:[F

    invoke-static {p1, p2}, Ljn/g;->w([F[F)V

    invoke-virtual {p0, v0}, Lqn/g;->d(Lqn/o;)Lqn/d;

    move-result-object p1

    iget-wide p1, p1, Lqn/d;->b:J

    return-wide p1
.end method

.method public b([F[FF)J
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "center",
            "extents",
            "yRadians"
        }
    .end annotation

    invoke-virtual {p0}, Lqn/g;->g()Lqn/o;

    move-result-object v0

    sget-object v1, Lqn/o$a;->ORIENTED_BOX:Lqn/o$a;

    iput-object v1, v0, Lqn/o;->b:Lqn/o$a;

    iget-object v1, v0, Lqn/o;->h:[F

    invoke-static {v1, p1}, Ljn/g;->w([F[F)V

    iget-object p1, v0, Lqn/o;->i:[F

    invoke-static {p1, p2}, Ljn/g;->w([F[F)V

    const/high16 p1, 0x3f000000    # 0.5f

    mul-float p2, p3, p1

    float-to-double v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float p2, v1

    const/high16 v1, -0x41000000    # -0.5f

    mul-float/2addr p3, v1

    float-to-double v1, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float p3, v1

    iget-object v1, v0, Lqn/o;->j:[F

    const/4 v2, 0x0

    mul-float/2addr p3, p2

    aput p3, v1, v2

    mul-float/2addr p2, p2

    sub-float/2addr p2, p1

    const/4 p1, 0x1

    aput p2, v1, p1

    invoke-virtual {p0, v0}, Lqn/g;->d(Lqn/o;)Lqn/d;

    move-result-object p1

    iget-wide p1, p1, Lqn/d;->b:J

    return-wide p1
.end method

.method public c([FFF)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pos",
            "radius",
            "height"
        }
    .end annotation

    invoke-virtual {p0}, Lqn/g;->g()Lqn/o;

    move-result-object v0

    sget-object v1, Lqn/o$a;->CYLINDER:Lqn/o$a;

    iput-object v1, v0, Lqn/o;->b:Lqn/o$a;

    iget-object v1, v0, Lqn/o;->c:[F

    invoke-static {v1, p1}, Ljn/g;->w([F[F)V

    iput p2, v0, Lqn/o;->f:F

    iput p3, v0, Lqn/o;->g:F

    invoke-virtual {p0, v0}, Lqn/g;->d(Lqn/o;)Lqn/d;

    move-result-object p1

    iget-wide p1, p1, Lqn/d;->b:J

    return-wide p1
.end method

.method public final d(Lqn/o;)Lqn/d;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ob"
        }
    .end annotation

    new-instance v0, Lqn/d;

    invoke-direct {v0}, Lqn/d;-><init>()V

    sget-object v1, Lqn/e;->REQUEST_ADD:Lqn/e;

    iput-object v1, v0, Lqn/d;->a:Lqn/e;

    invoke-virtual {p0, p1}, Lqn/g;->v(Lqn/o;)J

    move-result-wide v1

    iput-wide v1, v0, Lqn/d;->b:J

    iget-object p1, p0, Lqn/g;->o:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public e([BI)J
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "flags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lqn/g;->j:Lqn/r;

    iget-object v1, v1, Lqn/r;->a:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lqn/g;->r:Lrn/a;

    iget-object v2, p0, Lqn/g;->j:Lqn/r;

    iget-boolean v2, v2, Lqn/r;->b:Z

    invoke-virtual {v1, v0, v2}, Lrn/a;->a(Ljava/nio/ByteBuffer;Z)Lqn/m;

    move-result-object v1

    iget v2, v1, Lqn/m;->c:I

    iget v3, v1, Lqn/m;->d:I

    iget v4, v1, Lqn/m;->e:I

    invoke-virtual {p0, v2, v3, v4}, Lqn/g;->y(III)Lqn/c;

    move-result-object v2

    if-eqz v2, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_0
    iget-object v2, p0, Lqn/g;->d:Lqn/c;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v4, v2, Lqn/c;->g:Lqn/c;

    iput-object v4, p0, Lqn/g;->d:Lqn/c;

    iput-object v3, v2, Lqn/c;->g:Lqn/c;

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_2

    iget v3, v1, Lqn/m;->c:I

    iget v4, v1, Lqn/m;->d:I

    iget v5, p0, Lqn/g;->b:I

    invoke-static {v3, v4, v5}, Ljn/v;->k(III)I

    move-result v3

    iget-object v4, p0, Lqn/g;->c:[Lqn/c;

    aget-object v5, v4, v3

    iput-object v5, v2, Lqn/c;->g:Lqn/c;

    aput-object v2, v4, v3

    iput-object v1, v2, Lqn/c;->c:Lqn/m;

    iput-object p1, v2, Lqn/c;->d:[B

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result p1

    invoke-virtual {p0, p1}, Lqn/g;->f(I)I

    move-result p1

    iput p1, v2, Lqn/c;->e:I

    iput p2, v2, Lqn/c;->f:I

    invoke-virtual {p0, v2}, Lqn/g;->B(Lqn/c;)J

    move-result-wide p1

    return-wide p1

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Out of storage"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    add-int/lit8 p1, p1, 0x3

    and-int/lit8 p1, p1, -0x4

    return p1
.end method

.method public final g()Lqn/o;
    .locals 2

    iget-object v0, p0, Lqn/g;->n:Lqn/o;

    if-nez v0, :cond_0

    new-instance v0, Lqn/o;

    iget-object v1, p0, Lqn/g;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lqn/o;-><init>(I)V

    iget-object v1, p0, Lqn/g;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lqn/o;->o:Lqn/o;

    iput-object v1, p0, Lqn/g;->n:Lqn/o;

    :goto_0
    sget-object v1, Lqn/f;->DT_OBSTACLE_PROCESSING:Lqn/f;

    iput-object v1, v0, Lqn/o;->n:Lqn/f;

    iget-object v1, v0, Lqn/o;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, v0, Lqn/o;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    iput-object v1, v0, Lqn/o;->o:Lqn/o;

    return-object v0
.end method

.method public h(J)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ref"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p2}, Lqn/g;->n(J)I

    move-result v1

    iget-object v2, v0, Lqn/g;->i:Lqn/p;

    iget v2, v2, Lqn/p;->j:I

    if-gt v1, v2, :cond_9

    iget-object v2, v0, Lqn/g;->e:[Lqn/c;

    aget-object v1, v2, v1

    invoke-virtual/range {p0 .. p2}, Lqn/g;->m(J)I

    move-result v2

    iget v3, v1, Lqn/c;->b:I

    if-ne v3, v2, :cond_8

    iget-object v2, v0, Lqn/g;->i:Lqn/p;

    iget v3, v2, Lqn/p;->h:F

    iget v2, v2, Lqn/p;->c:F

    div-float/2addr v3, v2

    float-to-int v2, v3

    invoke-virtual {v0, v1}, Lqn/g;->o(Lqn/c;)Lqn/l;

    move-result-object v12

    const/4 v13, 0x0

    move v14, v13

    :goto_0
    iget-object v3, v0, Lqn/g;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v14, v3, :cond_4

    iget-object v3, v0, Lqn/g;->m:Ljava/util/List;

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lqn/o;

    iget-object v4, v3, Lqn/o;->n:Lqn/f;

    sget-object v5, Lqn/f;->DT_OBSTACLE_EMPTY:Lqn/f;

    if-eq v4, v5, :cond_3

    sget-object v5, Lqn/f;->DT_OBSTACLE_REMOVING:Lqn/f;

    if-ne v4, v5, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v4, v3, Lqn/o;->k:Ljava/util/List;

    move-wide/from16 v10, p1

    invoke-virtual {v0, v4, v10, v11}, Lqn/g;->j(Ljava/util/List;J)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v3, Lqn/o;->b:Lqn/o$a;

    sget-object v5, Lqn/o$a;->CYLINDER:Lqn/o$a;

    if-ne v4, v5, :cond_1

    iget-object v4, v0, Lqn/g;->q:Lqn/h;

    iget-object v5, v1, Lqn/c;->c:Lqn/m;

    iget-object v5, v5, Lqn/m;->f:[F

    iget-object v6, v0, Lqn/g;->i:Lqn/p;

    iget v7, v6, Lqn/p;->b:F

    iget v8, v6, Lqn/p;->c:F

    iget-object v9, v3, Lqn/o;->c:[F

    iget v15, v3, Lqn/o;->f:F

    iget v6, v3, Lqn/o;->g:F

    const/16 v16, 0x0

    move-object v3, v4

    move-object v4, v12

    move/from16 v17, v6

    move v6, v7

    move v7, v8

    move-object v8, v9

    move v9, v15

    move/from16 v10, v17

    move/from16 v11, v16

    invoke-virtual/range {v3 .. v11}, Lqn/h;->H(Lqn/l;[FFF[FFFI)V

    goto :goto_1

    :cond_1
    sget-object v5, Lqn/o$a;->BOX:Lqn/o$a;

    if-ne v4, v5, :cond_2

    iget-object v4, v0, Lqn/g;->q:Lqn/h;

    iget-object v5, v1, Lqn/c;->c:Lqn/m;

    iget-object v5, v5, Lqn/m;->f:[F

    iget-object v6, v0, Lqn/g;->i:Lqn/p;

    iget v7, v6, Lqn/p;->b:F

    iget v8, v6, Lqn/p;->c:F

    iget-object v9, v3, Lqn/o;->d:[F

    iget-object v10, v3, Lqn/o;->e:[F

    const/4 v11, 0x0

    move-object v3, v4

    move-object v4, v12

    move v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move v10, v11

    invoke-virtual/range {v3 .. v10}, Lqn/h;->F(Lqn/l;[FFF[F[FI)V

    goto :goto_1

    :cond_2
    sget-object v5, Lqn/o$a;->ORIENTED_BOX:Lqn/o$a;

    if-ne v4, v5, :cond_3

    iget-object v4, v0, Lqn/g;->q:Lqn/h;

    iget-object v5, v1, Lqn/c;->c:Lqn/m;

    iget-object v5, v5, Lqn/m;->f:[F

    iget-object v6, v0, Lqn/g;->i:Lqn/p;

    iget v7, v6, Lqn/p;->b:F

    iget v8, v6, Lqn/p;->c:F

    iget-object v9, v3, Lqn/o;->h:[F

    iget-object v10, v3, Lqn/o;->i:[F

    iget-object v11, v3, Lqn/o;->j:[F

    const/4 v15, 0x0

    move-object v3, v4

    move-object v4, v12

    move v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move v11, v15

    invoke-virtual/range {v3 .. v11}, Lqn/h;->G(Lqn/l;[FFF[F[F[FI)V

    :cond_3
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    :cond_4
    iget-object v3, v0, Lqn/g;->q:Lqn/h;

    invoke-virtual {v3, v12, v2}, Lqn/h;->i(Lqn/l;I)V

    iget-object v3, v0, Lqn/g;->q:Lqn/h;

    iget-object v4, v0, Lqn/g;->i:Lqn/p;

    iget v4, v4, Lqn/p;->i:F

    invoke-virtual {v3, v12, v2, v4}, Lqn/h;->g(Lqn/l;IF)Lqn/k;

    move-result-object v2

    iget-object v3, v0, Lqn/g;->q:Lqn/h;

    iget-object v4, v0, Lqn/g;->h:Ljn/v;

    invoke-virtual {v4}, Ljn/v;->y()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lqn/h;->h(Lqn/k;I)Lqn/q;

    move-result-object v2

    iget v3, v2, Lqn/q;->c:I

    if-nez v3, :cond_5

    iget-object v2, v0, Lqn/g;->h:Ljn/v;

    iget-object v1, v1, Lqn/c;->c:Lqn/m;

    iget v3, v1, Lqn/m;->c:I

    iget v4, v1, Lqn/m;->d:I

    iget v1, v1, Lqn/m;->e:I

    invoke-virtual {v2, v3, v4, v1}, Ljn/v;->Q(III)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljn/v;->W(J)J

    return-void

    :cond_5
    new-instance v3, Ljn/x;

    invoke-direct {v3}, Ljn/x;-><init>()V

    iget-object v4, v2, Lqn/q;->d:[I

    iput-object v4, v3, Ljn/x;->a:[I

    iget v4, v2, Lqn/q;->b:I

    iput v4, v3, Ljn/x;->b:I

    iget-object v4, v2, Lqn/q;->e:[I

    iput-object v4, v3, Ljn/x;->c:[I

    iget-object v4, v2, Lqn/q;->g:[I

    iput-object v4, v3, Ljn/x;->e:[I

    iget-object v4, v2, Lqn/q;->f:[I

    iput-object v4, v3, Ljn/x;->d:[I

    iget v2, v2, Lqn/q;->c:I

    iput v2, v3, Ljn/x;->f:I

    iget-object v2, v0, Lqn/g;->h:Ljn/v;

    invoke-virtual {v2}, Ljn/v;->y()I

    move-result v2

    iput v2, v3, Ljn/x;->g:I

    iget-object v2, v0, Lqn/g;->i:Lqn/p;

    iget v4, v2, Lqn/p;->f:F

    iput v4, v3, Ljn/x;->z:F

    iget v4, v2, Lqn/p;->g:F

    iput v4, v3, Ljn/x;->A:F

    iget v4, v2, Lqn/p;->h:F

    iput v4, v3, Ljn/x;->B:F

    iget-object v4, v1, Lqn/c;->c:Lqn/m;

    iget v5, v4, Lqn/m;->c:I

    iput v5, v3, Ljn/x;->u:I

    iget v5, v4, Lqn/m;->d:I

    iput v5, v3, Ljn/x;->v:I

    iget v5, v4, Lqn/m;->e:I

    iput v5, v3, Ljn/x;->w:I

    iget v5, v2, Lqn/p;->b:F

    iput v5, v3, Ljn/x;->C:F

    iget v2, v2, Lqn/p;->c:F

    iput v2, v3, Ljn/x;->D:F

    iput-boolean v13, v3, Ljn/x;->E:Z

    iget-object v2, v4, Lqn/m;->f:[F

    iput-object v2, v3, Ljn/x;->x:[F

    iget-object v2, v4, Lqn/m;->g:[F

    iput-object v2, v3, Ljn/x;->y:[F

    iget-object v2, v0, Lqn/g;->l:Lqn/n;

    if-eqz v2, :cond_6

    invoke-interface {v2, v3}, Lqn/n;->a(Ljn/x;)V

    :cond_6
    invoke-static {v3}, Ljn/w;->d(Ljn/x;)Ljn/q;

    move-result-object v2

    iget-object v3, v0, Lqn/g;->h:Ljn/v;

    iget-object v1, v1, Lqn/c;->c:Lqn/m;

    iget v4, v1, Lqn/m;->c:I

    iget v5, v1, Lqn/m;->d:I

    iget v1, v1, Lqn/m;->e:I

    invoke-virtual {v3, v4, v5, v1}, Ljn/v;->Q(III)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljn/v;->W(J)J

    if-eqz v2, :cond_7

    iget-object v1, v0, Lqn/g;->h:Ljn/v;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v13, v3, v4}, Ljn/v;->c(Ljn/q;IJ)J

    :cond_7
    return-void

    :cond_8
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Invalid tile salt"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Invalid tile index"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public i(Lqn/m;[F[F)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "header",
            "bmin",
            "bmax"
        }
    .end annotation

    iget-object v0, p0, Lqn/g;->i:Lqn/p;

    iget v0, v0, Lqn/p;->b:F

    iget-object v1, p1, Lqn/m;->f:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    iget v4, p1, Lqn/m;->l:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    aput v3, p2, v2

    const/4 v3, 0x1

    aget v4, v1, v3

    aput v4, p2, v3

    const/4 v4, 0x2

    aget v5, v1, v4

    iget v6, p1, Lqn/m;->n:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    add-float/2addr v5, v6

    aput v5, p2, v4

    aget p2, v1, v2

    iget v5, p1, Lqn/m;->m:I

    add-int/2addr v5, v3

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr p2, v5

    aput p2, p3, v2

    iget-object p2, p1, Lqn/m;->g:[F

    aget p2, p2, v3

    aput p2, p3, v3

    aget p2, v1, v4

    iget p1, p1, Lqn/m;->o:I

    add-int/2addr p1, v3

    int-to-float p1, p1

    mul-float/2addr p1, v0

    add-float/2addr p2, p1

    aput p2, p3, v4

    return-void
.end method

.method public final j(Ljava/util/List;J)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "v"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;J)Z"
        }
    .end annotation

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final k(J)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ref"
        }
    .end annotation

    const-wide/32 v0, 0xffff

    and-long/2addr p1, v0

    long-to-int p1, p1

    return p1
.end method

.method public final l(J)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ref"
        }
    .end annotation

    const/16 v0, 0x10

    shr-long/2addr p1, v0

    const-wide/32 v0, 0xffff

    and-long/2addr p1, v0

    long-to-int p1, p1

    return p1
.end method

.method public final m(J)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ref"
        }
    .end annotation

    iget v0, p0, Lqn/g;->f:I

    const-wide/16 v1, 0x1

    shl-long v3, v1, v0

    sub-long/2addr v3, v1

    iget v0, p0, Lqn/g;->g:I

    shr-long/2addr p1, v0

    and-long/2addr p1, v3

    long-to-int p1, p1

    return p1
.end method

.method public final n(J)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ref"
        }
    .end annotation

    iget v0, p0, Lqn/g;->g:I

    const-wide/16 v1, 0x1

    shl-long v3, v1, v0

    sub-long/2addr v3, v1

    and-long/2addr p1, v3

    long-to-int p1, p1

    return p1
.end method

.method public o(Lqn/c;)Lqn/l;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tile"
        }
    .end annotation

    iget-object v0, p0, Lqn/g;->q:Lqn/h;

    iget-object v1, p0, Lqn/g;->k:Lqn/i;

    iget-object p1, p1, Lqn/c;->d:[B

    iget-object v2, p0, Lqn/g;->j:Lqn/r;

    iget-object v3, v2, Lqn/r;->a:Ljava/nio/ByteOrder;

    iget-boolean v2, v2, Lqn/r;->b:Z

    invoke-virtual {v0, v1, p1, v3, v2}, Lqn/h;->q(Lqn/i;[BLjava/nio/ByteOrder;Z)Lqn/l;

    move-result-object p1

    return-object p1
.end method

.method public final p(II)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "salt",
            "it"
        }
    .end annotation

    int-to-long v0, p1

    const/16 p1, 0x10

    shl-long/2addr v0, p1

    int-to-long p1, p2

    or-long/2addr p1, v0

    return-wide p1
.end method

.method public final q(II)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "salt",
            "it"
        }
    .end annotation

    int-to-long v0, p1

    iget p1, p0, Lqn/g;->g:I

    shl-long/2addr v0, p1

    int-to-long p1, p2

    or-long/2addr p1, v0

    return-wide p1
.end method

.method public r()Lqn/i;
    .locals 1

    iget-object v0, p0, Lqn/g;->k:Lqn/i;

    return-object v0
.end method

.method public s()Ljn/v;
    .locals 1

    iget-object v0, p0, Lqn/g;->h:Ljn/v;

    return-object v0
.end method

.method public t(Lqn/o;[F[F)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ob",
            "bmin",
            "bmax"
        }
    .end annotation

    iget-object v0, p1, Lqn/o;->b:Lqn/o$a;

    sget-object v1, Lqn/o$a;->CYLINDER:Lqn/o$a;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lqn/o;->c:[F

    aget v1, v0, v3

    iget v5, p1, Lqn/o;->f:F

    sub-float/2addr v1, v5

    aput v1, p2, v3

    aget v1, v0, v4

    aput v1, p2, v4

    aget v1, v0, v2

    sub-float/2addr v1, v5

    aput v1, p2, v2

    aget p2, v0, v3

    add-float/2addr p2, v5

    aput p2, p3, v3

    aget p2, v0, v4

    iget p1, p1, Lqn/o;->g:F

    add-float/2addr p2, p1

    aput p2, p3, v4

    aget p1, v0, v2

    add-float/2addr p1, v5

    aput p1, p3, v2

    goto :goto_0

    :cond_0
    sget-object v1, Lqn/o$a;->BOX:Lqn/o$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lqn/o;->d:[F

    invoke-static {p2, v0}, Ljn/g;->w([F[F)V

    iget-object p1, p1, Lqn/o;->e:[F

    invoke-static {p3, p1}, Ljn/g;->w([F[F)V

    goto :goto_0

    :cond_1
    sget-object v1, Lqn/o$a;->ORIENTED_BOX:Lqn/o$a;

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lqn/o;->i:[F

    aget v1, v0, v3

    aget v0, v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const v1, 0x3fb47ae1    # 1.41f

    mul-float/2addr v0, v1

    iget-object v1, p1, Lqn/o;->h:[F

    aget v5, v1, v3

    sub-float/2addr v5, v0

    aput v5, p2, v3

    aget v5, v1, v3

    add-float/2addr v5, v0

    aput v5, p3, v3

    aget v3, v1, v4

    iget-object p1, p1, Lqn/o;->i:[F

    aget v5, p1, v4

    sub-float/2addr v3, v5

    aput v3, p2, v4

    aget v3, v1, v4

    aget p1, p1, v4

    add-float/2addr v3, p1

    aput v3, p3, v4

    aget p1, v1, v2

    sub-float/2addr p1, v0

    aput p1, p2, v2

    aget p1, v1, v2

    add-float/2addr p1, v0

    aput p1, p3, v2

    :cond_2
    :goto_0
    return-void
.end method

.method public u(J)Lqn/o;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ref"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lqn/g;->k(J)I

    move-result v0

    iget-object v2, p0, Lqn/g;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    return-object v1

    :cond_1
    iget-object v2, p0, Lqn/g;->m:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqn/o;

    invoke-virtual {p0, p1, p2}, Lqn/g;->l(J)I

    move-result p1

    iget p2, v0, Lqn/o;->m:I

    if-eq p2, p1, :cond_2

    return-object v1

    :cond_2
    return-object v0
.end method

.method public v(Lqn/o;)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ob"
        }
    .end annotation

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget v0, p1, Lqn/o;->a:I

    iget p1, p1, Lqn/o;->m:I

    invoke-virtual {p0, p1, v0}, Lqn/g;->p(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public w()Lqn/p;
    .locals 1

    iget-object v0, p0, Lqn/g;->i:Lqn/p;

    return-object v0
.end method

.method public x(I)Lqn/c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    iget-object v0, p0, Lqn/g;->e:[Lqn/c;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public y(III)Lqn/c;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tx",
            "ty",
            "tlayer"
        }
    .end annotation

    iget v0, p0, Lqn/g;->b:I

    invoke-static {p1, p2, v0}, Ljn/v;->k(III)I

    move-result v0

    iget-object v1, p0, Lqn/g;->c:[Lqn/c;

    aget-object v0, v1, v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lqn/c;->c:Lqn/m;

    if-eqz v1, :cond_0

    iget v2, v1, Lqn/m;->c:I

    if-ne v2, p1, :cond_0

    iget v2, v1, Lqn/m;->d:I

    if-ne v2, p2, :cond_0

    iget v1, v1, Lqn/m;->e:I

    if-ne v1, p3, :cond_0

    return-object v0

    :cond_0
    iget-object v0, v0, Lqn/c;->g:Lqn/c;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public z(J)Lqn/c;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ref"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lqn/g;->n(J)I

    move-result v0

    invoke-virtual {p0, p1, p2}, Lqn/g;->m(J)I

    move-result p1

    iget-object p2, p0, Lqn/g;->i:Lqn/p;

    iget p2, p2, Lqn/p;->j:I

    if-lt v0, p2, :cond_1

    return-object v1

    :cond_1
    iget-object p2, p0, Lqn/g;->e:[Lqn/c;

    aget-object p2, p2, v0

    iget v0, p2, Lqn/c;->b:I

    if-eq v0, p1, :cond_2

    return-object v1

    :cond_2
    return-object p2
.end method
