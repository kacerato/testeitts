.class public LT1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuPresenter;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LT1/d$a;
    }
.end annotation


# instance fields
.field public b:Landroidx/appcompat/view/menu/MenuBuilder;

.field public c:LT1/c;

.field public d:Z

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LT1/d;->d:Z

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, LT1/d;->e:I

    return-void
.end method

.method public b(LT1/c;)V
    .locals 0
    .param p1    # LT1/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, LT1/d;->c:LT1/c;

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, LT1/d;->d:Z

    return-void
.end method

.method public collapseItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 0
    .param p1    # Landroidx/appcompat/view/menu/MenuBuilder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/appcompat/view/menu/MenuItemImpl;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public expandItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 0
    .param p1    # Landroidx/appcompat/view/menu/MenuBuilder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/appcompat/view/menu/MenuItemImpl;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public flagActionItems()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, LT1/d;->e:I

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p1, p0, LT1/d;->c:LT1/c;

    return-object p1
.end method

.method public initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/appcompat/view/menu/MenuBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p2, p0, LT1/d;->b:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object p1, p0, LT1/d;->c:LT1/c;

    invoke-virtual {p1, p2}, LT1/c;->initialize(Landroidx/appcompat/view/menu/MenuBuilder;)V

    return-void
.end method

.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1    # Landroidx/appcompat/view/menu/MenuBuilder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1    # Landroid/os/Parcelable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of v0, p1, LT1/d$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, LT1/d;->c:LT1/c;

    check-cast p1, LT1/d$a;

    iget v1, p1, LT1/d$a;->b:I

    invoke-virtual {v0, v1}, LT1/c;->o(I)V

    iget-object v0, p0, LT1/d;->c:LT1/c;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, LT1/d$a;->c:Lcom/google/android/material/internal/k;

    invoke-static {v0, p1}, Lz1/b;->e(Landroid/content/Context;Lcom/google/android/material/internal/k;)Landroid/util/SparseArray;

    move-result-object p1

    iget-object v0, p0, LT1/d;->c:LT1/c;

    invoke-virtual {v0, p1}, LT1/c;->setBadgeDrawables(Landroid/util/SparseArray;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LT1/d$a;

    invoke-direct {v0}, LT1/d$a;-><init>()V

    iget-object v1, p0, LT1/d;->c:LT1/c;

    invoke-virtual {v1}, LT1/c;->getSelectedItemId()I

    move-result v1

    iput v1, v0, LT1/d$a;->b:I

    iget-object v1, p0, LT1/d;->c:LT1/c;

    invoke-virtual {v1}, LT1/c;->getBadgeDrawables()Landroid/util/SparseArray;

    move-result-object v1

    invoke-static {v1}, Lz1/b;->f(Landroid/util/SparseArray;)Lcom/google/android/material/internal/k;

    move-result-object v1

    iput-object v1, v0, LT1/d$a;->c:Lcom/google/android/material/internal/k;

    return-object v0
.end method

.method public onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .locals 0
    .param p1    # Landroidx/appcompat/view/menu/SubMenuBuilder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1    # Landroidx/appcompat/view/menu/MenuPresenter$Callback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public updateMenuView(Z)V
    .locals 1

    iget-boolean v0, p0, LT1/d;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, LT1/d;->c:LT1/c;

    invoke-virtual {p1}, LT1/c;->c()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, LT1/d;->c:LT1/c;

    invoke-virtual {p1}, LT1/c;->p()V

    :goto_0
    return-void
.end method
