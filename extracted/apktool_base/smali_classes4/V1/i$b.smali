.class public LV1/i$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LV1/i;->n(Landroid/animation/ValueAnimator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LV1/i;


# direct methods
.method public constructor <init>(LV1/i;)V
    .locals 0

    iput-object p1, p0, LV1/i$b;->a:LV1/i;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, LV1/i$b;->a:LV1/i;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, LV1/i;->b(LV1/i;ZZ)Z

    iget-object p1, p0, LV1/i$b;->a:LV1/i;

    invoke-static {p1}, LV1/i;->c(LV1/i;)V

    return-void
.end method
