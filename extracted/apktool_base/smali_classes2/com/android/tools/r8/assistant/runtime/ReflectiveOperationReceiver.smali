.class public interface abstract Lcom/android/tools/r8/assistant/runtime/ReflectiveOperationReceiver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/android/tools/r8/keepanno/annotations/KeepForApi;
.end annotation


# virtual methods
.method public abstract onClassForName(Lcom/android/tools/r8/assistant/runtime/ReflectiveOracle$Stack;Ljava/lang/String;)V
.end method

.method public varargs abstract onClassGetDeclaredMethod(Lcom/android/tools/r8/assistant/runtime/ReflectiveOracle$Stack;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/assistant/runtime/ReflectiveOracle$Stack;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract onClassNewInstance(Lcom/android/tools/r8/assistant/runtime/ReflectiveOracle$Stack;Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/assistant/runtime/ReflectiveOracle$Stack;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation
.end method

.method public requiresStackInformation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
