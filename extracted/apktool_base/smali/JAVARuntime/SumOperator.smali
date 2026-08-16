.class public interface abstract LJAVARuntime/SumOperator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "EngineOverride"
    }
.end annotation


# virtual methods
.method public abstract sum(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Adds the given object to the current value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Adiciona o objeto fornecido ao valor atual."
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method
