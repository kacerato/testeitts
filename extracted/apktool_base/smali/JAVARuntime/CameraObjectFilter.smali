.class public interface abstract LJAVARuntime/CameraObjectFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "CameraFilters"
    }
.end annotation


# virtual methods
.method public abstract overrideAmbientLight()LJAVARuntime/Color;
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Overrides the Ambient Light Color. Return the Color that will override."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Substitui a Cor da Luz Ambiente. Retorne a Cor que ser\u00e1 substitu\u00edda."
    .end annotation
.end method

.method public abstract renderFog()Z
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Defines whether the Fog will render. Return true to render and false to ignore."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define se o Fog ser\u00e1 renderizado. Retorne verdadeiro para renderizar e falso para ignorar."
    .end annotation
.end method
