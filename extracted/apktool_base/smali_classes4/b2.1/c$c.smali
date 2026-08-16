.class public Lb2/c$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb2/c;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb2/c;


# direct methods
.method public constructor <init>(Lb2/c;)V
    .locals 0

    iput-object p1, p0, Lb2/c$c;->a:Lb2/c;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lb2/c$c;->a:Lb2/c;

    invoke-static {p1}, Lb2/c;->b(Lb2/c;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li2/a;

    iget-object v1, p0, Lb2/c$c;->a:Lb2/c;

    invoke-static {v1}, Lcom/google/android/material/internal/A;->g(Landroid/view/View;)Lcom/google/android/material/internal/z;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/material/internal/z;->remove(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    return-void
.end method
