.class public abstract Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;
.super Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;
.source "SourceFile"


# instance fields
.field public enclosingInstances:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

.field public enclosingType:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

.field private enclosingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

.field public outerLocalVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

.field private outerLocalVariablesSlotSize:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;)V
    .locals 1

    .line 6
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V

    .line 7
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->UNINITIALIZED_REFERENCE_TYPES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->enclosingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->outerLocalVariablesSlotSize:I

    .line 9
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->enclosingType:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->enclosingType:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    .line 10
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->enclosingInstances:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->enclosingInstances:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    .line 11
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->enclosingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->enclosingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 12
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->outerLocalVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->outerLocalVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    .line 13
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->outerLocalVariablesSlotSize:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->outerLocalVariablesSlotSize:I

    return-void
.end method

.method public constructor <init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ClassScope;Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V
    .locals 2

    .line 1
    iget-object v0, p3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    invoke-direct {p0, p1, v0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;)V

    .line 2
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->UNINITIALIZED_REFERENCE_TYPES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->enclosingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->outerLocalVariablesSlotSize:I

    .line 4
    iget-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v0, 0x804

    or-long/2addr p1, v0

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    .line 5
    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->enclosingType:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    return-void
.end method


# virtual methods
.method public addSyntheticArgument(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->outerLocalVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    .line 4
    filled-new-array {v0}, [Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->outerLocalVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    goto :goto_1

    .line 5
    :cond_0
    array-length v0, v0

    move v1, v0

    :goto_0
    move v2, v1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_3

    add-int/lit8 v1, v0, 0x1

    .line 6
    new-array v1, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    .line 7
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->outerLocalVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    const/4 v4, 0x0

    invoke-static {v3, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    new-instance v3, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    invoke-direct {v3, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)V

    aput-object v3, v1, v2

    .line 9
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->outerLocalVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    add-int/lit8 v4, v2, 0x1

    sub-int/2addr v0, v2

    invoke-static {p1, v2, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->outerLocalVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    move-object v0, v3

    .line 11
    :goto_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p1

    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->isPropagatingInnerClassEmulation:Z

    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->updateInnerEmulationDependents()V

    :cond_2
    return-object v0

    .line 13
    :cond_3
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->outerLocalVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    aget-object v3, v3, v1

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;->actualOuterLocalVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    if-ne v4, p1, :cond_4

    return-object v3

    .line 14
    :cond_4
    iget v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    iget v4, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    if-le v3, v4, :cond_1

    goto :goto_0

    .line 15
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public addSyntheticArgument(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;
    .locals 6

    .line 16
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->enclosingInstances:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    .line 19
    filled-new-array {v0}, [Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->enclosingInstances:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    goto :goto_2

    .line 20
    :cond_0
    array-length v0, v0

    .line 21
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    add-int/lit8 v3, v0, 0x1

    .line 22
    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    .line 23
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->enclosingInstances:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    if-nez v1, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    move v5, v2

    :goto_1
    invoke-static {v4, v2, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    aput-object v0, v3, v1

    .line 25
    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->enclosingInstances:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    .line 26
    :goto_2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->referenceCompilationUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p1

    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->isPropagatingInnerClassEmulation:Z

    if-eqz p1, :cond_3

    .line 27
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->updateInnerEmulationDependents()V

    :cond_3
    return-object v0

    .line 28
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public addSyntheticArgumentAndField(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->addSyntheticArgument(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;->matchingField:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->addSyntheticFieldForInnerclass(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object p1

    iput-object p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;->matchingField:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    :cond_1
    return-object v0

    .line 5
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public addSyntheticArgumentAndField(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;
    .locals 2

    .line 6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->addSyntheticArgument(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 8
    :cond_0
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;->matchingField:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-nez v1, :cond_1

    .line 9
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->addSyntheticFieldForInnerclass(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object p1

    iput-object p1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;->matchingField:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    :cond_1
    return-object v0

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->enclosingType:Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    return-object v0
.end method

.method public getEnclosingInstancesSlotSize()I
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->enclosingInstances:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getOuterLocalVariablesSlotSize()I
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->outerLocalVariablesSlotSize:I

    if-gez v0, :cond_3

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->outerLocalVariablesSlotSize:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->outerLocalVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, v1

    :goto_0
    if-lt v0, v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->outerLocalVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    aget-object v2, v2, v0

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_2

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->outerLocalVariablesSlotSize:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->outerLocalVariablesSlotSize:I

    goto :goto_1

    :cond_2
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->outerLocalVariablesSlotSize:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->outerLocalVariablesSlotSize:I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->outerLocalVariablesSlotSize:I

    return v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getSyntheticArgument(Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->outerLocalVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    array-length v0, v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_2

    return-object v1

    .line 4
    :cond_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->outerLocalVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    aget-object v2, v2, v0

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;->actualOuterLocalVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    if-ne v3, p1, :cond_1

    return-object v2

    .line 5
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public getSyntheticArgument(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ZZ)Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;
    .locals 3

    .line 6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->enclosingInstances:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p3, :cond_1

    .line 8
    array-length p3, v0

    if-lez p3, :cond_1

    const/4 p3, 0x0

    .line 9
    aget-object v0, v0, p3

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->enclosingInstances:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    aget-object p3, v0, p3

    iget-object v0, p3, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;->actualOuterLocalVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    if-nez v0, :cond_1

    return-object p3

    .line 11
    :cond_1
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->enclosingInstances:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    array-length p3, p3

    :cond_2
    add-int/lit8 p3, p3, -0x1

    if-gez p3, :cond_6

    if-nez p2, :cond_5

    .line 12
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->enclosingInstances:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    array-length p2, p2

    :cond_3
    add-int/lit8 p2, p2, -0x1

    if-gez p2, :cond_4

    goto :goto_0

    .line 13
    :cond_4
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->enclosingInstances:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    aget-object p3, p3, p2

    iget-object v0, p3, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;->actualOuterLocalVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    if-nez v0, :cond_3

    .line 14
    iget-object p3, p3, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p3, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 15
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->enclosingInstances:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    aget-object p1, p1, p2

    return-object p1

    :cond_5
    :goto_0
    return-object v1

    .line 16
    :cond_6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->enclosingInstances:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    aget-object v0, v0, p3

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->enclosingInstances:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    aget-object v0, v0, p3

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;->actualOuterLocalVariable:Lorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;

    if-nez v2, :cond_2

    return-object v0

    .line 18
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public syntheticEnclosingInstanceTypes()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->enclosingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->UNINITIALIZED_REFERENCE_TYPES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->enclosingInstances:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->enclosingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_1

    :cond_0
    array-length v0, v0

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->enclosingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->enclosingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->enclosingInstances:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    aget-object v3, v3, v1

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->enclosingTypes:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public syntheticEnclosingInstances()[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->enclosingInstances:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public syntheticOuterLocalVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->isPrototype()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/NestedTypeBinding;->outerLocalVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticArgumentBinding;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public updateInnerEmulationDependents()V
    .locals 0

    return-void
.end method
