.class public abstract LW0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LC0/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "LW0/e;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:LW0/e;

.field public b:Landroid/os/Bundle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public c:Ljava/util/LinkedList;

.field public final d:LW0/g;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation build LC0/a;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LW0/i;

    invoke-direct {v0, p0}, LW0/i;-><init>(LW0/a;)V

    iput-object v0, p0, LW0/a;->d:LW0/g;

    return-void
.end method

.method public static o(Landroid/widget/FrameLayout;)V
    .locals 8
    .param p0    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    invoke-static {}, LB0/h;->x()LB0/h;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, LB0/h;->j(Landroid/content/Context;)I

    move-result v2

    invoke-static {v1, v2}, LG0/T;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2}, LG0/T;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, v2, p0}, LB0/h;->e(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v2, 0x1020019

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v2, LW0/m;

    invoke-direct {v2, v1, p0}, LW0/m;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic p(LW0/a;)LW0/e;
    .locals 0

    iget-object p0, p0, LW0/a;->a:LW0/e;

    return-object p0
.end method

.method public static bridge synthetic q(LW0/a;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, LW0/a;->c:Ljava/util/LinkedList;

    return-object p0
.end method

.method public static bridge synthetic r(LW0/a;LW0/e;)V
    .locals 0

    iput-object p1, p0, LW0/a;->a:LW0/e;

    return-void
.end method

.method public static bridge synthetic s(LW0/a;Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, LW0/a;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public abstract a(LW0/g;)V
    .param p1    # LW0/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LW0/g<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public b()LW0/e;
    .locals 1
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, LW0/a;->a:LW0/e;

    return-object v0
.end method

.method public c(Landroid/widget/FrameLayout;)V
    .locals 0
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    invoke-static {p1}, LW0/a;->o(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    new-instance v0, LW0/k;

    invoke-direct {v0, p0, p1}, LW0/k;-><init>(LW0/a;Landroid/os/Bundle;)V

    invoke-virtual {p0, p1, v0}, LW0/a;->u(Landroid/os/Bundle;LW0/p;)V

    return-void
.end method

.method public e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    new-instance v6, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v7, LW0/l;

    move-object v0, v7

    move-object v1, p0

    move-object v2, v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, LW0/l;-><init>(LW0/a;Landroid/widget/FrameLayout;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    invoke-virtual {p0, p3, v7}, LW0/a;->u(Landroid/os/Bundle;LW0/p;)V

    iget-object p1, p0, LW0/a;->a:LW0/e;

    if-nez p1, :cond_0

    invoke-virtual {p0, v6}, LW0/a;->c(Landroid/widget/FrameLayout;)V

    :cond_0
    return-object v6
.end method

.method public f()V
    .locals 1
    .annotation build LC0/a;
    .end annotation

    iget-object v0, p0, LW0/a;->a:LW0/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LW0/e;->b()V

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LW0/a;->t(I)V

    return-void
.end method

.method public g()V
    .locals 1
    .annotation build LC0/a;
    .end annotation

    iget-object v0, p0, LW0/a;->a:LW0/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LW0/e;->d()V

    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, LW0/a;->t(I)V

    return-void
.end method

.method public h(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    new-instance v0, LW0/j;

    invoke-direct {v0, p0, p1, p2, p3}, LW0/j;-><init>(LW0/a;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-virtual {p0, p3, v0}, LW0/a;->u(Landroid/os/Bundle;LW0/p;)V

    return-void
.end method

.method public i()V
    .locals 1
    .annotation build LC0/a;
    .end annotation

    iget-object v0, p0, LW0/a;->a:LW0/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LW0/e;->onLowMemory()V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 1
    .annotation build LC0/a;
    .end annotation

    iget-object v0, p0, LW0/a;->a:LW0/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LW0/e;->a()V

    return-void

    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, LW0/a;->t(I)V

    return-void
.end method

.method public k()V
    .locals 2
    .annotation build LC0/a;
    .end annotation

    new-instance v0, LW0/o;

    invoke-direct {v0, p0}, LW0/o;-><init>(LW0/a;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, LW0/a;->u(Landroid/os/Bundle;LW0/p;)V

    return-void
.end method

.method public l(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    iget-object v0, p0, LW0/a;->a:LW0/e;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, LW0/e;->h(Landroid/os/Bundle;)V

    return-void

    :cond_0
    iget-object v0, p0, LW0/a;->b:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public m()V
    .locals 2
    .annotation build LC0/a;
    .end annotation

    new-instance v0, LW0/n;

    invoke-direct {v0, p0}, LW0/n;-><init>(LW0/a;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, LW0/a;->u(Landroid/os/Bundle;LW0/p;)V

    return-void
.end method

.method public n()V
    .locals 1
    .annotation build LC0/a;
    .end annotation

    iget-object v0, p0, LW0/a;->a:LW0/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LW0/e;->c()V

    return-void

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, LW0/a;->t(I)V

    return-void
.end method

.method public final t(I)V
    .locals 1

    :goto_0
    iget-object v0, p0, LW0/a;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LW0/a;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LW0/p;

    invoke-interface {v0}, LW0/p;->c()I

    move-result v0

    if-lt v0, p1, :cond_0

    iget-object v0, p0, LW0/a;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final u(Landroid/os/Bundle;LW0/p;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, LW0/a;->a:LW0/e;

    if-eqz v0, :cond_0

    invoke-interface {p2, v0}, LW0/p;->d(LW0/e;)V

    return-void

    :cond_0
    iget-object v0, p0, LW0/a;->c:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, LW0/a;->c:Ljava/util/LinkedList;

    :cond_1
    iget-object v0, p0, LW0/a;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_3

    iget-object p2, p0, LW0/a;->b:Landroid/os/Bundle;

    if-nez p2, :cond_2

    invoke-virtual {p1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    iput-object p1, p0, LW0/a;->b:Landroid/os/Bundle;

    goto :goto_0

    :cond_2
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_3
    :goto_0
    iget-object p1, p0, LW0/a;->d:LW0/g;

    invoke-virtual {p0, p1}, LW0/a;->a(LW0/g;)V

    return-void
.end method
