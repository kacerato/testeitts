.class public interface abstract LJAVARuntime/EqualsComparator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "EngineOverride"
    }
.end annotation


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if the current object is equal to the given object."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se o objeto atual \u00e9 igual ao objeto fornecido."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "otherObject"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherObject"
        }
    .end annotation
.end method

.method public abstract notEquals(Ljava/lang/Object;)Z
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if the current object is not equal to the given object."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se o objeto atual n\u00e3o \u00e9 igual ao objeto fornecido."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "otherObject"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherObject"
        }
    .end annotation
.end method

.method public abstract pointerEquals(Ljava/lang/Object;)Z
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if the current object is the same instance as the given object."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se o objeto atual \u00e9 a mesma inst\u00e2ncia do objeto fornecido."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "otherObject"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherObject"
        }
    .end annotation
.end method
