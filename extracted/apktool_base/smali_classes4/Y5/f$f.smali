.class public LY5/f$f;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LY5/f;->L1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LY5/f;


# direct methods
.method public constructor <init>(LY5/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LY5/f$f;->a:LY5/f;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1
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

    iget-object p1, p0, LY5/f$f;->a:LY5/f;

    invoke-static {p1}, LY5/f;->v1(LY5/f;)LY5/b;

    move-result-object p1

    invoke-virtual {p1}, LH7/d;->getItemCount()I

    move-result p1

    iget-object p2, p0, LY5/f$f;->a:LY5/f;

    invoke-static {p2}, LY5/f;->w1(LY5/f;)Lo7/a;

    move-result-object p2

    invoke-virtual {p2}, Lo7/a;->a()I

    move-result p2

    iget-object p3, p0, LY5/f$f;->a:LY5/f;

    invoke-static {p3}, LY5/f;->w1(LY5/f;)Lo7/a;

    move-result-object p3

    invoke-virtual {p3}, Lo7/a;->b()I

    move-result p3

    const/4 v0, 0x1

    invoke-static {v0, p3}, LNc/b;->N(II)I

    move-result p3

    mul-int/lit8 p3, p3, 0x2

    add-int/2addr p2, p3

    const/4 p3, 0x0

    if-lt p2, p1, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    if-lez p1, :cond_1

    if-eqz p2, :cond_1

    iget-object p1, p0, LY5/f$f;->a:LY5/f;

    invoke-static {p1}, LY5/f;->t1(LY5/f;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, LY5/f$f;->a:LY5/f;

    invoke-static {p1, v0}, LY5/f;->u1(LY5/f;Z)Z

    iget-object p1, p0, LY5/f$f;->a:LY5/f;

    invoke-static {p1}, LY5/f;->x1(LY5/f;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, LY5/f$f;->a:LY5/f;

    invoke-static {p1, p3}, LY5/f;->u1(LY5/f;Z)Z

    :cond_2
    :goto_1
    return-void
.end method
