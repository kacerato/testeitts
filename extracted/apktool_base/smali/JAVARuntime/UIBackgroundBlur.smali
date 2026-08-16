.class public LJAVARuntime/UIBackgroundBlur;
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
        LJAVARuntime/UIBackgroundBlur$Quality;
    }
.end annotation


# instance fields
.field public instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIBackgroundBlur;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIBackgroundBlur;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIBackgroundBlur;-><init>()V

    invoke-direct {p0, v0}, LJAVARuntime/UIBackgroundBlur;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIBackgroundBlur;)V

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

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIBackgroundBlur;)V
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
    iput-object p1, p0, LJAVARuntime/UIBackgroundBlur;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIBackgroundBlur;

    .line 3
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIBackgroundBlur;->setRuntime(LJAVARuntime/Component;)V

    return-void
.end method

.method private static ENUMCONVERT(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIBackgroundBlur$d;)LJAVARuntime/UIBackgroundBlur$Quality;
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

    invoke-static {p0}, LJAVARuntime/UIBackgroundBlur$Quality;->valueOf(Ljava/lang/String;)LJAVARuntime/UIBackgroundBlur$Quality;

    move-result-object p0

    return-object p0
.end method

.method private static ENUMCONVERT(LJAVARuntime/UIBackgroundBlur$Quality;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIBackgroundBlur$d;
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

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIBackgroundBlur$d;->valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIBackgroundBlur$d;

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

    const-class v0, LJAVARuntime/UIBackgroundBlur;

    invoke-super {p0, p1, p2, v0}, LJAVARuntime/Component;->componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public getBlurRadius()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIBackgroundBlur;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIBackgroundBlur;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIBackgroundBlur;->getBlurRadius()F

    move-result v0

    return v0
.end method

.method public getQuality()LJAVARuntime/UIBackgroundBlur$Quality;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/UIBackgroundBlur;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIBackgroundBlur;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIBackgroundBlur;->getQuality()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIBackgroundBlur$d;

    move-result-object v0

    invoke-static {v0}, LJAVARuntime/UIBackgroundBlur;->ENUMCONVERT(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIBackgroundBlur$d;)LJAVARuntime/UIBackgroundBlur$Quality;

    move-result-object v0

    return-object v0
.end method

.method public setBlurRadius(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "blurRadius"
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

    iget-object v0, p0, LJAVARuntime/UIBackgroundBlur;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIBackgroundBlur;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIBackgroundBlur;->setBlurRadius(F)V

    return-void
.end method

.method public setQuality(LJAVARuntime/UIBackgroundBlur$Quality;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "quality"
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

    iget-object v0, p0, LJAVARuntime/UIBackgroundBlur;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIBackgroundBlur;

    invoke-static {p1}, LJAVARuntime/UIBackgroundBlur;->ENUMCONVERT(LJAVARuntime/UIBackgroundBlur$Quality;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIBackgroundBlur$d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIBackgroundBlur;->setQuality(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIBackgroundBlur$d;)V

    return-void
.end method
