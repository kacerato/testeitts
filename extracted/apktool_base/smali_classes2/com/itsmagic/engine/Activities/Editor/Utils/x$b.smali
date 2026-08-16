.class public Lcom/itsmagic/engine/Activities/Editor/Utils/x$b;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Utils/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Utils/x;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Utils/x;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x$b;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/x;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Utils/x;Lcom/itsmagic/engine/Activities/Editor/Utils/x$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/x$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/x;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "detector"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x$b;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/x;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->c(Lcom/itsmagic/engine/Activities/Editor/Utils/x;F)F

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x$b;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/x;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->d(Lcom/itsmagic/engine/Activities/Editor/Utils/x;)F

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x$b;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/x;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->a(Lcom/itsmagic/engine/Activities/Editor/Utils/x;)F

    move-result v1

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x$b;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/x;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->e(Lcom/itsmagic/engine/Activities/Editor/Utils/x;)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->b(Lcom/itsmagic/engine/Activities/Editor/Utils/x;F)F

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x$b;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/x;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->g(Lcom/itsmagic/engine/Activities/Editor/Utils/x;)F

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x$b;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/x;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->g(Lcom/itsmagic/engine/Activities/Editor/Utils/x;)F

    move-result v1

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x$b;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/x;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->a(Lcom/itsmagic/engine/Activities/Editor/Utils/x;)F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->f(Lcom/itsmagic/engine/Activities/Editor/Utils/x;F)F

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x$b;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/x;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->i(Lcom/itsmagic/engine/Activities/Editor/Utils/x;)F

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x$b;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/x;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->i(Lcom/itsmagic/engine/Activities/Editor/Utils/x;)F

    move-result v1

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x$b;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/x;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->a(Lcom/itsmagic/engine/Activities/Editor/Utils/x;)F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/x;->h(Lcom/itsmagic/engine/Activities/Editor/Utils/x;F)F

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/x$b;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/x;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    const/4 p1, 0x1

    return p1
.end method
