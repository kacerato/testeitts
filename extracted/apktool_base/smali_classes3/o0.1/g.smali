.class public Lo0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:F

.field public k:F

.field public l:I

.field public m:I

.field public n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public o:I

.field public p:I

.field public q:Z

.field public r:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lo0/g;->a:I

    iput v0, p0, Lo0/g;->b:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lo0/g;->c:I

    iput v0, p0, Lo0/g;->d:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo0/g;->n:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lo0/g;->g:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lo0/g;->o:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lo0/g;->h:I

    return v0
.end method

.method public d()I
    .locals 2

    iget v0, p0, Lo0/g;->h:I

    iget v1, p0, Lo0/g;->i:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lo0/g;->e:I

    return v0
.end method

.method public f()F
    .locals 1

    iget v0, p0, Lo0/g;->j:F

    return v0
.end method

.method public g()F
    .locals 1

    iget v0, p0, Lo0/g;->k:F

    return v0
.end method

.method public h(Landroid/view/View;IIII)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "leftDecoration",
            "topDecoration",
            "rightDecoration",
            "bottomDecoration"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lo0/f;

    iget v1, p0, Lo0/g;->a:I

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-interface {v0}, Lo0/f;->k0()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lo0/g;->a:I

    iget p2, p0, Lo0/g;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-interface {v0}, Lo0/f;->u()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, p3

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lo0/g;->b:I

    iget p2, p0, Lo0/g;->c:I

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p3

    invoke-interface {v0}, Lo0/f;->o0()I

    move-result v1

    add-int/2addr p3, v1

    add-int/2addr p3, p4

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lo0/g;->c:I

    iget p2, p0, Lo0/g;->d:I

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-interface {v0}, Lo0/f;->z()I

    move-result p3

    add-int/2addr p1, p3

    add-int/2addr p1, p5

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lo0/g;->d:I

    return-void
.end method
