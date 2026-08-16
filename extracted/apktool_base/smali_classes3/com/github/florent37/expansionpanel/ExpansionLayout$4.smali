.class Lcom/github/florent37/expansionpanel/ExpansionLayout$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/florent37/expansionpanel/ExpansionLayout;->expand(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/florent37/expansionpanel/ExpansionLayout;


# direct methods
.method public constructor <init>(Lcom/github/florent37/expansionpanel/ExpansionLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout$4;->this$0:Lcom/github/florent37/expansionpanel/ExpansionLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/github/florent37/expansionpanel/ExpansionLayout$4;->this$0:Lcom/github/florent37/expansionpanel/ExpansionLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->access$200(Lcom/github/florent37/expansionpanel/ExpansionLayout;F)V

    return-void
.end method
