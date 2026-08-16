.class public Lt4/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt4/b;->K0(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;)Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

.field public final synthetic c:Lt4/b;


# direct methods
.method public constructor <init>(Lt4/b;Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$chatPanel"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lt4/b$c;->c:Lt4/b;

    iput-object p2, p0, Lt4/b$c;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lt4/b$c;->c:Lt4/b;

    iget-object v1, p0, Lt4/b$c;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->l(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Z

    iget-object v0, p0, Lt4/b$c;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;->X1()V

    return-void
.end method
