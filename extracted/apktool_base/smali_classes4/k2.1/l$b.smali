.class public Lk2/l$b;
.super Lk2/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk2/l;->createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lk2/l$h;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:Lk2/l;


# direct methods
.method public constructor <init>(Lk2/l;Landroid/view/View;Lk2/l$h;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lk2/l$b;->e:Lk2/l;

    iput-object p2, p0, Lk2/l$b;->a:Landroid/view/View;

    iput-object p3, p0, Lk2/l$b;->b:Lk2/l$h;

    iput-object p4, p0, Lk2/l$b;->c:Landroid/view/View;

    iput-object p5, p0, Lk2/l$b;->d:Landroid/view/View;

    invoke-direct {p0}, Lk2/t;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 1
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lk2/l$b;->e:Lk2/l;

    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    iget-object p1, p0, Lk2/l$b;->e:Lk2/l;

    invoke-static {p1}, Lk2/l;->a(Lk2/l;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lk2/l$b;->c:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lk2/l$b;->d:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lk2/l$b;->a:Landroid/view/View;

    invoke-static {p1}, Lcom/google/android/material/internal/A;->h(Landroid/view/View;)Lcom/google/android/material/internal/z;

    move-result-object p1

    iget-object v0, p0, Lk2/l$b;->b:Lk2/l$h;

    invoke-interface {p1, v0}, Lcom/google/android/material/internal/z;->remove(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onTransitionStart(Landroidx/transition/Transition;)V
    .locals 1
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lk2/l$b;->a:Landroid/view/View;

    invoke-static {p1}, Lcom/google/android/material/internal/A;->h(Landroid/view/View;)Lcom/google/android/material/internal/z;

    move-result-object p1

    iget-object v0, p0, Lk2/l$b;->b:Lk2/l$h;

    invoke-interface {p1, v0}, Lcom/google/android/material/internal/z;->add(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lk2/l$b;->c:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lk2/l$b;->d:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
