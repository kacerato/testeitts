.class public final Ll2/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll2/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll2/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FFFFFFF)Ll2/h;
    .locals 6

    const/4 v5, 0x1

    move v0, p4

    move v1, p6

    move v2, p2

    move v3, p3

    move v4, p1

    invoke-static/range {v0 .. v5}, Ll2/v;->m(FFFFFZ)F

    move-result v0

    div-float p2, v0, p4

    div-float p3, v0, p6

    mul-float/2addr p5, p2

    mul-float/2addr p7, p3

    new-instance v1, Ll2/h;

    move-object p1, v1

    move p4, v0

    move p6, v0

    invoke-direct/range {p1 .. p7}, Ll2/h;-><init>(FFFFFF)V

    return-object v1
.end method

.method public b(Landroid/graphics/RectF;FLl2/h;)V
    .locals 1

    iget v0, p3, Ll2/h;->f:F

    iget p3, p3, Ll2/h;->d:F

    sub-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p3

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr p3, p2

    sub-float/2addr v0, p3

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public c(Ll2/h;)Z
    .locals 1

    iget v0, p1, Ll2/h;->d:F

    iget p1, p1, Ll2/h;->f:F

    cmpl-float p1, v0, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
