.class Lcom/github/florent37/expansionpanel/ExpansionHeader$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/florent37/expansionpanel/ExpansionHeader;->onExpansionModifyView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/florent37/expansionpanel/ExpansionHeader;


# direct methods
.method public constructor <init>(Lcom/github/florent37/expansionpanel/ExpansionHeader;)V
    .locals 0

    iput-object p1, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader$3;->this$0:Lcom/github/florent37/expansionpanel/ExpansionHeader;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 0

    iget-object p1, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader$3;->this$0:Lcom/github/florent37/expansionpanel/ExpansionHeader;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/github/florent37/expansionpanel/ExpansionHeader;->indicatorAnimator:Landroid/animation/Animator;

    return-void
.end method
