.class public final LW0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW0/p;


# instance fields
.field public final synthetic a:Landroid/widget/FrameLayout;

.field public final synthetic b:Landroid/view/LayoutInflater;

.field public final synthetic c:Landroid/view/ViewGroup;

.field public final synthetic d:Landroid/os/Bundle;

.field public final synthetic e:LW0/a;


# direct methods
.method public constructor <init>(LW0/a;Landroid/widget/FrameLayout;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, LW0/l;->e:LW0/a;

    iput-object p2, p0, LW0/l;->a:Landroid/widget/FrameLayout;

    iput-object p3, p0, LW0/l;->b:Landroid/view/LayoutInflater;

    iput-object p4, p0, LW0/l;->c:Landroid/view/ViewGroup;

    iput-object p5, p0, LW0/l;->d:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final d(LW0/e;)V
    .locals 3

    iget-object p1, p0, LW0/l;->a:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p1, p0, LW0/l;->e:LW0/a;

    invoke-static {p1}, LW0/a;->p(LW0/a;)LW0/e;

    move-result-object p1

    iget-object v0, p0, LW0/l;->b:Landroid/view/LayoutInflater;

    iget-object v1, p0, LW0/l;->c:Landroid/view/ViewGroup;

    iget-object v2, p0, LW0/l;->d:Landroid/os/Bundle;

    invoke-interface {p1, v0, v1, v2}, LW0/e;->g(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, LW0/l;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method
