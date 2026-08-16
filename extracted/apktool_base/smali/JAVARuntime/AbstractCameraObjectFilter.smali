.class public LJAVARuntime/AbstractCameraObjectFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/CameraObjectFilter;


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Utils"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public overrideAmbientLight()LJAVARuntime/Color;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Overrides the Ambient Light Color. Return the Color that will override."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Substitui a Cor da Luz Ambiente. Retorne a Cor que ser\u00e1 substitu\u00edda."
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public renderFog()Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Defines whether the Fog will render. Return true to render and false to ignore."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define se o Fog ser\u00e1 renderizado. Retorne verdadeiro para renderizar e falso para ignorar."
    .end annotation

    const/4 v0, 0x1

    return v0
.end method
