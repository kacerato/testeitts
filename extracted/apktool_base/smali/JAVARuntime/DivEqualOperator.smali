.class public interface abstract LJAVARuntime/DivEqualOperator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "EngineOverride"
    }
.end annotation


# virtual methods
.method public abstract divEqual(Ljava/lang/Object;)V
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Divides the current value by the given object and assigns the result."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Divide o valor atual pelo objeto fornecido e atribui o resultado."
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
