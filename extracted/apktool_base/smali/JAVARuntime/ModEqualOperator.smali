.class public interface abstract LJAVARuntime/ModEqualOperator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "EngineOverride"
    }
.end annotation


# virtual methods
.method public abstract modEqual(Ljava/lang/Object;)V
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Applies the modulus and assigns the result to the current value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Aplica o m\u00f3dulo e atribui o resultado ao valor atual."
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
