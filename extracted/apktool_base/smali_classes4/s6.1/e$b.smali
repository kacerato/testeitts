.class public Ls6/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls6/e;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ls6/e;


# direct methods
.method public constructor <init>(Ls6/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Ls6/e$b;->b:Ls6/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "motionEvent"
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Ls6/e$b;->b:Ls6/e;

    invoke-static {v1}, Ls6/e;->p1(Ls6/e;)Ls6/c;

    move-result-object v1

    invoke-virtual {v1}, Ls6/c;->f()I

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Ls6/e$b;->b:Ls6/e;

    invoke-static {v1}, Ls6/e;->p1(Ls6/e;)Ls6/c;

    move-result-object v1

    invoke-virtual {v1}, Ls6/c;->b()I

    move-result v1

    if-gtz v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    if-gtz p1, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Ls6/e$b;->b:Ls6/e;

    invoke-static {v3}, Ls6/e;->q1(Ls6/e;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Ls6/e$b;->b:Ls6/e;

    invoke-static {v3}, Ls6/e;->q1(Ls6/e;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_4
    move v3, p1

    :goto_0
    int-to-float p1, p1

    div-float/2addr p2, p1

    const/4 p1, 0x0

    cmpg-float v4, p2, p1

    if-gez v4, :cond_5

    move p2, p1

    :cond_5
    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float v4, p2, p1

    if-lez v4, :cond_6

    move p2, p1

    :cond_6
    add-int/lit8 p1, v3, -0x1

    int-to-float p1, p1

    mul-float/2addr p2, p1

    float-to-int p1, p2

    int-to-float p2, v3

    int-to-float v4, v1

    div-float/2addr p2, v4

    float-to-double v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int p2, v4

    if-gtz p2, :cond_7

    move p2, v0

    :cond_7
    mul-int v4, p2, v1

    sub-int v4, v3, v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    if-ge p1, v4, :cond_8

    move v1, v2

    goto :goto_1

    :cond_8
    sub-int/2addr v3, v4

    if-lt p1, v3, :cond_9

    sub-int/2addr v1, v0

    goto :goto_1

    :cond_9
    sub-int/2addr p1, v4

    div-int v1, p1, p2

    :goto_1
    iget-object p1, p0, Ls6/e$b;->b:Ls6/e;

    invoke-static {p1}, Ls6/e;->p1(Ls6/e;)Ls6/c;

    move-result-object p1

    invoke-virtual {p1}, Ls6/c;->f()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-static {v2, v1, p1}, LNc/b;->F(III)I

    move-result p1

    iget-object p2, p0, Ls6/e$b;->b:Ls6/e;

    invoke-static {p2}, Ls6/e;->p1(Ls6/e;)Ls6/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Ls6/c;->a(I)Ls6/b;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object p2, p0, Ls6/e$b;->b:Ls6/e;

    invoke-static {p2, p1}, Ls6/e;->r1(Ls6/e;Ls6/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    :goto_3
    return v0
.end method
