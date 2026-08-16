.class public interface abstract LJAVARuntime/ModOperator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "EngineOverride"
    }
.end annotation


# virtual methods
.method public abstract mod(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Applies the modulus operation with the given object."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Aplica a opera\u00e7\u00e3o de m\u00f3dulo com o objeto fornecido."
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
