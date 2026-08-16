.class public abstract Lorg/eclipse/jdt/internal/core/BinaryMember;
.super Lorg/eclipse/jdt/internal/core/NamedMember;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/NamedMember;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)V

    return-void
.end method

.method private getAnnotation([[C)Lorg/eclipse/jdt/core/IAnnotation;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/core/Annotation;

    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-static {p1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v0, p0, v1}, Lorg/eclipse/jdt/internal/core/Annotation;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public copy(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;Ljava/lang/String;ZLorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    new-instance p1, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance p2, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 p3, 0x3d0

    invoke-direct {p2, p3, p0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;)V

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw p1
.end method

.method public getAnnotations([Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;J)[Lorg/eclipse/jdt/core/IAnnotation;
    .locals 6

    invoke-virtual {p0, p2, p3}, Lorg/eclipse/jdt/internal/core/BinaryMember;->getStandardAnnotations(J)[Lorg/eclipse/jdt/core/IAnnotation;

    move-result-object p2

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    array-length p3, p1

    array-length v0, p2

    add-int v1, p3, v0

    if-nez v1, :cond_1

    sget-object p1, Lorg/eclipse/jdt/internal/core/Annotation;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/core/IAnnotation;

    return-object p1

    :cond_1
    new-array v1, v1, [Lorg/eclipse/jdt/core/IAnnotation;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, p3, :cond_2

    invoke-static {p2, v2, v1, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_2
    aget-object v4, p1, v3

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lorg/eclipse/jdt/internal/core/util/Util;->getAnnotation(Lorg/eclipse/jdt/internal/core/JavaElement;Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;Ljava/lang/String;)Lorg/eclipse/jdt/core/IAnnotation;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getCategories()[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getSourceMapper()Lorg/eclipse/jdt/internal/core/SourceMapper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Member;->getClassFile()Lorg/eclipse/jdt/core/IClassFile;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IOpenable;->getBuffer()Lorg/eclipse/jdt/core/IBuffer;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/SourceMapper;->categories:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/BinaryMember;->getKey(Z)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getKey(Z)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation
.end method

.method public getNameRange()Lorg/eclipse/jdt/core/ISourceRange;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getSourceMapper()Lorg/eclipse/jdt/internal/core/SourceMapper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Member;->getClassFile()Lorg/eclipse/jdt/core/IClassFile;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/core/AbstractClassFile;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/AbstractClassFile;->getBuffer()Lorg/eclipse/jdt/core/IBuffer;

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/SourceMapper;->getNameRange(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/SourceRange;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/core/SourceMapper;->UNKNOWN_RANGE:Lorg/eclipse/jdt/core/SourceRange;

    return-object v0
.end method

.method public getSourceRange()Lorg/eclipse/jdt/core/ISourceRange;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaElement;->getSourceMapper()Lorg/eclipse/jdt/internal/core/SourceMapper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/Member;->getClassFile()Lorg/eclipse/jdt/core/IClassFile;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IOpenable;->getBuffer()Lorg/eclipse/jdt/core/IBuffer;

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/SourceMapper;->getSourceRange(Lorg/eclipse/jdt/core/IJavaElement;)Lorg/eclipse/jdt/core/SourceRange;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/core/SourceMapper;->UNKNOWN_RANGE:Lorg/eclipse/jdt/core/SourceRange;

    return-object v0
.end method

.method public getStandardAnnotations(J)[Lorg/eclipse/jdt/core/IAnnotation;
    .locals 6

    const-wide v0, 0x77fffff800000000L    # 1.0565850317039238E270

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    sget-object p1, Lorg/eclipse/jdt/internal/core/Annotation;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/core/IAnnotation;

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide v4, 0x20600ff800000000L    # 9.583895004233563E-153

    and-long/2addr v4, p1

    cmp-long v1, v4, v2

    if-eqz v1, :cond_1

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ANNOTATION_TARGET:[[C

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/core/BinaryMember;->getAnnotation([[C)Lorg/eclipse/jdt/core/IAnnotation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-wide v4, 0x300000000000L

    and-long/2addr v4, p1

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ANNOTATION_RETENTION:[[C

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/core/BinaryMember;->getAnnotation([[C)Lorg/eclipse/jdt/core/IAnnotation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const-wide v4, 0x400000000000L

    and-long/2addr v4, p1

    cmp-long v1, v4, v2

    if-eqz v1, :cond_3

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_DEPRECATED:[[C

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/core/BinaryMember;->getAnnotation([[C)Lorg/eclipse/jdt/core/IAnnotation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const-wide v4, 0x800000000000L

    and-long/2addr v4, p1

    cmp-long v1, v4, v2

    if-eqz v1, :cond_4

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ANNOTATION_DOCUMENTED:[[C

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/core/BinaryMember;->getAnnotation([[C)Lorg/eclipse/jdt/core/IAnnotation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const-wide/high16 v4, 0x1000000000000L

    and-long/2addr v4, p1

    cmp-long v1, v4, v2

    if-eqz v1, :cond_5

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ANNOTATION_INHERITED:[[C

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/core/BinaryMember;->getAnnotation([[C)Lorg/eclipse/jdt/core/IAnnotation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const-wide/high16 v4, 0x10000000000000L

    and-long/2addr v4, p1

    cmp-long v1, v4, v2

    if-eqz v1, :cond_6

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_INVOKE_METHODHANDLE_$_POLYMORPHICSIGNATURE:[[C

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/core/BinaryMember;->getAnnotation([[C)Lorg/eclipse/jdt/core/IAnnotation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    const-wide/high16 v4, 0x8000000000000L

    and-long/2addr p1, v4

    cmp-long p1, p1, v2

    if-eqz p1, :cond_7

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_SAFEVARARGS:[[C

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/BinaryMember;->getAnnotation([[C)Lorg/eclipse/jdt/core/IAnnotation;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lorg/eclipse/jdt/core/IAnnotation;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/eclipse/jdt/core/IAnnotation;

    return-object p1
.end method

.method public isBinary()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isStructureKnown()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/SourceRefElement;->getOpenableParent()Lorg/eclipse/jdt/core/IOpenable;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/IJavaElement;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->isStructureKnown()Z

    move-result v0

    return v0
.end method

.method public move(Lorg/eclipse/jdt/core/IJavaElement;Lorg/eclipse/jdt/core/IJavaElement;Ljava/lang/String;ZLorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    new-instance p1, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance p2, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 p3, 0x3d0

    invoke-direct {p2, p3, p0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;)V

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw p1
.end method

.method public rename(Ljava/lang/String;ZLorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    new-instance p1, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance p2, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 p3, 0x3d0

    invoke-direct {p2, p3, p0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;)V

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw p1
.end method

.method public setContents(Ljava/lang/String;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    new-instance p1, Lorg/eclipse/jdt/core/JavaModelException;

    new-instance p2, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v0, 0x3d0

    invoke-direct {p2, v0, p0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;)V

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/core/JavaModelException;-><init>(Lorg/eclipse/jdt/core/IJavaModelStatus;)V

    throw p1
.end method
