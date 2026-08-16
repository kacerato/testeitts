.class public Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;->Q1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$e;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startedChat"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$e$a;

    invoke-direct {v0, p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$e$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$e;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method
