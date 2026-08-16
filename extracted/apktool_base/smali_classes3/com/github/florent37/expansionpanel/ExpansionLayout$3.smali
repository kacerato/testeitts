.class Lcom/github/florent37/expansionpanel/ExpansionLayout$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/florent37/expansionpanel/ExpansionLayout;->collapse(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/florent37/expansionpanel/ExpansionLayout;

.field final synthetic val$ping:Z


# direct methods
.method public constructor <init>(Lcom/github/florent37/expansionpanel/ExpansionLayout;Z)V
    .locals 0

    iput-object p1, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout$3;->this$0:Lcom/github/florent37/expansionpanel/ExpansionLayout;

    iput-boolean p2, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout$3;->val$ping:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout$3;->this$0:Lcom/github/florent37/expansionpanel/ExpansionLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->access$102(Lcom/github/florent37/expansionpanel/ExpansionLayout;Landroid/animation/Animator;)Landroid/animation/Animator;

    iget-boolean p1, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout$3;->val$ping:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout$3;->this$0:Lcom/github/florent37/expansionpanel/ExpansionLayout;

    invoke-static {p1}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->access$300(Lcom/github/florent37/expansionpanel/ExpansionLayout;)V

    :cond_0
    return-void
.end method
