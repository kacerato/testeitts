.class public Lcom/jsibbold/zoomage/ZoomageView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jsibbold/zoomage/ZoomageView;->f(Landroid/graphics/Matrix;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final a:Landroid/graphics/Matrix;

.field public final b:[F

.field public final synthetic c:Landroid/graphics/Matrix;

.field public final synthetic d:F

.field public final synthetic e:F

.field public final synthetic f:F

.field public final synthetic g:F

.field public final synthetic h:Lcom/jsibbold/zoomage/ZoomageView;


# direct methods
.method public constructor <init>(Lcom/jsibbold/zoomage/ZoomageView;Landroid/graphics/Matrix;FFFF)V
    .locals 0

    iput-object p1, p0, Lcom/jsibbold/zoomage/ZoomageView$a;->h:Lcom/jsibbold/zoomage/ZoomageView;

    iput-object p2, p0, Lcom/jsibbold/zoomage/ZoomageView$a;->c:Landroid/graphics/Matrix;

    iput p3, p0, Lcom/jsibbold/zoomage/ZoomageView$a;->d:F

    iput p4, p0, Lcom/jsibbold/zoomage/ZoomageView$a;->e:F

    iput p5, p0, Lcom/jsibbold/zoomage/ZoomageView$a;->f:F

    iput p6, p0, Lcom/jsibbold/zoomage/ZoomageView$a;->g:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object p2, p0, Lcom/jsibbold/zoomage/ZoomageView$a;->a:Landroid/graphics/Matrix;

    const/16 p1, 0x9

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/jsibbold/zoomage/ZoomageView$a;->b:[F

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView$a;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/jsibbold/zoomage/ZoomageView$a;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView$a;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/jsibbold/zoomage/ZoomageView$a;->b:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView$a;->b:[F

    const/4 v1, 0x2

    aget v2, v0, v1

    iget v3, p0, Lcom/jsibbold/zoomage/ZoomageView$a;->d:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x5

    aget v2, v0, v1

    iget v3, p0, Lcom/jsibbold/zoomage/ZoomageView$a;->e:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x0

    aget v2, v0, v1

    iget v3, p0, Lcom/jsibbold/zoomage/ZoomageView$a;->f:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x4

    aget v2, v0, v1

    iget v3, p0, Lcom/jsibbold/zoomage/ZoomageView$a;->g:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    aput v2, v0, v1

    iget-object p1, p0, Lcom/jsibbold/zoomage/ZoomageView$a;->a:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->setValues([F)V

    iget-object p1, p0, Lcom/jsibbold/zoomage/ZoomageView$a;->h:Lcom/jsibbold/zoomage/ZoomageView;

    iget-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView$a;->a:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method
