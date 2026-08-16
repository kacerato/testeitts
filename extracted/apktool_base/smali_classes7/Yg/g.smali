.class public final synthetic LYg/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:LYg/j;

.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(LYg/j;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LYg/g;->a:LYg/j;

    iput p2, p0, LYg/g;->b:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, LYg/g;->a:LYg/j;

    iget v1, p0, LYg/g;->b:F

    invoke-static {v0, v1, p1}, LYg/j;->d(LYg/j;FLandroid/animation/ValueAnimator;)V

    return-void
.end method
