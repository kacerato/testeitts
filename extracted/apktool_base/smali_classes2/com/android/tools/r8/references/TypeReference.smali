.class public interface abstract Lcom/android/tools/r8/references/TypeReference;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public asArray()Lcom/android/tools/r8/references/ArrayReference;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public asClass()Lcom/android/tools/r8/references/ClassReference;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public asPrimitive()Lcom/android/tools/r8/references/PrimitiveReference;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getDescriptor()Ljava/lang/String;
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Lcom/android/tools/r8/references/TypeReference;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/Bl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isArray()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isClass()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPrimitive()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
