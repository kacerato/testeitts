.class Lcom/jme3/app/BasicProfilerState$ProfilerKeyListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/input/controls/ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/app/BasicProfilerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProfilerKeyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jme3/app/BasicProfilerState;


# direct methods
.method private constructor <init>(Lcom/jme3/app/BasicProfilerState;)V
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
    iput-object p1, p0, Lcom/jme3/app/BasicProfilerState$ProfilerKeyListener;->this$0:Lcom/jme3/app/BasicProfilerState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/jme3/app/BasicProfilerState;Lcom/jme3/app/BasicProfilerState$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/jme3/app/BasicProfilerState$ProfilerKeyListener;-><init>(Lcom/jme3/app/BasicProfilerState;)V

    return-void
.end method


# virtual methods
.method public onAction(Ljava/lang/String;ZF)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/jme3/app/BasicProfilerState$ProfilerKeyListener;->this$0:Lcom/jme3/app/BasicProfilerState;

    invoke-virtual {p1}, Lcom/jme3/app/BasicProfilerState;->toggleProfiler()V

    return-void
.end method
