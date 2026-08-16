.class public Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;


# instance fields
.field private enclosingTypeName:[C

.field private genericSignature:[C

.field private modifiers:I

.field private name:[C

.field private sourceName:[C

.field private superInterfaces:[[C

.field private superclass:[C

.field private typeParameterSignatures:[[C


# direct methods
.method public constructor <init>(I[C[C[C[[C)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->NoInterface:[[C

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;->superInterfaces:[[C

    .line 13
    iput p1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;->modifiers:I

    .line 14
    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;->sourceName:[C

    .line 15
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;->name:[C

    .line 16
    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;->enclosingTypeName:[C

    .line 17
    iput-object p5, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;->typeParameterSignatures:[[C

    if-eqz p5, :cond_2

    .line 18
    array-length p1, p5

    const/4 p2, 0x0

    :goto_0
    if-lt p2, p1, :cond_0

    goto :goto_1

    :cond_0
    aget-object p3, p5, p2

    if-eqz p3, :cond_1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 19
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parameter\'s type signature must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public constructor <init>(I[C[C[C[[CC)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object p6, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->NoInterface:[[C

    iput-object p6, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;->superInterfaces:[[C

    .line 3
    iput p1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;->modifiers:I

    .line 4
    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;->sourceName:[C

    const/16 p1, 0x2e

    const/16 p6, 0x2f

    if-nez p4, :cond_0

    .line 5
    invoke-static {p2, p3, p6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;->name:[C

    goto :goto_0

    :cond_0
    const/16 v0, 0x24

    .line 6
    invoke-static {p2, p6, p4, v0, p3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([CC[CC[C)[C

    move-result-object p3

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;->name:[C

    .line 7
    invoke-static {p2, p4, p6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;->enclosingTypeName:[C

    .line 8
    invoke-static {p2, p1, p6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    .line 9
    :goto_0
    iput-object p5, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;->typeParameterSignatures:[[C

    .line 10
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;->name:[C

    invoke-static {p2, p1, p6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

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

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;->enclosingTypeName:[C

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
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getGenericSignature()[C
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;->typeParameterSignatures:[[C

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;->genericSignature:[C

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;->typeParameterSignatures:[[C

    array-length v1, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_3

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;->superclass:[C

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const-string v1, "java.lang.Object"

    invoke-static {v1, v3}, Lorg/eclipse/jdt/core/Signature;->createTypeSignature(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    invoke-static {v1, v3}, Lorg/eclipse/jdt/core/Signature;->createTypeSignature([CZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;->superInterfaces:[[C

    if-eqz v1, :cond_2

    array-length v1, v1

    :goto_2
    if-lt v2, v1, :cond_1

    goto :goto_3

    :cond_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;->superInterfaces:[[C

    aget-object v4, v4, v2

    invoke-static {v4, v3}, Lorg/eclipse/jdt/core/Signature;->createTypeSignature([CZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;->genericSignature:[C

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    goto :goto_4

    :cond_3
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;->typeParameterSignatures:[[C

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;->genericSignature:[C

    return-object v0
.end method

.method public getInterfaceNames()[[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;->superInterfaces:[[C

    return-object v0
.end method

.method public getMemberTypes()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryNestedType;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMethods()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMissingTypeNames()[[[C
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;->modifiers:I

    return v0
.end method

.method public getModule()[C
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;->name:[C

    return-object v0
.end method

.method public getSourceName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;->sourceName:[C

    return-object v0
.end method

.method public getSuperclassName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;->superclass:[C

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

.method public recordInterface([C)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;->superInterfaces:[[C

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->NoInterface:[[C

    if-ne v0, v1, :cond_0

    filled-new-array {p1}, [[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;->superInterfaces:[[C

    goto :goto_0

    :cond_0
    array-length v1, v0

    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [[C

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;->superInterfaces:[[C

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;->superInterfaces:[[C

    aput-object p1, v0, v1

    :goto_0
    return-void
.end method

.method public recordSuperType([C[CC)V
    .locals 4

    const/16 v0, 0x2e

    if-eqz p2, :cond_0

    array-length v1, p2

    add-int/lit8 v2, v1, -0x1

    aget-char v2, p2, v2

    const/16 v3, 0x24

    if-ne v2, v3, :cond_0

    invoke-static {p2, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastSegment([CC)[C

    move-result-object v2

    invoke-static {v2, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object p1

    array-length v2, v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {p2, v2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object p2

    :cond_0
    const/16 v1, 0x43

    const/16 v2, 0x2f

    if-ne p3, v1, :cond_2

    iget p3, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;->modifiers:I

    invoke-static {p3}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->kind(I)I

    move-result p3

    const/4 v1, 0x2

    if-ne p3, v1, :cond_1

    return-void

    :cond_1
    invoke-static {p2, p1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object p1

    invoke-static {p1, v0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;->recordSuperclass([C)V

    goto :goto_0

    :cond_2
    invoke-static {p2, p1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object p1

    invoke-static {p1, v0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;->recordInterface([C)V

    :goto_0
    return-void
.end method

.method public recordSuperclass([C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;->superclass:[C

    return-void
.end method

.method public sourceFileName()[C
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;->modifiers:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "public "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;->modifiers:I

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->kind(I)I

    move-result v1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "enum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    const-string v1, "interface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    const-string v1, "class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;->name:[C

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :cond_4
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;->superclass:[C

    if-eqz v1, :cond_5

    const-string v1, "\n  extends "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;->superclass:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :cond_5
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;->superInterfaces:[[C

    if-eqz v1, :cond_8

    array-length v1, v1

    if-eqz v1, :cond_8

    const-string v2, "\n implements "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v1, :cond_6

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyBinaryType;->superInterfaces:[[C

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v1, -0x1

    if-eq v2, v3, :cond_7

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
