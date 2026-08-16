.class Lcom/jme3/app/DetailedProfilerState$ProfilerInputListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/input/controls/ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/app/DetailedProfilerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProfilerInputListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jme3/app/DetailedProfilerState;


# direct methods
.method private constructor <init>(Lcom/jme3/app/DetailedProfilerState;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/jme3/app/DetailedProfilerState$ProfilerInputListener;->this$0:Lcom/jme3/app/DetailedProfilerState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/jme3/app/DetailedProfilerState;Lcom/jme3/app/DetailedProfilerState$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/jme3/app/DetailedProfilerState$ProfilerInputListener;-><init>(Lcom/jme3/app/DetailedProfilerState;)V

    return-void
.end method


# virtual methods
.method public onAction(Ljava/lang/String;ZF)V
    .locals 1

    const-string p3, "Toggle_Detailed_Profiler"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    iget-object p3, p0, Lcom/jme3/app/DetailedProfilerState$ProfilerInputListener;->this$0:Lcom/jme3/app/DetailedProfilerState;

    invoke-virtual {p3}, Lcom/jme3/app/state/BaseAppState;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p3, v0}, Lcom/jme3/app/state/BaseAppState;->setEnabled(Z)V

    :cond_0
    iget-object p3, p0, Lcom/jme3/app/DetailedProfilerState$ProfilerInputListener;->this$0:Lcom/jme3/app/DetailedProfilerState;

    invoke-virtual {p3}, Lcom/jme3/app/state/BaseAppState;->isEnabled()Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "Click_Detailed_Profiler"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/jme3/app/DetailedProfilerState$ProfilerInputListener;->this$0:Lcom/jme3/app/DetailedProfilerState;

    invoke-virtual {p1}, Lcom/jme3/app/state/BaseAppState;->getApplication()Lcom/jme3/app/Application;

    move-result-object p2

    invoke-interface {p2}, Lcom/jme3/app/Application;->getInputManager()Lcom/jme3/input/InputManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jme3/input/InputManager;->getCursorPosition()Lcom/jme3/math/Vector2f;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/jme3/app/DetailedProfilerState;->access$1100(Lcom/jme3/app/DetailedProfilerState;Lcom/jme3/math/Vector2f;)V

    :cond_1
    return-void
.end method
