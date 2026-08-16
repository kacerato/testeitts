.class public interface abstract Lcom/android/tools/r8/diagnostic/MissingDefinitionInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public asMissingClass()Lcom/android/tools/r8/diagnostic/MissingClassInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public asMissingField()Lcom/android/tools/r8/diagnostic/MissingFieldInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public asMissingMethod()Lcom/android/tools/r8/diagnostic/MissingMethodInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getDiagnosticMessage()Ljava/lang/String;
.end method

.method public abstract getReferencedFromContexts()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/tools/r8/diagnostic/DefinitionContext;",
            ">;"
        }
    .end annotation
.end method

.method public isMissingClass()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMissingField()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMissingMethod()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
