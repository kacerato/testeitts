.class public interface abstract Lcom/android/tools/r8/diagnostic/DefinitionFieldContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/diagnostic/DefinitionContext;


# virtual methods
.method public asFieldContext()Lcom/android/tools/r8/diagnostic/DefinitionFieldContext;
    .locals 0

    return-object p0
.end method

.method public abstract getFieldReference()Lcom/android/tools/r8/references/FieldReference;
.end method

.method public abstract synthetic getOrigin()Lcom/android/tools/r8/origin/Origin;
.end method

.method public isFieldContext()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
