.class public interface abstract Lcom/android/tools/r8/inspector/FieldInspector;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getFieldReference()Lcom/android/tools/r8/references/FieldReference;
.end method

.method public abstract getInitialValue()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/tools/r8/inspector/ValueInspector;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isFinal()Z
.end method

.method public abstract isStatic()Z
.end method
