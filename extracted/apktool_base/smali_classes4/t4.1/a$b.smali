.class public Lt4/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt4/a;->i(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$hub",
            "val$chatPanel"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lt4/a$b;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    iput-object p2, p0, Lt4/a$b;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lt4/a$b;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    iget-object v1, p0, Lt4/a$b;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->D0(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    iget-object v0, p0, Lt4/a$b;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;->X1()V

    iget-object v0, p0, Lt4/a$b;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-static {v0}, Lt4/a;->a(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V

    return-void
.end method
