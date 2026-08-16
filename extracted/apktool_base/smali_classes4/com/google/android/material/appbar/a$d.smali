.class public Lcom/google/android/material/appbar/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/appbar/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/material/appbar/a;


# direct methods
.method public constructor <init>(Lcom/google/android/material/appbar/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/appbar/a$d;->a:Lcom/google/android/material/appbar/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 8

    iget-object p1, p0, Lcom/google/android/material/appbar/a$d;->a:Lcom/google/android/material/appbar/a;

    iput p2, p1, Lcom/google/android/material/appbar/a;->x:I

    iget-object p1, p1, Lcom/google/android/material/appbar/a;->z:Landroidx/core/view/WindowInsetsCompat;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/material/appbar/a$d;->a:Lcom/google/android/material/appbar/a;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_3

    iget-object v3, p0, Lcom/google/android/material/appbar/a$d;->a:Lcom/google/android/material/appbar/a;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/appbar/a$c;

    invoke-static {v3}, Lcom/google/android/material/appbar/a;->j(Landroid/view/View;)Ly1/d;

    move-result-object v5

    iget v6, v4, Lcom/google/android/material/appbar/a$c;->a:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    const/4 v3, 0x2

    if-eq v6, v3, :cond_1

    goto :goto_2

    :cond_1
    neg-int v3, p2

    int-to-float v3, v3

    iget v4, v4, Lcom/google/android/material/appbar/a$c;->b:F

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v5, v3}, Ly1/d;->k(I)Z

    goto :goto_2

    :cond_2
    neg-int v4, p2

    iget-object v6, p0, Lcom/google/android/material/appbar/a$d;->a:Lcom/google/android/material/appbar/a;

    invoke-virtual {v6, v3}, Lcom/google/android/material/appbar/a;->h(Landroid/view/View;)I

    move-result v3

    invoke-static {v4, v0, v3}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v3

    invoke-virtual {v5, v3}, Ly1/d;->k(I)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/material/appbar/a$d;->a:Lcom/google/android/material/appbar/a;

    invoke-virtual {v0}, Lcom/google/android/material/appbar/a;->z()V

    iget-object v0, p0, Lcom/google/android/material/appbar/a$d;->a:Lcom/google/android/material/appbar/a;

    iget-object v1, v0, Lcom/google/android/material/appbar/a;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    if-lez p1, :cond_4

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/material/appbar/a$d;->a:Lcom/google/android/material/appbar/a;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/appbar/a$d;->a:Lcom/google/android/material/appbar/a;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    sub-int v1, v0, v1

    sub-int/2addr v1, p1

    iget-object p1, p0, Lcom/google/android/material/appbar/a$d;->a:Lcom/google/android/material/appbar/a;

    invoke-virtual {p1}, Lcom/google/android/material/appbar/a;->getScrimVisibleHeightTrigger()I

    move-result p1

    sub-int/2addr v0, p1

    iget-object p1, p0, Lcom/google/android/material/appbar/a$d;->a:Lcom/google/android/material/appbar/a;

    iget-object p1, p1, Lcom/google/android/material/appbar/a;->l:Lcom/google/android/material/internal/a;

    int-to-float v0, v0

    int-to-float v2, v1

    div-float/2addr v0, v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/a;->w0(F)V

    iget-object p1, p0, Lcom/google/android/material/appbar/a$d;->a:Lcom/google/android/material/appbar/a;

    iget-object v0, p1, Lcom/google/android/material/appbar/a;->l:Lcom/google/android/material/internal/a;

    iget p1, p1, Lcom/google/android/material/appbar/a;->x:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/a;->k0(I)V

    iget-object p1, p0, Lcom/google/android/material/appbar/a$d;->a:Lcom/google/android/material/appbar/a;

    iget-object p1, p1, Lcom/google/android/material/appbar/a;->l:Lcom/google/android/material/internal/a;

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v2

    invoke-virtual {p1, p2}, Lcom/google/android/material/internal/a;->u0(F)V

    return-void
.end method
