.class public final synthetic LYg/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:LYg/j;


# direct methods
.method public synthetic constructor <init>(LYg/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LYg/h;->a:LYg/j;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, LYg/h;->a:LYg/j;

    invoke-static {v0, p1}, LYg/j;->b(LYg/j;Landroid/animation/ValueAnimator;)V

    return-void
.end method
