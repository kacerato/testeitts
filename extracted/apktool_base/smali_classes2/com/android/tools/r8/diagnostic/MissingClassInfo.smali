.class public interface abstract Lcom/android/tools/r8/diagnostic/MissingClassInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/diagnostic/MissingDefinitionInfo;


# virtual methods
.method public asMissingClass()Lcom/android/tools/r8/diagnostic/MissingClassInfo;
    .locals 0

    return-object p0
.end method

.method public abstract getClassReference()Lcom/android/tools/r8/references/ClassReference;
.end method

.method public abstract synthetic getDiagnosticMessage()Ljava/lang/String;
.end method

.method public isMissingClass()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
