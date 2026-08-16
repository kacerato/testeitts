.class public interface abstract LG1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG1/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LG1/g$d;,
        LG1/g$b;,
        LG1/g$c;,
        LG1/g$e;
    }
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract d()V
.end method

.method public abstract draw(Landroid/graphics/Canvas;)V
.end method

.method public abstract getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getCircularRevealScrimColor()I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end method

.method public abstract getRevealInfo()LG1/g$e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract isOpaque()Z
.end method

.method public abstract setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setCircularRevealScrimColor(I)V
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
.end method

.method public abstract setRevealInfo(LG1/g$e;)V
    .param p1    # LG1/g$e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
