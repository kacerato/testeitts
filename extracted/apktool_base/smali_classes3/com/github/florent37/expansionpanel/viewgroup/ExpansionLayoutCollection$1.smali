.class Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/florent37/expansionpanel/ExpansionLayout$IndicatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;


# direct methods
.method public constructor <init>(Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;)V
    .locals 0

    iput-object p1, p0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection$1;->this$0:Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartedExpand(Lcom/github/florent37/expansionpanel/ExpansionLayout;Z)V
    .locals 2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection$1;->this$0:Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;

    invoke-static {p2}, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;->access$000(Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection$1;->this$0:Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;

    invoke-static {p2}, Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;->access$100(Lcom/github/florent37/expansionpanel/viewgroup/ExpansionLayoutCollection;)Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/florent37/expansionpanel/ExpansionLayout;

    if-eq v0, p1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/github/florent37/expansionpanel/ExpansionLayout;->collapse(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method
