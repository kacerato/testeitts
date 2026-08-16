.class public LZ5/f$n;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LZ5/f;->c2(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LZ5/f;


# direct methods
.method public constructor <init>(LZ5/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LZ5/f$n;->a:LZ5/f;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "recyclerView",
            "dx",
            "dy"
        }
    .end annotation

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    instance-of p3, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p3, v0

    move p1, v1

    :goto_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p2

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p3, p1

    if-lt p3, p2, :cond_2

    move p1, v1

    goto :goto_1

    :cond_2
    move p1, v0

    :goto_1
    if-lez p2, :cond_3

    if-eqz p1, :cond_3

    iget-object p1, p0, LZ5/f$n;->a:LZ5/f;

    invoke-static {p1}, LZ5/f;->s1(LZ5/f;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, LZ5/f$n;->a:LZ5/f;

    invoke-static {p1, v1}, LZ5/f;->t1(LZ5/f;Z)Z

    iget-object p1, p0, LZ5/f$n;->a:LZ5/f;

    invoke-static {p1}, LZ5/f;->u1(LZ5/f;)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, LZ5/f$n;->a:LZ5/f;

    invoke-static {p1, v0}, LZ5/f;->t1(LZ5/f;Z)Z

    :cond_4
    :goto_2
    return-void
.end method
