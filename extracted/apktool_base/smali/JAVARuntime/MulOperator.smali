.class public interface abstract LJAVARuntime/MulOperator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "EngineOverride"
    }
.end annotation


# virtual methods
.method public abstract mul(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Multiplies the current value by the given object."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Multiplica o valor atual pelo objeto fornecido."
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
