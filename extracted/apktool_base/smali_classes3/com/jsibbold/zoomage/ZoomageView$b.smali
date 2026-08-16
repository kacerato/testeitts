.class public Lcom/jsibbold/zoomage/ZoomageView$b;
.super Lcom/jsibbold/zoomage/ZoomageView$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jsibbold/zoomage/ZoomageView;->f(Landroid/graphics/Matrix;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/graphics/Matrix;

.field public final synthetic c:Lcom/jsibbold/zoomage/ZoomageView;


# direct methods
.method public constructor <init>(Lcom/jsibbold/zoomage/ZoomageView;Landroid/graphics/Matrix;)V
    .locals 0

    iput-object p1, p0, Lcom/jsibbold/zoomage/ZoomageView$b;->c:Lcom/jsibbold/zoomage/ZoomageView;

    iput-object p2, p0, Lcom/jsibbold/zoomage/ZoomageView$b;->b:Landroid/graphics/Matrix;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/jsibbold/zoomage/ZoomageView$e;-><init>(Lcom/jsibbold/zoomage/ZoomageView;Lcom/jsibbold/zoomage/ZoomageView$a;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/jsibbold/zoomage/ZoomageView$b;->c:Lcom/jsibbold/zoomage/ZoomageView;

    iget-object v0, p0, Lcom/jsibbold/zoomage/ZoomageView$b;->b:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method
