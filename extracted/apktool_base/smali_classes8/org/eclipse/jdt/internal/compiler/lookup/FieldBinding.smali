.class public Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;
.super Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;
.source "SourceFile"


# instance fields
.field public compoundUseFlag:I

.field public declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v0, v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ILorg/eclipse/jdt/internal/compiler/impl/Constant;)V

    .line 2
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->compoundUseFlag:I

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ILorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V
    .locals 6

    .line 11
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->name:[C

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ILorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/impl/Constant;)V

    .line 12
    iput-object p0, p1, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V
    .locals 4

    .line 6
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->constant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ILorg/eclipse/jdt/internal/compiler/impl/Constant;)V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->compoundUseFlag:I

    .line 8
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 9
    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    .line 10
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->setAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Z)V

    return-void
.end method

.method public constructor <init>([CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ILorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/impl/Constant;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p5}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;-><init>([CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ILorg/eclipse/jdt/internal/compiler/impl/Constant;)V

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->compoundUseFlag:I

    .line 5
    iput-object p4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-void
.end method


# virtual methods
.method public final canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isPublic()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isPrivate()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    .line 3
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getPackage()Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v0

    if-ne p1, v0, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public final canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
    .locals 7

    .line 4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isPublic()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 5
    :cond_0
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->enclosingSourceType()Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    move-result-object v0

    .line 6
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isPrivate()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getCurrentPackage()Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object p1

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-ne p1, p2, :cond_2

    return v1

    :cond_2
    return v2

    .line 8
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isProtected()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 9
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v0, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p3

    if-eqz p3, :cond_4

    return v1

    .line 10
    :cond_4
    iget-object p3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-ne p3, v3, :cond_5

    return v1

    .line 11
    :cond_5
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 12
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p3

    move-object v4, p3

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move p3, v2

    .line 13
    :cond_6
    invoke-virtual {v0, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 14
    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->isSuperAccess()Z

    move-result v5

    if-eqz v5, :cond_7

    return v1

    .line 15
    :cond_7
    instance-of v5, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    if-eqz v5, :cond_8

    return v2

    .line 16
    :cond_8
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v5

    if-eqz v5, :cond_a

    if-lez p3, :cond_9

    .line 17
    invoke-interface {p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->setDepth(I)V

    :cond_9
    return v1

    .line 18
    :cond_a
    invoke-static {v0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    if-eqz v5, :cond_d

    :cond_b
    if-lez p3, :cond_c

    .line 19
    invoke-interface {p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->setDepth(I)V

    :cond_c
    return v1

    :cond_d
    add-int/lit8 p3, p3, 0x1

    .line 20
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-nez v0, :cond_6

    return v2

    .line 21
    :cond_e
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isPrivate()Z

    move-result p2

    if-eqz p2, :cond_14

    .line 22
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 23
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object p2

    iget-wide p2, p2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v3, 0x320000

    cmp-long p2, p2, v3

    if-gtz p2, :cond_f

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result p2

    if-eqz p2, :cond_f

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->isErasureBoundTo(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_0

    :cond_f
    return v2

    .line 24
    :cond_10
    :goto_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 25
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    :goto_1
    move-object v6, v0

    move-object v0, p1

    move-object p1, v6

    if-nez v0, :cond_12

    .line 26
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 27
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p3

    :goto_2
    move-object v6, p3

    move-object p3, p2

    move-object p2, v6

    if-nez p2, :cond_11

    .line 28
    invoke-static {p1, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    if-eqz p1, :cond_13

    return v2

    .line 29
    :cond_11
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p3

    goto :goto_2

    .line 30
    :cond_12
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    goto :goto_1

    :cond_13
    return v1

    .line 31
    :cond_14
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object p3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    .line 32
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eq v0, p3, :cond_15

    return v2

    .line 33
    :cond_15
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    if-eqz v0, :cond_16

    return v2

    .line 34
    :cond_16
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    .line 35
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 36
    :cond_17
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCapture()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 37
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_19

    return v1

    .line 38
    :cond_18
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_19

    return v1

    .line 39
    :cond_19
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eqz v0, :cond_1a

    if-eq v0, p3, :cond_1a

    return v2

    .line 40
    :cond_1a
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    if-nez p1, :cond_17

    return v2
.end method

.method public computeUniqueKey(Z)[C
    .locals 7

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-object p1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->computeUniqueKey(Z)[C

    move-result-object p1

    :goto_0
    array-length v1, p1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    array-length v2, v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v4, 0x1

    if-nez v3, :cond_1

    new-array v3, v4, [C

    const/16 v5, 0x56

    aput-char v5, v3, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->computeUniqueKey(Z)[C

    move-result-object v3

    :goto_1
    array-length v5, v3

    add-int/lit8 v6, v1, 0x1

    add-int/2addr v6, v2

    add-int/2addr v6, v4

    add-int/2addr v6, v5

    new-array v4, v6, [C

    invoke-static {p1, v0, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p1, v1, 0x1

    const/16 v6, 0x2e

    aput-char v6, v4, v1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    invoke-static {v1, v0, v4, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p1, v2

    add-int/lit8 v1, p1, 0x1

    const/16 v2, 0x29

    aput-char v2, v4, p1

    invoke-static {v3, v0, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4
.end method

.method public constant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-nez v0, :cond_5

    .line 2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->isFinal()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v0

    .line 4
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-eqz v2, :cond_2

    .line 5
    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    .line 6
    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    .line 8
    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationOf(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    move-result-object v2

    .line 9
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->staticInitializerScope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->initializerScope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    .line 10
    :goto_0
    iget-boolean v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->insideTypeAnnotation:Z

    const/4 v4, 0x0

    .line 11
    :try_start_0
    iput-boolean v4, v1, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->insideTypeAnnotation:Z

    .line 12
    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    iput-boolean v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->insideTypeAnnotation:Z

    .line 14
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-nez v0, :cond_4

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 15
    iput-boolean v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;->insideTypeAnnotation:Z

    .line 16
    throw v0

    .line 17
    :cond_1
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    goto :goto_1

    .line 18
    :cond_2
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    goto :goto_1

    .line 19
    :cond_3
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    .line 20
    :cond_4
    :goto_1
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    :cond_5
    return-object v0
.end method

.method public constant(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/impl/Constant;
    .locals 2

    .line 21
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eqz v0, :cond_0

    return-object v0

    .line 22
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemHandler;->suspendTempErrorHandlingPolicy()Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;

    move-result-object v0

    .line 24
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->constant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemHandler;->resumeTempErrorHandlingPolicy(Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemHandler;->resumeTempErrorHandlingPolicy(Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;)V

    .line 26
    throw v1
.end method

.method public fillInDefaultNonNullness(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V
    .locals 10

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->usesNullTypeAnnotations()Z

    move-result v1

    const-wide/high16 v2, 0x180000000000000L

    const-wide/high16 v4, 0x100000000000000L

    const-wide/16 v6, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->acceptsNonNullDefault()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide v8, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v2, v8

    cmp-long v2, v2, v6

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNonNullAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p1

    filled-new-array {p1}, [Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_0

    :cond_2
    and-long v0, v8, v4

    cmp-long v0, v0, v6

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->nullAnnotationIsRedundant(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;)V

    goto :goto_0

    :cond_3
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    and-long/2addr v2, v0

    cmp-long v2, v2, v6

    if-nez v2, :cond_4

    or-long p1, v0, v4

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    goto :goto_0

    :cond_4
    and-long/2addr v0, v4

    cmp-long v0, v0, v6

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->nullAnnotationIsRedundant(Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public genericSignature()[C
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->genericTypeSignature()[C

    move-result-object v0

    return-object v0
.end method

.method public final getAccessFlags()I
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getAnnotationTagBits()J
    .locals 7

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v0

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    const-wide v3, 0x200000000L

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    if-eqz v2, :cond_2

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    if-nez v1, :cond_0

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    const-wide v5, 0x600000000L

    or-long/2addr v0, v5

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    return-wide v3

    :cond_0
    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->declarationOf(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->staticInitializerScope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    goto :goto_0

    :cond_1
    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->initializerScope:Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;

    :goto_0
    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->initializedField:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget v4, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->lastVisibleFieldID:I

    :try_start_0
    iput-object v0, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->initializedField:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iget v5, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    iput v5, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->lastVisibleFieldID:I

    iget-object v2, v2, Lorg/eclipse/jdt/internal/compiler/ast/AbstractVariableDeclaration;->annotations:[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-static {v1, v2, v0}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->resolveAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;[Lorg/eclipse/jdt/internal/compiler/ast/Annotation;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->initializedField:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iput v4, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->lastVisibleFieldID:I

    goto :goto_1

    :catchall_0
    move-exception v0

    iput-object v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->initializedField:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    iput v4, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodScope;->lastVisibleFieldID:I

    throw v0

    :cond_2
    :goto_1
    iget-wide v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->tagBits:J

    return-wide v0
.end method

.method public getAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v1, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    return-object v0

    :cond_0
    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->retrieveAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v0

    return-object v0
.end method

.method public final isDefault()Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isPublic()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isProtected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isDeprecated()Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isOrEnclosedByPrivateType()Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isOrEnclosedByPrivateType()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final isPrivate()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isProtected()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isPublic()Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isStatic()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isSynthetic()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isTransient()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isUsed()Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->compoundUseFlag:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final isUsedOnlyInCompound()Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->compoundUseFlag:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isViewedAsDeprecated()Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    const/high16 v1, 0x300000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isVolatile()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final kind()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public original()Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;
    .locals 0

    return-object p0
.end method

.method public setAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Z)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0, p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->storeAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Z)V

    return-void
.end method

.method public sourceField()Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-eqz v1, :cond_2

    array-length v2, v1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_1

    goto :goto_0

    :cond_1
    aget-object v3, v1, v2

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-ne p0, v4, :cond_0

    return-object v3

    :catch_0
    :cond_2
    :goto_0
    return-object v0
.end method
