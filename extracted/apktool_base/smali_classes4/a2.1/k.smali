.class public La2/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)La2/e;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    invoke-static {}, La2/k;->b()La2/e;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, La2/f;

    invoke-direct {p0}, La2/f;-><init>()V

    return-object p0

    :cond_1
    new-instance p0, La2/n;

    invoke-direct {p0}, La2/n;-><init>()V

    return-object p0
.end method

.method public static b()La2/e;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, La2/n;

    invoke-direct {v0}, La2/n;-><init>()V

    return-object v0
.end method

.method public static c()La2/g;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, La2/g;

    invoke-direct {v0}, La2/g;-><init>()V

    return-object v0
.end method

.method public static d(Landroid/view/View;F)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of v0, p0, La2/j;

    if-eqz v0, :cond_0

    check-cast p0, La2/j;

    invoke-virtual {p0, p1}, La2/j;->m0(F)V

    :cond_0
    return-void
.end method

.method public static e(Landroid/view/View;)V
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, La2/j;

    if-eqz v1, :cond_0

    check-cast v0, La2/j;

    invoke-static {p0, v0}, La2/k;->f(Landroid/view/View;La2/j;)V

    :cond_0
    return-void
.end method

.method public static f(Landroid/view/View;La2/j;)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # La2/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, La2/j;->a0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/material/internal/A;->i(Landroid/view/View;)F

    move-result p0

    invoke-virtual {p1, p0}, La2/j;->r0(F)V

    :cond_0
    return-void
.end method
