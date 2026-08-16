.class public final Lt4/c$c;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt4/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final a:Landroid/widget/TextView;

.field public final b:Landroid/widget/ProgressBar;

.field public final synthetic c:Lt4/c;


# direct methods
.method public constructor <init>(Lt4/c;Landroid/view/View;)V
    .locals 0
    .param p1    # Lt4/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "itemView"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lt4/c$c;->c:Lt4/c;

    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090309

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lt4/c$c;->a:Landroid/widget/TextView;

    const p1, 0x7f0902da

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lt4/c$c;->b:Landroid/widget/ProgressBar;

    return-void
.end method

.method public synthetic constructor <init>(Lt4/c;Landroid/view/View;Lt4/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lt4/c$c;-><init>(Lt4/c;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a(Lt4/c$c;Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;)V
    .locals 0

    invoke-direct {p0, p1}, Lt4/c$c;->b(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;)V

    return-void
.end method

.method private b(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    iget-object v0, p0, Lt4/c$c;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;->e()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lt4/c$c;->b:Landroid/widget/ProgressBar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    return-void
.end method
