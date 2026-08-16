.class public interface abstract Lcom/android/tools/r8/diagnostic/DefinitionMethodContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/diagnostic/DefinitionContext;


# virtual methods
.method public asMethodContext()Lcom/android/tools/r8/diagnostic/DefinitionMethodContext;
    .locals 0

    return-object p0
.end method

.method public abstract getMethodReference()Lcom/android/tools/r8/references/MethodReference;
.end method

.method public abstract synthetic getOrigin()Lcom/android/tools/r8/origin/Origin;
.end method

.method public isMethodContext()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
