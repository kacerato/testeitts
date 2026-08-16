.class public Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f$c;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f$c;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;->y1(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;)Lt4/c;

    move-result-object v0

    invoke-virtual {v0}, Lt4/c;->l()Z

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f$c;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;->y1(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;)Lt4/c;

    move-result-object v0

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->AI_ERROR:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;->b(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lt4/c;->h(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f$c;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;->B1(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;Z)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f$c;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;->s1(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;Z)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f$c;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;->x1(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f$c;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;->N1(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f$c;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;->A1(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f$c;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;->D1(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f$c;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;->K1(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f$c;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;->z1(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;)V

    return-void
.end method
