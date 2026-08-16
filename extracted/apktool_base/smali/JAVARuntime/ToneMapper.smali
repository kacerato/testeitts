.class public LJAVARuntime/ToneMapper;
.super LJAVARuntime/Component;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Post processing"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LJAVARuntime/ToneMapper$Type;,
        LJAVARuntime/ToneMapper$Quality;
    }
.end annotation


# instance fields
.field public instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;-><init>()V

    invoke-direct {p0, v0}, LJAVARuntime/ToneMapper;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;)V

    return-void
.end method

.method public constructor <init>(LK8/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    .annotation runtime Lo8/c;
    .end annotation

    .line 4
    invoke-direct {p0}, LJAVARuntime/Component;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;)V
    .locals 0
    .annotation runtime LH6/g;
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
    invoke-direct {p0, p1}, LJAVARuntime/Component;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    .line 2
    iput-object p1, p0, LJAVARuntime/ToneMapper;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;

    .line 3
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->setRuntime(LJAVARuntime/Component;)V

    return-void
.end method

.method private static ENUMCONVERT(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$j;)LJAVARuntime/ToneMapper$Quality;
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "un"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LJAVARuntime/ToneMapper$Quality;->valueOf(Ljava/lang/String;)LJAVARuntime/ToneMapper$Quality;

    move-result-object p0

    return-object p0
.end method

.method private static ENUMCONVERT(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$k;)LJAVARuntime/ToneMapper$Type;
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "un"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LJAVARuntime/ToneMapper$Type;->valueOf(Ljava/lang/String;)LJAVARuntime/ToneMapper$Type;

    move-result-object p0

    return-object p0
.end method

.method private static ENUMCONVERT(LJAVARuntime/ToneMapper$Quality;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$j;
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "un"
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$j;->valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$j;

    move-result-object p0

    return-object p0
.end method

.method private static ENUMCONVERT(LJAVARuntime/ToneMapper$Type;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$k;
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "un"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$k;->valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$k;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;)Z
    .locals 1
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    const-class v0, LJAVARuntime/ToneMapper;

    invoke-super {p0, p1, p2, v0}, LJAVARuntime/Component;->componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public getQuality()LJAVARuntime/ToneMapper$Quality;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/ToneMapper;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->getQuality()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$j;

    move-result-object v0

    invoke-static {v0}, LJAVARuntime/ToneMapper;->ENUMCONVERT(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$j;)LJAVARuntime/ToneMapper$Quality;

    move-result-object v0

    return-object v0
.end method

.method public getTonnemapType()LJAVARuntime/ToneMapper$Type;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/ToneMapper;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->getTonnemapType()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$k;

    move-result-object v0

    invoke-static {v0}, LJAVARuntime/ToneMapper;->ENUMCONVERT(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$k;)LJAVARuntime/ToneMapper$Type;

    move-result-object v0

    return-object v0
.end method

.method public setQuality(LJAVARuntime/ToneMapper$Quality;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/ToneMapper;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;

    invoke-static {p1}, LJAVARuntime/ToneMapper;->ENUMCONVERT(LJAVARuntime/ToneMapper$Quality;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$j;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->setQuality(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$j;)V

    return-void
.end method

.method public setTonnemapType(LJAVARuntime/ToneMapper$Type;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/ToneMapper;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;

    invoke-static {p1}, LJAVARuntime/ToneMapper;->ENUMCONVERT(LJAVARuntime/ToneMapper$Type;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$k;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper;->setTonnemapType(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/ToneMapper$k;)V

    return-void
.end method
