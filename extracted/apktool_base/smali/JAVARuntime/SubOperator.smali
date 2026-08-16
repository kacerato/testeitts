.class public interface abstract LJAVARuntime/SubOperator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "EngineOverride"
    }
.end annotation


# virtual methods
.method public abstract sub(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Subtracts the given object from the current value."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Subtrai o objeto fornecido do valor atual."
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
