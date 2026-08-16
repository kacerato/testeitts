.class public LV1/b$d;
.super Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LV1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LV1/b;


# direct methods
.method public constructor <init>(LV1/b;)V
    .locals 0

    iput-object p1, p0, LV1/b$d;->a:LV1/b;

    invoke-direct {p0}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, LV1/b$d;->a:LV1/b;

    invoke-static {p1}, LV1/b;->f(LV1/b;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, LV1/b$d;->a:LV1/b;

    invoke-static {p1}, LV1/b;->g(LV1/b;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
