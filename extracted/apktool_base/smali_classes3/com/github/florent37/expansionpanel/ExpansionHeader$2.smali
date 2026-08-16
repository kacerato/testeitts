.class Lcom/github/florent37/expansionpanel/ExpansionHeader$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/florent37/expansionpanel/ExpansionHeader;->setup()V
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

    iput-object p1, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader$2;->this$0:Lcom/github/florent37/expansionpanel/ExpansionHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader$2;->this$0:Lcom/github/florent37/expansionpanel/ExpansionHeader;

    iget-boolean v0, p1, Lcom/github/florent37/expansionpanel/ExpansionHeader;->toggleOnClick:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/github/florent37/expansionpanel/ExpansionHeader;->expansionLayout:Lcom/github/florent37/expansionpanel/ExpansionLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->toggle(Z)V

    :cond_0
    return-void
.end method
