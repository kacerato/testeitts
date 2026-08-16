.class public Lkn/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkn/m$b;
    }
.end annotation


# static fields
.field public static final d:I = 0x8


# instance fields
.field public a:[F

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkn/m$b;",
            ">;"
        }
    .end annotation
.end field

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
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lkn/m;->a:[F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lkn/m;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lkn/m;->c:Ljava/util/List;

    iget-object v0, p0, Lkn/m;->a:[F

    const/4 v1, 0x2

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    const/4 v1, 0x0

    aput v2, v0, v1

    return-void
.end method


# virtual methods
.method public a(F[F)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dist",
            "s"
        }
    .end annotation

    new-instance v0, Lkn/m$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkn/m$b;-><init>(Lkn/m$a;)V

    iget-object v1, v0, Lkn/m$b;->a:[F

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {p2, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p1, v0, Lkn/m$b;->b:F

    iget-object p2, p0, Lkn/m;->b:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/16 v1, 0x8

    if-eqz p2, :cond_0

    iget-object p1, p0, Lkn/m;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    iget-object p2, p0, Lkn/m;->b:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkn/m$b;

    iget p2, p2, Lkn/m$b;->b:F

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_2

    iget-object p1, p0, Lkn/m;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p1, v1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lkn/m;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    :goto_0
    iget-object p2, p0, Lkn/m;->b:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v3, p2, :cond_4

    iget-object p2, p0, Lkn/m;->b:Ljava/util/List;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkn/m$b;

    iget p2, p2, Lkn/m$b;->b:F

    cmpg-float p2, p1, p2

    if-gtz p2, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    iget-object p1, p0, Lkn/m;->b:Ljava/util/List;

    invoke-interface {p1, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_2
    iget-object p1, p0, Lkn/m;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v1, :cond_5

    iget-object p1, p0, Lkn/m;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    return-void
.end method

.method public b()[F
    .locals 1

    iget-object v0, p0, Lkn/m;->a:[F

    return-object v0
.end method

.method public c(I)[F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "j"
        }
    .end annotation

    iget-object v0, p0, Lkn/m;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkn/m$b;

    iget-object p1, p1, Lkn/m$b;->a:[F

    return-object p1
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lkn/m;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public e(Ljn/A;Ljn/L;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "navquery",
            "filter"
        }
    .end annotation

    iget-object v0, p0, Lkn/m;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lkn/m;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3, p2}, Ljn/A;->J(JLjn/L;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public f()V
    .locals 3

    iget-object v0, p0, Lkn/m;->a:[F

    const/4 v1, 0x2

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    const/4 v1, 0x0

    aput v2, v0, v1

    iget-object v0, p0, Lkn/m;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lkn/m;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public g(J[FFLjn/A;Ljn/L;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ref",
            "pos",
            "collisionQueryRange",
            "navquery",
            "filter"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lkn/m;->f()V

    return-void

    :cond_0
    iget-object v0, p0, Lkn/m;->a:[F

    invoke-static {v0, p3}, Ljn/g;->w([F[F)V

    move-object v0, p5

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Ljn/A;->i(J[FFLjn/L;)Ljn/O;

    move-result-object p1

    invoke-virtual {p1}, Ljn/O;->j()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p1, p1, Ljn/O;->a:Ljava/lang/Object;

    check-cast p1, Ljn/i;

    invoke-virtual {p1}, Ljn/i;->b()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lkn/m;->c:Ljava/util/List;

    iget-object p1, p0, Lkn/m;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    iget-object v0, p0, Lkn/m;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_3

    iget-object v0, p0, Lkn/m;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p5, v0, v1, p1, p6}, Ljn/A;->B(JZLjn/L;)Ljn/O;

    move-result-object v0

    invoke-virtual {v0}, Ljn/O;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, v0, Ljn/O;->a:Ljava/lang/Object;

    check-cast v0, Ljn/n;

    move v1, p1

    :goto_1
    invoke-virtual {v0}, Ljn/n;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {v0}, Ljn/n;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    const/4 v3, 0x3

    invoke-static {p3, v2, p1, v3}, Ljn/g;->e([F[FII)Ljn/U;

    move-result-object v3

    iget-object v4, v3, Ljn/U;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {p4}, Ljn/g;->s(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    goto :goto_2

    :cond_1
    iget-object v3, v3, Ljn/U;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {p0, v3, v2}, Lkn/m;->a(F[F)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
