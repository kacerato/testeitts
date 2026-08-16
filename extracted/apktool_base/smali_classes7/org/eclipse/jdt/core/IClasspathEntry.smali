.class public interface abstract Lorg/eclipse/jdt/core/IClasspathEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CPE_CONTAINER:I = 0x5

.field public static final CPE_LIBRARY:I = 0x1

.field public static final CPE_PROJECT:I = 0x2

.field public static final CPE_SOURCE:I = 0x3

.field public static final CPE_VARIABLE:I = 0x4


# virtual methods
.method public abstract combineAccessRules()Z
.end method

.method public abstract getAccessRules()[Lorg/eclipse/jdt/core/IAccessRule;
.end method

.method public abstract getContentKind()I
.end method

.method public abstract getEntryKind()I
.end method

.method public abstract getExclusionPatterns()[Lorg/eclipse/core/runtime/IPath;
.end method

.method public abstract getExtraAttributes()[Lorg/eclipse/jdt/core/IClasspathAttribute;
.end method

.method public abstract getInclusionPatterns()[Lorg/eclipse/core/runtime/IPath;
.end method

.method public abstract getOutputLocation()Lorg/eclipse/core/runtime/IPath;
.end method

.method public abstract getPath()Lorg/eclipse/core/runtime/IPath;
.end method

.method public abstract getReferencingEntry()Lorg/eclipse/jdt/core/IClasspathEntry;
.end method

.method public abstract getResolvedEntry()Lorg/eclipse/jdt/core/IClasspathEntry;
.end method

.method public abstract getSourceAttachmentPath()Lorg/eclipse/core/runtime/IPath;
.end method

.method public abstract getSourceAttachmentRootPath()Lorg/eclipse/core/runtime/IPath;
.end method

.method public abstract isExported()Z
.end method

.method public isTest()Z
    .locals 7

    invoke-interface {p0}, Lorg/eclipse/jdt/core/IClasspathEntry;->getExtraAttributes()[Lorg/eclipse/jdt/core/IClasspathAttribute;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_0

    return v2

    :cond_0
    aget-object v4, v0, v3

    invoke-interface {v4}, Lorg/eclipse/jdt/core/IClasspathAttribute;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "test"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "true"

    invoke-interface {v4}, Lorg/eclipse/jdt/core/IClasspathAttribute;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public isWithoutTestCode()Z
    .locals 7

    invoke-interface {p0}, Lorg/eclipse/jdt/core/IClasspathEntry;->getExtraAttributes()[Lorg/eclipse/jdt/core/IClasspathAttribute;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_0

    return v2

    :cond_0
    aget-object v4, v0, v3

    invoke-interface {v4}, Lorg/eclipse/jdt/core/IClasspathAttribute;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "without_test_code"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "true"

    invoke-interface {v4}, Lorg/eclipse/jdt/core/IClasspathAttribute;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
