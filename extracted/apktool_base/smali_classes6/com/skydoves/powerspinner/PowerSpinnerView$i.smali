.class public final Lcom/skydoves/powerspinner/PowerSpinnerView$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skydoves/powerspinner/PowerSpinnerView;->E()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/skydoves/powerspinner/PowerSpinnerView;


# direct methods
.method public constructor <init>(Lcom/skydoves/powerspinner/PowerSpinnerView;)V
    .locals 0

    iput-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$i;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$i;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-static {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->e(Lcom/skydoves/powerspinner/PowerSpinnerView;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$i;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    new-instance v2, Lcom/skydoves/powerspinner/PowerSpinnerView$i$a;

    invoke-direct {v2, p0}, Lcom/skydoves/powerspinner/PowerSpinnerView$i$a;-><init>(Lcom/skydoves/powerspinner/PowerSpinnerView$i;)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    new-instance v2, Lcom/skydoves/powerspinner/PowerSpinnerView$i$b;

    invoke-direct {v2, p0}, Lcom/skydoves/powerspinner/PowerSpinnerView$i$b;-><init>(Lcom/skydoves/powerspinner/PowerSpinnerView$i;)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$i;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupElevation()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setElevation(F)V

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$i;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-static {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->d(Lcom/skydoves/powerspinner/PowerSpinnerView;)LPd/b;

    move-result-object v0

    iget-object v0, v0, LPd/b;->b:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$i;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupBackgroundColor()I

    move-result v2

    const v3, 0x10013

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$i;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$i;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupBackgroundColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    const-string v2, "this"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    iget-object v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$i;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getShowDivider()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Landroidx/recyclerview/widget/DividerItemDecoration;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroidx/recyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$i;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v3}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getDividerSize()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$i;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getDividerColor()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/DividerItemDecoration;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$i;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_1
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$i;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupWidth()I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$i;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-static {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->e(Lcom/skydoves/powerspinner/PowerSpinnerView;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$i;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    :cond_2
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$i;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupHeight()I

    move-result v0

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$i;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-static {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->e(Lcom/skydoves/powerspinner/PowerSpinnerView;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$i;->b:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    :cond_3
    return-void
.end method
