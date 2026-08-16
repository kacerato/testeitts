.class public Lcb/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcb/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcb/y<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lcb/n<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final i:F = 0.16666667f


# instance fields
.field public a:[Lcb/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field public b:Lcb/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcb/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public c:I

.field public d:Z

.field public e:I

.field public f:Lcb/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public g:Lcb/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public h:Lcb/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([Lcb/y;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "controlPoints",
            "degree",
            "continuous"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;IZ)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcb/d;->v([Lcb/y;IZ)Lcb/d;

    return-void
.end method

.method public static i(Lcb/y;F[Lcb/y;IZLcb/y;)Lcb/y;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "out",
            "t",
            "points",
            "degree",
            "continuous",
            "tmp"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcb/y<",
            "TT;>;>(TT;F[TT;IZTT;)TT;"
        }
    .end annotation

    array-length v0, p2

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr v0, p3

    :goto_0
    int-to-float v1, v0

    mul-float/2addr v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_1

    add-int/lit8 v0, v0, -0x1

    :goto_1
    move v3, v0

    goto :goto_2

    :cond_1
    float-to-int v0, v1

    goto :goto_1

    :goto_2
    int-to-float p1, v3

    sub-float v4, v1, p1

    move-object v2, p0

    move-object v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-static/range {v2 .. v8}, Lcb/d;->j(Lcb/y;IF[Lcb/y;IZLcb/y;)Lcb/y;

    move-result-object p0

    return-object p0
.end method

.method public static j(Lcb/y;IF[Lcb/y;IZLcb/y;)Lcb/y;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "out",
            "i",
            "u",
            "points",
            "degree",
            "continuous",
            "tmp"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcb/y<",
            "TT;>;>(TT;IF[TT;IZTT;)TT;"
        }
    .end annotation

    const/4 v0, 0x3

    if-ne p4, v0, :cond_0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcb/d;->l(Lcb/y;IF[Lcb/y;ZLcb/y;)Lcb/y;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static k(Lcb/y;F[Lcb/y;ZLcb/y;)Lcb/y;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "out",
            "t",
            "points",
            "continuous",
            "tmp"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcb/y<",
            "TT;>;>(TT;F[TT;ZTT;)TT;"
        }
    .end annotation

    array-length v0, p2

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x3

    :goto_0
    int-to-float v1, v0

    mul-float/2addr v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_1

    add-int/lit8 v0, v0, -0x1

    :goto_1
    move v3, v0

    goto :goto_2

    :cond_1
    float-to-int v0, v1

    goto :goto_1

    :goto_2
    int-to-float p1, v3

    sub-float v4, v1, p1

    move-object v2, p0

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-static/range {v2 .. v7}, Lcb/d;->l(Lcb/y;IF[Lcb/y;ZLcb/y;)Lcb/y;

    move-result-object p0

    return-object p0
.end method

.method public static l(Lcb/y;IF[Lcb/y;ZLcb/y;)Lcb/y;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "out",
            "i",
            "u",
            "points",
            "continuous",
            "tmp"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcb/y<",
            "TT;>;>(TT;IF[TT;ZTT;)TT;"
        }
    .end annotation

    array-length v0, p3

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v1, p2

    mul-float v3, p2, p2

    mul-float v4, v3, p2

    aget-object v5, p3, p1

    invoke-interface {p0, v5}, Lcb/y;->K(Lcb/y;)Lcb/y;

    move-result-object v5

    const/high16 v6, 0x40400000    # 3.0f

    mul-float v7, v4, v6

    const/high16 v8, 0x40c00000    # 6.0f

    mul-float/2addr v8, v3

    sub-float/2addr v7, v8

    const/high16 v8, 0x40800000    # 4.0f

    add-float/2addr v7, v8

    const v8, 0x3e2aaaab

    mul-float/2addr v7, v8

    invoke-interface {v5, v7}, Lcb/y;->d(F)Lcb/y;

    if-nez p4, :cond_0

    if-lez p1, :cond_1

    :cond_0
    add-int v5, v0, p1

    add-int/lit8 v5, v5, -0x1

    rem-int/2addr v5, v0

    aget-object v5, p3, v5

    invoke-interface {p5, v5}, Lcb/y;->K(Lcb/y;)Lcb/y;

    move-result-object v5

    mul-float v7, v2, v2

    mul-float/2addr v7, v2

    mul-float/2addr v7, v8

    invoke-interface {v5, v7}, Lcb/y;->d(F)Lcb/y;

    move-result-object v2

    invoke-interface {p0, v2}, Lcb/y;->m(Lcb/y;)Lcb/y;

    :cond_1
    if-nez p4, :cond_2

    add-int/lit8 v2, v0, -0x1

    if-ge p1, v2, :cond_3

    :cond_2
    add-int/lit8 v2, p1, 0x1

    rem-int/2addr v2, v0

    aget-object v2, p3, v2

    invoke-interface {p5, v2}, Lcb/y;->K(Lcb/y;)Lcb/y;

    move-result-object v2

    const/high16 v5, -0x3fc00000    # -3.0f

    mul-float/2addr v5, v4

    mul-float/2addr v3, v6

    add-float/2addr v5, v3

    mul-float/2addr p2, v6

    add-float/2addr v5, p2

    add-float/2addr v5, v1

    mul-float/2addr v5, v8

    invoke-interface {v2, v5}, Lcb/y;->d(F)Lcb/y;

    move-result-object p2

    invoke-interface {p0, p2}, Lcb/y;->m(Lcb/y;)Lcb/y;

    :cond_3
    if-nez p4, :cond_4

    add-int/lit8 p2, v0, -0x2

    if-ge p1, p2, :cond_5

    :cond_4
    add-int/lit8 p1, p1, 0x2

    rem-int/2addr p1, v0

    aget-object p1, p3, p1

    invoke-interface {p5, p1}, Lcb/y;->K(Lcb/y;)Lcb/y;

    move-result-object p1

    mul-float/2addr v4, v8

    invoke-interface {p1, v4}, Lcb/y;->d(F)Lcb/y;

    move-result-object p1

    invoke-interface {p0, p1}, Lcb/y;->m(Lcb/y;)Lcb/y;

    :cond_5
    return-object p0
.end method

.method public static m(Lcb/y;F[Lcb/y;ZLcb/y;)Lcb/y;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "out",
            "t",
            "points",
            "continuous",
            "tmp"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcb/y<",
            "TT;>;>(TT;F[TT;ZTT;)TT;"
        }
    .end annotation

    array-length v0, p2

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x3

    :goto_0
    int-to-float v1, v0

    mul-float/2addr v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_1

    add-int/lit8 v0, v0, -0x1

    :goto_1
    move v3, v0

    goto :goto_2

    :cond_1
    float-to-int v0, v1

    goto :goto_1

    :goto_2
    int-to-float p1, v3

    sub-float v4, v1, p1

    move-object v2, p0

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-static/range {v2 .. v7}, Lcb/d;->l(Lcb/y;IF[Lcb/y;ZLcb/y;)Lcb/y;

    move-result-object p0

    return-object p0
.end method

.method public static n(Lcb/y;IF[Lcb/y;ZLcb/y;)Lcb/y;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "out",
            "i",
            "u",
            "points",
            "continuous",
            "tmp"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcb/y<",
            "TT;>;>(TT;IF[TT;ZTT;)TT;"
        }
    .end annotation

    array-length v0, p3

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    mul-float v2, p2, p2

    aget-object v3, p3, p1

    invoke-interface {p0, v3}, Lcb/y;->K(Lcb/y;)Lcb/y;

    move-result-object v3

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v4, v2

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, p2

    sub-float/2addr v4, v5

    invoke-interface {v3, v4}, Lcb/y;->d(F)Lcb/y;

    if-nez p4, :cond_0

    if-lez p1, :cond_1

    :cond_0
    add-int v3, v0, p1

    add-int/lit8 v3, v3, -0x1

    rem-int/2addr v3, v0

    aget-object v3, p3, v3

    invoke-interface {p5, v3}, Lcb/y;->K(Lcb/y;)Lcb/y;

    move-result-object v3

    const/high16 v4, -0x41000000    # -0.5f

    mul-float/2addr v4, v1

    mul-float/2addr v4, v1

    invoke-interface {v3, v4}, Lcb/y;->d(F)Lcb/y;

    move-result-object v1

    invoke-interface {p0, v1}, Lcb/y;->m(Lcb/y;)Lcb/y;

    :cond_1
    const/high16 v1, 0x3f000000    # 0.5f

    if-nez p4, :cond_2

    add-int/lit8 v3, v0, -0x1

    if-ge p1, v3, :cond_3

    :cond_2
    add-int/lit8 v3, p1, 0x1

    rem-int/2addr v3, v0

    aget-object v3, p3, v3

    invoke-interface {p5, v3}, Lcb/y;->K(Lcb/y;)Lcb/y;

    move-result-object v3

    const/high16 v4, -0x40400000    # -1.5f

    mul-float/2addr v4, v2

    add-float/2addr v4, p2

    add-float/2addr v4, v1

    invoke-interface {v3, v4}, Lcb/y;->d(F)Lcb/y;

    move-result-object p2

    invoke-interface {p0, p2}, Lcb/y;->m(Lcb/y;)Lcb/y;

    :cond_3
    if-nez p4, :cond_4

    add-int/lit8 p2, v0, -0x2

    if-ge p1, p2, :cond_5

    :cond_4
    add-int/lit8 p1, p1, 0x2

    rem-int/2addr p1, v0

    aget-object p1, p3, p1

    invoke-interface {p5, p1}, Lcb/y;->K(Lcb/y;)Lcb/y;

    move-result-object p1

    mul-float/2addr v2, v1

    invoke-interface {p1, v2}, Lcb/y;->d(F)Lcb/y;

    move-result-object p1

    invoke-interface {p0, p1}, Lcb/y;->m(Lcb/y;)Lcb/y;

    :cond_5
    return-object p0
.end method

.method public static o(Lcb/y;F[Lcb/y;IZLcb/y;)Lcb/y;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "out",
            "t",
            "points",
            "degree",
            "continuous",
            "tmp"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcb/y<",
            "TT;>;>(TT;F[TT;IZTT;)TT;"
        }
    .end annotation

    array-length v0, p2

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr v0, p3

    :goto_0
    int-to-float v1, v0

    mul-float/2addr v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_1

    add-int/lit8 v0, v0, -0x1

    :goto_1
    move v3, v0

    goto :goto_2

    :cond_1
    float-to-int v0, v1

    goto :goto_1

    :goto_2
    int-to-float p1, v3

    sub-float v4, v1, p1

    move-object v2, p0

    move-object v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-static/range {v2 .. v8}, Lcb/d;->p(Lcb/y;IF[Lcb/y;IZLcb/y;)Lcb/y;

    move-result-object p0

    return-object p0
.end method

.method public static p(Lcb/y;IF[Lcb/y;IZLcb/y;)Lcb/y;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "out",
            "i",
            "u",
            "points",
            "degree",
            "continuous",
            "tmp"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcb/y<",
            "TT;>;>(TT;IF[TT;IZTT;)TT;"
        }
    .end annotation

    const/4 v0, 0x3

    if-ne p4, v0, :cond_0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcb/d;->n(Lcb/y;IF[Lcb/y;ZLcb/y;)Lcb/y;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    check-cast p1, Lcb/y;

    invoke-virtual {p0, p1}, Lcb/d;->s(Lcb/y;)F

    move-result p1

    return p1
.end method

.method public b(I)F
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "samples"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    iget-object v2, p0, Lcb/d;->g:Lcb/y;

    iget-object v3, p0, Lcb/d;->h:Lcb/y;

    invoke-interface {v2, v3}, Lcb/y;->K(Lcb/y;)Lcb/y;

    iget-object v2, p0, Lcb/d;->h:Lcb/y;

    int-to-float v3, v1

    int-to-float v4, p1

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    invoke-virtual {p0, v2, v3}, Lcb/d;->w(Lcb/y;F)Lcb/y;

    if-lez v1, :cond_0

    iget-object v2, p0, Lcb/d;->g:Lcb/y;

    iget-object v3, p0, Lcb/d;->h:Lcb/y;

    invoke-interface {v2, v3}, Lcb/y;->L(Lcb/y;)F

    move-result v2

    add-float/2addr v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public bridge synthetic c(Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "out",
            "t"
        }
    .end annotation

    check-cast p1, Lcb/y;

    invoke-virtual {p0, p1, p2}, Lcb/d;->q(Lcb/y;F)Lcb/y;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "out",
            "t"
        }
    .end annotation

    check-cast p1, Lcb/y;

    invoke-virtual {p0, p1, p2}, Lcb/d;->w(Lcb/y;F)Lcb/y;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e(Ljava/lang/Object;)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    check-cast p1, Lcb/y;

    invoke-virtual {p0, p1}, Lcb/d;->f(Lcb/y;)F

    move-result p1

    return p1
.end method

.method public f(Lcb/y;)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)F"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcb/d;->t(Lcb/y;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcb/d;->g(Lcb/y;I)F

    move-result p1

    return p1
.end method

.method public g(Lcb/y;I)F
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "in",
            "near"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)F"
        }
    .end annotation

    iget-object v0, p0, Lcb/d;->b:Lcb/b;

    invoke-virtual {v0, p2}, Lcb/b;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcb/y;

    iget-object v1, p0, Lcb/d;->b:Lcb/b;

    if-lez p2, :cond_0

    add-int/lit8 v2, p2, -0x1

    goto :goto_0

    :cond_0
    iget v2, p0, Lcb/d;->e:I

    add-int/lit8 v2, v2, -0x1

    :goto_0
    invoke-virtual {v1, v2}, Lcb/b;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcb/y;

    iget-object v2, p0, Lcb/d;->b:Lcb/b;

    add-int/lit8 v3, p2, 0x1

    iget v4, p0, Lcb/d;->e:I

    rem-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcb/b;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcb/y;

    invoke-interface {p1, v1}, Lcb/y;->q(Lcb/y;)F

    move-result v3

    invoke-interface {p1, v2}, Lcb/y;->q(Lcb/y;)F

    move-result v4

    cmpg-float v3, v4, v3

    if-gez v3, :cond_1

    goto :goto_3

    :cond_1
    if-lez p2, :cond_2

    :goto_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_2
    iget p2, p0, Lcb/d;->e:I

    goto :goto_1

    :goto_2
    move-object v2, v0

    move-object v0, v1

    :goto_3
    invoke-interface {v0, v2}, Lcb/y;->q(Lcb/y;)F

    move-result v1

    invoke-interface {p1, v2}, Lcb/y;->q(Lcb/y;)F

    move-result v2

    invoke-interface {p1, v0}, Lcb/y;->q(Lcb/y;)F

    move-result p1

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v0, v3

    add-float/2addr v2, v1

    sub-float/2addr v2, p1

    const/high16 p1, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    div-float/2addr v2, p1

    sub-float p1, v0, v2

    div-float/2addr p1, v0

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lcb/h;->i(FFF)F

    move-result p1

    int-to-float p2, p2

    add-float/2addr p2, p1

    iget p1, p0, Lcb/d;->e:I

    int-to-float p1, p1

    div-float/2addr p2, p1

    return p2
.end method

.method public h(Lcb/y;II)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10
        }
        names = {
            "in",
            "start",
            "count"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)F"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcb/d;->u(Lcb/y;II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcb/d;->g(Lcb/y;I)F

    move-result p1

    return p1
.end method

.method public q(Lcb/y;F)Lcb/y;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "out",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)TT;"
        }
    .end annotation

    iget v0, p0, Lcb/d;->e:I

    int-to-float v1, v0

    mul-float/2addr v1, p2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float p2, p2, v2

    if-ltz p2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    float-to-int v0, v1

    :goto_0
    int-to-float p2, v0

    sub-float/2addr v1, p2

    invoke-virtual {p0, p1, v0, v1}, Lcb/d;->r(Lcb/y;IF)Lcb/y;

    move-result-object p1

    return-object p1
.end method

.method public r(Lcb/y;IF)Lcb/y;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "out",
            "span",
            "u"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IF)TT;"
        }
    .end annotation

    iget-boolean v5, p0, Lcb/d;->d:Z

    if-eqz v5, :cond_0

    :goto_0
    move v1, p2

    goto :goto_1

    :cond_0
    iget v0, p0, Lcb/d;->c:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr p2, v0

    goto :goto_0

    :goto_1
    iget-object v3, p0, Lcb/d;->a:[Lcb/y;

    iget v4, p0, Lcb/d;->c:I

    iget-object v6, p0, Lcb/d;->f:Lcb/y;

    move-object v0, p1

    move v2, p3

    invoke-static/range {v0 .. v6}, Lcb/d;->p(Lcb/y;IF[Lcb/y;IZLcb/y;)Lcb/y;

    move-result-object p1

    return-object p1
.end method

.method public s(Lcb/y;)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)F"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcb/d;->f(Lcb/y;)F

    move-result p1

    return p1
.end method

.method public t(Lcb/y;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "in"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    const/4 v0, 0x0

    iget v1, p0, Lcb/d;->e:I

    invoke-virtual {p0, p1, v0, v1}, Lcb/d;->u(Lcb/y;II)I

    move-result p1

    return p1
.end method

.method public u(Lcb/y;II)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10
        }
        names = {
            "in",
            "start",
            "count"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)I"
        }
    .end annotation

    :goto_0
    if-gez p2, :cond_0

    iget v0, p0, Lcb/d;->e:I

    add-int/2addr p2, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcb/d;->e:I

    rem-int v0, p2, v0

    iget-object v1, p0, Lcb/d;->b:Lcb/b;

    invoke-virtual {v1, v0}, Lcb/b;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcb/y;

    invoke-interface {p1, v1}, Lcb/y;->q(Lcb/y;)F

    move-result v1

    const/4 v2, 0x1

    :goto_1
    if-ge v2, p3, :cond_2

    add-int v3, p2, v2

    iget v4, p0, Lcb/d;->e:I

    rem-int/2addr v3, v4

    iget-object v4, p0, Lcb/d;->b:Lcb/b;

    invoke-virtual {v4, v3}, Lcb/b;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcb/y;

    invoke-interface {p1, v4}, Lcb/y;->q(Lcb/y;)F

    move-result v4

    cmpg-float v5, v4, v1

    if-gez v5, :cond_1

    move v0, v3

    move v1, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return v0
.end method

.method public v([Lcb/y;IZ)Lcb/d;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "controlPoints",
            "degree",
            "continuous"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;IZ)",
            "Lcb/d;"
        }
    .end annotation

    iget-object v0, p0, Lcb/d;->f:Lcb/y;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    aget-object v0, p1, v1

    invoke-interface {v0}, Lcb/y;->n()Lcb/y;

    move-result-object v0

    iput-object v0, p0, Lcb/d;->f:Lcb/y;

    :cond_0
    iget-object v0, p0, Lcb/d;->g:Lcb/y;

    if-nez v0, :cond_1

    aget-object v0, p1, v1

    invoke-interface {v0}, Lcb/y;->n()Lcb/y;

    move-result-object v0

    iput-object v0, p0, Lcb/d;->g:Lcb/y;

    :cond_1
    iget-object v0, p0, Lcb/d;->h:Lcb/y;

    if-nez v0, :cond_2

    aget-object v0, p1, v1

    invoke-interface {v0}, Lcb/y;->n()Lcb/y;

    move-result-object v0

    iput-object v0, p0, Lcb/d;->h:Lcb/y;

    :cond_2
    iput-object p1, p0, Lcb/d;->a:[Lcb/y;

    iput p2, p0, Lcb/d;->c:I

    iput-boolean p3, p0, Lcb/d;->d:Z

    array-length v0, p1

    if-eqz p3, :cond_3

    goto :goto_0

    :cond_3
    sub-int/2addr v0, p2

    :goto_0
    iput v0, p0, Lcb/d;->e:I

    iget-object v2, p0, Lcb/d;->b:Lcb/b;

    if-nez v2, :cond_4

    new-instance v2, Lcb/b;

    invoke-direct {v2, v0}, Lcb/b;-><init>(I)V

    iput-object v2, p0, Lcb/d;->b:Lcb/b;

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Lcb/b;->clear()V

    iget-object v0, p0, Lcb/d;->b:Lcb/b;

    iget v2, p0, Lcb/d;->e:I

    invoke-virtual {v0, v2}, Lcb/b;->n(I)[Ljava/lang/Object;

    :goto_1
    move v0, v1

    :goto_2
    iget v2, p0, Lcb/d;->e:I

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Lcb/d;->b:Lcb/b;

    aget-object v3, p1, v1

    invoke-interface {v3}, Lcb/y;->n()Lcb/y;

    move-result-object v4

    if-eqz p3, :cond_5

    move v5, v0

    goto :goto_3

    :cond_5
    int-to-float v3, v0

    const/high16 v5, 0x3f000000    # 0.5f

    int-to-float v6, p2

    mul-float/2addr v6, v5

    add-float/2addr v3, v6

    float-to-int v3, v3

    move v5, v3

    :goto_3
    const/4 v6, 0x0

    iget-object v10, p0, Lcb/d;->f:Lcb/y;

    move-object v7, p1

    move v8, p2

    move v9, p3

    invoke-static/range {v4 .. v10}, Lcb/d;->j(Lcb/y;IF[Lcb/y;IZLcb/y;)Lcb/y;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcb/b;->c(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    return-object p0
.end method

.method public w(Lcb/y;F)Lcb/y;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)TT;"
        }
    .end annotation

    iget v0, p0, Lcb/d;->e:I

    int-to-float v1, v0

    mul-float/2addr v1, p2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float p2, p2, v2

    if-ltz p2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    float-to-int v0, v1

    :goto_0
    int-to-float p2, v0

    sub-float/2addr v1, p2

    invoke-virtual {p0, p1, v0, v1}, Lcb/d;->x(Lcb/y;IF)Lcb/y;

    move-result-object p1

    return-object p1
.end method

.method public x(Lcb/y;IF)Lcb/y;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "out",
            "span",
            "u"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IF)TT;"
        }
    .end annotation

    iget-boolean v5, p0, Lcb/d;->d:Z

    if-eqz v5, :cond_0

    :goto_0
    move v1, p2

    goto :goto_1

    :cond_0
    iget v0, p0, Lcb/d;->c:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr p2, v0

    goto :goto_0

    :goto_1
    iget-object v3, p0, Lcb/d;->a:[Lcb/y;

    iget v4, p0, Lcb/d;->c:I

    iget-object v6, p0, Lcb/d;->f:Lcb/y;

    move-object v0, p1

    move v2, p3

    invoke-static/range {v0 .. v6}, Lcb/d;->j(Lcb/y;IF[Lcb/y;IZLcb/y;)Lcb/y;

    move-result-object p1

    return-object p1
.end method
