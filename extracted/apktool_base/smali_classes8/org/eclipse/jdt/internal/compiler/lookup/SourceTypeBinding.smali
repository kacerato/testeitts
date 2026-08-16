.class public Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;
.super Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
.source "SourceFile"


# static fields
.field private static final CLASS_LITERAL_EMUL:I = 0x2

.field private static final FIELD_EMUL:I = 0x1

.field private static final MAX_SYNTHETICS:I = 0x3

.field private static final METHOD_EMUL:I


# instance fields
.field private containerAnnotationType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

.field public defaultNullness:I

.field environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

.field public externalAnnotationProvider:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;

.field private fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

.field genericReferenceTypeSignature:[C

.field public memberTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

.field private methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

.field public module:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

.field private nestHost:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

.field public nestMembers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;",
            ">;"
        }
    .end annotation
.end field

.field private nullnessDefaultInitialized:I

.field protected prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

.field public scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

.field private storedAnnotations:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

.field public superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

.field public superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

.field synthetics:[Ljava/util/HashMap;

.field public typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V
    .locals 5

    .line 16
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->storedAnnotations:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    const/4 v1, 0x0

    .line 18
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->nullnessDefaultInitialized:I

    .line 19
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->containerAnnotationType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 20
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    .line 21
    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v3, 0x800000

    or-long/2addr v1, v3

    iput-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    .line 22
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v2, -0x800001

    and-long/2addr v0, v2

    .line 23
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 24
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 25
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    .line 26
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    .line 27
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 28
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    .line 29
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    .line 30
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    .line 31
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->genericReferenceTypeSignature:[C

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->genericReferenceTypeSignature:[C

    .line 32
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->storedAnnotations:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->storedAnnotations:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    .line 33
    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->defaultNullness:I

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->defaultNullness:I

    .line 34
    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->nullnessDefaultInitialized:I

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->nullnessDefaultInitialized:I

    .line 35
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->containerAnnotationType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->containerAnnotationType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const-wide/32 v2, 0x10000000

    or-long/2addr v0, v2

    .line 36
    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    return-void
.end method

.method public constructor <init>([[CLorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->storedAnnotations:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->nullnessDefaultInitialized:I

    .line 4
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->containerAnnotationType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 5
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    .line 6
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    .line 7
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->getFileName()[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fileName:[C

    .line 8
    iget-object p1, p3, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->modifiers:I

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    .line 9
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    .line 10
    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    .line 11
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    .line 12
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->UNINITIALIZED_FIELDS:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    .line 13
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->UNINITIALIZED_METHODS:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    .line 14
    iput-object p0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    .line 15
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->computeId()V

    return-void
.end method

.method public static synthetic a(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->lambda$0(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private addDefaultAbstractMethods()V
    .locals 18

    move-object/from16 v7, p0

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-wide v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v2, 0x400

    and-long v4, v0, v2

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-eqz v4, :cond_0

    return-void

    :cond_0
    or-long/2addr v0, v2

    iput-wide v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isClass()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isAbstract()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-wide v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->targetJDK:J

    const-wide/32 v2, 0x2e0000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eq v0, v1, :cond_f

    array-length v1, v0

    const/4 v8, 0x0

    const/4 v2, 0x0

    move-object v9, v0

    move v10, v1

    move v0, v8

    move v11, v0

    :goto_0
    if-lt v11, v10, :cond_2

    if-lez v0, :cond_f

    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    array-length v3, v1

    add-int v4, v3, v0

    new-array v5, v4, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v7, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->setMethods([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v5

    invoke-static {v1, v8, v5, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v7, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-static {v2, v8, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x1

    if-le v4, v0, :cond_f

    iget-object v0, v7, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-static {v0, v8, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sortMethods([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;II)V

    goto/16 :goto_e

    :cond_2
    aget-object v12, v9, v11

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->methods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v13

    array-length v1, v13

    move v14, v0

    move-object v3, v2

    :goto_1
    add-int/lit8 v15, v1, -0x1

    if-gez v15, :cond_8

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eq v0, v1, :cond_7

    array-length v1, v0

    add-int v2, v10, v1

    array-length v4, v9

    if-lt v2, v4, :cond_3

    add-int/lit8 v2, v2, 0x5

    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v9, v8, v2, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_3
    move-object v2, v9

    :goto_2
    move v4, v8

    move v5, v10

    :goto_3
    if-lt v4, v1, :cond_4

    move-object v9, v2

    move-object v2, v3

    move v10, v5

    :goto_4
    move v4, v8

    move v0, v14

    goto/16 :goto_d

    :cond_4
    aget-object v6, v0, v4

    move v9, v8

    :goto_5
    if-lt v9, v5, :cond_5

    add-int/lit8 v9, v5, 0x1

    aput-object v6, v2, v5

    move v5, v9

    goto :goto_6

    :cond_5
    aget-object v10, v2, v9

    invoke-static {v6, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v10

    if-eqz v10, :cond_6

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_7
    move-object v2, v3

    goto :goto_4

    :cond_8
    aget-object v1, v13, v15

    invoke-virtual {v7, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->implementsMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v4, v8

    goto/16 :goto_c

    :cond_9
    if-nez v14, :cond_a

    const/4 v0, 0x5

    new-array v3, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    :goto_7
    move-object v6, v3

    goto :goto_9

    :cond_a
    move v0, v8

    :goto_8
    if-lt v0, v14, :cond_c

    goto :goto_7

    :goto_9
    new-instance v16, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    const v2, 0x81000

    or-int/2addr v2, v0

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    iget-object v4, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v5, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-object/from16 v0, v16

    move-object/from16 v17, v1

    move v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object/from16 v5, v17

    move-object v8, v6

    move-object/from16 v6, p0

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;-><init>(I[CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    array-length v0, v8

    if-ne v14, v0, :cond_b

    mul-int/lit8 v0, v14, 0x2

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    const/4 v4, 0x0

    invoke-static {v8, v4, v0, v4, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v0

    goto :goto_a

    :cond_b
    const/4 v4, 0x0

    move-object v3, v8

    :goto_a
    add-int/lit8 v0, v14, 0x1

    aput-object v16, v3, v14

    move v14, v0

    :goto_b
    move v8, v4

    move v1, v15

    goto/16 :goto_1

    :cond_c
    move v4, v8

    aget-object v2, v3, v0

    iget-object v5, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    iget-object v6, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-static {v5, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->areParametersEqual(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v2

    if-eqz v2, :cond_d

    :goto_c
    goto :goto_b

    :cond_d
    add-int/lit8 v0, v0, 0x1

    move v8, v4

    goto :goto_8

    :cond_e
    move v4, v8

    :goto_d
    add-int/lit8 v11, v11, 0x1

    move v8, v4

    goto/16 :goto_0

    :cond_f
    :goto_e
    return-void

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private addDeserializeLambdaMethod()V
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->DESERIALIZE_LAMBDA:[C

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    if-nez v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    aget-object v3, v3, v1

    const/4 v4, 0x1

    new-array v4, v4, [Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aput-object v0, v4, v1

    :cond_0
    return-void
.end method

.method private checkAnnotationsInType()V
    .locals 7

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->getAnnotationTagBits()J

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isViewedAsDeprecated()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isDeprecated()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    const/high16 v2, 0x200000

    or-int/2addr v1, v2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    iget-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    and-long/2addr v3, v5

    or-long v0, v1, v3

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v2, v2, v1

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-direct {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->checkAnnotationsInType()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private createArgumentBindings(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;)V
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->getNullDefault()I

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->sourceMethod()Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_PARAMETERS:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->createArgumentBindings()V

    :cond_1
    iget-boolean p2, p2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    if-eqz p2, :cond_2

    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v1

    invoke-direct {p2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {p2, p1, v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->checkImplicitNullAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;ZLorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private internalFaultInTypeForFieldsAndMethods()V
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->fields()[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v2, v2, v1

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-direct {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->internalFaultInTypeForFieldsAndMethods()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static synthetic lambda$0(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->constantPoolName()[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method private maybeMarkTypeParametersNonNull()V
    .locals 8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eqz v0, :cond_3

    array-length v0, v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    if-eqz v0, :cond_3

    const/16 v1, 0x80

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->sourceStart()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->hasDefaultNullnessFor(II)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNonNullAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v0

    filled-new-array {v0}, [Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    array-length v3, v2

    if-lt v1, v3, :cond_1

    goto :goto_1

    :cond_1
    aget-object v3, v2, v1

    iget-wide v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v6, 0x180000000000000L

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v4, v3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    aput-object v3, v2, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private static rejectTypeAnnotatedVoidMethod(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)V
    .locals 9

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    array-length v2, v0

    :goto_0
    if-lt v1, v2, :cond_1

    return-void

    :cond_1
    aget-object v3, v0, v1

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v3, :cond_2

    iget-wide v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v5, 0x20000000000000L

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    const-wide v5, 0x4000000000L

    and-long/2addr v3, v5

    cmp-long v3, v3, v7

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->illegalUsageOfTypeAnnotations(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private resolveTypesWithSuspendedTempErrorHandlingPolicy(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->resolveTypesFor(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    return-object v0

    :cond_0
    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    const/high16 v3, 0x2000000

    and-int/2addr v2, v3

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v2

    iget-wide v2, v2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v4, 0x310000

    cmp-long v4, v2, v4

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    if-ltz v4, :cond_3

    iget-object v4, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangObject()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move v9, v7

    :goto_0
    array-length v10, v8

    if-lt v9, v10, :cond_2

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->getAnnotationTagBits()J

    move-result-wide v8

    const-wide v10, 0x400000000000L

    and-long/2addr v8, v10

    cmp-long v4, v8, v5

    if-eqz v4, :cond_3

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    const/high16 v8, 0x100000

    or-int/2addr v4, v8

    iput v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    goto :goto_1

    :cond_2
    aget-object v10, v8, v9

    iput-object v4, v10, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isViewedAsDeprecated()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isDeprecated()Z

    move-result v4

    if-nez v4, :cond_4

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    const/high16 v8, 0x200000

    or-int/2addr v4, v8

    iput v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    iget-wide v8, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    iget-wide v10, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    and-long/2addr v10, v12

    or-long/2addr v8, v10

    iput-wide v8, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->hasRestrictedAccess()Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    const/high16 v8, 0x40000

    or-int/2addr v4, v8

    iput v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->sourceMethod()Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move-result-object v4

    const/4 v8, 0x0

    if-nez v4, :cond_6

    return-object v8

    :cond_6
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->typeParameters()[Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;

    move-result-object v9

    const/4 v10, 0x1

    if-eqz v9, :cond_8

    iget-object v11, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v11, v9, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->connectTypeVariables([Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;Z)Z

    array-length v11, v9

    move v12, v7

    :goto_2
    if-lt v12, v11, :cond_7

    goto :goto_3

    :cond_7
    aget-object v13, v9, v12

    iget-object v14, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v13, v14}, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;->checkBounds(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    iget-object v11, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    const-wide/16 v12, 0x80

    if-eqz v11, :cond_f

    array-length v15, v11

    new-array v8, v15, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v8, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move v8, v7

    move v14, v8

    :goto_4
    if-lt v8, v15, :cond_9

    if-ge v14, v15, :cond_f

    iget-object v8, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    new-array v11, v14, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v11, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v8, v7, v11, v7, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_6

    :cond_9
    aget-object v7, v11, v8

    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v7, v5, v10}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v5, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBoundParameterizedType()Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v6

    aget-object v7, v11, v8

    invoke-virtual {v6, v5, v7}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->invalidParameterizedExceptionType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)V

    goto :goto_5

    :cond_b
    const/16 v6, 0x15

    invoke-virtual {v5, v6, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v6

    if-nez v6, :cond_c

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v6

    aget-object v7, v11, v8

    invoke-virtual {v6, v7, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->cannotThrowType(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_5

    :cond_c
    iget-wide v6, v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v6, v12

    const-wide/16 v17, 0x0

    cmp-long v6, v6, v17

    if-eqz v6, :cond_d

    iget-wide v6, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    or-long/2addr v6, v12

    iput-wide v6, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    :cond_d
    aget-object v6, v11, v8

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;->ANY:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;

    invoke-virtual {v6, v7}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->hasNullTypeAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference$AnnotationPosition;)Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v6

    aget-object v7, v11, v8

    invoke-virtual {v6, v7}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->nullAnnotationUnsupportedLocation(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;)V

    :cond_e
    iget v6, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    iget v7, v5, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    const/high16 v16, 0x40000000    # 2.0f

    and-int v7, v7, v16

    or-int/2addr v6, v7

    iput v6, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    add-int/lit8 v7, v14, 0x1

    aput-object v5, v6, v14

    move v14, v7

    :goto_5
    add-int/lit8 v8, v8, 0x1

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    goto/16 :goto_4

    :cond_f
    :goto_6
    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->receiver:Lorg/eclipse/jdt/internal/compiler/ast/Receiver;

    if-eqz v5, :cond_10

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v6, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v5, v6, v10}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    iput-object v5, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->receiver:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_10
    iget-object v5, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v5

    iget-boolean v5, v5, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->reportUnavoidableGenericTypeProblems:Z

    iget-object v6, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isPublic()Z

    move-result v7

    invoke-virtual {v6, v1, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->shouldCheckAPILeaks(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)Z

    move-result v6

    iget-object v7, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    if-eqz v7, :cond_1e

    array-length v11, v7

    sget-object v14, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_PARAMETERS:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v14, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    new-array v14, v11, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v15, 0x0

    const/16 v19, 0x0

    :goto_7
    if-lt v15, v11, :cond_12

    if-nez v19, :cond_11

    iput-object v14, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_11
    move-object v13, v9

    goto/16 :goto_d

    :cond_12
    aget-object v12, v7, v15

    iget-object v13, v12, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v13, :cond_13

    move-object v13, v9

    iget-wide v8, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide/16 v22, 0x400

    or-long v8, v8, v22

    iput-wide v8, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    goto :goto_8

    :cond_13
    move-object v13, v9

    :goto_8
    if-nez v5, :cond_14

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v8

    if-nez v8, :cond_14

    iget-object v8, v12, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget v8, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v9, 0x40000000    # 2.0f

    and-int/2addr v8, v9

    if-nez v8, :cond_15

    move v8, v10

    goto :goto_9

    :cond_14
    const/high16 v9, 0x40000000    # 2.0f

    :cond_15
    const/4 v8, 0x0

    :goto_9
    if-eqz v8, :cond_16

    iget-object v10, v12, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    move-object/from16 v23, v7

    iget v7, v10, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/2addr v7, v9

    iput v7, v10, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    goto :goto_a

    :cond_16
    move-object/from16 v23, v7

    :goto_a
    :try_start_0
    iget-object v7, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    iget-object v9, v12, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-static {v7, v9, v12}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->handleNonNullByDefault(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;)V

    iget-object v7, v12, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v9, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    const/4 v10, 0x1

    invoke-virtual {v7, v9, v10}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_17

    iget-object v8, v12, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget v9, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const v10, -0x40000001    # -1.9999999f

    and-int/2addr v9, v10

    iput v9, v8, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_17
    if-nez v7, :cond_18

    :goto_b
    const/16 v19, 0x1

    goto :goto_c

    :cond_18
    sget-object v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->VOID:Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    if-ne v7, v8, :cond_19

    iget-object v7, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v7

    invoke-virtual {v7, v4, v12}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->argumentTypeCannotBeVoid(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/ast/Argument;)V

    goto :goto_b

    :cond_19
    iget-wide v8, v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v20, 0x80

    and-long v8, v8, v20

    const-wide/16 v17, 0x0

    cmp-long v8, v8, v17

    if-eqz v8, :cond_1a

    iget-wide v8, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    or-long v8, v8, v20

    iput-wide v8, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    :cond_1a
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v8

    instance-of v9, v8, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v9, :cond_1b

    check-cast v8, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget v8, v8, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    const/high16 v9, 0x40000000    # 2.0f

    and-int/2addr v8, v9

    if-eqz v8, :cond_1b

    iget v8, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    or-int/2addr v8, v9

    iput v8, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    :cond_1b
    aput-object v7, v14, v15

    if-eqz v6, :cond_1c

    iget-object v8, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    iget-object v9, v12, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v8, v9, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->detectAPILeaks(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_1c
    new-instance v8, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    iget v9, v12, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->modifiers:I

    iget-object v10, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-direct {v8, v12, v7, v9, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ILorg/eclipse/jdt/internal/compiler/lookup/MethodScope;)V

    iput-object v8, v12, Lorg/eclipse/jdt/internal/compiler/ast/LocalDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    :goto_c
    add-int/lit8 v15, v15, 0x1

    move-object v9, v13

    move-object/from16 v7, v23

    const/4 v10, 0x1

    const-wide/16 v12, 0x80

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_1d

    iget-object v2, v12, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const v4, -0x40000001    # -1.9999999f

    and-int/2addr v3, v4

    iput v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_1d
    throw v0

    :cond_1e
    move-object v13, v9

    const/16 v19, 0x0

    :goto_d
    const-wide/32 v7, 0x330000

    cmp-long v7, v2, v7

    if-ltz v7, :cond_22

    iget-wide v7, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide/high16 v9, 0x8000000000000L

    and-long/2addr v7, v9

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_21

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isVarargs()Z

    move-result v7

    if-nez v7, :cond_1f

    iget-object v7, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v7

    invoke-virtual {v7, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->safeVarargsOnFixedArityMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    goto :goto_e

    :cond_1f
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v7

    if-nez v7, :cond_22

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isFinal()Z

    move-result v7

    if-nez v7, :cond_22

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v7

    if-nez v7, :cond_22

    const-wide/32 v7, 0x350000

    cmp-long v7, v2, v7

    if-ltz v7, :cond_20

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isPrivate()Z

    move-result v7

    if-nez v7, :cond_22

    :cond_20
    iget-object v7, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v7

    invoke-virtual {v7, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->safeVarargsOnNonFinalInstanceMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    goto :goto_e

    :cond_21
    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v7, :cond_22

    array-length v7, v7

    if-lez v7, :cond_22

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isVarargs()Z

    move-result v7

    if-eqz v7, :cond_22

    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v8, v7

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isReifiable()Z

    move-result v7

    if-nez v7, :cond_22

    iget-object v7, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v7

    iget-object v8, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->arguments:[Lorg/eclipse/jdt/internal/compiler/ast/Argument;

    array-length v10, v8

    sub-int/2addr v10, v9

    aget-object v8, v8, v10

    invoke-virtual {v7, v8}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->possibleHeapPollutionFromVararg(Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;)V

    :cond_22
    :goto_e
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v7

    const-wide/32 v8, 0x340000

    if-nez v7, :cond_31

    instance-of v7, v4, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    if-eqz v7, :cond_23

    move-object v7, v4

    check-cast v7, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->returnType:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    goto :goto_f

    :cond_23
    const/4 v7, 0x0

    :goto_f
    if-nez v7, :cond_24

    iget-object v2, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->missingReturnType(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)V

    const/4 v2, 0x0

    iput-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v5, 0x0

    const/4 v10, 0x1

    goto/16 :goto_13

    :cond_24
    if-nez v5, :cond_25

    iget v5, v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const/high16 v10, 0x40000000    # 2.0f

    and-int/2addr v5, v10

    if-nez v5, :cond_26

    const/4 v5, 0x1

    goto :goto_10

    :cond_25
    const/high16 v10, 0x40000000    # 2.0f

    :cond_26
    const/4 v5, 0x0

    :goto_10
    if-eqz v5, :cond_27

    iget v11, v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    or-int/2addr v11, v10

    iput v11, v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_27
    :try_start_1
    iget-object v10, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    const/4 v11, 0x1

    invoke-virtual {v7, v10, v11}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_28

    iget v5, v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const v12, -0x40000001    # -1.9999999f

    and-int/2addr v5, v12

    iput v5, v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_28
    if-nez v10, :cond_29

    move v10, v11

    const/4 v5, 0x0

    goto/16 :goto_13

    :cond_29
    iget-wide v11, v10, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v14, 0x80

    and-long/2addr v11, v14

    const-wide/16 v17, 0x0

    cmp-long v5, v11, v17

    if-eqz v5, :cond_2a

    iget-wide v11, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    or-long/2addr v11, v14

    iput-wide v11, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    :cond_2a
    iput-object v10, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    cmp-long v2, v2, v8

    if-ltz v2, :cond_2c

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isVoidMethod()Z

    move-result v2

    if-nez v2, :cond_2c

    iget-object v2, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v2, :cond_2b

    array-length v3, v2

    if-eqz v3, :cond_2b

    iget-object v3, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    const/4 v5, 0x0

    invoke-static {v3, v0, v2, v5}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->copySE8AnnotationsToType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Z)V

    :cond_2b
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v3, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-static {v7, v2, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->isTypeUseCompatible(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    :cond_2c
    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v3, :cond_2d

    move-object v3, v2

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v3, v5

    if-eqz v3, :cond_2d

    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    or-int/2addr v2, v5

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    goto :goto_11

    :cond_2d
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->VOID:Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    if-ne v2, v3, :cond_2e

    iget-object v2, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v2, :cond_2e

    invoke-static {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->rejectTypeAnnotatedVoidMethod(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)V

    :cond_2e
    :goto_11
    if-eqz v6, :cond_2f

    iget-object v2, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    invoke-virtual {v2, v7, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->detectAPILeaks(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_2f
    const/4 v5, 0x0

    goto :goto_12

    :catchall_1
    move-exception v0

    if-eqz v5, :cond_30

    iget v2, v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    const v3, -0x40000001    # -1.9999999f

    and-int/2addr v2, v3

    iput v2, v7, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    :cond_30
    throw v0

    :cond_31
    cmp-long v2, v2, v8

    if-ltz v2, :cond_2f

    iget-object v2, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v2, :cond_2f

    array-length v3, v2

    if-eqz v3, :cond_2f

    iget-object v3, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    const/4 v5, 0x0

    invoke-static {v3, v0, v2, v5}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->copySE8AnnotationsToType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Z)V

    :goto_12
    move v10, v5

    :goto_13
    if-eqz v19, :cond_34

    const/4 v2, 0x0

    iput-object v2, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_PARAMETERS:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v13, :cond_33

    array-length v0, v13

    move v7, v5

    :goto_14
    if-lt v7, v0, :cond_32

    goto :goto_15

    :cond_32
    aget-object v3, v13, v7

    iput-object v2, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeParameter;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    :cond_33
    :goto_15
    return-object v2

    :cond_34
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v2

    iget-boolean v3, v2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    if-eqz v3, :cond_37

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v3

    if-nez v3, :cond_37

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v3, :cond_37

    iget-wide v5, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide/high16 v7, 0x180000000000000L

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_37

    move-object v3, v4

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/MethodDeclaration;->returnType:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v7, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v7

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->usesNullTypeAnnotations()Z

    move-result v7

    const-wide v8, -0x180000000000001L

    if-eqz v7, :cond_36

    iget-object v7, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-virtual {v7, v5, v6, v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->validateNullAnnotation(JLorg/eclipse/jdt/internal/compiler/ast/TypeReference;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)Z

    move-result v3

    if-nez v3, :cond_35

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v4, v8

    iput-wide v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    :cond_35
    iget-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    and-long/2addr v3, v8

    iput-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    goto :goto_16

    :cond_36
    iget-object v7, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-virtual {v7, v5, v6, v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->validateNullAnnotation(JLorg/eclipse/jdt/internal/compiler/ast/TypeReference;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)Z

    move-result v3

    if-nez v3, :cond_37

    iget-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    and-long/2addr v3, v8

    iput-wide v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    :cond_37
    :goto_16
    iget-boolean v3, v2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->storeAnnotations:Z

    if-eqz v3, :cond_38

    invoke-direct {v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->createArgumentBindings(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;)V

    :cond_38
    if-eqz v10, :cond_39

    return-object v0

    :cond_39
    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    const v3, -0x2000001

    and-int/2addr v2, v3

    iput v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->externalAnnotationProvider:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;

    if-eqz v2, :cond_3a

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-static {v0, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->annotateMethodBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    :cond_3a
    return-object v0
.end method


# virtual methods
.method public addNestMember(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->nestMembers:Ljava/util/HashSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->nestMembers:Ljava/util/HashSet;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->nestMembers:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSyntheticArrayMethod(Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;I[C)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;
    .locals 5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    aput-object v2, v0, v1

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    const/4 v2, 0x1

    const/16 v3, 0xe

    if-nez v0, :cond_3

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    invoke-direct {v0, p2, p1, p3, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;-><init>(ILorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;[CLorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    aget-object p3, p3, v1

    const/4 v4, 0x2

    new-array v4, v4, [Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    invoke-virtual {p3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ne p2, v3, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    aput-object v0, v4, v1

    goto :goto_3

    :cond_3
    if-ne p2, v3, :cond_4

    move v4, v1

    goto :goto_1

    :cond_4
    move v4, v2

    :goto_1
    aget-object v4, v0, v4

    if-nez v4, :cond_6

    new-instance v4, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    invoke-direct {v4, p2, p1, p3, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;-><init>(ILorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;[CLorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V

    if-ne p2, v3, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    aput-object v4, v0, v1

    :cond_6
    move-object v0, v4

    :goto_3
    return-object v0

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public addSyntheticBridgeMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;
    .locals 6

    .line 25
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 26
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-wide v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v2, 0x310000

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return-object v1

    .line 27
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isDefaultMethod()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 28
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isAbstract()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isFinal()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_2

    .line 29
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    if-nez v0, :cond_3

    const/4 v0, 0x3

    .line 30
    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    .line 31
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    const/4 v2, 0x0

    aget-object v3, v0, v2

    if-nez v3, :cond_4

    .line 32
    new-instance v1, Ljava/util/HashMap;

    const/4 v3, 0x5

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    aput-object v1, v0, v2

    goto :goto_0

    .line 33
    :cond_4
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 34
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_8

    .line 35
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 36
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    invoke-direct {v0, p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V

    .line 37
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    aget-object v2, v3, v2

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    aput-object v0, v3, v1

    goto :goto_1

    .line 39
    :cond_6
    aget-object v2, v0, v1

    if-nez v2, :cond_7

    .line 40
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    invoke-direct {v2, p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V

    .line 41
    aput-object v2, v0, v1

    :cond_7
    move-object v0, v2

    :goto_1
    return-object v0

    .line 42
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 43
    instance-of v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v4, :cond_5

    .line 44
    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    .line 45
    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    iget-object v5, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-static {v4, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 46
    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    iget-object v5, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 47
    invoke-virtual {p1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->areParameterErasuresEqual(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_9
    :goto_2
    return-object v1

    .line 48
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public addSyntheticBridgeMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-wide v2, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v4, 0x330000

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    iget-object v2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->areParameterErasuresEqual(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 5
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 6
    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    .line 7
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    const/4 v2, 0x0

    aget-object v3, v0, v2

    if-nez v3, :cond_3

    .line 8
    new-instance v1, Ljava/util/HashMap;

    const/4 v3, 0x5

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    aput-object v1, v0, v2

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 10
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_7

    .line 11
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    const/4 v1, 0x1

    if-nez v0, :cond_5

    .line 12
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    invoke-direct {v0, p1, p2, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V

    .line 13
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    aget-object p2, p2, v2

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    invoke-virtual {p2, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    aput-object v0, v2, v1

    goto :goto_1

    .line 15
    :cond_5
    aget-object v2, v0, v1

    if-nez v2, :cond_6

    .line 16
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    invoke-direct {v2, p1, p2, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V

    .line 17
    aput-object v2, v0, v1

    :cond_6
    move-object v0, v2

    :goto_1
    return-object v0

    .line 18
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 19
    instance-of v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v4, :cond_4

    .line 20
    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    .line 21
    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    iget-object v5, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-static {v4, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 22
    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    iget-object v5, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 23
    invoke-virtual {p1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->areParameterErasuresEqual(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v3

    if-eqz v3, :cond_4

    return-object v1

    .line 24
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public addSyntheticEnumMethod([C)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    aput-object v2, v0, v1

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    if-nez v0, :cond_2

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;[C)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aput-object v0, v3, v1

    goto :goto_0

    :cond_2
    aget-object v2, v0, v1

    if-nez v2, :cond_3

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    invoke-direct {v2, p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;[C)V

    aput-object v2, v0, v1

    :cond_3
    move-object v0, v2

    :goto_0
    return-object v0

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public addSyntheticFactoryMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[C)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;
    .locals 10

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    aput-object v2, v0, v1

    :cond_1
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    move-object v4, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p4

    move-object v8, p3

    move-object v9, p0

    invoke-direct/range {v4 .. v9}, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    aget-object p1, p1, v1

    filled-new-array {v0}, [Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    move-result-object p2

    invoke-virtual {p1, p4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public addSyntheticFieldForAssert(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;
    .locals 9

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    if-nez p1, :cond_0

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/util/HashMap;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    const/4 v0, 0x1

    aget-object v1, p1, v0

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    aput-object v1, p1, v0

    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    aget-object p1, p1, v0

    const-string v1, "assertionEmulation"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-nez p1, :cond_2

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticFieldBinding;

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->SYNTHETIC_ASSERT_DISABLED:[C

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->BOOLEAN:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v2

    or-int/lit16 v5, v2, 0x1018

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v8

    move-object v2, p1

    move-object v6, p0

    invoke-direct/range {v2 .. v8}, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticFieldBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ILorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/impl/Constant;I)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v1, 0x0

    move v2, v1

    :cond_3
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    invoke-virtual {p0, v3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->getField([CZ)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-nez v5, :cond_4

    move v5, v1

    goto :goto_0

    :cond_4
    array-length v5, v5

    :goto_0
    move v6, v1

    :goto_1
    if-lt v6, v5, :cond_5

    goto :goto_2

    :cond_5
    iget-object v7, v4, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    aget-object v7, v7, v6

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-ne v7, v3, :cond_6

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->SYNTHETIC_ASSERT_DISABLED:[C

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-static {v3, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v2

    iput-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    move v3, v0

    move v2, v5

    goto :goto_3

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    move v3, v1

    :goto_3
    if-nez v3, :cond_3

    return-object p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public addSyntheticFieldForClassLiteral(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;
    .locals 9

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    const/4 v1, 0x2

    aget-object v2, v0, v1

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    aput-object v2, v0, v1

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-nez v0, :cond_2

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticFieldBinding;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->SYNTHETIC_CLASS:[C

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-static {v2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v3

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangClass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v8

    const/16 v5, 0x1008

    move-object v2, v0

    move-object v6, p0

    invoke-direct/range {v2 .. v8}, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticFieldBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ILorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/impl/Constant;I)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    aget-object v1, v2, v1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->getField([CZ)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->referenceType()Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    move v3, v2

    goto :goto_0

    :cond_3
    array-length v3, v1

    :goto_0
    if-lt v2, v3, :cond_4

    goto :goto_1

    :cond_4
    aget-object v4, v1, v2

    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-ne v5, p1, :cond_5

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->duplicateFieldInType(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;)V

    goto :goto_1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    return-object v0

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public addSyntheticFieldForEnumValues()Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;
    .locals 10

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    aput-object v2, v0, v1

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    aget-object v0, v0, v1

    const-string v2, "enumConstantValues"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-nez v0, :cond_2

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticFieldBinding;

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->SYNTHETIC_ENUM_VALUES:[C

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v3, p0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object v5

    sget-object v8, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v9

    const/16 v6, 0x101a

    move-object v3, v0

    move-object v7, p0

    invoke-direct/range {v3 .. v9}, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticFieldBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ILorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/impl/Constant;I)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v2, 0x0

    move v3, v2

    :cond_3
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    invoke-virtual {p0, v4, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->getField([CZ)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-nez v5, :cond_4

    move v6, v2

    goto :goto_0

    :cond_4
    array-length v6, v5

    :goto_0
    move v7, v2

    :goto_1
    if-lt v7, v6, :cond_5

    goto :goto_2

    :cond_5
    aget-object v8, v5, v7

    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-ne v8, v4, :cond_6

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->SYNTHETIC_ENUM_VALUES:[C

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v6, v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-static {v4, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v3

    iput-object v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    move v4, v1

    move v3, v6

    goto :goto_3

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    move v4, v2

    :goto_3
    if-nez v4, :cond_3

    return-object v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public addSyntheticFieldForInnerclass(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    .line 3
    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    if-nez v2, :cond_1

    .line 5
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    aput-object v2, v0, v1

    .line 6
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-nez v0, :cond_2

    .line 7
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticFieldBinding;

    .line 8
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->SYNTHETIC_OUTER_LOCAL_PREFIX:[C

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    invoke-static {v2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v3

    .line 9
    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 10
    sget-object v7, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    .line 11
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v8

    const/16 v5, 0x1012

    move-object v2, v0

    move-object v6, p0

    .line 12
    invoke-direct/range {v2 .. v8}, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticFieldBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ILorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/impl/Constant;I)V

    .line 13
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move v2, v1

    .line 14
    :cond_3
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    invoke-virtual {p0, v3, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->getField([CZ)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    .line 15
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    .line 16
    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-nez v5, :cond_4

    move v6, v4

    goto :goto_0

    .line 17
    :cond_4
    array-length v6, v5

    :goto_0
    move v7, v4

    :goto_1
    if-lt v7, v6, :cond_5

    goto :goto_2

    .line 18
    :cond_5
    aget-object v8, v5, v7

    .line 19
    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-ne v8, v3, :cond_6

    .line 20
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->SYNTHETIC_OUTER_LOCAL_PREFIX:[C

    .line 21
    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    .line 22
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "$"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v6, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 23
    invoke-static {v3, v4, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C[C)[C

    move-result-object v2

    iput-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    move v4, v1

    move v2, v6

    goto :goto_2

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    if-nez v4, :cond_3

    return-object v0

    .line 24
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public addSyntheticFieldForInnerclass(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;
    .locals 9

    .line 25
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 26
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    .line 27
    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    .line 28
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    if-nez v2, :cond_1

    .line 29
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    aput-object v2, v0, v1

    .line 30
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-nez v0, :cond_2

    .line 31
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticFieldBinding;

    .line 32
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->SYNTHETIC_ENCLOSING_INSTANCE_PREFIX:[C

    .line 33
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->depth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 34
    invoke-static {v2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v3

    .line 35
    sget-object v7, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    .line 36
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v8

    const/16 v5, 0x1010

    move-object v2, v0

    move-object v4, p1

    move-object v6, p0

    .line 37
    invoke-direct/range {v2 .. v8}, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticFieldBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ILorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/impl/Constant;I)V

    .line 38
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_2
    :goto_0
    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->getField([CZ)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 40
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    .line 41
    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    const/4 v3, 0x0

    if-nez v2, :cond_3

    move v4, v3

    goto :goto_1

    .line 42
    :cond_3
    array-length v4, v2

    :goto_1
    if-lt v3, v4, :cond_4

    goto :goto_2

    .line 43
    :cond_4
    aget-object v5, v2, v3

    .line 44
    iget-object v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-ne v6, p1, :cond_6

    .line 45
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object p1

    iget-wide v2, p1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v6, 0x310000

    cmp-long p1, v2, v6

    if-ltz p1, :cond_5

    .line 46
    iget-object p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    .line 47
    const-string v2, "$"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 48
    invoke-static {p1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object p1

    iput-object p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    goto :goto_0

    .line 49
    :cond_5
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    invoke-virtual {p1, p0, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->duplicateFieldInType(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;)V

    goto :goto_2

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    return-object v0

    .line 50
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public addSyntheticFieldForSwitchEnum([CLjava/lang/String;)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticFieldBinding;
    .locals 9

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    aput-object v2, v0, v1

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticFieldBinding;

    if-nez v0, :cond_3

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticFieldBinding;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    invoke-virtual {v2, v3, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object v4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x11

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    :goto_0
    or-int/lit16 v5, v2, 0x1008

    sget-object v7, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v8

    move-object v2, v0

    move-object v3, p1

    move-object v6, p0

    invoke-direct/range {v2 .. v8}, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticFieldBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ILorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/impl/Constant;I)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 p2, 0x0

    move v2, p2

    :cond_4
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    invoke-virtual {p0, v3, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->getField([CZ)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-nez v4, :cond_5

    move v5, p2

    goto :goto_1

    :cond_5
    array-length v5, v4

    :goto_1
    move v6, p2

    :goto_2
    if-lt v6, v5, :cond_6

    goto :goto_3

    :cond_6
    aget-object v7, v4, v6

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-ne v7, v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-static {p1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v2

    iput-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    move v3, v1

    move v2, v4

    goto :goto_4

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    move v3, p2

    :goto_4
    if-nez v3, :cond_4

    return-object v0

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public addSyntheticMethod(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;
    .locals 4

    .line 14
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    .line 16
    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    .line 17
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-nez v2, :cond_1

    .line 18
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    aput-object v2, v0, v1

    .line 19
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    if-nez v0, :cond_2

    .line 20
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->ANONYMOUS_METHOD:[C

    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->ordinal:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-static {v2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v2

    invoke-direct {v0, p1, v2, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;[CLorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V

    .line 21
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    aput-object v0, v3, v1

    goto :goto_0

    .line 23
    :cond_2
    aget-object v0, v0, v1

    .line 24
    :goto_0
    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->isSerializable:Z

    if-eqz p1, :cond_3

    .line 25
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->addDeserializeLambdaMethod()V

    :cond_3
    return-object v0

    .line 26
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public addSyntheticMethod(Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;
    .locals 4

    .line 27
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 28
    iget-boolean v0, p1, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->isSerializable:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 29
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    if-nez v0, :cond_1

    const/4 v0, 0x3

    .line 30
    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    .line 31
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-nez v2, :cond_2

    .line 32
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    aput-object v2, v0, v1

    .line 33
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    if-nez v0, :cond_3

    .line 34
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    invoke-direct {v0, p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V

    .line 35
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    aput-object v0, v3, v1

    goto :goto_0

    .line 37
    :cond_3
    aget-object v0, v0, v1

    .line 38
    :goto_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->addDeserializeLambdaMethod()V

    return-object v0

    .line 39
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public addSyntheticMethod(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;ZZ)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    .line 3
    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-nez v2, :cond_1

    .line 5
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    aput-object v2, v0, v1

    .line 6
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    if-nez v0, :cond_2

    .line 7
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    invoke-direct {v0, p1, p2, p3, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;ZZLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    .line 8
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    aget-object p3, p3, v1

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    invoke-virtual {p3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    xor-int/lit8 p1, p2, 0x1

    .line 9
    aput-object v0, v1, p1

    goto :goto_0

    :cond_2
    xor-int/lit8 v1, p2, 0x1

    .line 10
    aget-object v1, v0, v1

    if-nez v1, :cond_3

    .line 11
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    invoke-direct {v1, p1, p2, p3, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;ZZLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    xor-int/lit8 p1, p2, 0x1

    .line 12
    aput-object v1, v0, p1

    :cond_3
    move-object v0, v1

    :goto_0
    return-object v0

    .line 13
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public addSyntheticMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;
    .locals 4

    .line 40
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 41
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    .line 42
    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    .line 43
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-nez v2, :cond_1

    .line 44
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    aput-object v2, v0, v1

    .line 45
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    if-nez v0, :cond_2

    .line 46
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    invoke-direct {v0, p1, p2, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;ZLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    .line 47
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    aget-object v1, v2, v1

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    xor-int/lit8 p2, p2, 0x1

    .line 48
    aput-object v0, v2, p2

    goto :goto_0

    :cond_2
    xor-int/lit8 v1, p2, 0x1

    .line 49
    aget-object v1, v0, v1

    if-nez v1, :cond_3

    .line 50
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    invoke-direct {v1, p1, p2, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;ZLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    xor-int/lit8 p2, p2, 0x1

    .line 51
    aput-object v1, v0, p2

    :cond_3
    move-object v0, v1

    .line 52
    :goto_0
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStatic()Z

    move-result p2

    const/16 v1, 0xfe

    if-eqz p2, :cond_6

    .line 53
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length p2, p2

    if-ge p2, v1, :cond_5

    .line 54
    :cond_4
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length p2, p2

    const/16 v1, 0xff

    if-lt p2, v1, :cond_9

    .line 55
    :cond_5
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->sourceMethod()Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->tooManyParametersForSyntheticMethod(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)V

    goto :goto_1

    .line 56
    :cond_6
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length p2, p2

    const/16 v2, 0xfd

    if-ge p2, v2, :cond_8

    .line 57
    :cond_7
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length p2, p2

    if-lt p2, v1, :cond_9

    .line 58
    :cond_8
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->sourceMethod()Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->tooManyParametersForSyntheticMethod(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)V

    :cond_9
    :goto_1
    return-object v0

    .line 59
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public addSyntheticMethodForEnumInitialization(II)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    aput-object v2, v0, v1

    :cond_1
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    invoke-direct {v0, p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;II)V

    const/4 p1, 0x2

    new-array p1, p1, [Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    aget-object p2, p2, v1

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-virtual {p2, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aput-object v0, p1, v1

    return-object v0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public addSyntheticMethodForSwitchEnum(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;
    .locals 9

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    aput-object v2, v0, v1

    :cond_1
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->SYNTHETIC_SWITCH_ENUM_TABLE:[C

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->constantPoolName()[C

    move-result-object v2

    invoke-static {v0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v7

    const/16 v0, 0x2f

    const/16 v2, 0x24

    invoke-static {v7, v0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replace([CCC)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>([C)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    if-nez v2, :cond_2

    invoke-virtual {p0, v7, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->addSyntheticFieldForSwitchEnum([CLjava/lang/String;)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticFieldBinding;

    move-result-object v4

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    move-object v3, v2

    move-object v5, p0

    move-object v6, p1

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CLorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    aget-object p1, p1, v1

    const/4 p2, 0x2

    new-array p2, p2, [Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aput-object v2, p2, v1

    goto :goto_0

    :cond_2
    aget-object v3, v2, v1

    if-nez v3, :cond_3

    invoke-virtual {p0, v7, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->addSyntheticFieldForSwitchEnum([CLjava/lang/String;)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticFieldBinding;

    move-result-object v4

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    move-object v3, v0

    move-object v5, p0

    move-object v6, p1

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CLorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;)V

    aput-object v0, v2, v1

    move-object v2, v0

    goto :goto_0

    :cond_3
    move-object v2, v3

    :goto_0
    return-object v2

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public areFieldsInitialized()Z
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->areFieldsInitialized()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->UNINITIALIZED_FIELDS:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public areMethodsInitialized()Z
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->areMethodsInitialized()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->UNINITIALIZED_METHODS:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
    .locals 2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->canTypeBeAccessed(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public clone(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-direct {p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V

    return-object p1
.end method

.method public computeUniqueKey(Z)[C
    .locals 6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->computeUniqueKey()[C

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->computeUniqueKey(Z)[C

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    return-object p1

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fileName:[C

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/util/Util;->isClassFileName([C)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p1

    :cond_2
    const/16 v0, 0x2e

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fileName:[C

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fileName:[C

    const/16 v3, 0x2f

    invoke-static {v3, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v2

    const/4 v4, 0x1

    add-int/2addr v2, v4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fileName:[C

    invoke-static {v5, v2, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v0

    invoke-static {v3, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v2

    add-int/2addr v2, v4

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    move v4, v2

    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isMemberType()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x24

    invoke-static {v2, p1, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v2

    goto :goto_1

    :cond_4
    move v2, v1

    :goto_1
    if-ne v2, v1, :cond_5

    const/16 v2, 0x3c

    invoke-static {v2, p1, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v2

    :cond_5
    if-ne v2, v1, :cond_6

    const/16 v1, 0x3b

    invoke-static {v1, p1, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v2

    :cond_6
    invoke-static {p1, v4, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([CII)[C

    move-result-object v1

    invoke-static {v1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v3

    if-nez v3, :cond_7

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5, v4}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/16 v0, 0x7e

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    array-length v0, p1

    sub-int/2addr v0, v2

    invoke-virtual {v3, p1, v2, v0}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    new-array v0, p1, [C

    invoke-virtual {v3, v5, p1, v0, v5}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    return-object v0

    :cond_7
    return-object p1
.end method

.method public containerAnnotationType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->containerAnnotationType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->containerAnnotationType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->containerAnnotationType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public evaluateNullAnnotations()V
    .locals 13

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->nullnessDefaultInitialized:I

    if-gtz v0, :cond_d

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v2, 0x180000000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    move v4, v1

    :goto_0
    array-length v5, v0

    if-lt v4, v5, :cond_1

    goto :goto_1

    :cond_1
    aget-object v5, v0, v4

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->getCompilerAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v5

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->getAnnotationType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v5

    if-eqz v5, :cond_2

    const/16 v6, 0x60

    invoke-virtual {v5, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->hasNullBit(I)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v5

    aget-object v6, v0, v4

    invoke-virtual {v5, v6}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->nullAnnotationUnsupportedLocation(Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    iget-wide v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide v7, -0x180000000000001L

    and-long/2addr v5, v7

    iput-wide v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->PACKAGE_INFO_NAME:[C

    invoke-static {v0, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getPackage()Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v5

    iget-object v6, v5, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    sget-object v7, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    const/4 v8, 0x1

    if-ne v6, v7, :cond_4

    move v1, v8

    :cond_4
    const/4 v6, 0x2

    if-nez v0, :cond_7

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v7

    invoke-virtual {v7, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->isNullnessAnnotationPackage(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Z

    move-result v7

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getDefaultNullness()I

    move-result v9

    if-nez v9, :cond_7

    if-nez v1, :cond_7

    if-nez v7, :cond_7

    instance-of v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;

    if-nez v7, :cond_7

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->module:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-virtual {v5, v4, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getType([CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    if-nez v4, :cond_5

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->missingNonNullByDefaultAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    invoke-virtual {v5, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->setDefaultNullness(I)V

    goto :goto_2

    :cond_5
    instance-of v7, v4, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-eqz v7, :cond_6

    iget-wide v9, v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v11, 0x200

    and-long/2addr v9, v11

    cmp-long v2, v9, v2

    if-nez v2, :cond_6

    move-object v2, v4

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v2

    iget-boolean v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->connectingHierarchy:Z

    iput-boolean v8, v2, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->connectingHierarchy:Z

    :try_start_0
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getAnnotationTagBits()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->connectingHierarchy:Z

    goto :goto_2

    :catchall_0
    move-exception v0

    iput-boolean v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->connectingHierarchy:Z

    throw v0

    :cond_6
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getAnnotationTagBits()J

    :cond_7
    :goto_2
    iput v8, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->nullnessDefaultInitialized:I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->defaultNullness:I

    if-eqz v2, :cond_a

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v0, :cond_9

    iget-object v0, v5, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->enclosingModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->getDefaultNullness()I

    move-result v0

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->defaultNullness:I

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v1, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    iget-object v2, v5, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->enclosingModule:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    invoke-virtual {v0, v3, v1, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->nullDefaultAnnotationIsRedundant(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)V

    goto :goto_3

    :cond_8
    invoke-virtual {v5, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->setDefaultNullness(I)V

    goto :goto_3

    :cond_9
    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parent:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    iget v1, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationSourceStart:I

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->checkRedundantDefaultNullness(II)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    iget-object v2, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-virtual {v1, v3, v2, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->nullDefaultAnnotationIsRedundant(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)V

    goto :goto_3

    :cond_a
    if-nez v0, :cond_b

    if-eqz v1, :cond_c

    instance-of v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;

    if-nez v0, :cond_c

    :cond_b
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->missingNonNullByDefaultAnnotation(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;)V

    if-nez v1, :cond_c

    invoke-virtual {v5, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->setDefaultNullness(I)V

    :cond_c
    :goto_3
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->maybeMarkTypeParametersNonNull()V

    :cond_d
    :goto_4
    return-void

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public faultInTypesForFieldsAndMethods()V
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->checkAnnotationsInType()V

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->internalFaultInTypeForFieldsAndMethods()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public fields()[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;
    .locals 9

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x2000

    if-nez v0, :cond_1

    iget-wide v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long v7, v5, v3

    cmp-long v0, v7, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    return-object v0

    :cond_0
    or-long v0, v5, v3

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->fields()[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    return-object v0

    :cond_1
    iget-wide v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long v7, v5, v3

    cmp-long v0, v7, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    return-object v0

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    const-wide/16 v7, 0x1000

    and-long/2addr v5, v7

    cmp-long v1, v5, v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    :try_start_0
    array-length v1, v0

    const/4 v5, 0x1

    if-le v1, v5, :cond_3

    invoke-static {v0, v2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sortFields([Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;II)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move v7, v2

    goto :goto_5

    :cond_3
    :goto_0
    iget-wide v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr v5, v7

    iput-wide v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    :cond_4
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    array-length v5, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v6, v2

    move v7, v6

    :goto_1
    if-lt v6, v5, :cond_9

    if-lez v7, :cond_8

    array-length v1, v0

    sub-int/2addr v1, v7

    if-nez v1, :cond_5

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_FIELDS:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->setFields([Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v0

    return-object v0

    :cond_5
    new-array v1, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    array-length v5, v0

    move v6, v2

    :goto_2
    if-lt v2, v5, :cond_6

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->setFields([Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    goto :goto_3

    :cond_6
    aget-object v7, v0, v2

    if-eqz v7, :cond_7

    add-int/lit8 v8, v6, 0x1

    aput-object v7, v1, v6

    move v6, v8

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr v0, v3

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    return-object v0

    :cond_9
    :try_start_1
    aget-object v8, v1, v6

    invoke-virtual {p0, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->resolveTypeFor(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v8

    if-nez v8, :cond_b

    if-ne v0, v1, :cond_a

    new-array v0, v5, [Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-static {v1, v2, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    :catchall_1
    move-exception v1

    goto :goto_5

    :cond_a
    :goto_4
    const/4 v8, 0x0

    aput-object v8, v0, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v7, v7, 0x1

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :goto_5
    if-lez v7, :cond_f

    array-length v3, v0

    sub-int/2addr v3, v7

    if-nez v3, :cond_c

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_FIELDS:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->setFields([Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v0

    return-object v0

    :cond_c
    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    array-length v4, v0

    move v5, v2

    :goto_6
    if-ge v2, v4, :cond_e

    aget-object v6, v0, v2

    if-eqz v6, :cond_d

    add-int/lit8 v7, v5, 0x1

    aput-object v6, v3, v5

    move v5, v7

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_e
    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->setFields([Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    :cond_f
    throw v1
.end method

.method public generateSyntheticFinalFieldInitialization(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->SYNTHETIC_SWITCH_ENUM_TABLE:[C

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    invoke-static {v2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->prefixEquals([C[C)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->isFinal()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    new-instance v4, Ljava/lang/String;

    iget-object v5, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v2, :cond_1

    aget-object v2, v2, v3

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/16 v3, -0x48

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v2, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->invoke(BLorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    const/16 v2, -0x4d

    invoke-virtual {p1, v2, v1, v4}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->fieldAccess(BLorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public genericSignature()[C
    .locals 6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->genericSignature()[C

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    const/16 v2, 0xa

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    array-length v1, v1

    move v2, v3

    :goto_0
    if-lt v2, v1, :cond_1

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    move-object v4, v0

    goto :goto_3

    :cond_1
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->genericSignature()[C

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v0, v0

    move v1, v3

    :goto_2
    if-lt v1, v0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_5
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    goto :goto_1

    :goto_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->genericTypeSignature()[C

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangObject()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->genericTypeSignature()[C

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :goto_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v5, v0

    :goto_5
    if-lt v3, v5, :cond_7

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0

    :cond_7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->genericTypeSignature()[C

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public genericTypeSignature()[C
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->genericTypeSignature()[C

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->genericReferenceTypeSignature:[C

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->computeGenericTypeSignature([Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;)[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->genericReferenceTypeSignature:[C

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->genericReferenceTypeSignature:[C

    return-object v0
.end method

.method public getAnnotationTagBits()J
    .locals 6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->getAnnotationTagBits()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide v2, 0x200000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->staticInitializerScope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    iget-boolean v4, v1, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->insideTypeAnnotation:Z

    const/4 v5, 0x1

    :try_start_0
    iput-boolean v5, v1, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->insideTypeAnnotation:Z

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-static {v1, v5, p0}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->resolveAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->staticInitializerScope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    iput-boolean v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->insideTypeAnnotation:Z

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide v4, 0x400000000000L

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->staticInitializerScope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    iput-boolean v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->insideTypeAnnotation:Z

    throw v1

    :cond_1
    :goto_0
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    return-wide v0
.end method

.method public getDefaultAbstractMethods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->getDefaultAbstractMethods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :cond_1
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_5

    if-nez v2, :cond_2

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_METHODS:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    return-object v0

    :cond_2
    new-array v3, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    array-length v0, v0

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_4

    return-object v3

    :cond_4
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isDefaultAbstract()Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v2, v1, 0x1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    aget-object v4, v4, v0

    aput-object v4, v3, v1

    move v1, v2

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isDefaultAbstract()Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getExactConstructor([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 10

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->getExactConstructor([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    return-object p1

    :cond_0
    array-length v0, p1

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v3, 0x8000

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/16 v4, 0x20

    const/4 v7, 0x0

    if-eqz v3, :cond_5

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->INIT:[C

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->binarySearch([C[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)J

    move-result-wide v1

    cmp-long v3, v1, v5

    if-ltz v3, :cond_e

    long-to-int v3, v1

    shr-long/2addr v1, v4

    long-to-int v1, v1

    :goto_0
    if-le v3, v1, :cond_1

    goto/16 :goto_7

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    aget-object v2, v2, v3

    iget-object v4, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v5, v4

    if-ne v5, v0, :cond_4

    move v5, v7

    :goto_1
    if-lt v5, v0, :cond_2

    return-object v2

    :cond_2
    aget-object v6, v4, v5

    aget-object v8, p1, v5

    invoke-static {v6, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    const-wide/16 v8, 0x4000

    and-long/2addr v1, v8

    cmp-long v1, v1, v5

    if-nez v1, :cond_7

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_6

    invoke-static {v1, v7, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sortMethods([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;II)V

    :cond_6
    iget-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr v1, v8

    iput-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    :cond_7
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->INIT:[C

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->binarySearch([C[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)J

    move-result-wide v1

    cmp-long v3, v1, v5

    if-ltz v3, :cond_e

    long-to-int v3, v1

    shr-long/2addr v1, v4

    long-to-int v1, v1

    :goto_3
    if-le v3, v1, :cond_8

    goto :goto_7

    :cond_8
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    aget-object v2, v2, v3

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->resolveTypesFor(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v4

    if-eqz v4, :cond_d

    iget-object v4, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v4, :cond_9

    goto :goto_6

    :cond_9
    iget-object v4, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v5, v4

    if-ne v5, v0, :cond_c

    move v5, v7

    :goto_4
    if-lt v5, v0, :cond_a

    return-object v2

    :cond_a
    aget-object v6, v4, v5

    aget-object v8, p1, v5

    invoke-static {v6, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v6

    if-eqz v6, :cond_b

    goto :goto_5

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_c
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_d
    :goto_6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->getExactConstructor([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    return-object p1

    :cond_e
    :goto_7
    const/4 p1, 0x0

    return-object p1
.end method

.method public getExactMethod([C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 11

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->getExactMethod([C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    return-object p1

    :cond_0
    array-length v0, p2

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v3, 0x8000

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/16 v4, 0x20

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v3, :cond_5

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-static {p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->binarySearch([C[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)J

    move-result-wide v1

    cmp-long v3, v1, v5

    if-ltz v3, :cond_14

    long-to-int v3, v1

    shr-long/2addr v1, v4

    long-to-int v1, v1

    move v2, v8

    :goto_0
    if-le v3, v1, :cond_1

    goto/16 :goto_d

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    aget-object v2, v2, v3

    iget-object v4, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v5, v4

    if-ne v5, v0, :cond_4

    move v5, v7

    :goto_1
    if-lt v5, v0, :cond_2

    return-object v2

    :cond_2
    aget-object v6, v4, v5

    aget-object v9, p2, v5

    invoke-static {v6, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v2, v7

    goto :goto_0

    :cond_5
    const-wide/16 v9, 0x4000

    and-long/2addr v1, v9

    cmp-long v1, v1, v5

    if-nez v1, :cond_7

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    array-length v2, v1

    if-le v2, v8, :cond_6

    invoke-static {v1, v7, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sortMethods([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;II)V

    :cond_6
    iget-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr v1, v9

    iput-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    :cond_7
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-static {p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->binarySearch([C[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)J

    move-result-wide v1

    cmp-long v3, v1, v5

    if-ltz v3, :cond_14

    long-to-int v3, v1

    shr-long/2addr v1, v4

    long-to-int v1, v1

    move v2, v3

    :goto_3
    if-le v2, v1, :cond_11

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v2

    iget-wide v4, v2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v9, 0x310000

    cmp-long v2, v4, v9

    if-ltz v2, :cond_8

    move v4, v8

    goto :goto_4

    :cond_8
    move v4, v7

    :goto_4
    move v5, v3

    :goto_5
    if-le v5, v1, :cond_d

    :goto_6
    if-le v3, v1, :cond_9

    goto :goto_c

    :cond_9
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    aget-object v2, v2, v3

    iget-object v4, v2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v5, v4

    if-ne v5, v0, :cond_c

    move v5, v7

    :goto_7
    if-lt v5, v0, :cond_a

    return-object v2

    :cond_a
    aget-object v6, v4, v5

    aget-object v9, p2, v5

    invoke-static {v6, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v6

    if-eqz v6, :cond_b

    goto :goto_8

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_c
    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_d
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    aget-object v6, v2, v5

    move v2, v1

    :goto_9
    if-gt v2, v5, :cond_e

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_e
    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    aget-object v9, v9, v2

    if-eqz v4, :cond_f

    invoke-virtual {v6, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->areParameterErasuresEqual(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v9

    goto :goto_a

    :cond_f
    invoke-virtual {v6, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->areParametersEqual(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v9

    :goto_a
    if-eqz v9, :cond_10

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->getExactMethod([C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    return-object p1

    :cond_10
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    :cond_11
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    aget-object v4, v4, v2

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->resolveTypesFor(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v5

    if-eqz v5, :cond_13

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v4, :cond_12

    goto :goto_b

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_13
    :goto_b
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->getExactMethod([C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    return-object p1

    :cond_14
    :goto_c
    move v2, v8

    :goto_d
    if-eqz v2, :cond_18

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v1, v0

    if-ne v1, v8, :cond_18

    if-eqz p3, :cond_15

    aget-object v0, v0, v7

    invoke-virtual {p3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordTypeReference(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_15
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v0, v0, v7

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getExactMethod([C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    return-object p1

    :cond_16
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v0, :cond_18

    if-eqz p3, :cond_17

    invoke-virtual {p3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->recordTypeReference(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_17
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getExactMethod([C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    return-object p1

    :cond_18
    const/4 p1, 0x0

    return-object p1
.end method

.method public getField([CZ)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;
    .locals 6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->getField([CZ)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object p1

    return-object p1

    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v2, 0x2000

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->binarySearch([C[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object p1

    return-object p1

    :cond_1
    const-wide/16 v2, 0x1000

    and-long/2addr v0, v2

    cmp-long p2, v0, v4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_3

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    array-length v4, p2

    if-le v4, v1, :cond_2

    invoke-static {p2, v0, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sortFields([Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;II)V

    :cond_2
    iget-wide v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr v2, v4

    iput-wide v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    :cond_3
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->binarySearch([C[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object p1

    if-eqz p1, :cond_b

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->resolveTypeFor(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_7

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    array-length v3, v2

    sub-int/2addr v3, v1

    if-nez v3, :cond_4

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_FIELDS:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->setFields([Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    goto :goto_2

    :cond_4
    new-array v1, v3, [Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    array-length v2, v2

    move v3, v0

    :goto_0
    if-lt v0, v2, :cond_5

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->setFields([Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    aget-object v4, v4, v0

    if-ne v4, p1, :cond_6

    goto :goto_1

    :cond_6
    add-int/lit8 v5, v3, 0x1

    aput-object v4, v1, v3

    move v3, v5

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    :goto_2
    return-object p2

    :catchall_0
    move-exception p2

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    array-length v2, v2

    sub-int/2addr v2, v1

    if-eqz v2, :cond_a

    new-array v1, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    array-length v2, v2

    move v3, v0

    :goto_3
    if-ge v0, v2, :cond_9

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    aget-object v4, v4, v0

    if-ne v4, p1, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v5, v3, 0x1

    aput-object v4, v1, v3

    move v3, v5

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->setFields([Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    goto :goto_5

    :cond_a
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_FIELDS:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->setFields([Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    :goto_5
    throw p2

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMethods([C)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 10

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->getMethods([C)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    return-object p1

    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v2, 0x8000

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/16 v3, 0x20

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->binarySearch([C[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)J

    move-result-wide v0

    cmp-long p1, v0, v4

    if-ltz p1, :cond_1

    long-to-int p1, v0

    shr-long/2addr v0, v3

    long-to-int v0, v0

    sub-int/2addr v0, p1

    add-int/2addr v0, v7

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    new-array v2, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-static {v1, p1, v2, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    :cond_1
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_METHODS:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    return-object p1

    :cond_2
    const-wide/16 v8, 0x4000

    and-long/2addr v0, v8

    cmp-long v0, v0, v4

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    array-length v1, v0

    if-le v1, v7, :cond_3

    invoke-static {v0, v6, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sortMethods([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;II)V

    :cond_3
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr v0, v8

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    :cond_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-static {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->binarySearch([C[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-ltz v2, :cond_d

    long-to-int v2, v0

    shr-long/2addr v0, v3

    long-to-int v0, v0

    move v1, v2

    :goto_0
    if-le v1, v0, :cond_a

    sub-int v3, v0, v2

    add-int/lit8 v0, v3, 0x1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    new-array v4, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-static {v1, v2, v4, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-wide v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v8, 0x310000

    cmp-long v0, v0, v8

    if-ltz v0, :cond_5

    move v5, v7

    goto :goto_1

    :cond_5
    move v5, v6

    :goto_1
    move v8, v6

    :goto_2
    if-lt v8, v3, :cond_6

    return-object v4

    :cond_6
    aget-object v9, v4, v8

    move v0, v3

    :goto_3
    if-gt v0, v8, :cond_7

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_7
    if-eqz v5, :cond_8

    aget-object v1, v4, v0

    invoke-virtual {v9, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->areParameterErasuresEqual(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v1

    goto :goto_4

    :cond_8
    aget-object v1, v4, v0

    invoke-virtual {v9, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->areParametersEqual(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v1

    :goto_4
    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->getMethods([C)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    return-object p1

    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_a
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    aget-object v3, v3, v1

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->resolveTypesFor(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v4

    if-eqz v4, :cond_c

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v3, :cond_b

    goto :goto_5

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_c
    :goto_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->getMethods([C)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    return-object p1

    :cond_d
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_METHODS:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    return-object p1
.end method

.method public getNestHost()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->nestHost:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    return-object v0
.end method

.method public getNestMembers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->nestMembers:Ljava/util/HashSet;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/z;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/z;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->sorted()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getNullDefault()I
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->getNullDefault()I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->nullnessDefaultInitialized:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->getAnnotationTagBits()J

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getPackage()Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->isViewedAsDeprecated()Z

    const/4 v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->nullnessDefaultInitialized:I

    :goto_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->defaultNullness:I

    return v0
.end method

.method public getSyntheticBridgeMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    aget-object v0, v0, v2

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    if-nez p1, :cond_2

    return-object v1

    :cond_2
    const/4 v0, 0x1

    aget-object p1, p1, v0

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public getSyntheticField(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public getSyntheticField(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;
    .locals 4

    .line 5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    aget-object v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    if-nez p2, :cond_4

    .line 8
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    aget-object p2, p2, v2

    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 9
    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    .line 11
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->SYNTHETIC_ENCLOSING_INSTANCE_PREFIX:[C

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    invoke-static {v2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->prefixEquals([C[C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v0

    :cond_4
    :goto_0
    return-object v1

    .line 13
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public hasMemberTypes()Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->hasMemberTypes()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hasNonNullDefaultFor(II)Z
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    if-nez v0, :cond_1

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->defaultNullness:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->initializerScope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->hasDefaultNullnessFor(II)Z

    move-result p1

    return p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public hasTypeBit(I)Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->hasTypeBit(I)Z

    move-result p1

    return p1

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->typeBits:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public initializeDeprecatedAnnotationTagBits()V
    .locals 9

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->initializeDeprecatedAnnotationTagBits()V

    return-void

    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide v2, 0x400000000L

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->staticInitializerScope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    iget-boolean v6, v1, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->insideTypeAnnotation:Z

    const/4 v7, 0x1

    :try_start_0
    iput-boolean v7, v1, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->insideTypeAnnotation:Z

    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-static {v1, v7, p0}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->resolveDeprecatedAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)V

    iget-wide v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long v1, v7, v2

    iput-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->staticInitializerScope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    iput-boolean v6, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->insideTypeAnnotation:Z

    const-wide v6, 0x400000000000L

    and-long v0, v1, v6

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->staticInitializerScope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    iput-boolean v6, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->insideTypeAnnotation:Z

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method public initializeForStaticImports()V
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->initializeForStaticImports()V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->connectTypeHierarchy()V

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->buildFields()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->buildMethods()V

    return-void
.end method

.method public isEquivalentTo(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z
    .locals 10

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isEquivalentTo(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    return p1

    :cond_0
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    if-nez p1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v2

    const/16 v3, 0x104

    if-eq v2, v3, :cond_5

    const/16 v1, 0x204

    if-eq v2, v1, :cond_4

    const/16 v1, 0x404

    if-eq v2, v1, :cond_3

    const/16 v1, 0x2004

    if-eq v2, v1, :cond_4

    return v0

    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    invoke-static {p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    return p1

    :cond_4
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundCheck(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    return p1

    :cond_5
    iget-wide v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v4, 0x40000000

    and-long/2addr v2, v4

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isMemberType()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isMemberType()Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    return v0

    :cond_7
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->genericType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    invoke-static {p0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    if-eqz v2, :cond_8

    return v0

    :cond_8
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStatic()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v3

    if-nez v3, :cond_9

    return v0

    :cond_9
    iget-wide v8, v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v4, v8

    cmp-long v4, v4, v6

    if-nez v4, :cond_a

    invoke-static {v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    if-eqz v2, :cond_b

    return v0

    :cond_a
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isEquivalentTo(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    if-nez v2, :cond_b

    return v0

    :cond_b
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-nez v2, :cond_c

    move v2, v0

    goto :goto_0

    :cond_c
    array-length v2, v2

    :goto_0
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez p1, :cond_d

    move v3, v0

    goto :goto_1

    :cond_d
    array-length v3, p1

    :goto_1
    if-eq v3, v2, :cond_e

    return v0

    :cond_e
    move v3, v0

    :goto_2
    if-lt v3, v2, :cond_f

    return v1

    :cond_f
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    aget-object v4, v4, v3

    aget-object v5, p1, v3

    invoke-virtual {v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeArgumentContainedBy(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v4

    if-nez v4, :cond_10

    return v0

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public isGenericType()Z
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isGenericType()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

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

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isHierarchyConnected()Z

    move-result v0

    return v0

    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v2, 0x200

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isNestmateOf(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)Z
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->targetJDK:J

    const-wide/32 v3, 0x370000

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-ltz v1, :cond_4

    iget-wide v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    cmp-long v0, v0, v3

    if-gez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->getNestHost()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v0

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->nestHost:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-nez v1, :cond_1

    move-object v1, p0

    :cond_1
    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, v0

    :goto_0
    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    return v2
.end method

.method public isPrototype()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRepeatableAnnotationType()Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->containerAnnotationType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

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

.method public isTaggedRepeatable()Z
    .locals 4

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v2, 0x1000000000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public kind()I
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->kind()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eq v0, v1, :cond_1

    const/16 v0, 0x804

    return v0

    :cond_1
    const/4 v0, 0x4

    return v0
.end method

.method public memberTypes()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_3

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v2, 0x10000000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->memberTypes()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    array-length v2, v0

    :goto_0
    new-array v3, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :goto_1
    if-lt v1, v2, :cond_2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v2, -0x10000001

    and-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    aget-object v5, v0, v1

    invoke-virtual {v4, v5, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createMemberType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object v0
.end method

.method public methods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 23

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x8000

    if-nez v0, :cond_1

    iget-wide v6, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long v8, v6, v4

    cmp-long v0, v8, v2

    if-eqz v0, :cond_0

    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    return-object v0

    :cond_0
    or-long v2, v6, v4

    iput-wide v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    iput-object v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    return-object v0

    :cond_1
    iget-wide v6, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v6, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_2

    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    return-object v0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->areMethodsInitialized()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->buildMethods()V

    :cond_3
    iget-wide v6, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v8, 0x4000

    and-long/2addr v6, v8

    cmp-long v0, v6, v2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v0, :cond_5

    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    array-length v10, v0

    if-le v10, v6, :cond_4

    invoke-static {v0, v7, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sortMethods([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;II)V

    :cond_4
    iget-wide v10, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr v8, v10

    iput-wide v8, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    :cond_5
    iget-object v8, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    :try_start_0
    array-length v0, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move v9, v7

    move v10, v9

    :goto_0
    const/4 v11, 0x0

    if-lt v9, v0, :cond_32

    :try_start_1
    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-wide v12, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v14, 0x310000

    cmp-long v0, v12, v14

    if-ltz v0, :cond_6

    move v0, v6

    goto :goto_1

    :cond_6
    move v0, v7

    :goto_1
    iget-object v9, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v9

    iget-wide v12, v9, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v14, 0x320000

    cmp-long v9, v12, v14

    if-nez v9, :cond_7

    move v9, v6

    goto :goto_2

    :cond_7
    move v9, v7

    :goto_2
    iget-object v12, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    array-length v12, v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v13, v7

    :goto_3
    if-lt v13, v12, :cond_d

    iget-wide v11, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v11, v4

    cmp-long v0, v11, v2

    if-eqz v0, :cond_8

    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    return-object v0

    :cond_8
    if-lez v10, :cond_c

    array-length v0, v8

    sub-int/2addr v0, v10

    if-nez v0, :cond_9

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_METHODS:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->setMethods([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    goto :goto_5

    :cond_9
    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    array-length v2, v8

    move v3, v7

    :goto_4
    if-lt v7, v2, :cond_a

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->setMethods([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    goto :goto_5

    :cond_a
    aget-object v6, v8, v7

    if-eqz v6, :cond_b

    add-int/lit8 v9, v3, 0x1

    aput-object v6, v0, v3

    move v3, v9

    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_c
    :goto_5
    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->addDefaultAbstractMethods()V

    iget-wide v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long/2addr v2, v4

    iput-wide v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    return-object v0

    :cond_d
    :try_start_2
    aget-object v14, v8, v13

    if-nez v14, :cond_e

    goto :goto_9

    :cond_e
    iget-object v15, v14, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    add-int/lit8 v16, v13, 0x1

    move v3, v6

    move-object/from16 v17, v11

    move/from16 v2, v16

    :goto_6
    if-lt v2, v12, :cond_f

    goto :goto_7

    :cond_f
    aget-object v4, v8, v2

    if-nez v4, :cond_11

    :cond_10
    move/from16 v20, v0

    move/from16 v22, v3

    goto/16 :goto_f

    :cond_11
    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-static {v15, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v5, :cond_15

    :goto_7
    :try_start_3
    iget-object v2, v14, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v2, :cond_14

    aget-object v2, v8, v13

    if-eqz v2, :cond_14

    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->sourceMethod()Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move-result-object v2

    if-eqz v2, :cond_12

    iput-object v11, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    goto :goto_8

    :catchall_0
    move-exception v0

    move v3, v7

    goto/16 :goto_1e

    :cond_12
    :goto_8
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-ne v8, v2, :cond_13

    new-array v8, v12, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-static {v2, v7, v8, v7, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_13
    aput-object v11, v8, v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v10, v10, 0x1

    :cond_14
    :goto_9
    add-int/lit8 v13, v13, 0x1

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x8000

    goto/16 :goto_3

    :cond_15
    if-eqz v0, :cond_25

    :try_start_4
    invoke-virtual {v14, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->areParameterErasuresEqual(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v5

    if-eqz v5, :cond_10

    if-eqz v9, :cond_24

    iget-object v5, v14, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v5, :cond_24

    iget-object v7, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v7, :cond_24

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    iget-object v7, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v7

    invoke-static {v5, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v5

    if-eqz v5, :cond_24

    iget-object v5, v14, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v7, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v11, v5

    iget-object v6, v14, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move/from16 v20, v0

    iget-object v0, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-ne v6, v0, :cond_16

    const/16 v21, 0x1

    goto :goto_a

    :cond_16
    const/16 v21, 0x0

    :goto_a
    if-nez v21, :cond_17

    move/from16 v22, v3

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v3

    invoke-virtual {v14, v4, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->computeSubstitutedMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v3

    if-eqz v3, :cond_18

    const/16 v21, 0x1

    goto :goto_b

    :catchall_1
    move-exception v0

    const/4 v3, 0x0

    goto/16 :goto_1e

    :cond_17
    move/from16 v22, v3

    :cond_18
    move-object v3, v4

    :goto_b
    invoke-virtual {v14, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->areParametersEqual(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v3

    if-eqz v3, :cond_19

    if-nez v21, :cond_26

    :cond_19
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eq v6, v3, :cond_1a

    if-eq v0, v3, :cond_1a

    :goto_c
    const/4 v3, 0x0

    goto/16 :goto_11

    :cond_1a
    if-lez v11, :cond_23

    move v0, v11

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1c

    goto :goto_d

    :cond_1c
    aget-object v3, v5, v0

    aget-object v6, v7, v0

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v6

    invoke-static {v3, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    if-eqz v3, :cond_1d

    aget-object v3, v5, v0

    instance-of v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;

    if-eqz v3, :cond_1e

    aget-object v3, v7, v0

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    aget-object v6, v5, v0

    check-cast v6, Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->actualType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v6

    invoke-static {v3, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_d

    :cond_1d
    aget-object v3, v5, v0

    aget-object v6, v7, v0

    invoke-static {v3, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    if-eqz v3, :cond_1b

    aget-object v3, v5, v0

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    instance-of v6, v3, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-eqz v6, :cond_1b

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v3

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eq v3, v6, :cond_1b

    move v0, v11

    :cond_1e
    :goto_d
    if-ltz v0, :cond_22

    if-ge v0, v11, :cond_22

    :cond_1f
    add-int/lit8 v11, v11, -0x1

    if-gez v11, :cond_20

    goto :goto_e

    :cond_20
    aget-object v0, v5, v11

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    aget-object v3, v7, v11

    invoke-static {v0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_1f

    aget-object v0, v7, v11

    instance-of v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;

    if-eqz v0, :cond_21

    aget-object v0, v5, v11

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    aget-object v3, v7, v11

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->actualType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_21
    :goto_e
    move v0, v11

    :cond_22
    if-ltz v0, :cond_26

    goto/16 :goto_c

    :cond_23
    if-eqz v11, :cond_26

    goto/16 :goto_c

    :cond_24
    move/from16 v20, v0

    move/from16 v22, v3

    goto :goto_10

    :cond_25
    move/from16 v20, v0

    move/from16 v22, v3

    invoke-virtual {v14, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->areParametersEqual(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v0

    if-nez v0, :cond_26

    :goto_f
    move/from16 v3, v22

    goto/16 :goto_18

    :cond_26
    :goto_10
    move/from16 v3, v22

    :goto_11
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_28

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->VALUEOF:[C

    invoke-static {v15, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-nez v0, :cond_27

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->VALUES:[C

    invoke-static {v15, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_27
    const/4 v5, 0x1

    const/16 v19, 0x1

    goto :goto_12

    :cond_28
    const/4 v5, 0x1

    const/16 v19, 0x0

    :goto_12
    if-ne v3, v5, :cond_29

    move v0, v5

    goto :goto_13

    :cond_29
    const/4 v0, 0x0

    :goto_13
    if-nez v17, :cond_2e

    invoke-virtual {v14}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->sourceMethod()Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move-result-object v6

    if-eqz v6, :cond_2d

    iget-object v7, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v7, :cond_2d

    iget-object v7, v14, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v7, :cond_2a

    iget-object v7, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v7, :cond_2a

    move v7, v5

    goto :goto_14

    :cond_2a
    const/4 v7, 0x0

    :goto_14
    if-eqz v19, :cond_2b

    iget-object v7, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v7

    invoke-virtual {v7, v1, v6}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->duplicateEnumSpecialMethod(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)V

    move v7, v5

    goto :goto_15

    :cond_2b
    iget-object v11, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v11}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v11

    invoke-virtual {v14, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->areParametersEqual(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v5

    invoke-virtual {v11, v6, v5, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->duplicateMethodInType(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;ZI)V

    :goto_15
    if-eqz v7, :cond_2d

    const/4 v5, 0x0

    iput-object v5, v6, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-ne v8, v0, :cond_2c

    new-array v8, v12, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    const/4 v5, 0x0

    invoke-static {v0, v5, v8, v5, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2c
    const/4 v0, 0x0

    aput-object v0, v8, v13

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v17, v6

    const/4 v0, 0x0

    goto :goto_16

    :cond_2d
    move-object/from16 v17, v6

    :cond_2e
    :goto_16
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->sourceMethod()Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    move-result-object v5

    if-eqz v5, :cond_31

    iget-object v6, v5, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v6, :cond_31

    if-eqz v19, :cond_2f

    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, v1, v5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->duplicateEnumSpecialMethod(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;)V

    const/4 v0, 0x1

    goto :goto_17

    :cond_2f
    iget-object v6, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v6

    invoke-virtual {v14, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->areParametersEqual(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v4

    invoke-virtual {v6, v5, v4, v3}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->duplicateMethodInType(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;ZI)V

    :goto_17
    if-eqz v0, :cond_31

    const/4 v0, 0x0

    iput-object v0, v5, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-ne v8, v0, :cond_30

    new-array v8, v12, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    const/4 v4, 0x0

    invoke-static {v0, v4, v8, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_30
    const/4 v0, 0x0

    aput-object v0, v8, v2

    add-int/lit8 v10, v10, 0x1

    :cond_31
    :goto_18
    add-int/lit8 v2, v2, 0x1

    move/from16 v0, v20

    const-wide/32 v4, 0x8000

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v11, 0x0

    goto/16 :goto_6

    :cond_32
    iget-wide v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v4, 0x8000

    and-long v6, v2, v4

    const-wide/16 v11, 0x0

    cmp-long v6, v6, v11

    if-eqz v6, :cond_38

    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    and-long/2addr v2, v4

    cmp-long v2, v2, v11

    if-eqz v2, :cond_33

    return-object v0

    :cond_33
    if-lez v10, :cond_37

    array-length v2, v8

    sub-int/2addr v2, v10

    if-nez v2, :cond_34

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_METHODS:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->setMethods([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    goto :goto_1a

    :cond_34
    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    array-length v3, v8

    const/4 v7, 0x0

    const/16 v18, 0x0

    :goto_19
    if-lt v7, v3, :cond_35

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->setMethods([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    goto :goto_1a

    :cond_35
    aget-object v4, v8, v7

    if-eqz v4, :cond_36

    add-int/lit8 v5, v18, 0x1

    aput-object v4, v2, v18

    move/from16 v18, v5

    :cond_36
    add-int/lit8 v7, v7, 0x1

    goto :goto_19

    :cond_37
    :goto_1a
    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->addDefaultAbstractMethods()V

    iget-wide v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v4, 0x8000

    or-long/2addr v2, v4

    iput-wide v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    return-object v0

    :cond_38
    :try_start_5
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    aget-object v2, v2, v9

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->resolveTypesFor(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v2

    if-nez v2, :cond_3a

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-ne v8, v2, :cond_39

    new-array v8, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v3, 0x0

    :try_start_6
    invoke-static {v2, v3, v8, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1b
    const/4 v2, 0x0

    goto :goto_1c

    :catchall_2
    move-exception v0

    goto :goto_1e

    :cond_39
    const/4 v3, 0x0

    goto :goto_1b

    :goto_1c
    aput-object v2, v8, v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    add-int/lit8 v10, v10, 0x1

    goto :goto_1d

    :cond_3a
    const/4 v3, 0x0

    :goto_1d
    add-int/lit8 v9, v9, 0x1

    move v7, v3

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x8000

    const/4 v6, 0x1

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    move v3, v7

    move v10, v3

    :goto_1e
    iget-wide v4, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v6, 0x8000

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_3b

    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    return-object v0

    :cond_3b
    if-lez v10, :cond_3f

    array-length v2, v8

    sub-int/2addr v2, v10

    if-eqz v2, :cond_3e

    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    array-length v4, v8

    move v7, v3

    :goto_1f
    if-ge v7, v4, :cond_3d

    aget-object v5, v8, v7

    if-eqz v5, :cond_3c

    add-int/lit8 v6, v3, 0x1

    aput-object v5, v2, v3

    move v3, v6

    :cond_3c
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    :cond_3d
    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->setMethods([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    goto :goto_20

    :cond_3e
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_METHODS:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->setMethods([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    :cond_3f
    :goto_20
    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->addDefaultAbstractMethods()V

    iget-wide v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v4, 0x8000

    or-long/2addr v2, v4

    iput-wide v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    throw v0
.end method

.method public module()Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->module:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->module:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    return-object v0
.end method

.method public prototype()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    return-object v0
.end method

.method public resolveTypeFor(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->resolveTypeFor(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v0

    return-object v0

    :cond_0
    iget v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    const/high16 v3, 0x2000000

    and-int/2addr v2, v3

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v2

    iget-wide v2, v2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v4, 0x310000

    cmp-long v4, v2, v4

    const-wide/16 v5, 0x0

    if-ltz v4, :cond_2

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->getAnnotationTagBits()J

    move-result-wide v7

    const-wide v9, 0x400000000000L

    and-long/2addr v7, v9

    cmp-long v4, v7, v5

    if-eqz v4, :cond_2

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    const/high16 v7, 0x100000

    or-int/2addr v4, v7

    iput v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isViewedAsDeprecated()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isDeprecated()Z

    move-result v4

    if-nez v4, :cond_3

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    const/high16 v7, 0x200000

    or-int/2addr v4, v7

    iput v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    iget-wide v7, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    iget-wide v9, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    and-long/2addr v9, v11

    or-long/2addr v7, v9

    iput-wide v7, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->hasRestrictedAccess()Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    const/high16 v7, 0x40000

    or-int/2addr v4, v7

    iput v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    :cond_4
    iget-object v4, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    const/4 v7, 0x0

    if-nez v4, :cond_5

    move v8, v7

    goto :goto_0

    :cond_5
    array-length v8, v4

    :goto_0
    move v9, v7

    :goto_1
    const/4 v10, 0x0

    if-lt v9, v8, :cond_6

    return-object v10

    :cond_6
    aget-object v11, v4, v9

    iget-object v11, v11, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eq v11, v0, :cond_7

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->staticInitializerScope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    goto :goto_2

    :cond_8
    iget-object v8, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->initializerScope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    :goto_2
    iget-object v11, v8, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->initializedField:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    :try_start_0
    iput-object v0, v8, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->initializedField:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->getKind()I

    move-result v9

    const/4 v12, 0x3

    const/4 v13, 0x1

    if-ne v9, v12, :cond_9

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v9

    invoke-virtual {v9, v1, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertToRawType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v9

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_9
    iget-object v9, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    invoke-virtual {v9, v8, v13}, Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;->resolveType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v9

    :goto_3
    iput-object v9, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v14, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    const v15, -0x2000001

    and-int/2addr v14, v15

    iput v14, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    if-nez v9, :cond_a

    iput-object v10, v4, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v11, v8, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->initializedField:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    return-object v10

    :cond_a
    :try_start_1
    sget-object v14, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->VOID:Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    if-ne v9, v14, :cond_b

    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->variableTypeCannotBeVoid(Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;)V

    iput-object v10, v4, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v11, v8, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->initializedField:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    return-object v10

    :cond_b
    :try_start_2
    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v15

    if-eqz v15, :cond_c

    move-object v15, v9

    check-cast v15, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    iget-object v15, v15, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-ne v15, v14, :cond_c

    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->variableTypeCannotBeVoidArray(Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;)V

    iput-object v10, v4, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-object v11, v8, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->initializedField:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    return-object v10

    :cond_c
    :try_start_3
    iget-wide v14, v9, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v16, 0x80

    and-long v14, v14, v16

    cmp-long v5, v14, v5

    if-eqz v5, :cond_d

    iget-wide v5, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    or-long v5, v5, v16

    iput-wide v5, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    :cond_d
    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    instance-of v6, v5, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v6, :cond_e

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget v5, v5, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    const/high16 v6, 0x40000000    # 2.0f

    and-int/2addr v5, v6

    if-eqz v5, :cond_e

    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    or-int/2addr v5, v6

    iput v5, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    :cond_e
    const-wide/32 v5, 0x340000

    cmp-long v2, v2, v5

    if-ltz v2, :cond_11

    iget-object v2, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v2, :cond_10

    array-length v3, v2

    if-eqz v3, :cond_10

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->getKind()I

    move-result v3

    if-ne v3, v12, :cond_f

    move v7, v13

    :cond_f
    invoke-static {v8, v0, v2, v7}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->copySE8AnnotationsToType(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Z)V

    :cond_10
    iget-object v3, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v5, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-static {v3, v5, v2}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->isTypeUseCompatible(Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)V

    :cond_11
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean v2, v2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    if-eqz v2, :cond_14

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->getKind()I

    move-result v2

    if-ne v2, v12, :cond_12

    iget-wide v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    const-wide/high16 v5, 0x100000000000000L

    or-long/2addr v2, v5

    iput-wide v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    goto :goto_4

    :cond_12
    iget v2, v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    const/16 v3, 0x20

    invoke-virtual {v1, v3, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->hasNonNullDefaultFor(II)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v0, v4, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->fillInDefaultNonNullness(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    :cond_13
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-wide v5, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    iget-object v3, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    iget-object v7, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-virtual {v2, v5, v6, v3, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->validateNullAnnotation(JLorg/eclipse/jdt/internal/compiler/ast/TypeReference;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;)Z

    move-result v2

    if-nez v2, :cond_14

    iget-wide v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    const-wide v5, -0x180000000000001L

    and-long/2addr v2, v5

    iput-wide v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    :cond_14
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isPublic()Z

    move-result v2

    invoke-virtual {v8, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->shouldCheckAPILeaks(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, v4, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v2, :cond_15

    invoke-virtual {v8, v2, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->detectAPILeaks(Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_15
    iput-object v11, v8, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->initializedField:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->externalAnnotationProvider:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;

    if-eqz v2, :cond_16

    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-static {v0, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ExternalAnnotationSuperimposer;->annotateFieldBinding(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    :cond_16
    return-object v0

    :goto_5
    iput-object v11, v8, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->initializedField:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    throw v0
.end method

.method public resolveTypesFor(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemHandler;->suspendTempErrorHandlingPolicy()Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    move-result-object v1

    :try_start_0
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->resolveTypesWithSuspendedTempErrorHandlingPolicy(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemHandler;->resumeTempErrorHandlingPolicy(Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemHandler;->resumeTempErrorHandlingPolicy(Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;)V

    throw p1
.end method

.method public retrieveAnnotationHolder(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->retrieveAnnotationHolder(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->getAnnotationTagBits()J

    :cond_1
    const/4 p2, 0x0

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->retrieveAnnotationHolder(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;

    move-result-object p1

    return-object p1
.end method

.method public setContainerAnnotationType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->containerAnnotationType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public setFields([Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->setFields([Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object p1

    return-object p1

    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v2, 0x800000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getAnnotatedTypes(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    array-length v2, v0

    :goto_0
    if-lt v1, v2, :cond_2

    goto :goto_1

    :cond_2
    aget-object v3, v0, v1

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iput-object p1, v3, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    return-object p1
.end method

.method public setMemberTypes([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 7

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->setMemberTypes([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    return-object p1

    :cond_0
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v2, 0x800000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getAnnotatedTypes(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    array-length v1, p1

    :goto_0
    if-lt v0, v1, :cond_2

    goto :goto_1

    :cond_2
    aget-object v2, p1, v0

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-wide v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v5, 0x10000000

    or-long/2addr v3, v5

    iput-wide v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->memberTypes()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object p1
.end method

.method public setMethods([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->setMethods([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    return-object p1

    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v2, 0x800000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getAnnotatedTypes(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    array-length v2, v0

    :goto_0
    if-lt v1, v2, :cond_2

    goto :goto_1

    :cond_2
    aget-object v3, v0, v1

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iput-object p1, v3, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    return-object p1
.end method

.method public setNestHost(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->nestHost:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    return-void
.end method

.method public setSuperClass(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->setSuperClass(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    return-object p1

    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v2, 0x800000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getAnnotatedTypes(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    array-length v2, v0

    :goto_0
    if-lt v1, v2, :cond_2

    goto :goto_1

    :cond_2
    aget-object v3, v0, v1

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iput-object p1, v3, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object p1
.end method

.method public setSuperInterfaces([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->setSuperInterfaces([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    return-object p1

    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v2, 0x800000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getAnnotatedTypes(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    array-length v2, v0

    :goto_0
    if-lt v1, v2, :cond_2

    goto :goto_1

    :cond_2
    aget-object v3, v0, v1

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iput-object p1, v3, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object p1
.end method

.method public setTypeVariables([Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->setTypeVariables([Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object p1

    return-object p1

    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v2, 0x800000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getAnnotatedTypes(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    array-length v2, v0

    :goto_0
    if-lt v1, v2, :cond_2

    goto :goto_1

    :cond_2
    aget-object v3, v0, v1

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iput-object p1, v3, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    return-object p1
.end method

.method public final sourceEnd()I
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->sourceEnd()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    return v0
.end method

.method public final sourceStart()I
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->sourceStart()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    return v0
.end method

.method public storedAnnotations(ZZ)Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->storedAnnotations(ZZ)Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->storedAnnotations:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p1

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->hasAnnotations:Z

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p1

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

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->storedAnnotations:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    :cond_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->storedAnnotations:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    return-object p1
.end method

.method public superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isAnnotationType()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangAnnotationAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object v0
.end method

.method public syntheticFields()[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;
    .locals 9

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x1

    aget-object v0, v0, v2

    const/4 v3, 0x0

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    :goto_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    if-nez v4, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    :goto_1
    add-int v6, v0, v4

    if-nez v6, :cond_3

    return-object v1

    :cond_3
    new-array v1, v6, [Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    aget-object v2, v6, v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v6, v3

    :goto_2
    if-lt v6, v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticFieldBinding;

    iget v8, v7, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticFieldBinding;->index:I

    aput-object v7, v1, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    aget-object v2, v2, v5

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    if-lt v3, v4, :cond_6

    goto :goto_5

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticFieldBinding;

    iget v6, v5, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticFieldBinding;->index:I

    add-int/2addr v6, v0

    aput-object v5, v1, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    return-object v1

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public syntheticMethods()[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;
    .locals 9

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->synthetics:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    array-length v4, v0

    new-array v5, v4, [Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    :goto_1
    if-lt v1, v4, :cond_1

    return-object v5

    :cond_1
    aget-object v2, v0, v1

    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->index:I

    aput-object v2, v5, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    array-length v5, v4

    move v6, v1

    :goto_2
    if-lt v6, v5, :cond_3

    goto :goto_0

    :cond_3
    aget-object v7, v4, v6

    if-eqz v7, :cond_5

    add-int/lit8 v7, v3, 0x1

    array-length v8, v0

    if-le v7, v8, :cond_4

    new-array v8, v7, [Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    invoke-static {v0, v1, v8, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v8

    :cond_4
    aget-object v8, v4, v6

    aput-object v8, v0, v3

    move v3, v7

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    const/4 v0, 0x0

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public tagAsHavingDefectiveContainerType()V
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->containerAnnotationType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->containerAnnotationType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    const/16 v3, 0x16

    invoke-direct {v0, v2, v1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->containerAnnotationType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public tagIndirectlyAccessibleMembers()V
    .locals 5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->tagIndirectlyAccessibleMembers()V

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    array-length v3, v2

    const/high16 v4, 0x8000000

    if-lt v1, v3, :cond_4

    :goto_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v2, v1

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->tagIndirectlyAccessibleMembers()V

    :cond_1
    return-void

    :cond_2
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isPrivate()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v1, v1, v0

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    or-int/2addr v2, v4

    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isPrivate()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    aget-object v2, v2, v1

    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    or-int/2addr v3, v4

    iput v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
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

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_1

    const-string v1, "NoId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :goto_0
    const-string v1, ")\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isDeprecated()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "deprecated "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isPublic()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "public "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isProtected()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "protected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isPrivate()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "private "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isAbstract()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isClass()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "abstract "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNestedType()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "static "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isFinal()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "final "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "enum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_9
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isAnnotationType()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "@interface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_a
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isClass()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_b
    const-string v1, "interface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    if-eqz v1, :cond_c

    invoke-static {v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->toString([[C)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_c
    const-string v1, "UNNAMED TYPE"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    const-string v2, ", "

    const/4 v3, 0x0

    if-nez v1, :cond_d

    const-string v1, "<NULL TYPE VARIABLES>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_d
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eq v1, v4, :cond_11

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    array-length v1, v1

    move v4, v3

    :goto_3
    if-lt v4, v1, :cond_e

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_e
    if-lez v4, :cond_f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_f
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    aget-object v5, v5, v4

    if-nez v5, :cond_10

    const-string v5, "NULL TYPE VARIABLE"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_10
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    array-length v6, v5

    add-int/lit8 v6, v6, -0x2

    const/4 v7, 0x1

    invoke-virtual {v0, v5, v7, v6}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_11
    :goto_5
    const-string v1, "\n\textends "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const-string v4, "NULL TYPE"

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->debugName()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_12
    move-object v1, v4

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v1, :cond_16

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eq v1, v5, :cond_17

    const-string v1, "\n\timplements : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v1, v1

    move v5, v3

    :goto_7
    if-lt v5, v1, :cond_13

    goto :goto_9

    :cond_13
    if-lez v5, :cond_14

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_14
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v6, v6, v5

    if-eqz v6, :cond_15

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->debugName()Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    :cond_15
    move-object v6, v4

    :goto_8
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_16
    const-string v1, "NULL SUPERINTERFACES"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_17
    :goto_9
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    if-eqz v1, :cond_18

    const-string v1, "\n\tenclosing type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->debugName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_18
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    const/16 v2, 0xa

    if-eqz v1, :cond_1b

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_FIELDS:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eq v1, v5, :cond_1c

    const-string v1, "\n/*   fields   */"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    array-length v1, v1

    move v5, v3

    :goto_a
    if-lt v5, v1, :cond_19

    goto :goto_c

    :cond_19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    aget-object v6, v6, v5

    if-eqz v6, :cond_1a

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_b

    :cond_1a
    const-string v6, "NULL FIELD"

    :goto_b
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_1b
    const-string v1, "NULL FIELDS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1c
    :goto_c
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v1, :cond_1f

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_METHODS:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eq v1, v5, :cond_20

    const-string v1, "\n/*   methods   */"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    array-length v1, v1

    move v5, v3

    :goto_d
    if-lt v5, v1, :cond_1d

    goto :goto_f

    :cond_1d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    aget-object v6, v6, v5

    if-eqz v6, :cond_1e

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_e

    :cond_1e
    const-string v6, "NULL METHOD"

    :goto_e
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_1f
    const-string v1, "NULL METHODS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_20
    :goto_f
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v1, :cond_23

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_MEMBER_TYPES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eq v1, v5, :cond_24

    const-string v1, "\n/*   members   */"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v1, v1

    :goto_10
    if-lt v3, v1, :cond_21

    goto :goto_12

    :cond_21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v5, v5, v3

    if-eqz v5, :cond_22

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_11

    :cond_22
    move-object v5, v4

    :goto_11
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_23
    const-string v1, "NULL MEMBER TYPES"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_24
    :goto_12
    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    :goto_0
    return-object v0
.end method

.method public unResolvedFields()[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->unResolvedFields()[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->fields:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    return-object v0
.end method

.method public unannotated()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    return-object v0
.end method

.method public verifyMethods(Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;)V
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->verify(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v0, v0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v1, v1, v0

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->verifyMethods(Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public withoutToplevelNullAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasNullTypeAnnotations()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->filterNullTypeAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    return-object v0
.end method
