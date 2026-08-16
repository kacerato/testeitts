.class public final Lcom/skydoves/powerspinner/PowerSpinnerView$h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skydoves/powerspinner/PowerSpinnerView$h;->invoke()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/skydoves/powerspinner/PowerSpinnerView$h;


# direct methods
.method public constructor <init>(Lcom/skydoves/powerspinner/PowerSpinnerView$h;)V
    .locals 0

    iput-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$h$a;->b:Lcom/skydoves/powerspinner/PowerSpinnerView$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$h$a;->b:Lcom/skydoves/powerspinner/PowerSpinnerView$h;

    iget-object v0, v0, Lcom/skydoves/powerspinner/PowerSpinnerView$h;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupWidth()I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$h$a;->b:Lcom/skydoves/powerspinner/PowerSpinnerView$h;

    iget-object v0, v0, Lcom/skydoves/powerspinner/PowerSpinnerView$h;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$h$a;->b:Lcom/skydoves/powerspinner/PowerSpinnerView$h;

    iget-object v0, v0, Lcom/skydoves/powerspinner/PowerSpinnerView$h;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$h$a;->b:Lcom/skydoves/powerspinner/PowerSpinnerView$h;

    iget-object v2, v2, Lcom/skydoves/powerspinner/PowerSpinnerView$h;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupHeight()I

    move-result v2

    if-eq v2, v1, :cond_1

    iget-object v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$h$a;->b:Lcom/skydoves/powerspinner/PowerSpinnerView$h;

    iget-object v1, v1, Lcom/skydoves/powerspinner/PowerSpinnerView$h;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupHeight()I

    move-result v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$h$a;->b:Lcom/skydoves/powerspinner/PowerSpinnerView$h;

    iget-object v1, v1, Lcom/skydoves/powerspinner/PowerSpinnerView$h;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    :goto_1
    iget-object v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$h$a;->b:Lcom/skydoves/powerspinner/PowerSpinnerView$h;

    iget-object v2, v2, Lcom/skydoves/powerspinner/PowerSpinnerView$h;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-static {v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->e(Lcom/skydoves/powerspinner/PowerSpinnerView;)Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/widget/PopupWindow;->update(II)V

    return-void
.end method
