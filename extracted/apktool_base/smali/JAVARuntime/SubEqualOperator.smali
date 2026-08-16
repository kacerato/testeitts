.class public interface abstract LJAVARuntime/SubEqualOperator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "EngineOverride"
    }
.end annotation


# virtual methods
.method public abstract subEqual(Ljava/lang/Object;)V
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Subtracts the given object from the current value and assigns the result."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Subtrai o objeto fornecido do valor atual e atribui o resultado."
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
