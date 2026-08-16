.class public Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$h;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$h;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0
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

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$h;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->q1(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;)Le7/a;

    move-result-object p1

    invoke-virtual {p1}, Le7/a;->getItemCount()I

    move-result p1

    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$h;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->t1(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p2

    iget-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$h;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;

    invoke-static {p3}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->t1(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    if-lez p1, :cond_0

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$h;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->u1(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;)V

    :cond_0
    return-void
.end method
