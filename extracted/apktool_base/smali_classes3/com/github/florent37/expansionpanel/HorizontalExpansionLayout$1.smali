.class Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->onViewAdded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;

.field final synthetic val$childView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1;->this$0:Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;

    iput-object p2, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1;->val$childView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    iget-object v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1;->val$childView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1;->this$0:Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;

    invoke-static {v0}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->access$000(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1;->this$0:Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;

    invoke-virtual {v0, v1}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->expand(Z)V

    :cond_0
    iget-object v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1;->val$childView:Landroid/view/View;

    new-instance v2, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1$1;

    invoke-direct {v2, p0}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1$1;-><init>(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return v1
.end method
