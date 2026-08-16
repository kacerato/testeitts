.class public Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;
.super Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;
    }
.end annotation


# static fields
.field private static final NO_BINARY_METHODS:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;

.field public static final TYPE_QUALIFIER_DEFAULT:[C


# instance fields
.field private containerAnnotationType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

.field defaultNullness:I

.field protected enclosingType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

.field protected environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

.field public externalAnnotationStatus:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;

.field protected fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

.field protected memberTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

.field protected methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

.field protected module:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

.field private prototype:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

.field protected storedAnnotations:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

.field protected superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

.field protected superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

.field protected typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "TypeQualifierDefault"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->TYPE_QUALIFIER_DEFAULT:[C

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->NO_BINARY_METHODS:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->storedAnnotations:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->defaultNullness:I

    .line 4
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;->NOT_EEA_CONFIGURED:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->externalAnnotationStatus:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;

    .line 5
    iput-object p0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;)V
    .locals 1

    .line 6
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->storedAnnotations:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->defaultNullness:I

    .line 9
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;->NOT_EEA_CONFIGURED:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->externalAnnotationStatus:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;

    .line 10
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 11
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->enclosingType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->enclosingType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 12
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 13
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    .line 14
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    .line 15
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 16
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    .line 17
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    .line 18
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    .line 19
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->storedAnnotations:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->storedAnnotations:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Z)V
    .locals 8

    .line 21
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->storedAnnotations:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    const/4 v1, 0x0

    .line 23
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->defaultNullness:I

    .line 24
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;->NOT_EEA_CONFIGURED:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->externalAnnotationStatus:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;

    .line 25
    iput-object p0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    .line 26
    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getName()[C

    move-result-object v2

    const/16 v3, 0x2f

    invoke-static {v3, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    .line 27
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->computeId()V

    .line 28
    iget-wide v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v4, 0x40

    or-long/2addr v2, v4

    iput-wide v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    .line 29
    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    .line 30
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    .line 31
    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IDependent;->getFileName()[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fileName:[C

    .line 32
    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getGenericSignature()[C

    move-result-object p1

    if-eqz p1, :cond_0

    .line 33
    array-length v2, p1

    if-lez v2, :cond_0

    aget-char p1, p1, v1

    const/16 v1, 0x3c

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    .line 35
    :goto_0
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    .line 36
    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getSourceName()[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    .line 37
    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IGenericType;->getModifiers()I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    .line 38
    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getTagBits()J

    move-result-wide v0

    const-wide/32 v2, 0x20000

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-eqz p1, :cond_1

    .line 39
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    .line 40
    :cond_1
    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->isAnonymous()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 41
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v2, 0x834

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    goto :goto_1

    .line 42
    :cond_2
    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->isLocal()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 43
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v2, 0x814

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    goto :goto_1

    .line 44
    :cond_3
    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->isMember()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 45
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v2, 0x80c

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    .line 46
    :cond_4
    :goto_1
    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getEnclosingTypeName()[C

    move-result-object v3

    if-eqz v3, :cond_6

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v2, p3

    .line 47
    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getTypeFromConstantPoolName([CIIZ[[[C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->enclosingType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 48
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v2, 0x800080c

    or-long/2addr v0, v2

    .line 49
    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    .line 50
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStrictfp()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 51
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    .line 52
    :cond_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isDeprecated()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 53
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    const/high16 p3, 0x200000

    or-int/2addr p1, p3

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    :cond_6
    if-eqz p4, :cond_7

    const/4 p1, 0x1

    .line 54
    invoke-virtual {p0, p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->cachePartsFrom(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Z)V

    :cond_7
    return-void
.end method

.method private addMethodTypeVariables([Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;
    .locals 9

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eqz v0, :cond_7

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-ne v0, v1, :cond_0

    goto :goto_4

    :cond_0
    if-eqz p1, :cond_6

    if-ne p1, v1, :cond_1

    goto :goto_3

    :cond_1
    array-length v1, v0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v2, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    array-length v0, v0

    array-length v3, p1

    move v5, v0

    move v6, v4

    :goto_0
    if-lt v6, v3, :cond_3

    if-eq v5, v1, :cond_2

    new-array p1, v5, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    invoke-static {v2, v4, p1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, p1

    :cond_2
    return-object v2

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-gez v0, :cond_4

    add-int/lit8 v0, v5, 0x1

    aget-object v7, p1, v6

    aput-object v7, v2, v5

    move v5, v0

    goto :goto_2

    :cond_4
    aget-object v7, p1, v6

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    aget-object v8, v8, v0

    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    invoke-static {v7, v8}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v7

    if-eqz v7, :cond_5

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_6
    :goto_3
    return-object v0

    :cond_7
    :goto_4
    return-object p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public static convertMemberValue(Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;[[[CZ)Ljava/lang/Object;
    .locals 10

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    instance-of v0, p0, Lorg/eclipse/jdt/internal/compiler/env/ClassSignature;

    if-eqz v0, :cond_2

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/env/ClassSignature;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/env/ClassSignature;->getTypeName()[C

    move-result-object v1

    const/4 v5, 0x0

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->EMPTY_ANNOTATION_WALKER:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object v0, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getTypeFromSignature([CIIZLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[[[CLorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p0, Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    if-eqz v0, :cond_3

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->createAnnotation(Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;[[[C)Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of v0, p0, Lorg/eclipse/jdt/internal/compiler/env/EnumConstantSignature;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/env/EnumConstantSignature;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/env/EnumConstantSignature;->getTypeName()[C

    move-result-object v3

    const/4 v7, 0x0

    sget-object v9, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->EMPTY_ANNOTATION_WALKER:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v2, p1

    move-object v8, p2

    invoke-virtual/range {v2 .. v9}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getTypeFromSignature([CIIZLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[[[CLorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isUnresolvedType()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p3, :cond_4

    new-instance p3, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair$UnresolvedEnumConstant;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/env/EnumConstantSignature;->getEnumConstantName()[C

    move-result-object p0

    invoke-direct {p3, p2, p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair$UnresolvedEnumConstant;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;[C)V

    return-object p3

    :cond_4
    invoke-static {p2, p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/env/EnumConstantSignature;->getEnumConstantName()[C

    move-result-object p0

    invoke-virtual {p1, p0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getField([CZ)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object p0

    return-object p0

    :cond_5
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_8

    check-cast p0, [Ljava/lang/Object;

    array-length v0, p0

    if-nez v0, :cond_6

    return-object p0

    :cond_6
    new-array v2, v0, [Ljava/lang/Object;

    :goto_0
    if-lt v1, v0, :cond_7

    return-object v2

    :cond_7
    aget-object v3, p0, v1

    invoke-static {v3, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->convertMemberValue(Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;[[[CZ)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public static createAnnotation(Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;[[[C)Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;
    .locals 11

    instance-of v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->exceptionDuringDecode:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Accessing annotation with decode error"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;->getElementValuePairs()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryElementValuePair;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    array-length v2, v0

    :goto_0
    if-nez v2, :cond_2

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_ELEMENT_VALUE_PAIRS:[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    goto :goto_1

    :cond_2
    new-array v3, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    :goto_1
    move v4, v1

    :goto_2
    if-lt v4, v2, :cond_4

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;->getTypeName()[C

    move-result-object v6

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;->isExternalAnnotation()Z

    move-result p0

    if-eqz p0, :cond_3

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->root:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    :cond_3
    array-length p0, v6

    add-int/lit8 v8, p0, -0x1

    const/4 v9, 0x0

    const/4 v7, 0x1

    move-object v5, p1

    move-object v10, p2

    invoke-virtual/range {v5 .. v10}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getTypeFromConstantPoolName([CIIZ[[[C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p0

    invoke-virtual {p1, p0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createUnresolvedAnnotation(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;)Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance v5, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    aget-object v6, v0, v4

    invoke-interface {v6}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryElementValuePair;->getName()[C

    move-result-object v6

    aget-object v7, v0, v4

    invoke-interface {v7}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryElementValuePair;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, p1, p2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->convertMemberValue(Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;[[[CZ)Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;-><init>([CLjava/lang/Object;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public static createAnnotations([Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;[[[C)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p0

    :goto_0
    if-nez v1, :cond_1

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    goto :goto_1

    :cond_1
    new-array v2, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    :goto_1
    if-lt v0, v1, :cond_2

    return-object v2

    :cond_2
    aget-object v3, p0, v0

    invoke-static {v3, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->createAnnotation(Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;[[[C)Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private createFields([Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;J[[[C)V
    .locals 22

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->isPrototype()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, v9, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-boolean v10, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->mayTolerateMissingType:Z

    const/4 v11, 0x1

    iput-boolean v11, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->mayTolerateMissingType:Z

    :try_start_0
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_FIELDS:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iput-object v1, v9, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v0, :cond_d

    array-length v12, v0

    if-lez v12, :cond_d

    new-array v13, v12, [Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    const-wide/32 v1, 0x310000

    cmp-long v1, p3, v1

    const/4 v14, 0x0

    if-ltz v1, :cond_0

    move v15, v11

    goto :goto_0

    :cond_0
    move v15, v14

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->hasRestrictedAccess()Z

    move-result v16

    const/4 v1, -0x1

    move/from16 v17, v1

    move v8, v14

    :goto_1
    if-lt v8, v12, :cond_2

    iput-object v13, v9, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-ltz v17, :cond_d

    move/from16 v1, v17

    :goto_2
    if-lt v1, v12, :cond_1

    goto/16 :goto_a

    :cond_1
    aget-object v2, v0, v1

    iget-object v3, v9, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    aget-object v3, v3, v1

    invoke-interface {v2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v2

    iget-object v4, v9, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-object/from16 v7, p5

    invoke-static {v2, v4, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->createAnnotations([Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;[[[C)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v2

    invoke-virtual {v3, v2, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->setAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :cond_2
    move-object/from16 v7, p5

    aget-object v18, v0, v8

    if-eqz v15, :cond_3

    invoke-interface/range {v18 .. v18}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;->getGenericSignature()[C

    move-result-object v1

    :goto_3
    move-object v6, v1

    goto :goto_4

    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    :goto_4
    invoke-interface/range {v18 .. v18}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    move-result-object v1

    invoke-interface/range {v18 .. v18}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v2

    invoke-direct {v9, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->getNullDefaultFrom([Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)I

    move-result v2

    invoke-direct {v9, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->getTypeAnnotationWalker([Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;I)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v1

    const-wide/32 v2, 0x340000

    cmp-long v2, p3, v2

    if-ltz v2, :cond_4

    aget-object v2, v0, v8

    iget-object v3, v9, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-object/from16 v5, p2

    invoke-interface {v5, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->enrichWithExternalAnnotationsFor(Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v1

    goto :goto_5

    :cond_4
    move-object/from16 v5, p2

    :goto_5
    invoke-interface {v1}, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->toField()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v19

    if-nez v6, :cond_5

    iget-object v1, v9, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-interface/range {v18 .. v18}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;->getTypeName()[C

    move-result-object v2

    const/4 v4, -0x1

    const/16 v20, 0x0

    const/4 v3, 0x0

    move/from16 v5, v20

    move-object v14, v6

    move-object/from16 v6, p0

    move-object/from16 v7, p5

    move/from16 v21, v8

    move-object/from16 v8, v19

    invoke-virtual/range {v1 .. v8}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getTypeFromSignature([CIIZLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[[[CLorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    :goto_6
    move-object v3, v1

    goto :goto_7

    :cond_5
    move-object v14, v6

    move/from16 v21, v8

    iget-object v1, v9, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;

    invoke-direct {v2, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;-><init>([C)V

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-object/from16 v4, p0

    move-object/from16 v5, p5

    move-object/from16 v6, v19

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getTypeFromTypeSignature(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[[[CLorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    goto :goto_6

    :goto_7
    new-instance v7, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-interface/range {v18 .. v18}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;->getName()[C

    move-result-object v2

    invoke-interface/range {v18 .. v18}, Lorg/eclipse/jdt/internal/compiler/env/IGenericField;->getModifiers()I

    move-result v1

    const/high16 v4, 0x2000000

    or-int/2addr v4, v1

    invoke-interface/range {v18 .. v18}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;->getConstant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v6

    move-object v1, v7

    move-object/from16 v5, p0

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ILorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/impl/Constant;)V

    iget-object v1, v9, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->storeAnnotations:Z

    if-nez v2, :cond_6

    iget-wide v1, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v3, 0x350000

    cmp-long v1, v1, v3

    if-ltz v1, :cond_6

    invoke-interface/range {v18 .. v18}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface/range {v18 .. v18}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;->getTagBits()J

    move-result-wide v1

    const-wide v3, 0x400000000000L

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_6

    move v1, v11

    goto :goto_8

    :cond_6
    const/4 v1, 0x0

    :goto_8
    if-gez v17, :cond_9

    iget-object v2, v9, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean v2, v2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->storeAnnotations:Z

    if-nez v2, :cond_7

    if-eqz v1, :cond_9

    :cond_7
    invoke-interface/range {v18 .. v18}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v2

    if-eqz v2, :cond_9

    if-eqz v1, :cond_8

    invoke-virtual {v9, v11, v11}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->storedAnnotations(ZZ)Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    :cond_8
    move/from16 v1, v21

    move/from16 v17, v1

    goto :goto_9

    :cond_9
    move/from16 v1, v21

    :goto_9
    iput v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    if-eqz v15, :cond_a

    iget-wide v2, v7, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    invoke-interface/range {v18 .. v18}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;->getTagBits()J

    move-result-wide v4

    or-long/2addr v2, v4

    iput-wide v2, v7, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    :cond_a
    if-eqz v16, :cond_b

    iget v2, v7, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    const/high16 v3, 0x40000

    or-int/2addr v2, v3

    iput v2, v7, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    :cond_b
    if-eqz v14, :cond_c

    iget v2, v7, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    const/high16 v3, 0x40000000    # 2.0f

    or-int/2addr v2, v3

    iput v2, v7, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    :cond_c
    aput-object v7, v13, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v8, v1, 0x1

    const/4 v14, 0x0

    goto/16 :goto_1

    :cond_d
    :goto_a
    iget-object v0, v9, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iput-boolean v10, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->mayTolerateMissingType:Z

    return-void

    :goto_b
    iget-object v1, v9, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iput-boolean v10, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->mayTolerateMissingType:Z

    throw v0

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private createMethod(Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;J[[[C)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 30

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v0, p2

    move-object/from16 v10, p5

    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->isPrototype()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/env/IGenericMethod;->getModifiers()I

    move-result v1

    const/high16 v2, 0x2000000

    or-int/2addr v1, v2

    const-wide/32 v2, 0x310000

    cmp-long v2, p3, v2

    if-gez v2, :cond_0

    and-int/lit16 v1, v1, -0x81

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_1

    and-int/lit16 v3, v1, 0x400

    if-nez v3, :cond_1

    and-int/lit8 v3, v1, 0x8

    if-nez v3, :cond_1

    and-int/lit8 v3, v1, 0x2

    if-nez v3, :cond_1

    const/high16 v3, 0x10000

    or-int/2addr v1, v3

    :cond_1
    move v11, v1

    sget-object v12, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_EXCEPTIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_PARAMETERS:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sget-object v13, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/env/IGenericMethod;->getArgumentNames()[[C

    move-result-object v14

    const/4 v7, 0x1

    if-ltz v2, :cond_2

    move v5, v7

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v2

    invoke-direct {v8, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->getNullDefaultFrom([Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)I

    move-result v2

    invoke-direct {v8, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->getTypeAnnotationWalker([Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;I)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getGenericSignature()[C

    move-result-object v2

    const-wide/32 v3, 0x340000

    move/from16 v16, v5

    const/16 v5, 0x29

    const/16 v17, 0x0

    if-nez v2, :cond_19

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getMethodDescriptor()[C

    move-result-object v18

    cmp-long v2, p3, v3

    if-ltz v2, :cond_3

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-interface {v0, v1, v9, v2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->enrichWithExternalAnnotationsFor(Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v1

    :cond_3
    move-object v4, v1

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_1
    add-int/2addr v0, v7

    aget-char v1, v18, v0

    const/16 v15, 0x4c

    const/16 v2, 0x5b

    if-ne v1, v5, :cond_15

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/env/IGenericMethod;->isConstructor()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isMemberType()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStatic()Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v7

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isEnum()Z

    move-result v5

    if-eqz v5, :cond_5

    add-int/lit8 v1, v1, 0x2

    :cond_5
    move v5, v1

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    :goto_3
    sub-int v1, v3, v5

    if-lez v1, :cond_e

    new-array v6, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->storeAnnotations:Z

    if-eqz v0, :cond_7

    new-array v0, v1, [[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-object/from16 v19, v0

    goto :goto_4

    :cond_7
    move-object/from16 v19, v17

    :goto_4
    move/from16 v20, v7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v21, 0x0

    :goto_5
    if-lt v1, v3, :cond_8

    move/from16 v29, v5

    move-object v15, v6

    move-object/from16 v27, v12

    move-object/from16 v21, v13

    move/from16 v28, v16

    move-object v12, v4

    move v13, v7

    goto/16 :goto_b

    :cond_8
    :goto_6
    add-int/2addr v0, v7

    aget-char v7, v18, v0

    if-eq v7, v2, :cond_d

    if-ne v7, v15, :cond_a

    :goto_7
    const/4 v7, 0x1

    add-int/2addr v0, v7

    aget-char v2, v18, v0

    const/16 v7, 0x3b

    if-ne v2, v7, :cond_9

    :goto_8
    move/from16 v23, v0

    goto :goto_9

    :cond_9
    const/16 v2, 0x5b

    goto :goto_7

    :cond_a
    const/16 v7, 0x3b

    goto :goto_8

    :goto_9
    if-lt v1, v5, :cond_b

    sub-int v2, v1, v5

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move/from16 v7, v21

    add-int/lit8 v15, v7, 0x1

    int-to-short v15, v15

    invoke-interface {v4, v7}, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->toMethodParameter(S)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v7

    const/16 v21, 0x0

    move/from16 v24, v1

    move-object/from16 v1, v18

    move/from16 v25, v2

    move/from16 v2, v20

    move/from16 v26, v3

    move/from16 v3, v23

    move-object/from16 v27, v12

    move-object v12, v4

    move/from16 v4, v21

    move/from16 v29, v5

    move/from16 v28, v16

    move-object/from16 v5, p0

    move-object/from16 v16, v6

    move-object/from16 v6, p5

    move-object/from16 v21, v13

    const/4 v13, 0x1

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getTypeFromSignature([CIIZLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[[[CLorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    move/from16 v1, v25

    aput-object v0, v16, v1

    if-eqz v19, :cond_c

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fileName:[C

    invoke-interface {v9, v1, v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getParameterAnnotations(I[C)[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v0

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-static {v0, v2, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->createAnnotations([Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;[[[C)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v0

    aput-object v0, v19, v1

    goto :goto_a

    :cond_b
    move/from16 v24, v1

    move/from16 v26, v3

    move/from16 v29, v5

    move-object/from16 v27, v12

    move/from16 v28, v16

    move/from16 v7, v21

    move-object v12, v4

    move-object/from16 v16, v6

    move-object/from16 v21, v13

    const/4 v13, 0x1

    move v15, v7

    :cond_c
    :goto_a
    add-int/lit8 v20, v23, 0x1

    add-int/lit8 v1, v24, 0x1

    move-object v4, v12

    move v7, v13

    move-object/from16 v6, v16

    move-object/from16 v13, v21

    move/from16 v0, v23

    move/from16 v3, v26

    move-object/from16 v12, v27

    move/from16 v16, v28

    move/from16 v5, v29

    const/16 v2, 0x5b

    move/from16 v21, v15

    const/16 v15, 0x4c

    goto/16 :goto_5

    :cond_d
    move/from16 v7, v21

    const/4 v7, 0x1

    goto/16 :goto_6

    :cond_e
    move/from16 v29, v5

    move-object/from16 v27, v12

    move-object/from16 v21, v13

    move/from16 v28, v16

    move-object v12, v4

    move v13, v7

    move/from16 v20, v0

    move-object v15, v6

    move-object/from16 v19, v17

    :goto_b
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getExceptionTypeNames()[[C

    move-result-object v7

    if-eqz v7, :cond_10

    array-length v6, v7

    if-lez v6, :cond_10

    new-array v5, v6, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v4, 0x0

    :goto_c
    if-lt v4, v6, :cond_f

    move-object/from16 v27, v5

    goto :goto_d

    :cond_f
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    aget-object v1, v7, v4

    const/16 v16, 0x0

    invoke-interface {v12, v4}, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->toThrows(I)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v22

    const/4 v2, 0x0

    const/4 v3, -0x1

    move/from16 v23, v4

    move/from16 v4, v16

    move-object/from16 v16, v5

    move-object/from16 v5, p5

    move/from16 v24, v6

    move-object/from16 v6, v22

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getTypeFromConstantPoolName([CIIZ[[[CLorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    aput-object v0, v16, v23

    add-int/lit8 v4, v23, 0x1

    move-object/from16 v5, v16

    move/from16 v6, v24

    goto :goto_c

    :cond_10
    :goto_d
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/env/IGenericMethod;->isConstructor()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    add-int/lit8 v2, v20, 0x1

    const/4 v4, 0x0

    invoke-interface {v12}, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->toMethodReturn()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v7

    const/4 v3, -0x1

    move-object/from16 v1, v18

    move-object/from16 v5, p0

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getTypeFromSignature([CIIZLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[[[CLorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    goto :goto_e

    :cond_11
    move-object/from16 v0, v17

    :goto_e
    if-nez v14, :cond_12

    move/from16 v2, v29

    const/4 v1, 0x0

    goto :goto_f

    :cond_12
    array-length v1, v14

    move/from16 v2, v29

    :goto_f
    if-lez v2, :cond_13

    if-lez v1, :cond_13

    if-lt v2, v1, :cond_14

    sget-object v14, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_PARAMETER_NAMES:[[C

    :cond_13
    move-object v3, v0

    move v1, v11

    move-object v4, v15

    move-object/from16 v7, v19

    move-object/from16 v13, v21

    move-object/from16 v5, v27

    move/from16 v15, v28

    goto/16 :goto_1a

    :cond_14
    sub-int/2addr v1, v2

    new-array v3, v1, [[C

    const/4 v4, 0x0

    invoke-static {v14, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v14, v3

    move v1, v11

    move-object v4, v15

    move-object/from16 v7, v19

    move-object/from16 v13, v21

    move-object/from16 v5, v27

    move/from16 v15, v28

    move-object v3, v0

    goto/16 :goto_1a

    :cond_15
    move/from16 v26, v3

    move-object/from16 v27, v12

    move-object/from16 v21, v13

    move/from16 v28, v16

    move-object v12, v4

    move v13, v7

    if-eq v1, v2, :cond_18

    add-int/lit8 v3, v26, 0x1

    const/16 v2, 0x4c

    if-ne v1, v2, :cond_17

    :cond_16
    add-int/2addr v0, v13

    aget-char v1, v18, v0

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_16

    :cond_17
    move-object v4, v12

    move v7, v13

    move-object/from16 v13, v21

    :goto_10
    move-object/from16 v12, v27

    move/from16 v16, v28

    goto/16 :goto_1

    :cond_18
    move-object v4, v12

    move v7, v13

    move-object/from16 v13, v21

    move/from16 v3, v26

    goto :goto_10

    :cond_19
    move-object/from16 v27, v12

    move-object/from16 v21, v13

    move/from16 v28, v16

    move v13, v7

    cmp-long v3, p3, v3

    if-ltz v3, :cond_1a

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-interface {v0, v1, v9, v3}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->enrichWithExternalAnnotationsFor(Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v1

    :cond_1a
    move-object v7, v1

    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr v11, v0

    new-instance v12, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;

    move/from16 v15, v28

    invoke-direct {v12, v2, v15}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;-><init>([CZ)V

    iget-object v0, v12, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    iget v1, v12, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    aget-char v0, v0, v1

    const/16 v2, 0x3c

    if-ne v0, v2, :cond_1b

    add-int/2addr v1, v13

    iput v1, v12, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    const/4 v2, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v3, p5

    move-object v4, v7

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->createTypeVariables(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;Z[[[CLorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;Z)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v0

    iget v1, v12, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    add-int/2addr v1, v13

    iput v1, v12, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    move-object/from16 v21, v0

    :cond_1b
    iget-object v0, v12, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    iget v1, v12, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    aget-char v2, v0, v1

    const/16 v3, 0x28

    const/4 v5, 0x2

    if-ne v2, v3, :cond_20

    add-int/lit8 v2, v1, 0x1

    iput v2, v12, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    aget-char v0, v0, v2

    const/16 v4, 0x29

    if-ne v0, v4, :cond_1c

    add-int/2addr v1, v5

    iput v1, v12, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    goto/16 :goto_14

    :cond_1c
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_11
    iget-object v0, v12, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    iget v1, v12, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    aget-char v0, v0, v1

    if-ne v0, v4, :cond_1f

    add-int/2addr v1, v13

    iput v1, v12, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean v2, v2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->storeAnnotations:Z

    if-eqz v2, :cond_1e

    new-array v2, v0, [[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    const/4 v3, 0x0

    :goto_12
    if-lt v3, v0, :cond_1d

    move-object/from16 v16, v1

    move-object/from16 v19, v2

    goto :goto_15

    :cond_1d
    iget-object v4, v8, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fileName:[C

    invoke-interface {v9, v3, v4}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getParameterAnnotations(I[C)[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v4

    iget-object v6, v8, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-static {v4, v6, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->createAnnotations([Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;[[[C)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_1e
    move-object/from16 v16, v1

    :goto_13
    move-object/from16 v19, v17

    goto :goto_15

    :cond_1f
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fileName:[C

    invoke-interface {v9, v3, v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getParameterAnnotations(I[C)[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v0

    invoke-direct {v8, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->getNullDefaultFrom([Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)I

    move-result v0

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-static {v7, v0, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->updateWalkerForParamNonNullDefault(Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;ILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v0

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-interface {v0, v3}, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->toMethodParameter(S)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v16

    move-object v0, v1

    move-object v1, v12

    move-object/from16 v2, v21

    move/from16 v18, v3

    move-object/from16 v3, p0

    move/from16 v19, v4

    move-object/from16 v4, p5

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getTypeFromTypeSignature(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[[[CLorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v18, 0x1

    int-to-short v3, v3

    move/from16 v4, v19

    const/4 v5, 0x2

    goto :goto_11

    :cond_20
    :goto_14
    move-object/from16 v16, v6

    goto :goto_13

    :goto_15
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-interface {v7}, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->toMethodReturn()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v5

    move-object v1, v12

    move-object/from16 v2, v21

    move-object/from16 v3, p0

    move-object/from16 v4, p5

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getTypeFromTypeSignature(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[[[CLorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v18

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->atEnd()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, v12, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    iget v1, v12, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    aget-char v0, v0, v1

    const/16 v6, 0x5e

    if-ne v0, v6, :cond_23

    new-instance v5, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_16
    iget v1, v12, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    add-int/2addr v1, v13

    iput v1, v12, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    add-int/lit8 v20, v0, 0x1

    invoke-interface {v7, v0}, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->toThrows(I)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v22

    move-object v0, v1

    move-object v1, v12

    move-object/from16 v2, v21

    move-object/from16 v3, p0

    move-object/from16 v4, p5

    move-object v13, v5

    move-object/from16 v5, v22

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getTypeFromTypeSignature(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[[[CLorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->atEnd()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, v12, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    iget v1, v12, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    aget-char v0, v0, v1

    if-eq v0, v6, :cond_21

    goto :goto_17

    :cond_21
    move-object v5, v13

    move/from16 v0, v20

    const/4 v13, 0x1

    goto :goto_16

    :cond_22
    :goto_17
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object v5, v0

    :goto_18
    move-object v12, v7

    move v1, v11

    move-object/from16 v4, v16

    move-object/from16 v3, v18

    move-object/from16 v7, v19

    move-object/from16 v13, v21

    goto :goto_1a

    :cond_23
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getExceptionTypeNames()[[C

    move-result-object v12

    if-eqz v12, :cond_25

    array-length v13, v12

    if-lez v13, :cond_25

    new-array v6, v13, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v5, 0x0

    :goto_19
    if-lt v5, v13, :cond_24

    move-object v5, v6

    goto :goto_18

    :cond_24
    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    aget-object v1, v12, v5

    const/4 v4, 0x0

    invoke-interface {v7, v5}, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->toThrows(I)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v20

    const/4 v2, 0x0

    const/4 v3, -0x1

    move/from16 v22, v5

    move-object/from16 v5, p5

    move-object/from16 v24, v6

    move-object/from16 v6, v20

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getTypeFromConstantPoolName([CIIZ[[[CLorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    aput-object v0, v24, v22

    add-int/lit8 v5, v22, 0x1

    move-object/from16 v6, v24

    goto :goto_19

    :cond_25
    move-object v12, v7

    move v1, v11

    move-object/from16 v4, v16

    move-object/from16 v3, v18

    move-object/from16 v7, v19

    move-object/from16 v13, v21

    move-object/from16 v5, v27

    :goto_1a
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/env/IGenericMethod;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_26

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-direct {v0, v1, v4, v5, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;-><init>(I[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    goto :goto_1b

    :cond_26
    new-instance v11, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getSelector()[C

    move-result-object v2

    move-object v0, v11

    move-object/from16 v6, p0

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;-><init>(I[CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    :goto_1b
    invoke-interface {v12}, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->toReceiver()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v1

    iget v2, v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->getAnnotationsAtCursor(IZ)[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v1

    if-eqz v1, :cond_27

    array-length v2, v1

    if-lez v2, :cond_27

    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-static {v1, v2, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->createAnnotations([Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;[[[C)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v1

    invoke-virtual {v2, v8, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->receiver:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_27
    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->storeAnnotations:Z

    if-nez v2, :cond_28

    iget-wide v1, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v3, 0x350000

    cmp-long v1, v1, v3

    if-ltz v1, :cond_28

    instance-of v1, v9, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfoWithAnnotations;

    if-eqz v1, :cond_28

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getTagBits()J

    move-result-wide v1

    const-wide v3, 0x400000000000L

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_28

    const/4 v1, 0x1

    goto :goto_1c

    :cond_28
    const/4 v1, 0x0

    :goto_1c
    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean v2, v2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->storeAnnotations:Z

    if-nez v2, :cond_2a

    if-eqz v1, :cond_29

    goto :goto_1d

    :cond_29
    const/4 v4, 0x0

    goto :goto_1f

    :cond_2a
    :goto_1d
    if-eqz v1, :cond_2b

    const/4 v1, 0x1

    invoke-virtual {v8, v1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->storedAnnotations(ZZ)Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    :cond_2b
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/env/IGenericMethod;->isConstructor()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v12}, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->toMethodReturn()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v2

    iget v3, v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->getAnnotationsAtCursor(IZ)[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v2

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-static {v2, v3, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->createAnnotations([Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;[[[C)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->setTypeAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)V

    goto :goto_1e

    :cond_2c
    const/4 v4, 0x0

    :goto_1e
    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-static {v1, v2, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->createAnnotations([Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;[[[C)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isAnnotationType()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getDefaultValue()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    const/4 v5, 0x1

    invoke-static {v2, v3, v10, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->convertMemberValue(Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;[[[CZ)Ljava/lang/Object;

    move-result-object v17

    :cond_2d
    move-object/from16 v2, v17

    iget-object v3, v8, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->setAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;[[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    :goto_1f
    if-eqz v14, :cond_2e

    iput-object v14, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameterNames:[[C

    :cond_2e
    if-eqz v15, :cond_2f

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getTagBits()J

    move-result-wide v5

    or-long/2addr v1, v5

    iput-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    :cond_2f
    iput-object v13, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    array-length v1, v13

    move v15, v4

    :goto_20
    if-lt v15, v1, :cond_30

    return-object v0

    :cond_30
    iget-object v2, v8, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->typeSystem:Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;

    aget-object v3, v13, v15

    invoke-virtual {v2, v3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeSystem;->fixTypeVariableDeclaringElement(Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_20

    :cond_31
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private createMethods([Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;J[[[C)[Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;
    .locals 19

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->isPrototype()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-boolean v8, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->mayTolerateMissingType:Z

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->mayTolerateMissingType:Z

    const/4 v9, -0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    :try_start_0
    array-length v4, v0

    const-wide/32 v5, 0x310000

    cmp-long v5, p3, v5

    if-gez v5, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    move v5, v4

    move v6, v5

    move v10, v9

    :cond_1
    :goto_1
    add-int/2addr v5, v9

    if-gez v5, :cond_2

    move v11, v4

    move v12, v10

    move-object v10, v3

    goto :goto_2

    :cond_2
    aget-object v11, v0, v5

    invoke-interface {v11}, Lorg/eclipse/jdt/internal/compiler/env/IGenericMethod;->getModifiers()I

    move-result v12

    and-int/lit16 v12, v12, 0x1000

    if-eqz v12, :cond_5

    if-eqz v2, :cond_3

    invoke-interface {v11}, Lorg/eclipse/jdt/internal/compiler/env/IGenericMethod;->getModifiers()I

    move-result v11

    and-int/lit8 v11, v11, 0x40

    if-eqz v11, :cond_3

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_3
    if-nez v3, :cond_4

    array-length v3, v0

    new-array v3, v3, [I

    :cond_4
    aput v9, v3, v5

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_5
    if-ne v10, v9, :cond_1

    invoke-interface {v11}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getSelector()[C

    move-result-object v11

    array-length v12, v11

    const/16 v13, 0x8

    if-ne v12, v13, :cond_1

    aget-char v11, v11, v1

    const/16 v12, 0x3c

    if-ne v11, v12, :cond_1

    add-int/lit8 v6, v6, -0x1

    move v10, v5

    goto :goto_1

    :cond_6
    move v6, v1

    move v11, v6

    move-object v10, v3

    move v12, v9

    :goto_2
    if-nez v6, :cond_7

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_METHODS:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iput-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->NO_BINARY_METHODS:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iput-boolean v8, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->mayTolerateMissingType:Z

    return-object v0

    :cond_7
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->hasRestrictedAccess()Z

    move-result v13

    new-array v14, v6, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    const/high16 v15, 0x40000

    if-ne v6, v11, :cond_a

    move v9, v1

    :goto_4
    if-lt v9, v11, :cond_8

    iput-object v14, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    goto :goto_3

    :cond_8
    aget-object v2, v0, v9

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->createMethod(Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;J[[[C)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v1

    if-eqz v13, :cond_9

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    or-int/2addr v2, v15

    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    :cond_9
    aput-object v1, v14, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_a
    new-array v6, v6, [Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;

    move v4, v1

    move/from16 v16, v4

    :goto_5
    if-lt v4, v11, :cond_b

    iput-object v14, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iput-boolean v8, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->mayTolerateMissingType:Z

    return-object v6

    :cond_b
    if-eq v12, v4, :cond_c

    if-eqz v10, :cond_d

    :try_start_2
    aget v1, v10, v4

    if-eq v1, v9, :cond_c

    goto :goto_6

    :cond_c
    move/from16 v17, v4

    move-object/from16 v18, v6

    goto :goto_7

    :cond_d
    :goto_6
    aget-object v2, v0, v4

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move/from16 v17, v4

    move-wide/from16 v4, p3

    move-object/from16 v18, v6

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->createMethod(Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;J[[[C)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v1

    if-eqz v13, :cond_e

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    or-int/2addr v2, v15

    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    :cond_e
    aget-object v2, v0, v17

    aput-object v2, v18, v16

    add-int/lit8 v2, v16, 0x1

    aput-object v1, v14, v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v16, v2

    :goto_7
    add-int/lit8 v4, v17, 0x1

    move-object/from16 v6, v18

    goto :goto_5

    :goto_8
    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iput-boolean v8, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->mayTolerateMissingType:Z

    throw v0

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private createTypeVariables(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;Z[[[CLorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;Z)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_a

    move-object/from16 v9, p1

    iget-object v0, v9, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    array-length v1, v0

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    move v5, v3

    move v11, v5

    move v10, v4

    move v12, v10

    :goto_0
    if-lt v5, v1, :cond_0

    move-object/from16 v15, p3

    goto :goto_1

    :cond_0
    aget-char v13, v0, v5

    const/16 v14, 0x3b

    const/16 v15, 0x3a

    if-eq v13, v14, :cond_8

    const/16 v14, 0x3c

    if-eq v13, v14, :cond_7

    const/16 v14, 0x3e

    if-eq v13, v14, :cond_3

    if-eqz v11, :cond_2

    invoke-static {v15, v0, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v11

    invoke-static {v0, v5, v11}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v11

    new-instance v13, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iget-object v14, v6, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-direct {v13, v11, v6, v12, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/Binding;ILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    add-int/lit8 v11, v12, 0x1

    invoke-interface {v7, v8, v12}, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->toTypeParameter(ZI)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v12

    invoke-interface {v12, v4, v4}, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->getAnnotationsAtCursor(IZ)[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v12

    iget-object v14, v6, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-object/from16 v15, p3

    invoke-static {v12, v14, v15}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->createAnnotations([Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;[[[C)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v12

    if-eqz v12, :cond_1

    sget-object v14, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    if-eq v12, v14, :cond_1

    iget-object v14, v6, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v14, v14, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean v14, v14, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    invoke-virtual {v13, v12, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setTypeAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Z)V

    :cond_1
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v12, v11

    move v11, v4

    goto :goto_3

    :cond_2
    move-object/from16 v15, p3

    goto :goto_3

    :cond_3
    move-object/from16 v15, p3

    add-int/lit8 v10, v10, -0x1

    if-gez v10, :cond_9

    :goto_1
    new-array v13, v12, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    if-eqz p2, :cond_4

    iput-object v13, v6, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    :cond_4
    move v10, v4

    :goto_2
    if-lt v10, v12, :cond_5

    return-object v13

    :cond_5
    aget-object v1, v13, v10

    invoke-interface {v7, v8, v10}, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->toTypeParameterBounds(ZI)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v2, v13

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->initializeTypeVariable(Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;[[[CLorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;)V

    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->externalAnnotationStatus:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;->isPotentiallyUnannotatedLib()Z

    move-result v0

    if-eqz v0, :cond_6

    aget-object v0, v13, v10

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasNullTypeAnnotations()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;->TYPE_IS_ANNOTATED:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;

    iput-object v0, v6, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->externalAnnotationStatus:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_7
    move-object/from16 v15, p3

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_8
    if-nez v10, :cond_9

    add-int/lit8 v13, v5, 0x1

    if-ge v13, v1, :cond_9

    aget-char v13, v0, v13

    if-eq v13, v15, :cond_9

    move v11, v3

    :cond_9
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public static evaluateTypeQualifierDefault(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)I
    .locals 9

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    return v1

    :cond_0
    aget-object v3, p0, v2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->getAnnotationType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    iget-object v5, v3, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->TYPE_QUALIFIER_DEFAULT:[C

    invoke-static {v4, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->getElementValuePairs()[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    move-result-object v3

    if-eqz v3, :cond_5

    array-length v4, v3

    move v5, v1

    :goto_1
    if-lt v5, v4, :cond_1

    goto :goto_4

    :cond_1
    aget-object v6, v3, v5

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;->getName()[C

    move-result-object v7

    sget-object v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->VALUE:[C

    invoke-static {v7, v8}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;->getValue()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    array-length v2, v0

    move p0, v1

    :goto_2
    if-lt v1, v2, :cond_2

    goto :goto_3

    :cond_2
    aget-object v3, v0, v1

    invoke-static {v3}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->nullLocationBitsFromElementTypeAnnotationValue(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr p0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->nullLocationBitsFromElementTypeAnnotationValue(Ljava/lang/Object;)I

    move-result p0

    :goto_3
    return p0

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private findMethod([C[[[C)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 20

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, -0x1

    :goto_0
    add-int/lit8 v1, v0, 0x1

    aget-char v2, v9, v1

    const/16 v3, 0x28

    if-ne v2, v3, :cond_c

    new-array v10, v1, [C

    const/4 v11, 0x0

    invoke-static {v9, v11, v10, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_PARAMETERS:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move v3, v1

    move v12, v11

    :goto_1
    const/4 v13, 0x1

    add-int/2addr v3, v13

    aget-char v4, v9, v3

    const/16 v5, 0x29

    const/16 v14, 0x3b

    const/16 v15, 0x4c

    const/16 v7, 0x5b

    if-ne v4, v5, :cond_9

    if-lez v12, :cond_4

    new-array v6, v12, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    add-int/lit8 v0, v0, 0x2

    move v3, v0

    move v5, v11

    :goto_2
    if-lt v5, v12, :cond_0

    goto :goto_3

    :cond_0
    add-int/2addr v1, v13

    aget-char v0, v9, v1

    if-eq v0, v7, :cond_0

    if-ne v0, v15, :cond_2

    :cond_1
    add-int/2addr v1, v13

    aget-char v0, v9, v1

    if-ne v0, v14, :cond_1

    :cond_2
    move/from16 v16, v1

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    const/4 v4, 0x0

    sget-object v17, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->EMPTY_ANNOTATION_WALKER:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-object/from16 v1, p1

    move v2, v3

    move/from16 v3, v16

    move/from16 v18, v5

    move-object/from16 v5, p0

    move-object/from16 v19, v6

    move-object/from16 v6, p2

    move v11, v7

    move-object/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getTypeFromSignature([CIIZLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[[[CLorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;

    if-eqz v1, :cond_3

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-static {v0, v1, v13}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    :cond_3
    aput-object v0, v19, v18

    add-int/lit8 v3, v16, 0x1

    add-int/lit8 v5, v18, 0x1

    move v7, v11

    move/from16 v1, v16

    move-object/from16 v6, v19

    const/4 v11, 0x0

    goto :goto_2

    :cond_4
    move-object v6, v2

    :goto_3
    array-length v5, v6

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->enclosingType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0, v10, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getMethods([CI)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v7

    array-length v0, v7

    const/4 v1, 0x0

    :goto_4
    if-lt v1, v0, :cond_5

    const/4 v0, 0x0

    return-object v0

    :cond_5
    aget-object v2, v7, v1

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v4, v3

    if-ne v5, v4, :cond_8

    const/4 v9, 0x0

    :goto_5
    if-lt v9, v4, :cond_6

    return-object v2

    :cond_6
    aget-object v10, v6, v9

    aget-object v11, v3, v9

    invoke-static {v10, v11}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v10

    if-eqz v10, :cond_7

    aget-object v10, v6, v9

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v10

    aget-object v11, v3, v9

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v10

    if-eqz v10, :cond_7

    goto :goto_6

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_8
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    move v11, v7

    if-eq v4, v11, :cond_b

    add-int/lit8 v12, v12, 0x1

    if-ne v4, v15, :cond_b

    :cond_a
    add-int/2addr v3, v13

    aget-char v4, v9, v3

    if-ne v4, v14, :cond_a

    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_1

    :cond_c
    move v0, v1

    goto/16 :goto_0

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public static getNonNullByDefaultValue(Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)I
    .locals 3

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;->getTypeName()[C

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->signature2qualifiedTypeName([C)[[C

    move-result-object v0

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;->getElementValuePairs()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryElementValuePair;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_3

    array-length v2, p0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    array-length p1, p0

    if-lez p1, :cond_2

    move p1, v1

    :goto_0
    array-length v0, p0

    if-lt v1, v0, :cond_1

    return p1

    :cond_1
    aget-object v0, p0, v1

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryElementValuePair;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->nullLocationBitsFromAnnotationValue(Ljava/lang/Object;)I

    move-result v0

    or-int/2addr p1, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x2

    return p0

    :cond_3
    :goto_1
    iget-object p0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->UnNamedModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-virtual {p1, v0, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getType([[CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p0

    if-nez p0, :cond_4

    return v1

    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isUnresolvedType()Z

    move-result v0

    if-eqz v0, :cond_5

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;

    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Z)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p0

    :cond_5
    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->evaluateTypeQualifierDefault(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)I

    move-result p1

    if-eqz p1, :cond_6

    return p1

    :cond_6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->methods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p0

    if-eqz p0, :cond_7

    array-length p1, p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    aget-object p0, p0, v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->getDefaultValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->nullLocationBitsFromAnnotationValue(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_7
    const/16 p0, 0x38

    return p0
.end method

.method private getNullDefaultFrom([Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)I
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    array-length v1, p1

    move v2, v0

    :goto_0
    if-lt v0, v1, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    aget-object v3, p1, v0

    invoke-interface {v3}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;->getTypeName()[C

    move-result-object v4

    invoke-static {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->signature2qualifiedTypeName([C)[[C

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v5, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNullAnnotationBit([[C)I

    move-result v4

    const/16 v5, 0x80

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-static {v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->getNonNullByDefaultValue(Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)I

    move-result v3

    or-int/2addr v2, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private getTypeAnnotationWalker([Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;I)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    if-eqz p1, :cond_3

    array-length v1, p1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->usesAnnotatedTypeSystem()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    if-eqz v1, :cond_2

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->getNullDefault()I

    move-result p2

    :cond_1
    if-le p2, v0, :cond_2

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-direct {v0, p1, p2, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;-><init>([Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;ILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    return-object v0

    :cond_2
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;

    invoke-direct {p2, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationWalker;-><init>([Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;)V

    return-object p2

    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    if-eqz p1, :cond_5

    if-nez p2, :cond_4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->getNullDefault()I

    move-result p2

    :cond_4
    if-le p2, v0, :cond_5

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-direct {p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;-><init>(ILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    return-object p1

    :cond_5
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->EMPTY_ANNOTATION_WALKER:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    return-object p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private initializeTypeVariable(Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;[[[CLorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;)V
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    iget v1, v8, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    const/16 v10, 0x3a

    invoke-static {v10, v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v0

    const/4 v11, 0x1

    add-int/2addr v0, v11

    iput v0, v8, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    iget-object v1, v8, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    aget-char v0, v1, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-ne v0, v10, :cond_0

    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_OBJECT:[[C

    invoke-virtual {v0, v1, v13}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getResolvedJavaBaseType([[CLorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    int-to-short v1, v11

    move-object v14, v13

    goto :goto_1

    :cond_0
    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    int-to-short v14, v11

    invoke-interface {v9, v12}, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->toTypeBound(S)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v5

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move-object/from16 v3, p0

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getTypeFromTypeSignature(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[[[CLorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_0

    :cond_1
    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_OBJECT:[[C

    invoke-virtual {v0, v1, v13}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getResolvedJavaBaseType([[CLorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    :goto_0
    move v1, v14

    move-object v14, v0

    :goto_1
    iget v2, v7, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    const/high16 v3, 0x2000000

    or-int/2addr v2, v3

    iput v2, v7, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    invoke-virtual {v7, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setSuperClass(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    iget v2, v8, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    aget-char v0, v0, v2

    if-ne v0, v10, :cond_3

    new-instance v15, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_2
    iget v0, v8, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    add-int/2addr v0, v11

    iput v0, v8, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    iget-object v0, v6, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    add-int/lit8 v2, v1, 0x1

    int-to-short v5, v2

    invoke-interface {v9, v1}, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->toTypeBound(S)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v16

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move-object/from16 v3, p0

    move-object/from16 v4, p4

    move/from16 v17, v5

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getTypeFromTypeSignature(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[[[CLorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    iget v1, v8, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    aget-char v0, v0, v1

    if-eq v0, v10, :cond_2

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_3

    :cond_2
    move/from16 v1, v17

    goto :goto_2

    :cond_3
    move-object v0, v13

    :goto_3
    if-nez v0, :cond_4

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :cond_4
    invoke-virtual {v7, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setSuperInterfaces([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v14, :cond_6

    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v1, v0

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    aget-object v13, v0, v12

    :goto_4
    move-object v14, v13

    :cond_6
    invoke-virtual {v7, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->setFirstBound(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private isPrototype()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v0

    const/16 v1, 0x44

    if-eq v0, v1, :cond_5

    const/16 v1, 0x104

    if-eq v0, v1, :cond_4

    const/16 v1, 0x204

    if-eq v0, v1, :cond_3

    const/16 v1, 0x804

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1004

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2004

    if-eq v0, v1, :cond_3

    instance-of v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Z)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p2, :cond_7

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertUnresolvedBinaryToRawType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p0

    return-object p0

    :cond_1
    move-object p1, p0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->resolve()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_7

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertUnresolvedBinaryToRawType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p0

    return-object p0

    :cond_3
    check-cast p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->resolve()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p0

    return-object p0

    :cond_4
    move-object p1, p0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->resolve()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_0

    :cond_5
    move-object v0, p0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v1, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasNullTypeAnnotations()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->usesNullTypeAnnotations()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->nullTagBitsPerDimension:[J

    if-nez p1, :cond_6

    iget p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->dimensions:I

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [J

    iput-object p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->nullTagBitsPerDimension:[J

    :cond_6
    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->nullTagBitsPerDimension:[J

    iget p2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->dimensions:I

    iget-wide v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v2, 0x180000000000000L

    and-long/2addr v0, v2

    aput-wide v0, p1, p2

    :cond_7
    :goto_0
    return-object p0
.end method

.method private resolveTypeFor(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;
    .locals 6

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->resolveTypeFor(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object p1

    return-object p1

    :cond_0
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iput-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v2, 0x80

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    iget-wide v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    or-long/2addr v0, v2

    iput-wide v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    :cond_2
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    return-object p1
.end method

.method private scanFieldForNullAnnotation(Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;ZLorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;)V
    .locals 8

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_e

    const-wide/high16 v0, 0x100000000000000L

    if-eqz p3, :cond_0

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IGenericField;->getModifiers()I

    move-result p3

    and-int/lit16 p3, p3, 0x4000

    if-eqz p3, :cond_0

    iget-wide p3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    or-long/2addr p3, v0

    iput-wide p3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    return-void

    :cond_0
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object p3, p3, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_LANG_ANNOTATION:[[C

    invoke-static {p3, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result p3

    const/4 v2, -0x1

    const/16 v3, 0x20

    if-nez p3, :cond_3

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->usesNullTypeAnnotations()Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result p4

    if-nez p4, :cond_2

    iget-wide v0, p3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v4, 0x180000000000000L

    and-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long p4, v0, v4

    if-nez p4, :cond_2

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->acceptsNonNullDefault()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->getNullDefaultFrom([Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0, v3, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->hasNonNullDefaultFor(II)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_1
    and-int/2addr p1, v3

    if-eqz p1, :cond_2

    :goto_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNonNullAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p4

    filled-new-array {p4}, [Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iput-object p1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_2
    return-void

    :cond_3
    iget-object p3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz p3, :cond_d

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result p3

    if-eqz p3, :cond_4

    goto/16 :goto_7

    :cond_4
    sget-object p3, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->EMPTY_ANNOTATION_WALKER:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    const/4 v4, 0x0

    if-eq p4, p3, :cond_5

    iget-object p3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget p3, p3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    invoke-interface {p4, p3, v4}, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->getAnnotationsAtCursor(IZ)[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object p3

    goto :goto_1

    :cond_5
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object p3

    :goto_1
    if-eqz p3, :cond_a

    move p4, v4

    :goto_2
    array-length v5, p3

    if-lt p4, v5, :cond_6

    goto :goto_5

    :cond_6
    aget-object v5, p3, p4

    invoke-interface {v5}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;->getTypeName()[C

    move-result-object v5

    aget-char v6, v5, v4

    const/16 v7, 0x4c

    if-eq v6, v7, :cond_7

    goto :goto_4

    :cond_7
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-static {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->signature2qualifiedTypeName([C)[[C

    move-result-object v5

    invoke-virtual {v6, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNullAnnotationBit([[C)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v3, :cond_8

    iget-wide p3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    or-long/2addr p3, v0

    iput-wide p3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    :goto_3
    move v4, v6

    goto :goto_5

    :cond_8
    const/16 v7, 0x40

    if-ne v5, v7, :cond_9

    iget-wide p3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    const-wide/high16 v4, 0x80000000000000L

    or-long/2addr p3, v4

    iput-wide p3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    goto :goto_3

    :cond_9
    :goto_4
    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_a
    :goto_5
    if-eqz v4, :cond_b

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->externalAnnotationStatus:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;->isPotentiallyUnannotatedLib()Z

    move-result p3

    if-eqz p3, :cond_b

    sget-object p3, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;->TYPE_IS_ANNOTATED:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->externalAnnotationStatus:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;

    :cond_b
    if-nez v4, :cond_d

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->getNullDefaultFrom([Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)I

    move-result p1

    if-nez p1, :cond_c

    invoke-virtual {p0, v3, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->hasNonNullDefaultFor(II)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_6

    :cond_c
    and-int/2addr p1, v3

    if-eqz p1, :cond_d

    :goto_6
    iget-wide p3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    or-long/2addr p3, v0

    iput-wide p3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    :cond_d
    :goto_7
    return-void

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private scanMethodForNullAnnotation(Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->isPrototype()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isEnum()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->VALUEOF:[C

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getSelector()[C

    move-result-object v5

    invoke-static {v3, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v5, v3

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    aget-object v3, v3, v4

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/16 v5, 0xb

    if-ne v3, v5, :cond_0

    const/16 v3, 0xa

    goto :goto_0

    :cond_0
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->VALUES:[C

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getSelector()[C

    move-result-object v5

    invoke-static {v3, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_PARAMETERS:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-ne v3, v5, :cond_1

    const/16 v3, 0x9

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    if-eqz v3, :cond_3

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v4, v2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->useNullTypeAnnotations:Ljava/lang/Boolean;

    if-nez v4, :cond_2

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->deferredEnumMethods:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->markNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;ILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    :goto_1
    return-void

    :cond_3
    invoke-interface/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->toMethodReturn()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v3

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->EMPTY_ANNOTATION_WALKER:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    if-eq v3, v5, :cond_4

    iget-object v5, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v5, v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    invoke-interface {v3, v5, v4}, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->getAnnotationsAtCursor(IZ)[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v3

    goto :goto_2

    :cond_4
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v3

    :goto_2
    const/16 v5, 0x40

    const/16 v6, 0x20

    const/16 v7, 0x4c

    if-eqz v3, :cond_a

    move v8, v4

    move v9, v8

    :goto_3
    array-length v10, v3

    if-lt v8, v10, :cond_5

    iput v9, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->defaultNullness:I

    goto/16 :goto_5

    :cond_5
    aget-object v10, v3, v8

    invoke-interface {v10}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;->getTypeName()[C

    move-result-object v10

    aget-char v11, v10, v4

    if-eq v11, v7, :cond_6

    goto/16 :goto_4

    :cond_6
    iget-object v11, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-static {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->signature2qualifiedTypeName([C)[[C

    move-result-object v10

    invoke-virtual {v11, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNullAnnotationBit([[C)I

    move-result v10

    const/16 v11, 0x80

    if-ne v10, v11, :cond_7

    aget-object v10, v3, v8

    iget-object v11, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-static {v10, v11}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->getNonNullByDefaultValue(Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)I

    move-result v10

    or-int/2addr v9, v10

    goto :goto_4

    :cond_7
    if-ne v10, v6, :cond_8

    iget-wide v10, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide/high16 v12, 0x100000000000000L

    or-long/2addr v10, v12

    iput-wide v10, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    iget-object v10, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->usesNullTypeAnnotations()Z

    move-result v10

    if-eqz v10, :cond_9

    iget-object v10, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v10, :cond_9

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasNullTypeAnnotations()Z

    move-result v10

    if-nez v10, :cond_9

    iget-object v10, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v11, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNonNullAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v12

    filled-new-array {v12}, [Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v10

    iput-object v10, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_4

    :cond_8
    if-ne v10, v5, :cond_9

    iget-wide v10, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide/high16 v12, 0x80000000000000L

    or-long/2addr v10, v12

    iput-wide v10, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    iget-object v10, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->usesNullTypeAnnotations()Z

    move-result v10

    if-eqz v10, :cond_9

    iget-object v10, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v10, :cond_9

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasNullTypeAnnotations()Z

    move-result v10

    if-nez v10, :cond_9

    iget-object v10, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v11, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNullableAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v12

    filled-new-array {v12}, [Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v10

    iput-object v10, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_9
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    :cond_a
    :goto_5
    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v8, v3

    instance-of v9, v2, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$IMethodAnnotationWalker;

    if-eqz v9, :cond_b

    move-object v9, v2

    check-cast v9, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$IMethodAnnotationWalker;

    invoke-interface {v9}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$IMethodAnnotationWalker;->getParameterCount()I

    move-result v9

    goto :goto_6

    :cond_b
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getAnnotatedParametersCount()I

    move-result v9

    :goto_6
    if-lez v9, :cond_16

    move v10, v4

    :goto_7
    if-lt v10, v8, :cond_c

    goto/16 :goto_c

    :cond_c
    if-lez v9, :cond_14

    sub-int v11, v9, v8

    add-int/2addr v11, v10

    int-to-short v12, v11

    invoke-interface {v2, v12}, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->toMethodParameter(S)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v12

    sget-object v13, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->EMPTY_ANNOTATION_WALKER:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    if-eq v12, v13, :cond_d

    aget-object v11, v3, v10

    iget v11, v11, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    invoke-interface {v12, v11, v4}, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->getAnnotationsAtCursor(IZ)[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v11

    move-object/from16 v13, p1

    goto :goto_8

    :cond_d
    iget-object v12, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fileName:[C

    move-object/from16 v13, p1

    invoke-interface {v13, v11, v12}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;->getParameterAnnotations(I[C)[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v11

    :goto_8
    if-eqz v11, :cond_15

    move v12, v4

    :goto_9
    array-length v14, v11

    if-lt v12, v14, :cond_e

    goto/16 :goto_b

    :cond_e
    aget-object v14, v11, v12

    invoke-interface {v14}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;->getTypeName()[C

    move-result-object v14

    aget-char v15, v14, v4

    if-eq v15, v7, :cond_f

    goto/16 :goto_a

    :cond_f
    iget-object v15, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-static {v14}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->signature2qualifiedTypeName([C)[[C

    move-result-object v14

    invoke-virtual {v15, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNullAnnotationBit([[C)I

    move-result v14

    if-ne v14, v6, :cond_11

    iget-object v11, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameterNonNullness:[Ljava/lang/Boolean;

    if-nez v11, :cond_10

    new-array v11, v8, [Ljava/lang/Boolean;

    iput-object v11, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameterNonNullness:[Ljava/lang/Boolean;

    :cond_10
    iget-object v11, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameterNonNullness:[Ljava/lang/Boolean;

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v12, v11, v10

    iget-object v11, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->usesNullTypeAnnotations()Z

    move-result v11

    if-eqz v11, :cond_15

    iget-object v11, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v11, v11, v10

    if-eqz v11, :cond_15

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasNullTypeAnnotations()Z

    move-result v11

    if-nez v11, :cond_15

    iget-object v11, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v12, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    aget-object v14, v11, v10

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNonNullAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v15

    filled-new-array {v15}, [Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v12

    aput-object v12, v11, v10

    goto :goto_b

    :cond_11
    if-ne v14, v5, :cond_13

    iget-object v11, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameterNonNullness:[Ljava/lang/Boolean;

    if-nez v11, :cond_12

    new-array v11, v8, [Ljava/lang/Boolean;

    iput-object v11, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameterNonNullness:[Ljava/lang/Boolean;

    :cond_12
    iget-object v11, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameterNonNullness:[Ljava/lang/Boolean;

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v12, v11, v10

    iget-object v11, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->usesNullTypeAnnotations()Z

    move-result v11

    if-eqz v11, :cond_15

    iget-object v11, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v11, v11, v10

    if-eqz v11, :cond_15

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasNullTypeAnnotations()Z

    move-result v11

    if-nez v11, :cond_15

    iget-object v11, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v12, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    aget-object v14, v11, v10

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNullableAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v15

    filled-new-array {v15}, [Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v12

    aput-object v12, v11, v10

    goto :goto_b

    :cond_13
    :goto_a
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_9

    :cond_14
    move-object/from16 v13, p1

    :cond_15
    :goto_b
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_7

    :cond_16
    :goto_c
    if-eqz p4, :cond_1b

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->externalAnnotationStatus:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;->isPotentiallyUnannotatedLib()Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasNullTypeAnnotations()Z

    move-result v2

    if-nez v2, :cond_1a

    iget-wide v5, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide/high16 v7, 0x180000000000000L

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-nez v2, :cond_1a

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameterNonNullness:[Ljava/lang/Boolean;

    if-eqz v1, :cond_17

    goto :goto_e

    :cond_17
    array-length v1, v3

    :goto_d
    if-lt v4, v1, :cond_18

    goto :goto_f

    :cond_18
    aget-object v2, v3, v4

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasNullTypeAnnotations()Z

    move-result v2

    if-eqz v2, :cond_19

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;->TYPE_IS_ANNOTATED:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->externalAnnotationStatus:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;

    goto :goto_f

    :cond_19
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_1a
    :goto_e
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;->TYPE_IS_ANNOTATED:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->externalAnnotationStatus:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;

    :cond_1b
    :goto_f
    return-void

    :cond_1c
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method private scanTypeForContainerAnnotation(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;[[[C)V
    .locals 9

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object p1

    if-eqz p1, :cond_2

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    goto :goto_1

    :cond_0
    aget-object v3, p1, v2

    invoke-interface {v3}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;->getTypeName()[C

    move-result-object v3

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JAVA_LANG_ANNOTATION_REPEATABLE:[C

    invoke-static {v3, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v3

    if-eqz v3, :cond_1

    aget-object p1, p1, v2

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;->getElementValuePairs()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryElementValuePair;

    move-result-object p1

    if-eqz p1, :cond_2

    array-length v0, p1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    aget-object p1, p1, v1

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryElementValuePair;->getValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/env/ClassSignature;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/env/ClassSignature;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/env/ClassSignature;->getTypeName()[C

    move-result-object v2

    const/4 v6, 0x0

    sget-object v8, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->EMPTY_ANNOTATION_WALKER:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v7, p2

    invoke-virtual/range {v1 .. v8}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getTypeFromSignature([CIIZLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[[[CLorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->containerAnnotationType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private scanTypeForNullDefaultAnnotation(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)V
    .locals 8

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNonNullByDefaultAnnotationName()[[C

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getName()[C

    move-result-object v1

    const/16 v2, 0x2f

    invoke-static {v2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object v1

    invoke-static {v1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName()[C

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->PACKAGE_INFO_NAME:[C

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    array-length v2, p1

    move v3, v1

    move v4, v3

    :goto_0
    if-lt v3, v2, :cond_3

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->defaultNullness:I

    if-eqz v4, :cond_6

    if-eqz v0, :cond_2

    invoke-virtual {p2, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->setDefaultNullness(I)V

    :cond_2
    return-void

    :cond_3
    aget-object v5, p1, v3

    invoke-interface {v5}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;->getTypeName()[C

    move-result-object v5

    aget-char v6, v5, v1

    const/16 v7, 0x4c

    if-eq v6, v7, :cond_4

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-static {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->signature2qualifiedTypeName([C)[[C

    move-result-object v5

    invoke-virtual {v6, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNullAnnotationBit([[C)I

    move-result v5

    const/16 v6, 0x80

    if-ne v5, v6, :cond_5

    aget-object v5, p1, v3

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-static {v5, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->getNonNullByDefaultValue(Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)I

    move-result v5

    or-int/2addr v4, v5

    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {p2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->setDefaultNullness(I)V

    return-void

    :cond_7
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->enclosingType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getNullDefault()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->setNullDefault(I)Z

    move-result p1

    if-eqz p1, :cond_8

    return-void

    :cond_8
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getDefaultNullness()I

    move-result p1

    if-nez p1, :cond_9

    if-nez v0, :cond_9

    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    and-int/lit16 p1, p1, 0xe0

    if-nez p1, :cond_9

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->PACKAGE_INFO_NAME:[C

    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->enclosingModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getType([CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    if-nez p1, :cond_9

    invoke-virtual {p2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->setDefaultNullness(I)V

    :cond_9
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getDefaultNullness()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->setNullDefault(I)Z

    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public static signature2qualifiedTypeName([C)[[C
    .locals 3

    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/16 v2, 0x2f

    invoke-static {v2, p0, v1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[CII)[[C

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public availableFields()[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;
    .locals 7

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->availableFields()[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v0

    return-object v0

    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v2, 0x2000

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    return-object v0

    :cond_1
    const-wide/16 v2, 0x1000

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    array-length v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    invoke-static {v0, v1, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sortFields([Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;II)V

    :cond_2
    iget-wide v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr v2, v4

    iput-wide v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    array-length v0, v0

    new-array v2, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move v3, v1

    move v4, v3

    :goto_0
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    array-length v6, v5

    if-lt v3, v6, :cond_5

    if-ge v4, v0, :cond_4

    new-array v0, v4, [Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-static {v2, v1, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v0

    :cond_4
    return-object v2

    :cond_5
    :try_start_0
    aget-object v5, v5, v3

    invoke-direct {p0, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->resolveTypeFor(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v5

    aput-object v5, v2, v4
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    :catch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public availableMethods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 7

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->availableMethods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    return-object v0

    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v2, 0x8000

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    return-object v0

    :cond_1
    const-wide/16 v2, 0x4000

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    array-length v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    invoke-static {v0, v1, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sortMethods([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;II)V

    :cond_2
    iget-wide v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr v2, v4

    iput-wide v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    array-length v0, v0

    new-array v2, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move v3, v1

    move v4, v3

    :goto_0
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    array-length v6, v5

    if-lt v3, v6, :cond_5

    if-ge v4, v0, :cond_4

    new-array v0, v4, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-static {v2, v1, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v0

    :cond_4
    return-object v2

    :cond_5
    :try_start_0
    aget-object v5, v5, v3

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->resolveTypesFor(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v5

    aput-object v5, v2, v4
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    :catch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public cachePartsFrom(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Z)V
    .locals 28

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->isPrototype()Z

    move-result v1

    if-eqz v1, :cond_28

    :try_start_0
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iput-object v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_MEMBER_TYPES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getMemberTypes()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryNestedType;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    new-array v3, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v3, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move v3, v8

    :goto_0
    if-lt v3, v2, :cond_0

    iget-wide v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v3, 0x10000000

    or-long/2addr v1, v3

    iput-wide v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_13

    :cond_0
    iget-object v4, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v10, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    aget-object v5, v1, v3

    invoke-interface {v5}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryNestedType;->getName()[C

    move-result-object v11

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    invoke-virtual/range {v10 .. v15}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getTypeFromConstantPoolName([CIIZ[[[C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v5

    aput-object v5, v4, v3

    add-int/2addr v3, v9

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-wide v10, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->originalSourceLevel:J

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    if-eqz v1, :cond_2

    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-direct {v7, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->scanTypeForNullDefaultAnnotation(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)V

    :cond_2
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    move-result-object v1

    invoke-direct {v7, v1, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->getTypeAnnotationWalker([Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;I)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v12

    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    const/4 v2, 0x0

    invoke-interface {v0, v12, v2, v1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->enrichWithExternalAnnotationsFor(Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v13

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getExternalAnnotationStatus()Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;

    move-result-object v1

    iput-object v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->externalAnnotationStatus:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;->isPotentiallyUnannotatedLib()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->defaultNullness:I

    if-eqz v1, :cond_3

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;->TYPE_IS_ANNOTATED:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;

    iput-object v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->externalAnnotationStatus:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;

    :cond_3
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getGenericSignature()[C

    move-result-object v14

    iget-wide v3, v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getTagBits()J

    move-result-wide v5

    or-long/2addr v3, v5

    iput-wide v3, v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-wide v5, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v15, 0x340000

    cmp-long v1, v5, v15

    if-gez v1, :cond_4

    const-wide v5, -0x20000000000001L

    and-long/2addr v3, v5

    iput-wide v3, v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    :cond_4
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getMissingTypeNames()[[[C

    move-result-object v6

    if-eqz v14, :cond_6

    new-instance v5, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;

    invoke-direct {v5, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;-><init>([C)V

    iget-object v1, v5, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->signature:[C

    iget v2, v5, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    aget-char v1, v1, v2

    const/16 v3, 0x3c

    if-ne v1, v3, :cond_5

    add-int/2addr v2, v9

    iput v2, v5, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    const/4 v3, 0x1

    const/16 v17, 0x1

    move-object/from16 v1, p0

    move-object v2, v5

    move-object v4, v6

    move-object v8, v5

    move-object v5, v13

    move-object v15, v6

    move/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->createTypeVariables(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;Z[[[CLorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;Z)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v1

    iput-object v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iget v1, v8, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    add-int/2addr v1, v9

    iput v1, v8, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->start:I

    iget-wide v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v3, 0x1000000

    or-long/2addr v1, v3

    iput-wide v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    iget v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    const/high16 v2, 0x40000000    # 2.0f

    or-int/2addr v1, v2

    iput v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    goto :goto_2

    :cond_5
    move-object v8, v5

    move-object v15, v6

    goto :goto_2

    :cond_6
    move-object v15, v6

    move-object v8, v2

    :goto_2
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getEnclosingMethod()[C

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-direct {v7, v2, v15}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->findMethod([C[[[C)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v1, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    invoke-direct {v7, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->addMethodTypeVariables([Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v2

    iput-object v2, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    :cond_7
    move-object/from16 v16, v1

    const-wide/32 v24, 0x4000000

    const-wide/32 v26, 0x2000000

    const/4 v1, -0x1

    if-nez v14, :cond_a

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getSuperclassName()[C

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v3, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-interface {v13, v1, v2}, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->toSupertype(S[C)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v23

    const/16 v19, 0x0

    const/16 v20, -0x1

    const/16 v21, 0x0

    move-object/from16 v17, v3

    move-object/from16 v18, v2

    move-object/from16 v22, v15

    invoke-virtual/range {v17 .. v23}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getTypeFromConstantPoolName([CIIZ[[[CLorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    iput-object v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-wide v3, v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long v3, v3, v26

    iput-wide v3, v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    :cond_8
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getInterfaceNames()[[C

    move-result-object v1

    if-eqz v1, :cond_c

    array-length v3, v1

    if-lez v3, :cond_c

    new-array v4, v3, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v4, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v4, 0x0

    :goto_3
    if-lt v4, v3, :cond_9

    iget-wide v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long v1, v1, v24

    iput-wide v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    goto/16 :goto_5

    :cond_9
    iget-object v5, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v6, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    aget-object v18, v1, v4

    invoke-interface {v13, v4, v2}, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->toSupertype(S[C)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v23

    const/16 v19, 0x0

    const/16 v20, -0x1

    const/16 v21, 0x0

    move-object/from16 v17, v6

    move-object/from16 v22, v15

    invoke-virtual/range {v17 .. v23}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getTypeFromConstantPoolName([CIIZ[[[CLorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v6

    aput-object v6, v5, v4

    add-int/2addr v4, v9

    int-to-short v4, v4

    goto :goto_3

    :cond_a
    iget-object v2, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->peekFullType()[C

    move-result-object v3

    invoke-interface {v13, v1, v3}, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->toSupertype(S[C)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v6

    move-object v1, v2

    move-object v2, v8

    move-object/from16 v3, v16

    move-object/from16 v4, p0

    move-object v5, v15

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getTypeFromTypeSignature(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[[[CLorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-wide v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long v1, v1, v26

    iput-wide v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->atEnd()Z

    move-result v1

    if-nez v1, :cond_c

    new-instance v14, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v14, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_4
    iget-object v2, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    add-int/lit8 v3, v1, 0x1

    int-to-short v6, v3

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->peekFullType()[C

    move-result-object v3

    invoke-interface {v13, v1, v3}, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->toSupertype(S[C)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v17

    move-object v1, v2

    move-object v2, v8

    move-object/from16 v3, v16

    move-object/from16 v4, p0

    move-object v5, v15

    move/from16 v18, v6

    move-object/from16 v6, v17

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getTypeFromTypeSignature(Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[[[CLorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/SignatureWrapper;->atEnd()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-wide v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long v1, v1, v24

    iput-wide v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    goto :goto_5

    :cond_b
    move/from16 v1, v18

    goto :goto_4

    :cond_c
    :goto_5
    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    if-eqz v2, :cond_d

    iget-wide v1, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v3, 0x340000

    cmp-long v1, v1, v3

    if-ltz v1, :cond_d

    move v8, v9

    goto :goto_6

    :cond_d
    const/4 v8, 0x0

    :goto_6
    if-eqz v8, :cond_11

    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->externalAnnotationStatus:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;->isPotentiallyUnannotatedLib()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasNullTypeAnnotations()Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;->TYPE_IS_ANNOTATED:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;

    iput-object v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->externalAnnotationStatus:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;

    goto :goto_8

    :cond_e
    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_7
    if-lt v3, v2, :cond_f

    goto :goto_8

    :cond_f
    aget-object v4, v1, v3

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasNullTypeAnnotations()Z

    move-result v4

    if-eqz v4, :cond_10

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;->TYPE_IS_ANNOTATED:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;

    iput-object v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->externalAnnotationStatus:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;

    goto :goto_8

    :cond_10
    add-int/2addr v3, v9

    goto :goto_7

    :cond_11
    :goto_8
    if-eqz p2, :cond_1c

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getFields()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;

    move-result-object v13

    move-object/from16 v1, p0

    move-object v2, v13

    move-object/from16 v3, p1

    move-wide v4, v10

    move-object v6, v15

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->createFields([Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;J[[[C)V

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getMethods()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;

    move-result-object v2

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-wide v4, v10

    move-object v6, v15

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->createMethods([Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;J[[[C)[Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isViewedAsDeprecated()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    array-length v2, v2

    const/4 v3, 0x0

    :goto_9
    const/high16 v4, 0x200000

    if-lt v3, v2, :cond_14

    iget-object v2, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    array-length v2, v2

    const/4 v3, 0x0

    :goto_a
    if-lt v3, v2, :cond_12

    goto :goto_b

    :cond_12
    iget-object v5, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isDeprecated()Z

    move-result v6

    if-nez v6, :cond_13

    iget v6, v5, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    or-int/2addr v6, v4

    iput v6, v5, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    :cond_13
    add-int/2addr v3, v9

    goto :goto_a

    :cond_14
    iget-object v5, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isDeprecated()Z

    move-result v6

    if-nez v6, :cond_15

    iget v6, v5, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    or-int/2addr v4, v6

    iput v4, v5, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    :cond_15
    add-int/2addr v3, v9

    goto :goto_9

    :cond_16
    :goto_b
    iget-object v2, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean v2, v2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    if-eqz v2, :cond_1c

    if-eqz v13, :cond_19

    const/4 v2, 0x0

    :goto_c
    array-length v3, v13

    if-lt v2, v3, :cond_17

    goto :goto_d

    :cond_17
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->EMPTY_ANNOTATION_WALKER:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    const-wide/32 v4, 0x340000

    cmp-long v6, v10, v4

    if-gez v6, :cond_18

    aget-object v3, v13, v2

    iget-object v4, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-interface {v0, v12, v3, v4}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->enrichWithExternalAnnotationsFor(Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v3

    :cond_18
    aget-object v4, v13, v2

    iget-object v5, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    aget-object v5, v5, v2

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isEnum()Z

    move-result v6

    invoke-direct {v7, v4, v5, v6, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->scanFieldForNullAnnotation(Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;ZLorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;)V

    add-int/2addr v2, v9

    goto :goto_c

    :cond_19
    :goto_d
    if-eqz v1, :cond_1c

    const/4 v2, 0x0

    :goto_e
    array-length v3, v1

    if-lt v2, v3, :cond_1a

    goto :goto_f

    :cond_1a
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->EMPTY_ANNOTATION_WALKER:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    const-wide/32 v4, 0x340000

    cmp-long v6, v10, v4

    if-gez v6, :cond_1b

    aget-object v6, v1, v2

    iget-object v12, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-interface {v0, v3, v6, v12}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->enrichWithExternalAnnotationsFor(Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object v3

    :cond_1b
    aget-object v6, v1, v2

    iget-object v12, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    aget-object v12, v12, v2

    invoke-direct {v7, v6, v12, v3, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->scanMethodForNullAnnotation(Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;Z)V

    add-int/2addr v2, v9

    goto :goto_e

    :cond_1c
    :goto_f
    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->storeAnnotations:Z

    if-eqz v1, :cond_1d

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v1

    iget-object v2, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-static {v1, v2, v15}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->createAnnotations([Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;[[[C)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->setAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Z)V

    goto :goto_12

    :cond_1d
    const-wide/32 v1, 0x350000

    cmp-long v1, v10, v1

    if-ltz v1, :cond_22

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isDeprecated()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-interface/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_10
    if-lt v3, v2, :cond_1e

    goto :goto_12

    :cond_1e
    aget-object v4, v1, v3

    invoke-interface {v4}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;->isDeprecatedAnnotation()Z

    move-result v5

    if-eqz v5, :cond_21

    new-array v1, v9, [Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    const/4 v5, 0x0

    aput-object v4, v1, v5

    iget-object v2, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-static {v1, v2, v15}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->createAnnotations([Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;[[[C)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v1

    invoke-virtual {v7, v1, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->setAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Z)V

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->getElementValuePairs()[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    move-result-object v1

    array-length v2, v1

    move v8, v5

    :goto_11
    if-lt v8, v2, :cond_1f

    goto :goto_12

    :cond_1f
    aget-object v3, v1, v8

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;->name:[C

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->FOR_REMOVAL:[C

    invoke-static {v4, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v4

    if-eqz v4, :cond_20

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;->value:Ljava/lang/Object;

    instance-of v4, v3, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;

    if-eqz v4, :cond_20

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/impl/BooleanConstant;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_20

    iget-wide v3, v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    or-long/2addr v3, v5

    iput-wide v3, v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    invoke-virtual {v7, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->markImplicitTerminalDeprecation(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    :cond_20
    add-int/2addr v8, v9

    goto :goto_11

    :cond_21
    const/4 v5, 0x0

    add-int/2addr v3, v9

    goto :goto_10

    :cond_22
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isAnnotationType()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-direct {v7, v0, v15}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->scanTypeForContainerAnnotation(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;[[[C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_23
    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-nez v0, :cond_24

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_FIELDS:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iput-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    :cond_24
    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-nez v0, :cond_25

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_METHODS:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iput-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    :cond_25
    return-void

    :goto_13
    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-nez v1, :cond_26

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_FIELDS:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iput-object v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    :cond_26
    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-nez v1, :cond_27

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_METHODS:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iput-object v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    :cond_27
    throw v0

    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
    .locals 2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->module()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->canAccess(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public clone(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 5

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;)V

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->enclosingType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz p1, :cond_0

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v3, 0x8000000

    or-long/2addr v1, v3

    iput-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    goto :goto_0

    :cond_0
    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v3, -0x8000001

    and-long/2addr v1, v3

    iput-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    :goto_0
    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v3, 0x10000000

    or-long/2addr v1, v3

    iput-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    return-object v0
.end method

.method public containerAnnotationType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 3

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->containerAnnotationType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->containerAnnotationType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->containerAnnotationType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 5

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v2, 0x8000000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->enclosingType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->enclosingType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->enclosingType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v3, -0x8000001

    and-long/2addr v1, v3

    iput-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    return-object v0
.end method

.method public fields()[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;
    .locals 8

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->fields()[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    return-object v0

    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v2, 0x2000

    and-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    return-object v0

    :cond_1
    const-wide/16 v4, 0x1000

    and-long/2addr v0, v4

    cmp-long v0, v0, v6

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    array-length v1, v0

    const/4 v6, 0x1

    if-le v1, v6, :cond_2

    const/4 v6, 0x0

    invoke-static {v0, v6, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sortFields([Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;II)V

    :cond_2
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr v0, v4

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    array-length v0, v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_4

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    return-object v0

    :cond_4
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->resolveTypeFor(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    goto :goto_0
.end method

.method public genericTypeSignature()[C
    .locals 2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->computeGenericTypeSignature([Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;)[C

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->computeGenericTypeSignature([Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;)[C

    move-result-object v0

    return-object v0
.end method

.method public getExactConstructor([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 9

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->getExactConstructor([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    return-object p1

    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v2, 0x4000

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    array-length v6, v0

    const/4 v7, 0x1

    if-le v6, v7, :cond_1

    invoke-static {v0, v1, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sortMethods([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;II)V

    :cond_1
    iget-wide v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr v2, v6

    iput-wide v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    :cond_2
    array-length v0, p1

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->INIT:[C

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-static {v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->binarySearch([C[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)J

    move-result-wide v2

    cmp-long v4, v2, v4

    if-ltz v4, :cond_7

    long-to-int v4, v2

    const/16 v5, 0x20

    shr-long/2addr v2, v5

    long-to-int v2, v2

    :goto_0
    if-le v4, v2, :cond_3

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    aget-object v3, v3, v4

    iget-object v5, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v5, v5

    if-ne v5, v0, :cond_6

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->resolveTypesFor(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v5, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move v6, v1

    :goto_1
    if-lt v6, v0, :cond_4

    return-object v3

    :cond_4
    aget-object v7, v5, v6

    aget-object v8, p1, v6

    invoke-static {v7, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    :goto_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public getExactMethod([C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 10

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->getExactMethod([C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    return-object p1

    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v2, 0x4000

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    const/4 v1, 0x0

    const/4 v6, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    array-length v7, v0

    if-le v7, v6, :cond_1

    invoke-static {v0, v1, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sortMethods([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;II)V

    :cond_1
    iget-wide v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr v2, v7

    iput-wide v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    :cond_2
    array-length v0, p2

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-static {p1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->binarySearch([C[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)J

    move-result-wide v2

    cmp-long v4, v2, v4

    if-ltz v4, :cond_7

    long-to-int v4, v2

    const/16 v5, 0x20

    shr-long/2addr v2, v5

    long-to-int v2, v2

    move v3, v6

    :goto_0
    if-le v4, v2, :cond_3

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    aget-object v3, v3, v4

    iget-object v5, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v5, v5

    if-ne v5, v0, :cond_6

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->resolveTypesFor(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v5, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move v7, v1

    :goto_1
    if-lt v7, v0, :cond_4

    return-object v3

    :cond_4
    aget-object v8, v5, v7

    aget-object v9, p2, v7

    invoke-static {v8, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v3, v1

    goto :goto_0

    :cond_7
    move v3, v6

    :goto_3
    if-eqz v3, :cond_b

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v6, :cond_b

    if-eqz p3, :cond_8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v0, v0, v1

    invoke-virtual {p3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordTypeReference(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_8
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getExactMethod([C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    return-object p1

    :cond_9
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-eqz v0, :cond_b

    if-eqz p3, :cond_a

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordTypeReference(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_a
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getExactMethod([C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public getField([CZ)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;
    .locals 6

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->getField([CZ)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object p1

    return-object p1

    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v2, 0x1000

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    array-length v1, v0

    const/4 v4, 0x1

    if-le v1, v4, :cond_1

    const/4 v4, 0x0

    invoke-static {v0, v4, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sortFields([Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;II)V

    :cond_1
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->binarySearch([C[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object p1

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->resolveTypeFor(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method public getMemberType([C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 8

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->isPrototype()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->getMemberType([C)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createMemberType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v0, v0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_3

    return-object v1

    :cond_3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v2, v2, v0

    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;

    if-eqz v3, :cond_4

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    array-length v5, v4

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    aget-object v4, v4, v5

    array-length v4, v4

    add-int/2addr v4, v6

    array-length v5, v3

    array-length v7, p1

    add-int/2addr v7, v4

    if-ne v5, v7, :cond_2

    invoke-static {p1, v3, v4, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->fragmentEquals([C[CIZ)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aput-object v1, p1, v0

    return-object v1

    :cond_4
    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    invoke-static {p1, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2
.end method

.method public getMethods([C)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 10

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->getMethods([C)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v2, 0x8000

    and-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/16 v5, 0x20

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v4, :cond_2

    .line 4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->binarySearch([C[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)J

    move-result-wide v0

    cmp-long p1, v0, v6

    if-ltz p1, :cond_1

    long-to-int p1, v0

    shr-long/2addr v0, v5

    long-to-int v0, v0

    sub-int/2addr v0, p1

    add-int/2addr v0, v9

    .line 5
    iget-wide v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long v1, v4, v2

    cmp-long v1, v1, v6

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    new-array v2, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-static {v1, p1, v2, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    .line 7
    :cond_1
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_METHODS:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    return-object p1

    :cond_2
    const-wide/16 v2, 0x4000

    and-long/2addr v0, v2

    cmp-long v0, v0, v6

    if-nez v0, :cond_4

    .line 8
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    array-length v1, v0

    if-le v1, v9, :cond_3

    .line 9
    invoke-static {v0, v8, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sortMethods([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;II)V

    .line 10
    :cond_3
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    .line 11
    :cond_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->binarySearch([C[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)J

    move-result-wide v0

    cmp-long p1, v0, v6

    if-ltz p1, :cond_6

    long-to-int p1, v0

    shr-long/2addr v0, v5

    long-to-int v0, v0

    sub-int v1, v0, p1

    add-int/2addr v1, v9

    .line 12
    new-array v1, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    :goto_0
    if-le p1, v0, :cond_5

    return-object v1

    .line 13
    :cond_5
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    aget-object v2, v2, p1

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->resolveTypesFor(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v2

    aput-object v2, v1, v8

    add-int/lit8 p1, p1, 0x1

    add-int/2addr v8, v9

    goto :goto_0

    .line 14
    :cond_6
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_METHODS:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    return-object p1
.end method

.method public getMethods([CI)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 9

    .line 15
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    .line 16
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->getMethods([CI)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    return-object p1

    .line 17
    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v2, 0x8000

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 18
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->getMethods([C)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    return-object p1

    :cond_1
    const-wide/16 v2, 0x4000

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    const/4 v1, 0x0

    const/4 v6, 0x1

    if-nez v0, :cond_3

    .line 19
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    array-length v7, v0

    if-le v7, v6, :cond_2

    .line 20
    invoke-static {v0, v1, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sortMethods([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;II)V

    .line 21
    :cond_2
    iget-wide v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr v2, v7

    iput-wide v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    .line 22
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->binarySearch([C[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)J

    move-result-wide v2

    cmp-long p1, v2, v4

    if-ltz p1, :cond_a

    long-to-int p1, v2

    const/16 v0, 0x20

    shr-long/2addr v2, v0

    long-to-int v0, v2

    sub-int v2, v0, p1

    add-int/2addr v2, v6

    move v3, p1

    move v4, v1

    :goto_0
    if-le v3, v0, :cond_8

    if-nez v4, :cond_5

    .line 23
    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    :goto_1
    if-le p1, v0, :cond_4

    return-object v2

    :cond_4
    add-int/lit8 p2, v1, 0x1

    .line 24
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    aget-object v3, v3, p1

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->resolveTypesFor(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 p1, p1, 0x1

    move v1, p2

    goto :goto_1

    .line 25
    :cond_5
    new-array v5, v4, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    :goto_2
    if-le p1, v0, :cond_6

    return-object v5

    .line 26
    :cond_6
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    aget-object v2, v2, p1

    invoke-virtual {v2, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->doesParameterLengthMatch(I)Z

    move-result v2

    if-eqz v2, :cond_7

    add-int/lit8 v2, v1, 0x1

    .line 27
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    aget-object v3, v3, p1

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->resolveTypesFor(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v3

    aput-object v3, v5, v1

    move v1, v2

    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 28
    :cond_8
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    aget-object v5, v5, v3

    invoke-virtual {v5, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->doesParameterLengthMatch(I)Z

    move-result v5

    if-eqz v5, :cond_9

    add-int/lit8 v4, v4, 0x1

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 29
    :cond_a
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_METHODS:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    return-object p1
.end method

.method public getNullDefault()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->defaultNullness:I

    return v0
.end method

.method public getTypeVariable([C)Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->getTypeVariable([C)Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getTypeVariable([C)Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->resolve()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object p1
.end method

.method public hasMemberTypes()Z
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->hasMemberTypes()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hasTypeBit(I)Z
    .locals 3

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->hasTypeBit(I)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->mayTolerateMissingType:Z

    const/4 v2, 0x1

    iput-boolean v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->mayTolerateMissingType:Z

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->mayTolerateMissingType:Z

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    return v2

    :cond_1
    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->mayTolerateMissingType:Z

    throw p1
.end method

.method public isEquivalentTo(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z
    .locals 3

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v1

    const/16 v2, 0x104

    if-eq v1, v2, :cond_3

    const/16 v2, 0x204

    if-eq v1, v2, :cond_2

    const/16 v2, 0x404

    if-eq v1, v2, :cond_3

    const/16 v2, 0x2004

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundCheck(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    return p1

    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    invoke-static {p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    return p1
.end method

.method public isGenericType()Z
    .locals 2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->isGenericType()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isHierarchyConnected()Z
    .locals 4

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->isHierarchyConnected()Z

    move-result v0

    return v0

    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v2, 0x6000000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isRepeatableAnnotationType()Z
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->containerAnnotationType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public kind()I
    .locals 2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->kind()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eq v0, v1, :cond_1

    const/16 v0, 0x804

    return v0

    :cond_1
    const/4 v0, 0x4

    return v0
.end method

.method public markImplicitTerminalDeprecation(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V
    .locals 9

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->memberTypes()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    if-lt v3, v1, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->unResolvedMethods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    move v3, v2

    :goto_1
    if-lt v3, v1, :cond_0

    goto :goto_2

    :cond_0
    aget-object v6, v0, v3

    iget-wide v7, v6, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    or-long/2addr v7, v4

    iput-wide v7, v6, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->unResolvedFields()[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object p1

    if-eqz p1, :cond_3

    array-length v0, p1

    :goto_3
    if-lt v2, v0, :cond_2

    goto :goto_4

    :cond_2
    aget-object v1, p1, v2

    iget-wide v6, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    or-long/2addr v6, v4

    iput-wide v6, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    return-void

    :cond_4
    aget-object v6, v0, v3

    iget-wide v7, v6, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr v4, v7

    iput-wide v4, v6, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->markImplicitTerminalDeprecation(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public memberTypes()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 10

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->isPrototype()Z

    move-result v0

    const-wide/32 v1, -0x10000001

    const-wide/16 v3, 0x0

    const-wide/32 v5, 0x10000000

    const/4 v7, 0x0

    if-nez v0, :cond_4

    iget-wide v8, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v5, v8

    cmp-long v0, v5, v3

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->memberTypes()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-nez v0, :cond_1

    move v3, v7

    goto :goto_0

    :cond_1
    array-length v3, v0

    :goto_0
    if-lez v3, :cond_3

    new-array v4, v3, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :goto_1
    if-lt v7, v3, :cond_2

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    aget-object v6, v0, v7

    invoke-virtual {v5, v6, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createMemberType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v5

    aput-object v5, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    iget-wide v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long v0, v3, v1

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object v0

    :cond_4
    iget-wide v8, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v5, v8

    cmp-long v0, v5, v3

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object v0

    :cond_5
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v0, v0

    :goto_3
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_6

    iget-wide v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long v0, v3, v1

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object v0

    :cond_6
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v4, v3, v0

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-static {v4, v5, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aput-object v4, v3, v0

    goto :goto_3
.end method

.method public methods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 8

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->methods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    return-object v0

    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v2, 0x8000

    and-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    return-object v0

    :cond_1
    const-wide/16 v4, 0x4000

    and-long/2addr v0, v4

    cmp-long v0, v0, v6

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    array-length v1, v0

    const/4 v6, 0x1

    if-le v1, v6, :cond_2

    const/4 v6, 0x0

    invoke-static {v0, v6, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sortMethods([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;II)V

    :cond_2
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr v0, v4

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    array-length v0, v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_4

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    return-object v0

    :cond_4
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->resolveTypesFor(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    goto :goto_0
.end method

.method public module()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->module:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->module:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    return-object v0
.end method

.method public prototype()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    return-object v0
.end method

.method public resolveTypesFor(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 8

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->resolveTypesFor(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    return-object p1

    :cond_0
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x80

    if-nez v0, :cond_2

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-static {v0, v6, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iput-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide v6, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v6, v4

    cmp-long v0, v6, v1

    if-eqz v0, :cond_2

    iget-wide v6, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    or-long/2addr v6, v4

    iput-wide v6, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    :cond_2
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v0, v0

    :cond_3
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_7

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v0, v0

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_6

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    array-length v0, v0

    :goto_2
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_5

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    return-object p1

    :cond_5
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->resolve()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_2

    :cond_6
    iget-object v6, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v6, v6, v0

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-static {v6, v7, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v7, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aput-object v6, v7, v0

    iget-wide v6, v6, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v6, v4

    cmp-long v6, v6, v1

    if-eqz v6, :cond_4

    iget-wide v6, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    or-long/2addr v6, v4

    iput-wide v6, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    goto :goto_1

    :cond_7
    iget-object v6, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v6, v6, v0

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-static {v6, v7, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v6

    iget-object v7, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aput-object v6, v7, v0

    iget-wide v6, v6, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v6, v4

    cmp-long v6, v6, v1

    if-eqz v6, :cond_3

    iget-wide v6, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    or-long/2addr v6, v4

    iput-wide v6, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    goto :goto_0
.end method

.method public retrieveAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;
    .locals 3

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->retrieveAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->retrieveAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->getAnnotationTagBits()J

    move-result-wide v1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-static {v0, v1, v2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->addStandardAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;JLorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p1

    return-object p1
.end method

.method public setContainerAnnotationType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->containerAnnotationType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public setNullDefault(I)Z
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->defaultNullness:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public storedAnnotations(ZZ)Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->storedAnnotations(ZZ)Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->storedAnnotations:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->storeAnnotations:Z

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>(I)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->storedAnnotations:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    :cond_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->storedAnnotations:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    return-object p1
.end method

.method public superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 8

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object v0

    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v2, 0x4000000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v0, v0

    :cond_2
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_3

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v2, -0x4000001

    and-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object v0

    :cond_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v2, v1, v0

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aput-object v2, v1, v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v1

    const-wide/32 v2, 0x20000

    if-ne v1, v4, :cond_4

    iget-wide v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long v1, v4, v2

    iput-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-boolean v5, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->mayTolerateMissingType:Z

    iput-boolean v4, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->mayTolerateMissingType:Z

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->actualType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    invoke-static {v1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-wide v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long v1, v6, v2

    iput-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iput-boolean v5, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->mayTolerateMissingType:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_5
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iput-boolean v5, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->mayTolerateMissingType:Z

    :goto_1
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v2, v2, v0

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    and-int/lit16 v2, v2, 0x713

    or-int/2addr v1, v2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    and-int/lit8 v2, v1, 0x3

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->applyCloseableInterfaceWhitelists()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    goto/16 :goto_0

    :goto_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iput-boolean v5, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->mayTolerateMissingType:Z

    throw v0
.end method

.method public superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 7

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object v0

    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v2, 0x2000000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-wide v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v5, -0x2000001

    and-long/2addr v3, v5

    iput-wide v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v2, 0x20000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->mayTolerateMissingType:Z

    iput-boolean v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->mayTolerateMissingType:Z

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->mayTolerateMissingType:Z

    :goto_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    and-int/lit16 v1, v1, 0x713

    or-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    and-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->applyCloseableClassWhitelists()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iput-boolean v1, v2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->mayTolerateMissingType:Z

    throw v0
.end method

.method public tagAsHavingDefectiveContainerType()V
    .locals 4

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->containerAnnotationType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->containerAnnotationType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    const/16 v3, 0x16

    invoke-direct {v0, v2, v1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->containerAnnotationType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasTypeAnnotations()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->annotatedDebugName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isDeprecated()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "deprecated "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isPublic()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "public "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isProtected()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "protected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isPrivate()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "private "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isAbstract()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isClass()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "abstract "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNestedType()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "static "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isFinal()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "final "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "enum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isAnnotationType()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "@interface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_9
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isClass()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_a
    const-string v1, "interface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    if-eqz v1, :cond_b

    invoke-static {v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toString([[C)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_b
    const-string v1, "UNNAMED TYPE"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    const-string v2, ", "

    const/4 v3, 0x0

    if-nez v1, :cond_c

    const-string v1, "<NULL TYPE VARIABLES>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_c
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eq v1, v4, :cond_10

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    array-length v1, v1

    move v4, v3

    :goto_2
    if-lt v4, v1, :cond_d

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_d
    if-lez v4, :cond_e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_e
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    aget-object v5, v5, v4

    if-nez v5, :cond_f

    const-string v5, "NULL TYPE VARIABLE"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_f
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    array-length v6, v5

    add-int/lit8 v6, v6, -0x2

    const/4 v7, 0x1

    invoke-virtual {v0, v5, v7, v6}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_10
    :goto_4
    const-string v1, "\n\textends "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const-string v4, "NULL TYPE"

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->debugName()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_11
    move-object v1, v4

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v1, :cond_15

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eq v1, v5, :cond_16

    const-string v1, "\n\timplements : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v1, v1

    move v5, v3

    :goto_6
    if-lt v5, v1, :cond_12

    goto :goto_8

    :cond_12
    if-lez v5, :cond_13

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_13
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v6, v6, v5

    if-eqz v6, :cond_14

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->debugName()Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    :cond_14
    move-object v6, v4

    :goto_7
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_15
    const-string v1, "NULL SUPERINTERFACES"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_16
    :goto_8
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->enclosingType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v1, :cond_17

    const-string v1, "\n\tenclosing type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->enclosingType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->debugName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_17
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    const-string v2, "\n"

    if-eqz v1, :cond_1a

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_FIELDS:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eq v1, v4, :cond_1b

    const-string v1, "\n/*   fields   */"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    array-length v1, v1

    move v4, v3

    :goto_9
    if-lt v4, v1, :cond_18

    goto :goto_b

    :cond_18
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    aget-object v5, v5, v4

    if-eqz v5, :cond_19

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_a

    :cond_19
    const-string v5, "\nNULL FIELD"

    :goto_a
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_1a
    const-string v1, "NULL FIELDS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1b
    :goto_b
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v1, :cond_1e

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_METHODS:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eq v1, v4, :cond_1f

    const-string v1, "\n/*   methods   */"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    array-length v1, v1

    move v4, v3

    :goto_c
    if-lt v4, v1, :cond_1c

    goto :goto_e

    :cond_1c
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    aget-object v5, v5, v4

    if-eqz v5, :cond_1d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_d

    :cond_1d
    const-string v5, "\nNULL METHOD"

    :goto_d
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_1e
    const-string v1, "NULL METHODS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1f
    :goto_e
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v1, :cond_22

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_MEMBER_TYPES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eq v1, v4, :cond_23

    const-string v1, "\n/*   members   */"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v1, v1

    :goto_f
    if-lt v3, v1, :cond_20

    goto :goto_11

    :cond_20
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v4, v4, v3

    if-eqz v4, :cond_21

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_10

    :cond_21
    const-string v4, "\nNULL TYPE"

    :goto_10
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_22
    const-string v1, "NULL MEMBER TYPES"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_23
    :goto_11
    const-string v1, "\n\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;
    .locals 4

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    return-object v0

    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v2, 0x1000000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    array-length v0, v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v2, -0x1000001

    and-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    return-object v0

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->resolve()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_0
.end method

.method public unResolvedFields()[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->unResolvedFields()[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    return-object v0
.end method

.method public unResolvedMethods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->unResolvedMethods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    return-object v0
.end method

.method public unannotated()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    return-object v0
.end method

.method public withoutToplevelNullAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasNullTypeAnnotations()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->filterNullTypeAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    return-object v0
.end method
