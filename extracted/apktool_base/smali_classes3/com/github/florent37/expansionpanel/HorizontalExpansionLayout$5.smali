.class Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->expand(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;


# direct methods
.method public constructor <init>(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$5;->this$0:Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$5;->this$0:Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->access$102(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;Landroid/animation/Animator;)Landroid/animation/Animator;

    iget-object p1, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$5;->this$0:Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;

    invoke-static {p1}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->access$300(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;)V

    return-void
.end method
