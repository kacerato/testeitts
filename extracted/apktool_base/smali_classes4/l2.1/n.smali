.class public final Ll2/n;
.super Ll2/r;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ll2/r<",
        "Ll2/s;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:F = 0.85f


# instance fields
.field public final e:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    invoke-static {p1}, Ll2/n;->m(Z)Ll2/s;

    move-result-object v0

    invoke-static {}, Ll2/n;->n()Ll2/w;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ll2/r;-><init>(Ll2/w;Ll2/w;)V

    iput-boolean p1, p0, Ll2/n;->e:Z

    return-void
.end method

.method public static m(Z)Ll2/s;
    .locals 1

    new-instance v0, Ll2/s;

    invoke-direct {v0, p0}, Ll2/s;-><init>(Z)V

    const p0, 0x3f59999a    # 0.85f

    invoke-virtual {v0, p0}, Ll2/s;->m(F)V

    invoke-virtual {v0, p0}, Ll2/s;->l(F)V

    return-object v0
.end method

.method public static n()Ll2/w;
    .locals 1

    new-instance v0, Ll2/d;

    invoke-direct {v0}, Ll2/d;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Ll2/w;)V
    .locals 0
    .param p1    # Ll2/w;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Ll2/r;->a(Ll2/w;)V

    return-void
.end method

.method public bridge synthetic c()V
    .locals 0

    invoke-super {p0}, Ll2/r;->c()V

    return-void
.end method

.method public bridge synthetic i()Ll2/w;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-super {p0}, Ll2/r;->i()Ll2/w;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic k(Ll2/w;)Z
    .locals 0
    .param p1    # Ll2/w;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Ll2/r;->k(Ll2/w;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic l(Ll2/w;)V
    .locals 0
    .param p1    # Ll2/w;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Ll2/r;->l(Ll2/w;)V

    return-void
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Ll2/n;->e:Z

    return v0
.end method

.method public bridge synthetic onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Ll2/r;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Ll2/r;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method
