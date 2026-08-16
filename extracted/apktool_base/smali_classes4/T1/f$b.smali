.class public LT1/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LT1/f;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LT1/f;


# direct methods
.method public constructor <init>(LT1/f;)V
    .locals 0

    iput-object p1, p0, LT1/f$b;->b:LT1/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    iget-object v0, p0, LT1/f$b;->b:LT1/f;

    invoke-static {v0}, LT1/f;->b(LT1/f;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, LT1/f$b;->b:LT1/f;

    invoke-static {v0}, LT1/f;->b(LT1/f;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, LT1/f$b;->b:LT1/f;

    invoke-static {v3}, LT1/f;->c(LT1/f;)Lcom/google/android/material/internal/i;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/material/internal/i;->p(Z)V

    iget-object v3, p0, LT1/f$b;->b:LT1/f;

    invoke-virtual {v3, v0}, Lcom/google/android/material/internal/n;->setDrawTopInsetForeground(Z)V

    iget-object v0, p0, LT1/f$b;->b:LT1/f;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/internal/b;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    const v3, 0x1020002

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, LT1/f$b;->b:LT1/f;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    if-ne v3, v4, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getNavigationBarColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iget-object v4, p0, LT1/f$b;->b:LT1/f;

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Lcom/google/android/material/internal/n;->setDrawBottomInsetForeground(Z)V

    :cond_4
    return-void
.end method
