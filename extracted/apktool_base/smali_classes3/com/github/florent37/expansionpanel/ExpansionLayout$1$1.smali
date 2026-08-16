.class Lcom/github/florent37/expansionpanel/ExpansionLayout$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/florent37/expansionpanel/ExpansionLayout$1;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/github/florent37/expansionpanel/ExpansionLayout$1;


# direct methods
.method public constructor <init>(Lcom/github/florent37/expansionpanel/ExpansionLayout$1;)V
    .locals 0

    iput-object p1, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout$1$1;->this$1:Lcom/github/florent37/expansionpanel/ExpansionLayout$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout$1$1;->this$1:Lcom/github/florent37/expansionpanel/ExpansionLayout$1;

    iget-object p1, p1, Lcom/github/florent37/expansionpanel/ExpansionLayout$1;->this$0:Lcom/github/florent37/expansionpanel/ExpansionLayout;

    invoke-static {p1}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->access$000(Lcom/github/florent37/expansionpanel/ExpansionLayout;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout$1$1;->this$1:Lcom/github/florent37/expansionpanel/ExpansionLayout$1;

    iget-object p1, p1, Lcom/github/florent37/expansionpanel/ExpansionLayout$1;->this$0:Lcom/github/florent37/expansionpanel/ExpansionLayout;

    invoke-static {p1}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->access$100(Lcom/github/florent37/expansionpanel/ExpansionLayout;)Landroid/animation/Animator;

    move-result-object p1

    if-nez p1, :cond_0

    sub-int/2addr p5, p3

    iget-object p1, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout$1$1;->this$1:Lcom/github/florent37/expansionpanel/ExpansionLayout$1;

    iget-object p1, p1, Lcom/github/florent37/expansionpanel/ExpansionLayout$1;->this$0:Lcom/github/florent37/expansionpanel/ExpansionLayout;

    new-instance p2, Lcom/github/florent37/expansionpanel/ExpansionLayout$1$1$1;

    invoke-direct {p2, p0, p5}, Lcom/github/florent37/expansionpanel/ExpansionLayout$1$1$1;-><init>(Lcom/github/florent37/expansionpanel/ExpansionLayout$1$1;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
