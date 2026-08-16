.class Lcom/github/florent37/expansionpanel/ExpansionHeader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/florent37/expansionpanel/ExpansionLayout$IndicatorListener;


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

    iput-object p1, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader$1;->this$0:Lcom/github/florent37/expansionpanel/ExpansionHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartedExpand(Lcom/github/florent37/expansionpanel/ExpansionLayout;Z)V
    .locals 0

    iget-object p1, p0, Lcom/github/florent37/expansionpanel/ExpansionHeader$1;->this$0:Lcom/github/florent37/expansionpanel/ExpansionHeader;

    invoke-virtual {p1, p2}, Lcom/github/florent37/expansionpanel/ExpansionHeader;->onExpansionModifyView(Z)V

    return-void
.end method
