.class public final Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;
.super Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;
.source "SourceFile"


# static fields
.field static final LocalTypePrefix:[C


# instance fields
.field private dependents:[Lorg/eclipse/jdt/internal/compiler/lookup/InnerEmulationDependency;

.field public enclosingCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

.field public enclosingMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

.field public sourceStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->LocalTypePrefix:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x24s
        0x4cs
        0x6fs
        0x63s
        0x61s
        0x6cs
        0x24s
    .end array-data
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;)V
    .locals 4

    .line 1
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->LocalTypePrefix:[C

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v0

    filled-new-array {v0}, [[C

    move-result-object v0

    .line 2
    invoke-direct {p0, v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ClassScope;Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V

    .line 3
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    .line 4
    iget v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    .line 5
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v2, 0x834

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    goto :goto_0

    .line 6
    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v2, 0x814

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    .line 7
    :goto_0
    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->enclosingCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    .line 8
    iget p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->sourceStart:I

    .line 9
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingMethodScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object p2

    .line 10
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceMethodBinding()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 11
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->enclosingMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    .line 12
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingLambdaScope()Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 13
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;->addLocalType(Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;)V

    :cond_2
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;)V
    .locals 1

    .line 14
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;)V

    .line 15
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->dependents:[Lorg/eclipse/jdt/internal/compiler/lookup/InnerEmulationDependency;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->dependents:[Lorg/eclipse/jdt/internal/compiler/lookup/InnerEmulationDependency;

    .line 16
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->enclosingCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->enclosingCase:Lorg/eclipse/jdt/internal/compiler/ast/CaseStatement;

    .line 17
    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->sourceStart:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->sourceStart:I

    .line 18
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->enclosingMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->enclosingMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    return-void
.end method


# virtual methods
.method public addInnerEmulationDependent(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Z)V
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->dependents:[Lorg/eclipse/jdt/internal/compiler/lookup/InnerEmulationDependency;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/InnerEmulationDependency;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->dependents:[Lorg/eclipse/jdt/internal/compiler/lookup/InnerEmulationDependency;

    goto :goto_1

    :cond_0
    array-length v0, v0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->dependents:[Lorg/eclipse/jdt/internal/compiler/lookup/InnerEmulationDependency;

    add-int/lit8 v3, v0, 0x1

    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/lookup/InnerEmulationDependency;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->dependents:[Lorg/eclipse/jdt/internal/compiler/lookup/InnerEmulationDependency;

    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v0

    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->dependents:[Lorg/eclipse/jdt/internal/compiler/lookup/InnerEmulationDependency;

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/InnerEmulationDependency;

    invoke-direct {v2, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/InnerEmulationDependency;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Z)V

    aput-object v2, v0, v1

    return-void

    :cond_1
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->dependents:[Lorg/eclipse/jdt/internal/compiler/lookup/InnerEmulationDependency;

    aget-object v3, v3, v2

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/InnerEmulationDependency;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    if-ne v3, p1, :cond_2

    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public anonymousOriginalSuperType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->anonymousOriginalSuperType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangObject()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eq v1, v2, :cond_2

    const/4 v0, 0x0

    aget-object v0, v1, v0

    return-object v0

    :cond_2
    iget-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/32 v3, 0x20000

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    return-object v0

    :cond_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->allocation:Lorg/eclipse/jdt/internal/compiler/ast/QualifiedAllocationExpression;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/AllocationExpression;->type:Lorg/eclipse/jdt/internal/compiler/ast/TypeReference;

    if-eqz v1, :cond_4

    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->resolvedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :cond_4
    return-object v0
.end method

.method public clone(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;)V

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iput-object p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->enclosingType:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    return-object v0
.end method

.method public computeUniqueKey(Z)[C
    .locals 5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->computeUniqueKey(Z)[C

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->outermostEnclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->computeUniqueKey(Z)[C

    move-result-object p1

    const/16 v0, 0x3b

    invoke-static {v0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    const/16 v3, 0x24

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->sourceStart:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isAnonymousType()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :cond_1
    array-length v3, p1

    sub-int/2addr v3, v0

    invoke-virtual {v1, p1, v0, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    new-array v0, p1, [C

    invoke-virtual {v1, v2, p1, v0, v2}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    return-object v0
.end method

.method public constantPoolName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->constantPoolName:[C

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->constantPoolName()[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->constantPoolName:[C

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->constantPoolName:[C

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->computeConstantPoolName(Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;)[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->constantPoolName:[C

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->constantPoolName:[C

    return-object v0
.end method

.method public enclosingMethod()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->enclosingMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    return-object v0
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

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->constantPoolName:[C

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isAnonymousType()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName()[C

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->setConstantPoolName([C)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->sourceName()[C

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->setConstantPoolName([C)V

    :cond_2
    :goto_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->genericTypeSignature()[C

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->enclosingType:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->hashCode()I

    move-result v0

    return v0
.end method

.method public readableName()[C
    .locals 6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isAnonymousType()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->ANONYM_PREFIX:[C

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->anonymousOriginalSuperType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->readableName()[C

    move-result-object v1

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->ANONYM_SUFFIX:[C

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C[C)[C

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isMemberType()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->readableName()[C

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    const/16 v2, 0x2e

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v1

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eq v1, v2, :cond_4

    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/16 v0, 0x3c

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    array-length v3, v1

    const/4 v4, 0x0

    move v0, v4

    :goto_1
    if-lt v0, v3, :cond_2

    const/16 v0, 0x3e

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    new-array v1, v0, [C

    invoke-virtual {v2, v4, v0, v1, v4}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    move-object v0, v1

    goto :goto_2

    :cond_2
    if-lez v0, :cond_3

    const/16 v5, 0x2c

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    aget-object v5, v1, v0

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->readableName()[C

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-object v0
.end method

.method public setAsMemberType()V
    .locals 5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    const-wide/16 v1, 0x80c

    if-nez v0, :cond_0

    iget-wide v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long v0, v3, v1

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->setAsMemberType()V

    return-void

    :cond_0
    iget-wide v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    or-long v0, v3, v1

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    return-void
.end method

.method public setConstantPoolName([C)V
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->constantPoolName:[C

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->setConstantPoolName([C)V

    return-void

    :cond_0
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->constantPoolName:[C

    return-void
.end method

.method public shortReadableName()[C
    .locals 6

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isAnonymousType()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->ANONYM_PREFIX:[C

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->anonymousOriginalSuperType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->shortReadableName()[C

    move-result-object v1

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->ANONYM_SUFFIX:[C

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C[C)[C

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isMemberType()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->shortReadableName()[C

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    const/16 v2, 0x2e

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[CC)[C

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v1

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eq v1, v2, :cond_4

    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/16 v0, 0x3c

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    array-length v3, v1

    const/4 v4, 0x0

    move v0, v4

    :goto_1
    if-lt v0, v3, :cond_2

    const/16 v0, 0x3e

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    new-array v1, v0, [C

    invoke-virtual {v2, v4, v0, v1, v4}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    move-object v0, v1

    goto :goto_2

    :cond_2
    if-lez v0, :cond_3

    const/16 v5, 0x2c

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    aget-object v5, v1, v0

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->shortReadableName()[C

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-object v0
.end method

.method public signature()[C
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->prototype:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->signature()[C

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->signature:[C

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->constantPoolName:[C

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isAnonymousType()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName()[C

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->setConstantPoolName([C)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->sourceName()[C

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->setConstantPoolName([C)V

    :cond_2
    :goto_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->signature()[C

    move-result-object v0

    return-object v0
.end method

.method public sourceName()[C
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isAnonymousType()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->ANONYM_PREFIX:[C

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->anonymousOriginalSuperType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName()[C

    move-result-object v1

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->ANONYM_SUFFIX:[C

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C[C)[C

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasTypeAnnotations()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->annotatedDebugName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " (local)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isAnonymousType()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Anonymous type : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isMemberType()Z

    move-result v0

    const-string v1, " "

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Local member type : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->sourceName()[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Local type : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->sourceName()[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transferConstantPoolNameTo(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->constantPoolName:[C

    if-eqz v0, :cond_0

    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;

    if-eqz v1, :cond_0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->constantPoolName:[C

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->setConstantPoolName([C)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilationUnitScope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->constantPoolNameUsage:Lorg/eclipse/jdt/internal/compiler/util/HashtableOfType;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->constantPoolName:[C

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jdt/internal/compiler/util/HashtableOfType;->put([CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :cond_0
    return-void
.end method

.method public updateInnerEmulationDependents()V
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->dependents:[Lorg/eclipse/jdt/internal/compiler/lookup/InnerEmulationDependency;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->dependents:[Lorg/eclipse/jdt/internal/compiler/lookup/InnerEmulationDependency;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    goto :goto_1

    :cond_0
    aget-object v1, v1, v0

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/InnerEmulationDependency;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/InnerEmulationDependency;->wasEnclosingInstanceSupplied:Z

    invoke-virtual {v2, p0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->propagateInnerEmulation(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
