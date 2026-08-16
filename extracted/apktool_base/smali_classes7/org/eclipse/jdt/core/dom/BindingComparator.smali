.class Lorg/eclipse/jdt/core/dom/BindingComparator;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEqual(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Ljava/util/HashSet;)Z
    .locals 2

    .line 6
    instance-of v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 7
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v0, :cond_0

    return v1

    .line 8
    :cond_0
    check-cast p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 9
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 10
    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/BindingComparator;->isEqual(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/util/HashSet;)Z

    move-result p0

    return p0

    .line 11
    :cond_1
    instance-of v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v0, :cond_3

    .line 12
    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-nez v0, :cond_2

    return v1

    .line 13
    :cond_2
    check-cast p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    .line 14
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    .line 15
    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/BindingComparator;->isEqual(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Ljava/util/HashSet;)Z

    move-result p0

    return p0

    .line 16
    :cond_3
    instance-of p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    if-eqz p2, :cond_5

    .line 17
    instance-of p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    if-nez p2, :cond_4

    return v1

    .line 18
    :cond_4
    check-cast p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    .line 19
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    .line 20
    invoke-static {p0, p1}, Lorg/eclipse/jdt/core/dom/BindingComparator;->isEqual(Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;)Z

    move-result p0

    return p0

    .line 21
    :cond_5
    instance-of p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eqz p2, :cond_7

    .line 22
    instance-of p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-nez p2, :cond_6

    return v1

    .line 23
    :cond_6
    check-cast p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    .line 24
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    .line 25
    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    invoke-static {p0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result p0

    return p0

    .line 26
    :cond_7
    instance-of p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    if-eqz p2, :cond_a

    .line 27
    instance-of p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    if-nez p2, :cond_8

    return v1

    .line 28
    :cond_8
    check-cast p0, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    .line 29
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;

    .line 30
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->isStatic()Z

    move-result p2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->isStatic()Z

    move-result v0

    if-ne p2, v0, :cond_9

    .line 31
    iget-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->onDemand:Z

    iget-boolean v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->onDemand:Z

    if-ne p2, v0, :cond_9

    .line 32
    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->compoundName:[[C

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ImportBinding;->compoundName:[[C

    invoke-static {p0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result p0

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    return v1

    .line 33
    :cond_a
    instance-of p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    if-eqz p2, :cond_c

    .line 34
    instance-of p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    if-nez p2, :cond_b

    return v1

    .line 35
    :cond_b
    check-cast p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    .line 36
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    .line 37
    invoke-static {p0, p1}, Lorg/eclipse/jdt/core/dom/BindingComparator;->isEqual(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Z

    move-result p0

    return p0

    :cond_c
    return v1
.end method

.method public static isEqual(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;)Z
    .locals 4

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 51
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    const v2, 0xffff

    and-int/2addr v1, v2

    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    and-int/2addr v2, v3

    if-ne v1, v2, :cond_0

    .line 52
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    invoke-static {v1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v1, v2, v0}, Lorg/eclipse/jdt/core/dom/BindingComparator;->isEqual(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/util/HashSet;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/BindingComparator;->isEqual(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/util/HashSet;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isEqual(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z
    .locals 1

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/BindingComparator;->isEqual(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Ljava/util/HashSet;)Z

    move-result p0

    return p0
.end method

.method public static isEqual(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Ljava/util/HashSet;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    if-nez p1, :cond_2

    return v1

    .line 39
    :cond_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-static {v2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 40
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v2, v3, p2}, Lorg/eclipse/jdt/core/dom/BindingComparator;->isEqual(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/util/HashSet;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 41
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v2, v3, p2}, Lorg/eclipse/jdt/core/dom/BindingComparator;->isEqual([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/util/HashSet;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 42
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v2, v3, p2}, Lorg/eclipse/jdt/core/dom/BindingComparator;->isEqual(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/util/HashSet;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 43
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    invoke-static {v2, v3, p2}, Lorg/eclipse/jdt/core/dom/BindingComparator;->isEqual([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/util/HashSet;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 44
    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/BindingComparator;->isEqual([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/util/HashSet;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public static isEqual(Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    return v0

    .line 45
    :cond_2
    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->moduleName:[C

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;->moduleName:[C

    invoke-static {p0, p1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p0

    return p0
.end method

.method public static isEqual(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z
    .locals 1

    .line 123
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/BindingComparator;->isEqual(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/util/HashSet;)Z

    move-result p0

    return p0
.end method

.method public static isEqual(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/util/HashSet;)Z
    .locals 5

    .line 59
    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_21

    if-nez p1, :cond_1

    goto/16 :goto_0

    .line 60
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v2

    const/16 v3, 0x44

    if-eq v2, v3, :cond_1f

    const/16 v3, 0x84

    if-eq v2, v3, :cond_1c

    const/16 v3, 0x104

    const v4, 0xffff

    if-eq v2, v3, :cond_19

    const/16 v3, 0x204

    if-eq v2, v3, :cond_16

    const/16 v3, 0x804

    if-eq v2, v3, :cond_13

    const/16 v3, 0x1004

    if-eq v2, v3, :cond_b

    const/16 v3, 0x2004

    if-eq v2, v3, :cond_8

    .line 61
    instance-of v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v2, :cond_2

    return v0

    .line 62
    :cond_2
    check-cast p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 63
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 64
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->constantPoolName()[C

    move-result-object v2

    .line 65
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->constantPoolName()[C

    move-result-object v3

    if-nez v2, :cond_4

    if-eqz v3, :cond_3

    return v0

    .line 66
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->computeUniqueKey()[C

    move-result-object v2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->computeUniqueKey()[C

    move-result-object v3

    invoke-static {v2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-nez v2, :cond_6

    return v0

    :cond_4
    if-nez v3, :cond_5

    return v0

    .line 67
    :cond_5
    invoke-static {v2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-nez v2, :cond_6

    return v0

    .line 68
    :cond_6
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    invoke-static {v2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 69
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isGenericType()Z

    move-result v2

    if-nez v2, :cond_7

    .line 70
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v3

    if-ne v2, v3, :cond_7

    .line 71
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    const v3, 0xffdf

    and-int/2addr v2, v3

    .line 72
    iget v4, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    and-int/2addr v3, v4

    if-ne v2, v3, :cond_7

    .line 73
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/BindingComparator;->isEqual(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/util/HashSet;)Z

    move-result p0

    if-eqz p0, :cond_7

    return v1

    :cond_7
    return v0

    .line 74
    :cond_8
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v2

    if-eq v2, v3, :cond_9

    return v0

    .line 75
    :cond_9
    check-cast p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    .line 76
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    .line 77
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v2, v3, p2}, Lorg/eclipse/jdt/core/dom/BindingComparator;->isEqual(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/util/HashSet;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 78
    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->otherBounds:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/BindingComparator;->isEqual([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/util/HashSet;)Z

    move-result p0

    if-eqz p0, :cond_a

    return v1

    :cond_a
    return v0

    .line 79
    :cond_b
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result v2

    if-nez v2, :cond_c

    return v0

    .line 80
    :cond_c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCapture()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 81
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCapture()Z

    move-result v2

    if-nez v2, :cond_d

    return v0

    .line 82
    :cond_d
    move-object v2, p0

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;

    .line 83
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;

    .line 84
    iget v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->end:I

    iget v4, p1, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->end:I

    if-ne v3, v4, :cond_f

    .line 85
    invoke-virtual {p2, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    return v1

    .line 86
    :cond_e
    invoke-virtual {p2, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object p0, v2, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->wildcard:Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->wildcard:Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    invoke-static {p0, v3, p2}, Lorg/eclipse/jdt/core/dom/BindingComparator;->isEqual(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/util/HashSet;)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 88
    iget-object p0, v2, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->sourceType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->sourceType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/BindingComparator;->isEqual(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/util/HashSet;)Z

    move-result p0

    if-eqz p0, :cond_f

    return v1

    :cond_f
    return v0

    .line 89
    :cond_10
    move-object v2, p0

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    .line 90
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    .line 91
    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    invoke-static {v3, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 92
    invoke-virtual {p2, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    return v1

    .line 93
    :cond_11
    invoke-virtual {p2, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object p0, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->declaringElement:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->declaringElement:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    invoke-static {p0, v3, p2}, Lorg/eclipse/jdt/core/dom/BindingComparator;->isEqual(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Lorg/eclipse/jdt/internal/compiler/lookup/Binding;Ljava/util/HashSet;)Z

    move-result p0

    if-eqz p0, :cond_12

    .line 95
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v3

    invoke-static {p0, v3, p2}, Lorg/eclipse/jdt/core/dom/BindingComparator;->isEqual(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/util/HashSet;)Z

    move-result p0

    if-eqz p0, :cond_12

    .line 96
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/BindingComparator;->isEqual([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/util/HashSet;)Z

    move-result p0

    if-eqz p0, :cond_12

    return v1

    :cond_12
    return v0

    .line 97
    :cond_13
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isGenericType()Z

    move-result v2

    if-nez v2, :cond_14

    return v0

    .line 98
    :cond_14
    check-cast p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 99
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 100
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    invoke-static {v2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 101
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    and-int/2addr v2, v4

    .line 102
    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    and-int/2addr v3, v4

    if-ne v2, v3, :cond_15

    .line 103
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v3

    invoke-static {v2, v3, p2}, Lorg/eclipse/jdt/core/dom/BindingComparator;->isEqual([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/util/HashSet;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 104
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/BindingComparator;->isEqual(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/util/HashSet;)Z

    move-result p0

    if-eqz p0, :cond_15

    return v1

    :cond_15
    return v0

    .line 105
    :cond_16
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v2

    if-eq v2, v3, :cond_17

    return v0

    .line 106
    :cond_17
    check-cast p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    .line 107
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    .line 108
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v2, v3, p2}, Lorg/eclipse/jdt/core/dom/BindingComparator;->isEqual(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/util/HashSet;)Z

    move-result p2

    if-eqz p2, :cond_18

    .line 109
    iget p0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    if-ne p0, p1, :cond_18

    return v1

    :cond_18
    return v0

    .line 110
    :cond_19
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v2

    if-nez v2, :cond_1a

    return v0

    .line 111
    :cond_1a
    check-cast p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    .line 112
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    .line 113
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->compoundName:[[C

    invoke-static {v2, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 114
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    and-int/2addr v2, v4

    .line 115
    iget v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->modifiers:I

    and-int/2addr v3, v4

    if-ne v2, v3, :cond_1b

    .line 116
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v2, v3, p2}, Lorg/eclipse/jdt/core/dom/BindingComparator;->isEqual([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/util/HashSet;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 117
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/BindingComparator;->isEqual(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/util/HashSet;)Z

    move-result p0

    if-eqz p0, :cond_1b

    return v1

    :cond_1b
    return v0

    .line 118
    :cond_1c
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result p2

    if-nez p2, :cond_1d

    return v0

    .line 119
    :cond_1d
    iget p0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne p0, p1, :cond_1e

    return v1

    :cond_1e
    return v0

    .line 120
    :cond_1f
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v2

    if-nez v2, :cond_20

    return v0

    .line 121
    :cond_20
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->dimensions()I

    move-result v2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->dimensions()I

    move-result v3

    if-ne v2, v3, :cond_21

    .line 122
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/BindingComparator;->isEqual(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/util/HashSet;)Z

    move-result p0

    if-eqz p0, :cond_21

    return v1

    :cond_21
    :goto_0
    return v0
.end method

.method public static isEqual(Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;)Z
    .locals 3

    .line 46
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    const v1, 0xffff

    and-int/2addr v0, v1

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 47
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/dom/BindingComparator;->isEqual(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget p0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->id:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isEqual([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z
    .locals 1

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/BindingComparator;->isEqual([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/util/HashSet;)Z

    move-result p0

    return p0
.end method

.method public static isEqual([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/util/HashSet;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    if-nez p1, :cond_2

    return v1

    .line 56
    :cond_2
    array-length v2, p0

    .line 57
    array-length v3, p1

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    move v3, v1

    :goto_0
    if-lt v3, v2, :cond_4

    return v0

    .line 58
    :cond_4
    aget-object v4, p0, v3

    aget-object v5, p1, v3

    invoke-static {v4, v5, p2}, Lorg/eclipse/jdt/core/dom/BindingComparator;->isEqual(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Ljava/util/HashSet;)Z

    move-result v4

    if-nez v4, :cond_5

    return v1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static isEqual([Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    if-nez p1, :cond_2

    return v1

    .line 1
    :cond_2
    array-length v2, p0

    .line 2
    array-length v3, p1

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    move v3, v1

    :goto_0
    if-lt v3, v2, :cond_4

    return v0

    .line 3
    :cond_4
    aget-object v4, p0, v3

    .line 4
    aget-object v5, p1, v3

    .line 5
    invoke-static {v4, v5}, Lorg/eclipse/jdt/core/dom/BindingComparator;->isEqual(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v4

    if-nez v4, :cond_5

    return v1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
