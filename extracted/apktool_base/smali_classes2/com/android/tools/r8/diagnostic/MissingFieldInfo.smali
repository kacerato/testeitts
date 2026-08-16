.class public interface abstract Lcom/android/tools/r8/diagnostic/MissingFieldInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/diagnostic/MissingDefinitionInfo;


# virtual methods
.method public asMissingField()Lcom/android/tools/r8/diagnostic/MissingFieldInfo;
    .locals 0

    return-object p0
.end method

.method public abstract synthetic getDiagnosticMessage()Ljava/lang/String;
.end method

.method public abstract getFieldReference()Lcom/android/tools/r8/references/FieldReference;
.end method

.method public isMissingField()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
