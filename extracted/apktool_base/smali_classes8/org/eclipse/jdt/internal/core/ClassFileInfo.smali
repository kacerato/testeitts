.class Lorg/eclipse/jdt/internal/core/ClassFileInfo;
.super Lorg/eclipse/jdt/internal/core/OpenableElementInfo;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/util/SuffixConstants;


# instance fields
.field protected binaryChildren:[Lorg/eclipse/jdt/internal/core/JavaElement;

.field protected typeParameters:[Lorg/eclipse/jdt/core/ITypeParameter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/ClassFileInfo;->binaryChildren:[Lorg/eclipse/jdt/internal/core/JavaElement;

    return-void
.end method

.method private generateAnnotationInfo(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/util/HashMap;Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/ClassFileInfo;->generateAnnotationInfo(Lorg/eclipse/jdt/internal/core/JavaElement;[CLjava/util/HashMap;Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;Ljava/lang/String;)V

    return-void
.end method

.method private generateAnnotationInfo(Lorg/eclipse/jdt/internal/core/JavaElement;[CLjava/util/HashMap;Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;Ljava/lang/String;)V
    .locals 7

    .line 2
    invoke-interface {p4}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;->getTypeName()[C

    move-result-object p2

    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-static {p2, v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replaceOnCopy([CCC)[C

    move-result-object p2

    invoke-static {p2}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C)[C

    move-result-object p2

    .line 3
    new-instance v0, Lorg/eclipse/jdt/internal/core/Annotation;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v0, p1, v1, p5}, Lorg/eclipse/jdt/internal/core/Annotation;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :goto_0
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 5
    invoke-virtual {p3, v0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {p4}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;->getElementValuePairs()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryElementValuePair;

    move-result-object p1

    .line 7
    array-length p2, p1

    const/4 p5, 0x0

    move p4, p5

    :goto_1
    if-lt p4, p2, :cond_0

    return-void

    .line 8
    :cond_0
    aget-object v1, p1, p4

    invoke-interface {v1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryElementValuePair;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 9
    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    if-eqz v2, :cond_1

    .line 10
    check-cast v1, Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    new-instance v2, Ljava/lang/String;

    aget-object v3, p1, p4

    invoke-interface {v3}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryElementValuePair;->getName()[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-direct {p0, v0, p3, v1, v2}, Lorg/eclipse/jdt/internal/core/ClassFileInfo;->generateAnnotationInfo(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/util/HashMap;Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;Ljava/lang/String;)V

    goto :goto_3

    .line 11
    :cond_1
    instance-of v2, v1, [Ljava/lang/Object;

    if-eqz v2, :cond_4

    .line 12
    check-cast v1, [Ljava/lang/Object;

    .line 13
    array-length v2, v1

    move v3, p5

    :goto_2
    if-lt v3, v2, :cond_2

    goto :goto_3

    .line 14
    :cond_2
    aget-object v4, v1, v3

    .line 15
    instance-of v5, v4, Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    if-eqz v5, :cond_3

    .line 16
    check-cast v4, Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    new-instance v5, Ljava/lang/String;

    aget-object v6, p1, p4

    invoke-interface {v6}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryElementValuePair;->getName()[C

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    invoke-direct {p0, v0, p3, v4, v5}, Lorg/eclipse/jdt/internal/core/ClassFileInfo;->generateAnnotationInfo(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/util/HashMap;Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    .line 17
    :cond_5
    iget p1, v0, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    goto :goto_0
.end method

.method private generateAnnotationsInfos(Lorg/eclipse/jdt/internal/core/JavaElement;[C[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;JLjava/util/HashMap;)V
    .locals 8

    if-eqz p3, :cond_1

    .line 2
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    aget-object v6, p3, v1

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p6

    .line 4
    invoke-direct/range {v2 .. v7}, Lorg/eclipse/jdt/internal/core/ClassFileInfo;->generateAnnotationInfo(Lorg/eclipse/jdt/internal/core/JavaElement;[CLjava/util/HashMap;Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p4

    move-object v5, p6

    .line 5
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/ClassFileInfo;->generateStandardAnnotationsInfos(Lorg/eclipse/jdt/internal/core/JavaElement;[CJLjava/util/HashMap;)V

    return-void
.end method

.method private generateAnnotationsInfos(Lorg/eclipse/jdt/internal/core/JavaElement;[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;JLjava/util/HashMap;)V
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/ClassFileInfo;->generateAnnotationsInfos(Lorg/eclipse/jdt/internal/core/JavaElement;[C[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;JLjava/util/HashMap;)V

    return-void
.end method

.method private generateFieldInfos(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 10

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getFields()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_1

    return-void

    :cond_1
    aget-object v3, p2, v2

    new-instance v5, Lorg/eclipse/jdt/internal/core/BinaryField;

    move-object v4, p1

    check-cast v4, Lorg/eclipse/jdt/internal/core/JavaElement;

    new-instance v6, Ljava/lang/String;

    invoke-interface {v3}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;->getName()[C

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v6}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lorg/eclipse/jdt/internal/core/BinaryField;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)V

    invoke-virtual {p3, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v6

    invoke-interface {v3}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;->getTagBits()J

    move-result-wide v7

    move-object v4, p0

    move-object v9, p3

    invoke-direct/range {v4 .. v9}, Lorg/eclipse/jdt/internal/core/ClassFileInfo;->generateAnnotationsInfos(Lorg/eclipse/jdt/internal/core/JavaElement;[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;JLjava/util/HashMap;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private generateInnerClassHandles(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Ljava/util/ArrayList;)V
    .locals 6

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getMemberTypes()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryNestedType;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lorg/eclipse/jdt/core/IJavaElement;->getAncestor(I)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/IPackageFragment;

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    :cond_0
    aget-object v2, p2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    invoke-interface {v2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryNestedType;->getName()[C

    move-result-object v5

    invoke-static {v5}, Lorg/eclipse/jdt/internal/core/ClassFile;->unqualifiedName([C)[C

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".class"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/eclipse/jdt/core/IPackageFragment;->getClassFile(Ljava/lang/String;)Lorg/eclipse/jdt/core/IClassFile;

    move-result-object v3

    new-instance v4, Lorg/eclipse/jdt/internal/core/BinaryType;

    check-cast v3, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-interface {v2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryNestedType;->getName()[C

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/ClassFile;->simpleName([C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v3, v2}, Lorg/eclipse/jdt/internal/core/BinaryType;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)V

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private generateMethodInfos(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 30

    move-object/from16 v7, p0

    move-object/from16 v8, p3

    invoke-interface/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getMethods()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;

    move-result-object v9

    if-nez v9, :cond_0

    return-void

    :cond_0
    array-length v10, v9

    const/4 v11, 0x0

    move v12, v11

    :goto_0
    if-lt v12, v10, :cond_1

    return-void

    :cond_1
    aget-object v13, v9, v12

    invoke-interface {v13}, Lorg/eclipse/jdt/internal/compiler/env/IGenericMethod;->isConstructor()Z

    move-result v0

    :try_start_0
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/IType;->isEnum()Z

    move-result v1
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move v1, v11

    :goto_1
    invoke-interface {v13}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getGenericSignature()[C

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_3

    invoke-interface {v13}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getMethodDescriptor()[C

    move-result-object v2

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([C)V

    invoke-static {v5}, Lorg/eclipse/jdt/core/Signature;->getParameterTypes(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    sub-int/2addr v6, v3

    if-ltz v6, :cond_2

    new-array v14, v6, [Ljava/lang/String;

    invoke-static {v5, v3, v14, v11, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v6, v11

    move-object v5, v14

    goto :goto_2

    :cond_2
    move v6, v11

    goto :goto_2

    :cond_3
    move v6, v4

    :goto_2
    new-instance v14, Ljava/lang/String;

    invoke-interface {v13}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getSelector()[C

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/String;-><init>([C)V

    if-eqz v0, :cond_4

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/IType;->getElementName()Ljava/lang/String;

    move-result-object v14

    :cond_4
    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    if-eqz v6, :cond_6

    :cond_5
    :try_start_1
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([C)V

    invoke-static {v5}, Lorg/eclipse/jdt/core/Signature;->getParameterTypes(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    :cond_6
    if-eqz v0, :cond_7

    if-eqz v6, :cond_7

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/IType;->isMember()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/IMember;->getFlags()I

    move-result v6

    invoke-static {v6}, Lorg/eclipse/jdt/core/Flags;->isStatic(I)Z

    move-result v6

    if-nez v6, :cond_7

    array-length v6, v5

    add-int/lit8 v15, v6, 0x1

    new-array v15, v15, [Ljava/lang/String;

    invoke-static {v5, v11, v15, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v13}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getMethodDescriptor()[C

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([C)V

    invoke-static {v6}, Lorg/eclipse/jdt/core/Signature;->getParameterTypes(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v11

    aput-object v5, v15, v11
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v15

    :cond_7
    :goto_3
    move-object v15, v2

    goto :goto_4

    :catch_1
    invoke-interface {v13}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getMethodDescriptor()[C

    move-result-object v2

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([C)V

    invoke-static {v5}, Lorg/eclipse/jdt/core/Signature;->getParameterTypes(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :catch_2
    invoke-interface {v13}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getMethodDescriptor()[C

    move-result-object v2

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([C)V

    invoke-static {v5}, Lorg/eclipse/jdt/core/Signature;->getParameterTypes(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :goto_4
    array-length v2, v5

    new-array v2, v2, [[C

    move v6, v11

    :goto_5
    array-length v3, v5

    if-lt v6, v3, :cond_12

    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/ClassFile;->translatedNames([[C)[[C

    move-result-object v3

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v2

    invoke-virtual {v2, v14}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move v14, v11

    :goto_6
    array-length v11, v5

    if-lt v14, v11, :cond_11

    new-instance v11, Lorg/eclipse/jdt/internal/core/BinaryMethod;

    move-object/from16 v2, p1

    check-cast v2, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-direct {v11, v2, v6, v5}, Lorg/eclipse/jdt/internal/core/BinaryMethod;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;[Ljava/lang/String;)V

    move-object/from16 v14, p4

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    invoke-virtual {v8, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual {v8, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v6, v5

    invoke-interface {v13}, Lorg/eclipse/jdt/internal/compiler/env/IGenericMethod;->getArgumentNames()[[C

    move-result-object v2

    if-eqz v2, :cond_9

    array-length v3, v2

    if-ge v3, v6, :cond_8

    goto :goto_9

    :cond_8
    :goto_8
    move-object/from16 v28, v2

    goto :goto_b

    :cond_9
    :goto_9
    new-array v2, v6, [[C

    const/4 v3, 0x0

    :goto_a
    if-lt v3, v6, :cond_f

    goto :goto_8

    :goto_b
    if-eqz v0, :cond_b

    if-eqz v1, :cond_a

    const/16 v29, 0x2

    goto :goto_c

    :cond_a
    :try_start_2
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/IType;->isMember()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/core/IMember;->getFlags()I

    move-result v0

    invoke-static {v0}, Lorg/eclipse/jdt/core/Flags;->isStatic(I)Z

    move-result v0
    :try_end_2
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_2 .. :try_end_2} :catch_3

    if-nez v0, :cond_b

    move/from16 v29, v4

    goto :goto_c

    :catch_3
    :cond_b
    const/16 v29, 0x0

    :goto_c
    move/from16 v4, v29

    :goto_d
    if-lt v4, v6, :cond_d

    move-object/from16 v5, p5

    invoke-direct {v7, v11, v15, v8, v5}, Lorg/eclipse/jdt/internal/core/ClassFileInfo;->generateTypeParameterInfos(Lorg/eclipse/jdt/internal/core/BinaryMember;[CLjava/util/HashMap;Ljava/util/ArrayList;)V

    invoke-interface {v13}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v2

    invoke-interface {v13}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getTagBits()J

    move-result-wide v3

    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/ClassFileInfo;->generateAnnotationsInfos(Lorg/eclipse/jdt/internal/core/JavaElement;[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;JLjava/util/HashMap;)V

    invoke-interface {v13}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    if-eqz v1, :cond_c

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    new-instance v1, Ljava/lang/String;

    invoke-interface {v13}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getSelector()[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v7, v11, v8, v0, v1}, Lorg/eclipse/jdt/internal/core/ClassFileInfo;->generateAnnotationInfo(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/util/HashMap;Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;Ljava/lang/String;)V

    :cond_c
    add-int/lit8 v12, v12, 0x1

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_d
    sub-int v0, v4, v29

    invoke-interface/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/env/IDependent;->getFileName()[C

    move-result-object v1

    invoke-interface {v13, v0, v1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getParameterAnnotations(I[C)[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v3

    if-eqz v3, :cond_e

    new-instance v1, Lorg/eclipse/jdt/internal/core/LocalVariable;

    new-instance v0, Ljava/lang/String;

    aget-object v2, v28, v4

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    iget-object v2, v11, Lorg/eclipse/jdt/internal/core/BinaryMethod;->parameterTypes:[Ljava/lang/String;

    aget-object v24, v2, v4

    const/16 v26, -0x1

    const/16 v27, 0x1

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, -0x1

    const/16 v25, 0x0

    move-object/from16 v17, v1

    move-object/from16 v18, v11

    move-object/from16 v19, v0

    invoke-direct/range {v17 .. v27}, Lorg/eclipse/jdt/internal/core/LocalVariable;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;IIIILjava/lang/String;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;IZ)V

    aget-object v2, v28, v4

    invoke-interface {v13}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getTagBits()J

    move-result-wide v17

    move-object/from16 v0, p0

    move/from16 v16, v4

    move-wide/from16 v4, v17

    move/from16 v17, v6

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/ClassFileInfo;->generateAnnotationsInfos(Lorg/eclipse/jdt/internal/core/JavaElement;[C[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;JLjava/util/HashMap;)V

    goto :goto_e

    :cond_e
    move/from16 v16, v4

    move/from16 v17, v6

    :goto_e
    add-int/lit8 v4, v16, 0x1

    move/from16 v6, v17

    goto :goto_d

    :cond_f
    move/from16 v17, v6

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "arg"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    aput-object v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    move/from16 v6, v17

    goto/16 :goto_a

    :cond_10
    iget v2, v11, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    add-int/2addr v2, v4

    iput v2, v11, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    goto/16 :goto_7

    :cond_11
    new-instance v11, Ljava/lang/String;

    aget-object v4, v3, v14

    invoke-direct {v11, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v11}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v14

    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x1

    goto/16 :goto_6

    :cond_12
    aget-object v3, v5, v6

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    aput-object v3, v2, v6

    add-int/lit8 v6, v6, 0x1

    const/4 v4, 0x1

    const/4 v11, 0x0

    goto/16 :goto_5
.end method

.method private generateStandardAnnotation(Lorg/eclipse/jdt/internal/core/JavaElement;[[C[Lorg/eclipse/jdt/core/IMemberValuePair;Ljava/util/HashMap;)V
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/core/Annotation;

    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-static {p2, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v0, p1, v1}, Lorg/eclipse/jdt/internal/core/Annotation;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)V

    new-instance p1, Lorg/eclipse/jdt/internal/core/AnnotationInfo;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/core/AnnotationInfo;-><init>()V

    iput-object p3, p1, Lorg/eclipse/jdt/internal/core/AnnotationInfo;->members:[Lorg/eclipse/jdt/core/IMemberValuePair;

    invoke-virtual {p4, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private generateStandardAnnotationsInfos(Lorg/eclipse/jdt/internal/core/JavaElement;[CJLjava/util/HashMap;)V
    .locals 4

    const-wide v0, 0x77fffff800000000L    # 1.0565850317039238E270

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-wide v0, 0x20600ff800000000L    # 9.583895004233563E-153

    and-long/2addr v0, p3

    cmp-long p2, v0, v2

    if-eqz p2, :cond_1

    sget-object p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ANNOTATION_TARGET:[[C

    invoke-direct {p0, p3, p4}, Lorg/eclipse/jdt/internal/core/ClassFileInfo;->getTargetElementTypes(J)[Lorg/eclipse/jdt/core/IMemberValuePair;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p5}, Lorg/eclipse/jdt/internal/core/ClassFileInfo;->generateStandardAnnotation(Lorg/eclipse/jdt/internal/core/JavaElement;[[C[Lorg/eclipse/jdt/core/IMemberValuePair;Ljava/util/HashMap;)V

    :cond_1
    const-wide v0, 0x300000000000L

    and-long/2addr v0, p3

    cmp-long p2, v0, v2

    if-eqz p2, :cond_2

    sget-object p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ANNOTATION_RETENTION:[[C

    invoke-direct {p0, p3, p4}, Lorg/eclipse/jdt/internal/core/ClassFileInfo;->getRetentionPolicy(J)[Lorg/eclipse/jdt/core/IMemberValuePair;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p5}, Lorg/eclipse/jdt/internal/core/ClassFileInfo;->generateStandardAnnotation(Lorg/eclipse/jdt/internal/core/JavaElement;[[C[Lorg/eclipse/jdt/core/IMemberValuePair;Ljava/util/HashMap;)V

    :cond_2
    const-wide v0, 0x400000000000L

    and-long/2addr v0, p3

    cmp-long p2, v0, v2

    if-eqz p2, :cond_3

    sget-object p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_DEPRECATED:[[C

    sget-object v0, Lorg/eclipse/jdt/internal/core/Annotation;->NO_MEMBER_VALUE_PAIRS:[Lorg/eclipse/jdt/core/IMemberValuePair;

    invoke-direct {p0, p1, p2, v0, p5}, Lorg/eclipse/jdt/internal/core/ClassFileInfo;->generateStandardAnnotation(Lorg/eclipse/jdt/internal/core/JavaElement;[[C[Lorg/eclipse/jdt/core/IMemberValuePair;Ljava/util/HashMap;)V

    :cond_3
    const-wide v0, 0x800000000000L

    and-long/2addr v0, p3

    cmp-long p2, v0, v2

    if-eqz p2, :cond_4

    sget-object p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ANNOTATION_DOCUMENTED:[[C

    sget-object v0, Lorg/eclipse/jdt/internal/core/Annotation;->NO_MEMBER_VALUE_PAIRS:[Lorg/eclipse/jdt/core/IMemberValuePair;

    invoke-direct {p0, p1, p2, v0, p5}, Lorg/eclipse/jdt/internal/core/ClassFileInfo;->generateStandardAnnotation(Lorg/eclipse/jdt/internal/core/JavaElement;[[C[Lorg/eclipse/jdt/core/IMemberValuePair;Ljava/util/HashMap;)V

    :cond_4
    const-wide/high16 v0, 0x1000000000000L

    and-long/2addr v0, p3

    cmp-long p2, v0, v2

    if-eqz p2, :cond_5

    sget-object p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ANNOTATION_INHERITED:[[C

    sget-object v0, Lorg/eclipse/jdt/internal/core/Annotation;->NO_MEMBER_VALUE_PAIRS:[Lorg/eclipse/jdt/core/IMemberValuePair;

    invoke-direct {p0, p1, p2, v0, p5}, Lorg/eclipse/jdt/internal/core/ClassFileInfo;->generateStandardAnnotation(Lorg/eclipse/jdt/internal/core/JavaElement;[[C[Lorg/eclipse/jdt/core/IMemberValuePair;Ljava/util/HashMap;)V

    :cond_5
    const-wide/high16 v0, 0x10000000000000L

    and-long/2addr v0, p3

    cmp-long p2, v0, v2

    if-eqz p2, :cond_6

    sget-object p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_INVOKE_METHODHANDLE_$_POLYMORPHICSIGNATURE:[[C

    sget-object v0, Lorg/eclipse/jdt/internal/core/Annotation;->NO_MEMBER_VALUE_PAIRS:[Lorg/eclipse/jdt/core/IMemberValuePair;

    invoke-direct {p0, p1, p2, v0, p5}, Lorg/eclipse/jdt/internal/core/ClassFileInfo;->generateStandardAnnotation(Lorg/eclipse/jdt/internal/core/JavaElement;[[C[Lorg/eclipse/jdt/core/IMemberValuePair;Ljava/util/HashMap;)V

    :cond_6
    const-wide/high16 v0, 0x8000000000000L

    and-long p2, p3, v0

    cmp-long p2, p2, v2

    if-eqz p2, :cond_7

    sget-object p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_SAFEVARARGS:[[C

    sget-object p3, Lorg/eclipse/jdt/internal/core/Annotation;->NO_MEMBER_VALUE_PAIRS:[Lorg/eclipse/jdt/core/IMemberValuePair;

    invoke-direct {p0, p1, p2, p3, p5}, Lorg/eclipse/jdt/internal/core/ClassFileInfo;->generateStandardAnnotation(Lorg/eclipse/jdt/internal/core/JavaElement;[[C[Lorg/eclipse/jdt/core/IMemberValuePair;Ljava/util/HashMap;)V

    :cond_7
    return-void
.end method

.method private generateTypeParameterInfos(Lorg/eclipse/jdt/internal/core/BinaryMember;[CLjava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 10

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Lorg/eclipse/jdt/core/Signature;->getTypeParameters([C)[[C

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_1

    return-void

    :cond_1
    aget-object v3, p2, v2

    invoke-static {v3}, Lorg/eclipse/jdt/core/Signature;->getTypeVariable([C)[C

    move-result-object v4

    const/16 v5, 0x2f

    const/16 v6, 0x2e

    invoke-static {v3, v5, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    invoke-static {v3}, Lorg/eclipse/jdt/core/Signature;->getTypeParameterBounds([C)[[C

    move-result-object v3

    array-length v5, v3

    new-array v6, v5, [[C

    move v7, v1

    :goto_1
    if-lt v7, v5, :cond_3

    new-instance v8, Lorg/eclipse/jdt/internal/core/TypeParameter;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v8, p1, v5}, Lorg/eclipse/jdt/internal/core/TypeParameter;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)V

    new-instance v9, Lorg/eclipse/jdt/internal/core/TypeParameterElementInfo;

    invoke-direct {v9}, Lorg/eclipse/jdt/internal/core/TypeParameterElementInfo;-><init>()V

    iput-object v6, v9, Lorg/eclipse/jdt/internal/core/TypeParameterElementInfo;->bounds:[[C

    iput-object v3, v9, Lorg/eclipse/jdt/internal/core/TypeParameterElementInfo;->boundsSignatures:[[C

    invoke-virtual {p4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-virtual {p3, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget v3, v8, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v8, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    goto :goto_2

    :cond_3
    aget-object v8, v3, v7

    invoke-static {v8}, Lorg/eclipse/jdt/core/Signature;->toCharArray([C)[C

    move-result-object v8

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method private getRetentionPolicy(J)[Lorg/eclipse/jdt/core/IMemberValuePair;
    .locals 7

    const-wide v0, 0x300000000000L

    and-long v2, p1, v0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    sget-object p1, Lorg/eclipse/jdt/internal/core/Annotation;->NO_MEMBER_VALUE_PAIRS:[Lorg/eclipse/jdt/core/IMemberValuePair;

    return-object p1

    :cond_0
    cmp-long v0, v2, v0

    const/16 v1, 0x2e

    if-nez v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/String;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ANNOTATION_RETENTIONPOLICY:[[C

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/String;-><init>([C)V

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/String;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_RUNTIME:[C

    invoke-direct {p2, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-wide v2, 0x100000000000L

    and-long/2addr p1, v2

    cmp-long p1, p1, v4

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/String;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ANNOTATION_RETENTIONPOLICY:[[C

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/String;-><init>([C)V

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/String;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_SOURCE:[C

    invoke-direct {p2, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/String;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ANNOTATION_RETENTIONPOLICY:[[C

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/String;-><init>([C)V

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/String;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_CLASS:[C

    invoke-direct {p2, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance p2, Lorg/eclipse/jdt/internal/core/ClassFileInfo$2;

    invoke-direct {p2, p0, p1}, Lorg/eclipse/jdt/internal/core/ClassFileInfo$2;-><init>(Lorg/eclipse/jdt/internal/core/ClassFileInfo;Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array p1, p1, [Lorg/eclipse/jdt/core/IMemberValuePair;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    return-object p1
.end method

.method private getTargetElementTypes(J)[Lorg/eclipse/jdt/core/IMemberValuePair;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ANNOTATION_ELEMENTTYPE:[[C

    const/16 v6, 0x2e

    invoke-static {v5, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide v4, 0x1000000000L

    and-long/2addr v4, p1

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    sget-object v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->TYPE:[C

    invoke-direct {v5, v8}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-wide v4, 0x2000000000L

    and-long/2addr v4, p1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    sget-object v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_FIELD:[C

    invoke-direct {v5, v8}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-wide v4, 0x4000000000L

    and-long/2addr v4, p1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    sget-object v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_METHOD:[C

    invoke-direct {v5, v8}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const-wide v4, 0x8000000000L

    and-long/2addr v4, p1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    sget-object v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_PARAMETER:[C

    invoke-direct {v5, v8}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const-wide v4, 0x10000000000L

    and-long/2addr v4, p1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    sget-object v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_CONSTRUCTOR:[C

    invoke-direct {v5, v8}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const-wide v4, 0x20000000000L

    and-long/2addr v4, p1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    sget-object v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_LOCAL_VARIABLE:[C

    invoke-direct {v5, v8}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const-wide v4, 0x40000000000L

    and-long/2addr v4, p1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    sget-object v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_ANNOTATION_TYPE:[C

    invoke-direct {v5, v8}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    const-wide v4, 0x80000000000L

    and-long/2addr v4, p1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    sget-object v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_PACKAGE:[C

    invoke-direct {v5, v8}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    const-wide/high16 v4, 0x20000000000000L

    and-long/2addr v4, p1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    sget-object v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->TYPE_USE_TARGET:[C

    invoke-direct {v5, v8}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    const-wide/high16 v4, 0x40000000000000L

    and-long/2addr v4, p1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    sget-object v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->TYPE_PARAMETER_TARGET:[C

    invoke-direct {v5, v8}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    const-wide/high16 v4, 0x2000000000000000L

    and-long/2addr v4, p1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/String;

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->UPPER_MODULE:[C

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_c

    const-wide v2, 0x800000000L

    and-long/2addr p1, v2

    cmp-long p1, p1, v6

    if-eqz p1, :cond_b

    sget-object p1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_STRINGS:[Ljava/lang/String;

    goto :goto_0

    :cond_b
    sget-object p1, Lorg/eclipse/jdt/internal/core/Annotation;->NO_MEMBER_VALUE_PAIRS:[Lorg/eclipse/jdt/core/IMemberValuePair;

    return-object p1

    :cond_c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v1, :cond_d

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    :goto_0
    new-instance p2, Lorg/eclipse/jdt/internal/core/ClassFileInfo$1;

    invoke-direct {p2, p0, p1}, Lorg/eclipse/jdt/internal/core/ClassFileInfo$1;-><init>(Lorg/eclipse/jdt/internal/core/ClassFileInfo;Ljava/lang/Object;)V

    new-array p1, v1, [Lorg/eclipse/jdt/core/IMemberValuePair;

    aput-object p2, p1, v0

    return-object p1
.end method


# virtual methods
.method public readBinaryChildren(Lorg/eclipse/jdt/internal/core/ClassFile;Ljava/util/HashMap;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;)V
    .locals 8

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/ClassFile;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/core/BinaryType;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v2

    invoke-interface {p3}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getTagBits()J

    move-result-wide v3

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/ClassFileInfo;->generateAnnotationsInfos(Lorg/eclipse/jdt/internal/core/JavaElement;[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;JLjava/util/HashMap;)V

    invoke-interface {p3}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getGenericSignature()[C

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, v7}, Lorg/eclipse/jdt/internal/core/ClassFileInfo;->generateTypeParameterInfos(Lorg/eclipse/jdt/internal/core/BinaryMember;[CLjava/util/HashMap;Ljava/util/ArrayList;)V

    invoke-direct {p0, p1, p3, p2, v6}, Lorg/eclipse/jdt/internal/core/ClassFileInfo;->generateFieldInfos(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    move-object v0, p0

    move-object v2, p3

    move-object v3, p2

    move-object v4, v6

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/ClassFileInfo;->generateMethodInfos(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-direct {p0, p1, p3, v6}, Lorg/eclipse/jdt/internal/core/ClassFileInfo;->generateInnerClassHandles(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Ljava/util/ArrayList;)V

    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lorg/eclipse/jdt/internal/core/JavaElement;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/ClassFileInfo;->binaryChildren:[Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lorg/eclipse/jdt/internal/core/TypeParameter;->NO_TYPE_PARAMETERS:[Lorg/eclipse/jdt/core/ITypeParameter;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/ClassFileInfo;->typeParameters:[Lorg/eclipse/jdt/core/ITypeParameter;

    goto :goto_0

    :cond_1
    new-array p1, p1, [Lorg/eclipse/jdt/core/ITypeParameter;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/ClassFileInfo;->typeParameters:[Lorg/eclipse/jdt/core/ITypeParameter;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public removeBinaryChildren()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ClassFileInfo;->binaryChildren:[Lorg/eclipse/jdt/internal/core/JavaElement;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/ClassFileInfo;->binaryChildren:[Lorg/eclipse/jdt/internal/core/JavaElement;

    array-length v4, v3

    if-lt v2, v4, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaElement;->NO_ELEMENTS:[Lorg/eclipse/jdt/internal/core/JavaElement;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/ClassFileInfo;->binaryChildren:[Lorg/eclipse/jdt/internal/core/JavaElement;

    goto :goto_2

    :cond_0
    aget-object v3, v3, v2

    instance-of v4, v3, Lorg/eclipse/jdt/internal/core/BinaryType;

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/JavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/core/JavaElement;

    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->removeInfoAndChildren(Lorg/eclipse/jdt/internal/core/JavaElement;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->removeInfoAndChildren(Lorg/eclipse/jdt/internal/core/JavaElement;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/ClassFileInfo;->typeParameters:[Lorg/eclipse/jdt/core/ITypeParameter;

    if-eqz v0, :cond_4

    invoke-static {}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->getJavaModelManager()Lorg/eclipse/jdt/internal/core/JavaModelManager;

    move-result-object v0

    :goto_3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/ClassFileInfo;->typeParameters:[Lorg/eclipse/jdt/core/ITypeParameter;

    array-length v3, v2

    if-lt v1, v3, :cond_3

    sget-object v0, Lorg/eclipse/jdt/internal/core/TypeParameter;->NO_TYPE_PARAMETERS:[Lorg/eclipse/jdt/core/ITypeParameter;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/ClassFileInfo;->typeParameters:[Lorg/eclipse/jdt/core/ITypeParameter;

    goto :goto_4

    :cond_3
    aget-object v2, v2, v1

    check-cast v2, Lorg/eclipse/jdt/internal/core/TypeParameter;

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/core/JavaModelManager;->removeInfoAndChildren(Lorg/eclipse/jdt/internal/core/JavaElement;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    return-void
.end method
