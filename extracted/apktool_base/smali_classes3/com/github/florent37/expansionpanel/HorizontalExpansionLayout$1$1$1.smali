.class Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1$1;->onLayoutChange(Landroid/view/View;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1$1;

.field final synthetic val$width:I


# direct methods
.method public constructor <init>(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1$1;I)V
    .locals 0

    iput-object p1, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1$1$1;->this$2:Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1$1;

    iput p2, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1$1$1;->val$width:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1$1$1;->this$2:Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1$1;

    iget-object v0, v0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1$1;->this$1:Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1;

    iget-object v0, v0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1;->this$0:Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;

    iget v1, p0, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout$1$1$1;->val$width:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;->access$200(Lcom/github/florent37/expansionpanel/HorizontalExpansionLayout;F)V

    return-void
.end method
