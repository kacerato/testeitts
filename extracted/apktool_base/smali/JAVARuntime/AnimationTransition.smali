.class public final LJAVARuntime/AnimationTransition;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Animations"
    }
.end annotation

.annotation runtime LJAVARuntime/UnimplementedDoc;
.end annotation


# instance fields
.field public transient instance:Lcom/itsmagic/engine/Engines/Engine/Animation/e;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Animation/e;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "animation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LJAVARuntime/AnimationTransition;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/e;

    return-void
.end method


# virtual methods
.method public isFinished()Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns whether the AnimationTransition has finished."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna se a transi\u00e7\u00e3o de anima\u00e7\u00e3o terminou."
    .end annotation

    .annotation runtime LJAVARuntime/UnimplementedDoc;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/AnimationTransition;->instance:Lcom/itsmagic/engine/Engines/Engine/Animation/e;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Animation/e;->g()Z

    move-result v0

    return v0
.end method
