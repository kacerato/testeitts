.class public Lcom/google/android/material/datepicker/k$g;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/k;->p(Landroid/view/View;Lcom/google/android/material/datepicker/r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/material/datepicker/r;

.field public final synthetic b:Lcom/google/android/material/button/MaterialButton;

.field public final synthetic c:Lcom/google/android/material/datepicker/k;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/k;Lcom/google/android/material/datepicker/r;Lcom/google/android/material/button/MaterialButton;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/datepicker/k$g;->c:Lcom/google/android/material/datepicker/k;

    iput-object p2, p0, Lcom/google/android/material/datepicker/k$g;->a:Lcom/google/android/material/datepicker/r;

    iput-object p3, p0, Lcom/google/android/material/datepicker/k$g;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/google/android/material/datepicker/k$g;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-gez p2, :cond_0

    iget-object p1, p0, Lcom/google/android/material/datepicker/k$g;->c:Lcom/google/android/material/datepicker/k;

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/k;->v()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/datepicker/k$g;->c:Lcom/google/android/material/datepicker/k;

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/k;->v()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    :goto_0
    iget-object p2, p0, Lcom/google/android/material/datepicker/k$g;->c:Lcom/google/android/material/datepicker/k;

    iget-object p3, p0, Lcom/google/android/material/datepicker/k$g;->a:Lcom/google/android/material/datepicker/r;

    invoke-virtual {p3, p1}, Lcom/google/android/material/datepicker/r;->h(I)Lcom/google/android/material/datepicker/p;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/google/android/material/datepicker/k;->o(Lcom/google/android/material/datepicker/k;Lcom/google/android/material/datepicker/p;)Lcom/google/android/material/datepicker/p;

    iget-object p2, p0, Lcom/google/android/material/datepicker/k$g;->b:Lcom/google/android/material/button/MaterialButton;

    iget-object p3, p0, Lcom/google/android/material/datepicker/k$g;->a:Lcom/google/android/material/datepicker/r;

    invoke-virtual {p3, p1}, Lcom/google/android/material/datepicker/r;->i(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
