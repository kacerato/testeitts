.class public Lorg/eclipse/jdt/internal/eval/CodeSnippetSkeleton;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;
.implements Lorg/eclipse/jdt/internal/eval/EvaluationConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/eval/CodeSnippetSkeleton$BinaryMethodSkeleton;
    }
.end annotation


# instance fields
.field methods:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;


# direct methods
.method public constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/eclipse/jdt/internal/eval/CodeSnippetSkeleton$BinaryMethodSkeleton;

    const-string v1, "<init>"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const-string v2, "()V"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [[C

    const/4 v6, 0x1

    invoke-direct {v0, v1, v3, v5, v6}, Lorg/eclipse/jdt/internal/eval/CodeSnippetSkeleton$BinaryMethodSkeleton;-><init>([C[C[[CZ)V

    new-instance v1, Lorg/eclipse/jdt/internal/eval/CodeSnippetSkeleton$BinaryMethodSkeleton;

    const-string v3, "run"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const-string v5, "java/lang/Throwable"

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    filled-new-array {v5}, [[C

    move-result-object v5

    invoke-direct {v1, v3, v2, v5, v4}, Lorg/eclipse/jdt/internal/eval/CodeSnippetSkeleton$BinaryMethodSkeleton;-><init>([C[C[[CZ)V

    new-instance v2, Lorg/eclipse/jdt/internal/eval/CodeSnippetSkeleton$BinaryMethodSkeleton;

    const-string v3, "setResult"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    const-string v5, "(Ljava/lang/Object;Ljava/lang/Class;)V"

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    new-array v7, v4, [[C

    invoke-direct {v2, v3, v5, v7, v4}, Lorg/eclipse/jdt/internal/eval/CodeSnippetSkeleton$BinaryMethodSkeleton;-><init>([C[C[[CZ)V

    const/4 v3, 0x3

    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;

    aput-object v0, v3, v4

    aput-object v1, v3, v6

    const/4 v0, 0x2

    aput-object v2, v3, v0

    iput-object v3, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetSkeleton;->methods:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;

    return-void
.end method


# virtual methods
.method public enrichWithExternalAnnotationsFor(Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 0

    return-object p1
.end method

.method public getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnclosingMethod()[C
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnclosingTypeName()[C
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getExternalAnnotationStatus()Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;->NOT_EEA_CONFIGURED:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;

    return-object v0
.end method

.method public getFields()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFileName()[C
    .locals 2

    sget-object v0, Lorg/eclipse/jdt/internal/eval/EvaluationConstants;->CODE_SNIPPET_NAME:[C

    invoke-static {}, Lorg/eclipse/jdt/internal/core/util/Util;->defaultJavaExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v0

    return-object v0
.end method

.method public getGenericSignature()[C
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterfaceNames()[[C
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getJavadocContents()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getJavadocContents(Lorg/eclipse/core/runtime/IProgressMonitor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    .line 2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMemberTypes()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryNestedType;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMethods()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetSkeleton;->methods:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;

    return-object v0
.end method

.method public getMissingTypeNames()[[[C
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getModule()[C
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()[C
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/eval/EvaluationConstants;->CODE_SNIPPET_NAME:[C

    return-object v0
.end method

.method public getSourceName()[C
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/eval/EvaluationConstants;->ROOT_CLASS_NAME:[C

    return-object v0
.end method

.method public getSuperclassName()[C
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTagBits()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getURLContents(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public isAnonymous()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isBinaryType()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLocal()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMember()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public sourceFileName()[C
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
