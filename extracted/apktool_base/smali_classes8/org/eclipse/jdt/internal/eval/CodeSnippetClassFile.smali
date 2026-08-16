.class public Lorg/eclipse/jdt/internal/eval/CodeSnippetClassFile;
.super Lorg/eclipse/jdt/internal/compiler/ClassFile;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/ClassFile;Z)V
    .locals 8

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->referenceBinding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->fields()[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->initByteArrays(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->header:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->headerOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->headerOffset:I

    const/16 v3, -0x36

    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x2

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->headerOffset:I

    const/4 v4, -0x2

    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x3

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->headerOffset:I

    const/16 v4, -0x46

    aput-byte v4, v0, v3

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->headerOffset:I

    const/16 v1, -0x42

    aput-byte v1, v0, v2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->referenceBinding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v0

    iget-wide v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->targetJDK:J

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->targetJDK:J

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->header:[B

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->headerOffset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->headerOffset:I

    const/16 v5, 0x8

    shr-long v5, v0, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    add-int/lit8 v5, v3, 0x2

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->headerOffset:I

    long-to-int v6, v0

    int-to-byte v6, v6

    aput-byte v6, v2, v4

    add-int/lit8 v4, v3, 0x3

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->headerOffset:I

    const/16 v6, 0x18

    shr-long v6, v0, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    add-int/lit8 v5, v3, 0x4

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->headerOffset:I

    const/16 v6, 0x10

    shr-long/2addr v0, v6

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, v2, v4

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPoolOffset:I

    add-int/lit8 v3, v3, 0x6

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->headerOffset:I

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;-><init>(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getAccessFlags()I

    move-result v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v1

    if-nez v1, :cond_0

    or-int/lit8 v0, v0, 0x20

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNestedType()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_1

    and-int/lit8 v0, v0, -0x9

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isPrivate()Z

    move-result v1

    if-eqz v1, :cond_2

    and-int/lit8 v0, v0, -0x4

    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isProtected()Z

    move-result v1

    if-eqz v1, :cond_3

    and-int/lit8 v0, v0, -0x5

    or-int/lit8 v0, v0, 0x1

    :cond_3
    and-int/lit16 v0, v0, -0x801

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->enclosingClassFile:Lorg/eclipse/jdt/internal/compiler/ClassFile;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    shr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, p2, v1

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte v0, v0

    aput-byte v0, p2, v2

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result p2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    shr-int/lit8 v3, p2, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte p2, p2

    aput-byte p2, v0, v2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->JavaLangObjectConstantPoolName:[C

    invoke-virtual {p2, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType([C)I

    move-result p2

    goto :goto_0

    :cond_4
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez p2, :cond_5

    move p2, v0

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    invoke-virtual {v1, p2}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result p2

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    shr-int/lit8 v4, p2, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte p2, p2

    aput-byte p2, v1, v3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p2

    array-length v1, p2

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    shr-int/lit8 v5, v1, 0x8

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte v3, v1

    aput-byte v3, v2, v4

    :goto_1
    if-lt v0, v1, :cond_9

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->referenceBinding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object p2

    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->produceDebugAttributes:I

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->produceAttributes:I

    iput-boolean p3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->creatingProblemType:Z

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->targetJDK:J

    const-wide/32 v2, 0x320000

    cmp-long p3, v0, v2

    if-ltz p3, :cond_7

    or-int/lit8 p3, p2, 0x8

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->produceAttributes:I

    const-wide/32 v2, 0x340000

    cmp-long p3, v0, v2

    if-ltz p3, :cond_6

    or-int/lit8 p2, p2, 0x28

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->produceAttributes:I

    new-instance p2, Lorg/eclipse/jdt/internal/compiler/codegen/TypeAnnotationCodeStream;

    invoke-direct {p2, p0}, Lorg/eclipse/jdt/internal/compiler/codegen/TypeAnnotationCodeStream;-><init>(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    goto :goto_2

    :cond_6
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;

    invoke-direct {p2, p0}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;-><init>(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    goto :goto_2

    :cond_7
    const-wide/32 v2, 0x2d0004

    cmp-long p3, v0, v2

    if-nez p3, :cond_8

    const-wide/32 v0, 0x2d0003

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->targetJDK:J

    or-int/2addr p2, v6

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->produceAttributes:I

    new-instance p2, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;

    invoke-direct {p2, p0}, Lorg/eclipse/jdt/internal/compiler/codegen/StackMapFrameCodeStream;-><init>(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    goto :goto_2

    :cond_8
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    invoke-direct {p2, p0}, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;-><init>(Lorg/eclipse/jdt/internal/compiler/ClassFile;)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    :goto_2
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->codeStream:Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->outerMostClassScope()Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceType()Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    move-result-object p1

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->maxFieldCount:I

    iput p1, p2, Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;->maxFieldCount:I

    return-void

    :cond_9
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->constantPool:Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;

    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/codegen/ConstantPool;->literalIndexForType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)I

    move-result v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    shr-int/lit8 v7, v2, 0x8

    int-to-byte v7, v7

    aput-byte v7, v3, v4

    add-int/lit8 v4, v4, 0x2

    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    int-to-byte v2, v2

    aput-byte v2, v3, v5

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method

.method public static createProblemType(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V
    .locals 12

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    new-instance v1, Lorg/eclipse/jdt/internal/eval/CodeSnippetClassFile;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Lorg/eclipse/jdt/internal/eval/CodeSnippetClassFile;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/ClassFile;Z)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->hasMemberTypes()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v5, v2

    move v6, v4

    :goto_0
    if-lt v6, v5, :cond_0

    goto :goto_1

    :cond_0
    aget-object v7, v2, v6

    invoke-virtual {v1, v7}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->recordInnerClasses(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNestedType()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->recordInnerClasses(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v2

    array-length v5, v2

    move v6, v4

    :goto_2
    if-lt v6, v5, :cond_11

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->fields()[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v2

    if-eqz v2, :cond_3

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_FIELDS:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eq v2, v5, :cond_3

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addFieldInfos()V

    goto :goto_3

    :cond_3
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contents:[B

    iget v5, v1, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v1, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    aput-byte v4, v2, v5

    add-int/lit8 v5, v5, 0x2

    iput v5, v1, Lorg/eclipse/jdt/internal/compiler/ClassFile;->contentsOffset:I

    aput-byte v4, v2, v6

    :goto_3
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->setForMethodInfos()V

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getErrors()[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    move-result-object v2

    if-nez v2, :cond_4

    new-array v2, v4, [Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    :cond_4
    array-length v5, v2

    new-array v6, v5, [Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    invoke-static {v2, v4, v6, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz v2, :cond_d

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v5

    iget-wide v7, v5, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v9, 0x340000

    cmp-long v5, v7, v9

    if-gez v5, :cond_5

    goto :goto_4

    :cond_5
    move v3, v4

    :goto_4
    invoke-virtual {v1, v6}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addProblemClinit([Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    goto :goto_5

    :cond_6
    move v3, v4

    :goto_5
    array-length v5, v2

    move v7, v4

    :goto_6
    if-lt v7, v5, :cond_7

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addDefaultAbstractMethods()V

    goto :goto_8

    :cond_7
    aget-object v8, v2, v7

    iget-object v9, v8, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-nez v9, :cond_8

    goto :goto_7

    :cond_8
    if-eqz v3, :cond_9

    const/16 v10, 0x401

    iput v10, v9, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    :cond_9
    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v10

    if-eqz v10, :cond_a

    goto :goto_7

    :cond_a
    invoke-virtual {v1, v8, v9, v6}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addProblemConstructor(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    goto :goto_7

    :cond_b
    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isAbstract()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-virtual {v1, v8, v9}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addAbstractMethod(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    goto :goto_7

    :cond_c
    invoke-virtual {v1, v8, v9, v6}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addProblemMethod(Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)V

    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_d
    :goto_8
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    if-eqz v2, :cond_10

    array-length v2, v2

    :goto_9
    if-lt v4, v2, :cond_e

    goto :goto_a

    :cond_e
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->memberTypes:[Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    aget-object v3, v3, v4

    iget-object v5, v3, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-eqz v5, :cond_f

    invoke-static {v3, p1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->createProblemType(Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_10
    :goto_a
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ClassFile;->addAttributes()V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->constantPoolName()[C

    move-result-object p0

    invoke-virtual {p1, p0, v1}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->record([CLorg/eclipse/jdt/internal/compiler/ClassFile;)V

    return-void

    :cond_11
    aget-object v7, v2, v6

    iget-wide v8, v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v10, 0x800

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_12

    invoke-static {v1, v7}, Lorg/eclipse/jdt/internal/compiler/util/Util;->recordNestedType(Lorg/eclipse/jdt/internal/compiler/ClassFile;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :cond_12
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2
.end method
