.class public Lkn/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:F


# instance fields
.field public final a:[F

.field public final b:[F

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x3c23d70a    # 0.01f

    invoke-static {v0}, Ljn/g;->s(F)F

    move-result v0

    sput v0, Lkn/o;->d:F

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [F

    iput-object v1, p0, Lkn/o;->a:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lkn/o;->b:[F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lkn/o;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(ILjn/A;Ljn/L;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "maxCorners",
            "navquery",
            "filter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljn/A;",
            "Ljn/L;",
            ")",
            "Ljava/util/List<",
            "Ljn/S;",
            ">;"
        }
    .end annotation

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lkn/o;->a:[F

    iget-object v2, p0, Lkn/o;->b:[F

    iget-object v3, p0, Lkn/o;->c:Ljava/util/List;

    const/4 v5, 0x0

    move-object v0, p2

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Ljn/A;->t([F[FLjava/util/List;II)Ljn/O;

    move-result-object p1

    invoke-virtual {p1}, Ljn/O;->j()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p1, p1, Ljn/O;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljn/S;

    invoke-virtual {v0}, Ljn/S;->a()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljn/S;->b()[F

    move-result-object v0

    iget-object v1, p0, Lkn/o;->a:[F

    invoke-static {v0, v1}, Ljn/g;->C([F[F)F

    move-result v0

    sget v1, Lkn/o;->d:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    move v0, p3

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljn/S;

    invoke-virtual {v1}, Ljn/S;->a()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    add-int/lit8 p2, v0, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    invoke-interface {p1, p3, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p3

    :cond_4
    return-object p3
.end method

.method public b(J[F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "safeRef",
            "safePos"
        }
    .end annotation

    iget-object v0, p0, Lkn/o;->a:[F

    invoke-static {v0, p3}, Ljn/g;->w([F[F)V

    iget-object p3, p0, Lkn/o;->c:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/4 v0, 0x3

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    if-ge p3, v0, :cond_0

    iget-object p3, p0, Lkn/o;->c:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_0

    iget-object p3, p0, Lkn/o;->c:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    iget-object v0, p0, Lkn/o;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lkn/o;->c:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lkn/o;->c:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lkn/o;->c:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lkn/o;->c:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->clear()V

    iget-object p3, p0, Lkn/o;->c:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lkn/o;->c:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public c()J
    .locals 2

    iget-object v0, p0, Lkn/o;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lkn/o;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public d()J
    .locals 2

    iget-object v0, p0, Lkn/o;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lkn/o;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lkn/o;->c:Ljava/util/List;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lkn/o;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public g()[F
    .locals 1

    iget-object v0, p0, Lkn/o;->a:[F

    return-object v0
.end method

.method public h()[F
    .locals 1

    iget-object v0, p0, Lkn/o;->b:[F

    return-object v0
.end method

.method public i(ILjn/A;Ljn/L;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "maxLookAhead",
            "navquery",
            "filter"
        }
    .end annotation

    iget-object v0, p0, Lkn/o;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    iget-object v2, p0, Lkn/o;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3, p3}, Ljn/A;->J(JLjn/L;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public j(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "visited"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v3, v0

    move v4, v3

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v7, v1

    :goto_1
    if-ltz v5, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-ne v8, v9, :cond_0

    move v3, v2

    move v4, v5

    move v7, v6

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_1
    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-eq v3, v0, :cond_5

    if-ne v4, v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {p1, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2, v4, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    :goto_3
    return-object p1
.end method

.method public k(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "visited"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    move v3, v2

    move v4, v3

    :goto_0
    if-ltz v0, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v1

    const/4 v6, 0x0

    :goto_1
    if-ltz v5, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    move v3, v0

    move v6, v1

    move v4, v5

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_1
    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-eq v3, v2, :cond_6

    if-ne v4, v2, :cond_4

    goto :goto_4

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_3
    if-le v2, v4, :cond_5

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {p1, v3, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0

    :cond_6
    :goto_4
    return-object p1
.end method

.method public l(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "visited"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x0

    if-ltz v0, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v1

    move v7, v5

    :goto_1
    if-ltz v6, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-ne v8, v9, :cond_0

    move v3, v0

    move v7, v1

    move v4, v6

    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_1
    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-eq v3, v2, :cond_5

    if-gtz v4, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {p2, v5, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p2

    :cond_5
    :goto_3
    return-object p1
.end method

.method public m(J[J[F[FLjn/A;)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "offMeshConRef",
            "refs",
            "start",
            "end",
            "navquery"
        }
    .end annotation

    iget-object v0, p0, Lkn/o;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    move v0, v1

    :goto_0
    iget-object v6, p0, Lkn/o;->c:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_0

    cmp-long v6, v2, p1

    if-eqz v6, :cond_0

    iget-object v4, p0, Lkn/o;->c:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-int/lit8 v0, v0, 0x1

    move-wide v7, v2

    move-wide v2, v4

    move-wide v4, v7

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lkn/o;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne v0, p1, :cond_1

    return v1

    :cond_1
    iget-object p1, p0, Lkn/o;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {p1, v0, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lkn/o;->c:Ljava/util/List;

    aput-wide v4, p3, v1

    const/4 p1, 0x1

    aput-wide v2, p3, p1

    invoke-virtual {p6}, Ljn/A;->u()Ljn/v;

    move-result-object p2

    aget-wide v2, p3, v1

    aget-wide v4, p3, p1

    invoke-virtual {p2, v2, v3, v4, v5}, Ljn/v;->B(JJ)Ljn/O;

    move-result-object p2

    invoke-virtual {p2}, Ljn/O;->j()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lkn/o;->a:[F

    iget-object p6, p2, Ljn/O;->a:Ljava/lang/Object;

    check-cast p6, Ljn/U;

    iget-object p6, p6, Ljn/U;->b:Ljava/lang/Object;

    check-cast p6, [F

    invoke-static {p3, p6}, Ljn/g;->w([F[F)V

    iget-object p3, p2, Ljn/O;->a:Ljava/lang/Object;

    check-cast p3, Ljn/U;

    iget-object p3, p3, Ljn/U;->a:Ljava/lang/Object;

    check-cast p3, [F

    invoke-static {p4, p3}, Ljn/g;->w([F[F)V

    iget-object p2, p2, Ljn/O;->a:Ljava/lang/Object;

    check-cast p2, Ljn/U;

    iget-object p2, p2, Ljn/U;->b:Ljava/lang/Object;

    check-cast p2, [F

    invoke-static {p5, p2}, Ljn/g;->w([F[F)V

    return p1

    :cond_2
    return v1
.end method

.method public n([FLjn/A;Ljn/L;)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "npos",
            "navquery",
            "filter"
        }
    .end annotation

    iget-object v0, p0, Lkn/o;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lkn/o;->a:[F

    move-object v2, p2

    move-object v6, p1

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Ljn/A;->L(J[F[FLjn/L;)Ljn/O;

    move-result-object p1

    invoke-virtual {p1}, Ljn/O;->j()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lkn/o;->c:Ljava/util/List;

    iget-object v0, p1, Ljn/O;->a:Ljava/lang/Object;

    check-cast v0, Ljn/t;

    invoke-virtual {v0}, Ljn/t;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lkn/o;->k(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lkn/o;->c:Ljava/util/List;

    iget-object p3, p0, Lkn/o;->a:[F

    iget-object v0, p1, Ljn/O;->a:Ljava/lang/Object;

    check-cast v0, Ljn/t;

    invoke-virtual {v0}, Ljn/t;->a()[F

    move-result-object v0

    invoke-static {p3, v0}, Ljn/g;->w([F[F)V

    iget-object p3, p0, Lkn/o;->c:Ljava/util/List;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p1, p1, Ljn/O;->a:Ljava/lang/Object;

    check-cast p1, Ljn/t;

    invoke-virtual {p1}, Ljn/t;->a()[F

    move-result-object p1

    invoke-virtual {p2, v0, v1, p1}, Ljn/A;->A(J[F)Ljn/O;

    move-result-object p1

    invoke-virtual {p1}, Ljn/O;->j()Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lkn/o;->a:[F

    iget-object p1, p1, Ljn/O;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    aput p1, p2, p3

    :cond_0
    return p3

    :cond_1
    return v1
.end method

.method public o([FLjn/A;Ljn/L;)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "npos",
            "navquery",
            "filter"
        }
    .end annotation

    iget-object v0, p0, Lkn/o;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, p0, Lkn/o;->b:[F

    move-object v3, p2

    move-object v7, p1

    move-object v8, p3

    invoke-virtual/range {v3 .. v8}, Ljn/A;->L(J[F[FLjn/L;)Ljn/O;

    move-result-object p1

    invoke-virtual {p1}, Ljn/O;->j()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lkn/o;->c:Ljava/util/List;

    iget-object p3, p1, Ljn/O;->a:Ljava/lang/Object;

    check-cast p3, Ljn/t;

    invoke-virtual {p3}, Ljn/t;->b()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lkn/o;->j(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lkn/o;->c:Ljava/util/List;

    iget-object p2, p0, Lkn/o;->b:[F

    iget-object p1, p1, Ljn/O;->a:Ljava/lang/Object;

    check-cast p1, Ljn/t;

    invoke-virtual {p1}, Ljn/t;->a()[F

    move-result-object p1

    invoke-static {p2, p1}, Ljn/g;->w([F[F)V

    return v2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public p(Ljn/A;Ljn/L;I)Z
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "navquery",
            "filter",
            "maxIterations"
        }
    .end annotation

    move-object v0, p0

    move-object v10, p1

    iget-object v1, v0, Lkn/o;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    const/4 v11, 0x0

    if-ge v1, v2, :cond_0

    return v11

    :cond_0
    iget-object v1, v0, Lkn/o;->c:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v1, v0, Lkn/o;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v12, 0x1

    sub-int/2addr v4, v12

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, v0, Lkn/o;->a:[F

    iget-object v7, v0, Lkn/o;->b:[F

    const/4 v9, 0x0

    move-object v1, p1

    move-object v8, p2

    invoke-virtual/range {v1 .. v9}, Ljn/A;->E(JJ[F[FLjn/L;I)Ljn/Q;

    move/from16 v1, p3

    invoke-virtual {p1, v1}, Ljn/A;->Q(I)Ljn/O;

    iget-object v1, v0, Lkn/o;->c:Ljava/util/List;

    invoke-virtual {p1, v1}, Ljn/A;->g(Ljava/util/List;)Ljn/O;

    move-result-object v1

    invoke-virtual {v1}, Ljn/O;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Ljn/O;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, v0, Lkn/o;->c:Ljava/util/List;

    iget-object v1, v1, Ljn/O;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, v2, v1}, Lkn/o;->l(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lkn/o;->c:Ljava/util/List;

    return v12

    :cond_1
    return v11
.end method

.method public q([FFLjn/A;Ljn/L;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "next",
            "pathOptimizationRange",
            "navquery",
            "filter"
        }
    .end annotation

    iget-object v0, p0, Lkn/o;->a:[F

    invoke-static {v0, p1}, Ljn/g;->B([F[F)F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    return-void

    :cond_0
    add-float/2addr v0, v1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lkn/o;->a:[F

    invoke-static {p1, v1}, Ljn/g;->W([F[F)[F

    move-result-object p1

    iget-object v1, p0, Lkn/o;->a:[F

    div-float/2addr p2, v0

    invoke-static {v1, p1, p2}, Ljn/g;->O([F[FF)[F

    move-result-object v6

    iget-object p1, p0, Lkn/o;->c:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lkn/o;->a:[F

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    move-object v2, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v10}, Ljn/A;->P(J[F[FLjn/L;IJ)Ljn/O;

    move-result-object p1

    invoke-virtual {p1}, Ljn/O;->j()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p1, Ljn/O;->a:Ljava/lang/Object;

    check-cast p2, Ljn/N;

    iget-object p2, p2, Ljn/N;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x1

    if-le p2, p3, :cond_1

    iget-object p1, p1, Ljn/O;->a:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ljn/N;

    iget p2, p2, Ljn/N;->a:F

    const p3, 0x3f7d70a4    # 0.99f

    cmpl-float p2, p2, p3

    if-lez p2, :cond_1

    iget-object p2, p0, Lkn/o;->c:Ljava/util/List;

    check-cast p1, Ljn/N;

    iget-object p1, p1, Ljn/N;->c:Ljava/util/List;

    invoke-virtual {p0, p2, p1}, Lkn/o;->l(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lkn/o;->c:Ljava/util/List;

    :cond_1
    return-void
.end method

.method public r(J[F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ref",
            "pos"
        }
    .end annotation

    iget-object v0, p0, Lkn/o;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lkn/o;->c:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lkn/o;->a:[F

    invoke-static {p1, p3}, Ljn/g;->w([F[F)V

    iget-object p1, p0, Lkn/o;->b:[F

    invoke-static {p1, p3}, Ljn/g;->w([F[F)V

    return-void
.end method

.method public s([FLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "target",
            "path"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lkn/o;->b:[F

    invoke-static {v0, p1}, Ljn/g;->w([F[F)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lkn/o;->c:Ljava/util/List;

    return-void
.end method

.method public t(J[FLjn/A;Ljn/L;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "safeRef",
            "safePos",
            "navquery",
            "filter"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lkn/o;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lkn/o;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p4, v2, v3, p5}, Ljn/A;->J(JLjn/L;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    iget-object p5, p0, Lkn/o;->a:[F

    invoke-static {p5, p3}, Ljn/g;->w([F[F)V

    iget-object p3, p0, Lkn/o;->c:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->clear()V

    iget-object p3, p0, Lkn/o;->c:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lkn/o;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_2

    iget-object p1, p0, Lkn/o;->c:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lkn/o;->c:Ljava/util/List;

    :cond_2
    :goto_1
    iget-object p1, p0, Lkn/o;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iget-object p3, p0, Lkn/o;->b:[F

    invoke-virtual {p4, p1, p2, p3}, Ljn/A;->e(J[F)Ljn/O;

    move-result-object p1

    invoke-virtual {p1}, Ljn/O;->j()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lkn/o;->b:[F

    iget-object p1, p1, Ljn/O;->a:Ljava/lang/Object;

    check-cast p1, [F

    invoke-static {p2, p1}, Ljn/g;->w([F[F)V

    :cond_3
    return-void
.end method
