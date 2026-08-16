.class public Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;->w1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$runningChat"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel$c;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel$c;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel$c;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel$c;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;->q1(Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;)V

    return-void
.end method
