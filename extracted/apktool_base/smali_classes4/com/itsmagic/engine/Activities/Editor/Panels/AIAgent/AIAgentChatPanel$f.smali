.class public Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;->d2(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;


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

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;->a:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f$c;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "message",
            "done"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;Ljava/lang/String;Z)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "token"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f$a;

    invoke-direct {v0, p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel$f;Ljava/lang/String;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method
