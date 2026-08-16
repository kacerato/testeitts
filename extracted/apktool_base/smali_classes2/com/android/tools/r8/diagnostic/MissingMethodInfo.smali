.class public interface abstract Lcom/android/tools/r8/diagnostic/MissingMethodInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/diagnostic/MissingDefinitionInfo;


# virtual methods
.method public asMissingMethod()Lcom/android/tools/r8/diagnostic/MissingMethodInfo;
    .locals 0

    return-object p0
.end method

.method public abstract synthetic getDiagnosticMessage()Ljava/lang/String;
.end method

.method public abstract getMethodReference()Lcom/android/tools/r8/references/MethodReference;
.end method

.method public isMissingMethod()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
