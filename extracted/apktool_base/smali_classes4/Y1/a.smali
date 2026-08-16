.class public LY1/a;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements La2/s;
.implements Landroidx/core/graphics/drawable/TintAwareDrawable;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LY1/a$b;
    }
.end annotation


# instance fields
.field public b:LY1/a$b;


# direct methods
.method public constructor <init>(LY1/a$b;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 4
    iput-object p1, p0, LY1/a;->b:LY1/a$b;

    return-void
.end method

.method public synthetic constructor <init>(LY1/a$b;LY1/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LY1/a;-><init>(LY1/a$b;)V

    return-void
.end method

.method public constructor <init>(La2/o;)V
    .locals 2

    .line 2
    new-instance v0, LY1/a$b;

    new-instance v1, La2/j;

    invoke-direct {v1, p1}, La2/j;-><init>(La2/o;)V

    invoke-direct {v0, v1}, LY1/a$b;-><init>(La2/j;)V

    invoke-direct {p0, v0}, LY1/a;-><init>(LY1/a$b;)V

    return-void
.end method


# virtual methods
.method public a()LY1/a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LY1/a$b;

    iget-object v1, p0, LY1/a;->b:LY1/a$b;

    invoke-direct {v0, v1}, LY1/a$b;-><init>(LY1/a$b;)V

    iput-object v0, p0, LY1/a;->b:LY1/a$b;

    return-object p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, LY1/a;->b:LY1/a$b;

    iget-boolean v1, v0, LY1/a$b;->b:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, LY1/a$b;->a:La2/j;

    invoke-virtual {v0, p1}, La2/j;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, LY1/a;->b:LY1/a$b;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    iget-object v0, p0, LY1/a;->b:LY1/a$b;

    iget-object v0, v0, LY1/a$b;->a:La2/j;

    invoke-virtual {v0}, La2/j;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getShapeAppearanceModel()La2/o;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LY1/a;->b:LY1/a$b;

    iget-object v0, v0, LY1/a$b;->a:La2/j;

    invoke-virtual {v0}, La2/j;->getShapeAppearanceModel()La2/o;

    move-result-object v0

    return-object v0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mutate()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, LY1/a;->a()LY1/a;

    move-result-object v0

    return-object v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object v0, p0, LY1/a;->b:LY1/a$b;

    iget-object v0, v0, LY1/a$b;->a:La2/j;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onStateChange([I)Z
    .locals 4
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    iget-object v1, p0, LY1/a;->b:LY1/a$b;

    iget-object v1, v1, LY1/a$b;->a:La2/j;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v0, v2

    :cond_0
    invoke-static {p1}, LY1/b;->e([I)Z

    move-result p1

    iget-object v1, p0, LY1/a;->b:LY1/a$b;

    iget-boolean v3, v1, LY1/a$b;->b:Z

    if-eq v3, p1, :cond_1

    iput-boolean p1, v1, LY1/a$b;->b:Z

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    return v2
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, LY1/a;->b:LY1/a$b;

    iget-object v0, v0, LY1/a$b;->a:La2/j;

    invoke-virtual {v0, p1}, La2/j;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, LY1/a;->b:LY1/a$b;

    iget-object v0, v0, LY1/a$b;->a:La2/j;

    invoke-virtual {v0, p1}, La2/j;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setShapeAppearanceModel(La2/o;)V
    .locals 1
    .param p1    # La2/o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, LY1/a;->b:LY1/a$b;

    iget-object v0, v0, LY1/a$b;->a:La2/j;

    invoke-virtual {v0, p1}, La2/j;->setShapeAppearanceModel(La2/o;)V

    return-void
.end method

.method public setTint(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget-object v0, p0, LY1/a;->b:LY1/a$b;

    iget-object v0, v0, LY1/a$b;->a:La2/j;

    invoke-virtual {v0, p1}, La2/j;->setTint(I)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, LY1/a;->b:LY1/a$b;

    iget-object v0, v0, LY1/a$b;->a:La2/j;

    invoke-virtual {v0, p1}, La2/j;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, LY1/a;->b:LY1/a$b;

    iget-object v0, v0, LY1/a$b;->a:La2/j;

    invoke-virtual {v0, p1}, La2/j;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method
