.class public Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$e;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$e;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$e;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$startedChat"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$e$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$e;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$e$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$e$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$e;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$e;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$e$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;->t1(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;)Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$e$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->r()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$e$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$e;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$e;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$e$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->r()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;->F1(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$e$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->s()Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$e$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$e;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$e;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$e$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->s()Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;->G1(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;I)I

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$e$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$e;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$e;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;->H1(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$e$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$e;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$e;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;->I1(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$e$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$e;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$e;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;->J1(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$e$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$e;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$e;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;->K1(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$e$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$e;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$e;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;->L1(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;)V

    return-void
.end method
