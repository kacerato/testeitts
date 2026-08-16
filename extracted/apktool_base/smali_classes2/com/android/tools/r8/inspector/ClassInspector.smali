.class public interface abstract Lcom/android/tools/r8/inspector/ClassInspector;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract forEachField(Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/tools/r8/inspector/FieldInspector;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract forEachMethod(Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/tools/r8/inspector/MethodInspector;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getClassReference()Lcom/android/tools/r8/references/ClassReference;
.end method

.method public abstract getSourceFile()Ljava/lang/String;
.end method
