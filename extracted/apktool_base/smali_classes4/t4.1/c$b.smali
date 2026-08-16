.class public final Lt4/c$b;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt4/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final a:Landroid/widget/TextView;

.field public final synthetic b:Lt4/c;


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
    iput-object p1, p0, Lt4/c$b;->b:Lt4/c;

    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090309

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lt4/c$b;->a:Landroid/widget/TextView;

    .line 5
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/4 p2, 0x1

    .line 6
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    return-void
.end method

.method public synthetic constructor <init>(Lt4/c;Landroid/view/View;Lt4/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lt4/c$b;-><init>(Lt4/c;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a(Lt4/c$b;Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;)V
    .locals 0

    invoke-virtual {p0, p1}, Lt4/c$b;->b(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;->f()I

    move-result p1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lt4/c$b;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050165

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lt4/c$b;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object p1, p0, Lt4/c$b;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050167

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lt4/c$b;->b:Lt4/c;

    invoke-static {p1}, Lt4/c;->g(Lt4/c;)Lqe/e;

    move-result-object p1

    iget-object v1, p0, Lt4/c$b;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v1, v0}, Lqe/e;->k(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method
