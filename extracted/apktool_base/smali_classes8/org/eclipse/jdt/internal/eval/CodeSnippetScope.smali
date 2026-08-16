.class public Lorg/eclipse/jdt/internal/eval/CodeSnippetScope;
.super Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILorg/eclipse/jdt/internal/compiler/lookup/Scope;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;-><init>(ILorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;I)V

    return-void
.end method


# virtual methods
.method public final canBeSeenByForCodeSnippet(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isPublic()Z

    move-result p4

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    return v0

    .line 2
    :cond_0
    move-object p4, p2

    check-cast p4, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 3
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {p4, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 4
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isProtected()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    .line 5
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {p4, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 6
    :cond_2
    iget-object v1, p4, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-ne v1, v4, :cond_3

    return v0

    .line 7
    :cond_3
    invoke-virtual {v3, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isSuperclassOf(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 8
    invoke-interface {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->isSuperAccess()Z

    move-result p3

    if-eqz p3, :cond_4

    return v0

    .line 9
    :cond_4
    instance-of p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    if-eqz p2, :cond_5

    return v2

    .line 10
    :cond_5
    invoke-virtual {p4, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isSuperclassOf(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result p2

    if-eqz p2, :cond_6

    return v0

    .line 11
    :cond_6
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result p1

    if-eqz p1, :cond_7

    return v0

    :cond_7
    return v2

    .line 12
    :cond_8
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isPrivate()Z

    move-result p3

    if-eqz p3, :cond_d

    .line 13
    iget-object p3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p2

    if-eqz p2, :cond_9

    return v2

    .line 14
    :cond_9
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {p4, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 15
    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p2

    :goto_0
    move-object v5, p4

    move-object p4, p2

    move-object p2, v5

    if-nez p4, :cond_b

    .line 16
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 17
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p3

    :goto_1
    move-object v5, p3

    move-object p3, p1

    move-object p1, v5

    if-nez p1, :cond_a

    .line 18
    invoke-static {p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    if-eqz p1, :cond_c

    return v2

    .line 19
    :cond_a
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p3

    goto :goto_1

    .line 20
    :cond_b
    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p2

    goto :goto_0

    :cond_c
    return v0

    .line 21
    :cond_d
    iget-object p3, p4, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eq p3, v1, :cond_e

    return v2

    .line 22
    :cond_e
    instance-of p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    if-eqz p2, :cond_f

    return v2

    .line 23
    :cond_f
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    .line 24
    :cond_10
    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCapture()Z

    move-result p2

    if-eqz p2, :cond_11

    .line 25
    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p2

    if-eqz p2, :cond_12

    return v0

    .line 26
    :cond_11
    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p2

    if-eqz p2, :cond_12

    return v0

    .line 27
    :cond_12
    iget-object p2, p4, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eq v1, p2, :cond_13

    return v2

    .line 28
    :cond_13
    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p4

    if-nez p4, :cond_10

    return v2
.end method

.method public final canBeSeenByForCodeSnippet(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z
    .locals 6

    .line 29
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isPublic()Z

    move-result p4

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    return v0

    .line 30
    :cond_0
    move-object p4, p2

    check-cast p4, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 31
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {p4, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 32
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isProtected()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    .line 33
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {p4, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 34
    :cond_2
    iget-object v1, p4, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-ne v1, v4, :cond_3

    return v0

    .line 35
    :cond_3
    invoke-virtual {v3, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isSuperclassOf(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 36
    invoke-interface {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->isSuperAccess()Z

    move-result p3

    if-eqz p3, :cond_4

    return v0

    .line 37
    :cond_4
    instance-of p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    if-eqz p2, :cond_5

    return v2

    .line 38
    :cond_5
    invoke-virtual {p4, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isSuperclassOf(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result p2

    if-eqz p2, :cond_6

    return v0

    .line 39
    :cond_6
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result p1

    if-eqz p1, :cond_7

    return v0

    :cond_7
    return v2

    .line 40
    :cond_8
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isPrivate()Z

    move-result p3

    if-eqz p3, :cond_d

    .line 41
    iget-object p3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p2

    if-eqz p2, :cond_9

    return v2

    .line 42
    :cond_9
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {p4, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 43
    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p2

    :goto_0
    move-object v5, p4

    move-object p4, p2

    move-object p2, v5

    if-nez p4, :cond_b

    .line 44
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 45
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p3

    :goto_1
    move-object v5, p3

    move-object p3, p1

    move-object p1, v5

    if-nez p1, :cond_a

    .line 46
    invoke-static {p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    if-eqz p1, :cond_c

    return v2

    .line 47
    :cond_a
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p3

    goto :goto_1

    .line 48
    :cond_b
    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p2

    goto :goto_0

    :cond_c
    return v0

    .line 49
    :cond_d
    iget-object p3, p4, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eq p3, v1, :cond_e

    return v2

    .line 50
    :cond_e
    instance-of p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    if-eqz p2, :cond_f

    return v2

    .line 51
    :cond_f
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    .line 52
    :cond_10
    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCapture()Z

    move-result p2

    if-eqz p2, :cond_11

    .line 53
    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p2

    if-eqz p2, :cond_12

    return v0

    .line 54
    :cond_11
    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p2

    if-eqz p2, :cond_12

    return v0

    .line 55
    :cond_12
    iget-object p2, p4, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eq v1, p2, :cond_13

    return v2

    .line 56
    :cond_13
    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p4

    if-nez p4, :cond_10

    return v2
.end method

.method public final canBeSeenByForCodeSnippet(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z
    .locals 5

    .line 57
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isPublic()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 58
    :cond_0
    invoke-static {p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 59
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isProtected()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 60
    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eq v0, v3, :cond_2

    .line 61
    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isSuperclassOf(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 62
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isSuperclassOf(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v1

    .line 63
    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 64
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    :goto_0
    move-object v4, v0

    move-object v0, p2

    move-object p2, v4

    if-nez p2, :cond_5

    .line 65
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p2

    :goto_1
    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    if-nez p1, :cond_4

    .line 66
    invoke-static {v0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    return p1

    .line 67
    :cond_4
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p2

    goto :goto_1

    .line 68
    :cond_5
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    goto :goto_0

    .line 69
    :cond_6
    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->fPackage:Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-ne p2, p1, :cond_7

    return v1

    :cond_7
    return v2
.end method

.method public findExactMethod(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getExactMethod([C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p0, p2, p1, p4, p0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetScope;->canBeSeenByForCodeSnippet(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    return-object p2

    :cond_1
    return-object v0
.end method

.method public findFieldForCodeSnippet(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CLorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    return-object v5

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v4

    const/16 v6, 0x8

    if-eqz v4, :cond_3

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    instance-of v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v3, :cond_1

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    invoke-direct {v3, v1, v2, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[CI)V

    return-object v3

    :cond_1
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->LENGTH:[C

    invoke-static {v2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->ArrayLength:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    return-object v1

    :cond_2
    return-object v5

    :cond_3
    move-object v4, v1

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v4, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->canBeSeenBy(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v7

    if-nez v7, :cond_4

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    invoke-direct {v1, v4, v2, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[CI)V

    return-object v1

    :cond_4
    const/4 v6, 0x1

    invoke-virtual {v4, v2, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getField([CZ)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v7

    const/4 v8, 0x2

    if-eqz v7, :cond_6

    invoke-virtual {v0, v7, v4, v3, v0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetScope;->canBeSeenByForCodeSnippet(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v1

    if-eqz v1, :cond_5

    return-object v7

    :cond_5
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    iget-object v3, v7, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-direct {v1, v7, v3, v2, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[CI)V

    return-object v1

    :cond_6
    const/4 v7, 0x0

    const/4 v9, -0x1

    move-object v11, v5

    move-object v12, v11

    move v10, v6

    move v13, v7

    :goto_0
    const/4 v14, 0x3

    if-nez v10, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v15

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eq v15, v5, :cond_a

    if-nez v11, :cond_8

    const/4 v5, 0x5

    new-array v11, v5, [[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :cond_8
    add-int/lit8 v9, v9, 0x1

    array-length v5, v11

    if-ne v9, v5, :cond_9

    mul-int/lit8 v5, v9, 0x2

    new-array v5, v5, [[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v11, v7, v5, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v11, v5

    :cond_9
    aput-object v15, v11, v9

    :cond_a
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    if-nez v4, :cond_14

    :goto_1
    if-eqz v11, :cond_11

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;

    mul-int/lit8 v3, v9, 0x2

    invoke-direct {v1, v3}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;-><init>(I)V

    move v3, v7

    :goto_2
    if-le v3, v9, :cond_b

    const/4 v1, 0x0

    goto :goto_4

    :cond_b
    aget-object v5, v11, v3

    array-length v10, v5

    move v15, v7

    :goto_3
    if-lt v15, v10, :cond_c

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_c
    aget-object v8, v5, v15

    invoke-virtual {v1, v8}, Lorg/eclipse/jdt/internal/compiler/util/SimpleSet;->addIfNotIncluded(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v8, :cond_d

    invoke-virtual {v8, v2, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getField([CZ)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v7

    if-eqz v7, :cond_f

    if-nez v12, :cond_e

    move-object v12, v7

    :cond_d
    const/4 v14, 0x0

    goto :goto_6

    :cond_e
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    iget-object v3, v12, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-direct {v1, v12, v3, v2, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[CI)V

    :goto_4
    if-eqz v1, :cond_11

    return-object v1

    :cond_f
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v7

    sget-object v8, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eq v7, v8, :cond_d

    add-int/lit8 v9, v9, 0x1

    array-length v8, v11

    if-ne v9, v8, :cond_10

    mul-int/lit8 v8, v9, 0x2

    new-array v8, v8, [[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v14, 0x0

    invoke-static {v11, v14, v8, v14, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v11, v8

    goto :goto_5

    :cond_10
    const/4 v14, 0x0

    :goto_5
    aput-object v7, v11, v9

    :goto_6
    add-int/lit8 v15, v15, 0x1

    move v7, v14

    const/4 v8, 0x2

    const/4 v14, 0x3

    goto :goto_3

    :cond_11
    if-eqz v12, :cond_12

    return-object v12

    :cond_12
    if-eqz v13, :cond_13

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    const/4 v5, 0x2

    invoke-direct {v1, v4, v2, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[CI)V

    return-object v1

    :cond_13
    const/4 v7, 0x0

    return-object v7

    :cond_14
    move v14, v7

    move v5, v8

    const/4 v7, 0x0

    invoke-virtual {v4, v2, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getField([CZ)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v8

    if-eqz v8, :cond_17

    invoke-virtual {v0, v8, v1, v3, v0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetScope;->canBeSeenByForCodeSnippet(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v10

    if-eqz v10, :cond_16

    if-nez v12, :cond_15

    move-object v12, v8

    move v10, v14

    move v8, v5

    move-object v5, v7

    move v7, v10

    goto/16 :goto_0

    :cond_15
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    iget-object v3, v12, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v4, 0x3

    invoke-direct {v1, v12, v3, v2, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[CI)V

    return-object v1

    :cond_16
    move v8, v5

    move v13, v6

    move-object v5, v7

    move v7, v14

    move v10, v7

    goto/16 :goto_0

    :cond_17
    move v8, v5

    move-object v5, v7

    move v7, v14

    goto/16 :goto_0
.end method

.method public findMethod(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Z)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 1

    invoke-super/range {p0 .. p5}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->findMethod(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Z)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p5

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p5, p1, p4, p0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetScope;->canBeSeenByForCodeSnippet(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    const/4 p4, 0x2

    invoke-direct {p1, p5, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    return-object p1

    :cond_0
    return-object p5
.end method

.method public findMethodForArray(Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 8

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangObject()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v6

    const/4 v0, 0x0

    invoke-virtual {v6, p2, p3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getExactMethod([C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    const/4 v7, 0x1

    if-eqz v0, :cond_1

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_PARAMETERS:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-ne p3, v1, :cond_0

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->CLONE:[C

    invoke-static {p2, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget p2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    and-int/lit8 p2, p2, -0x5

    or-int/lit8 v1, p2, 0x1

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v5, 0x0

    move-object v0, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;-><init>(I[CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    return-object p1

    :cond_0
    invoke-virtual {p0, v0, p1, p4, p0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetScope;->canBeSeenByForCodeSnippet(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v6

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/eval/CodeSnippetScope;->findMethod(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Z)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    invoke-direct {p1, p2, p3, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;-><init>([C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    return-object p1

    :cond_2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v0, p3, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->computeCompatibleMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    invoke-direct {p1, v0, p2, p3, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    return-object p1

    :cond_3
    invoke-virtual {p0, v1, p1, p4, p0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetScope;->canBeSeenByForCodeSnippet(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result p1

    if-nez p1, :cond_4

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    iget-object p3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 p4, 0x2

    invoke-direct {p1, v1, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    return-object p1

    :cond_4
    move-object v0, v1

    :cond_5
    return-object v0
.end method

.method public getBinding([[CILorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;
    .locals 8

    const/4 v0, 0x0

    aget-object v1, p1, v0

    or-int/lit8 v2, p2, 0x14

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, p3, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getBinding([CILorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Z)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v1

    invoke-interface {p3, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->setFieldIndex(I)V

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v2

    if-eqz v2, :cond_11

    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;

    if-eqz v2, :cond_0

    goto/16 :goto_4

    :cond_0
    array-length v2, p1

    instance-of v4, v1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    if-eqz v4, :cond_7

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move v4, v3

    :goto_0
    const/4 v5, 0x0

    if-lt v4, v2, :cond_1

    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    invoke-static {p1, v0, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object p1

    invoke-direct {p2, p1, v5, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object p2

    :cond_1
    add-int/lit8 v6, v4, 0x1

    aget-object v4, p1, v4

    if-ge v6, v2, :cond_2

    move v7, v3

    goto :goto_1

    :cond_2
    move v7, v0

    :goto_1
    invoke-virtual {v1, v4, v5, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->getTypeOrPackage([CLorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    move-result-object v1

    invoke-interface {p3, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->setFieldIndex(I)V

    if-nez v1, :cond_4

    if-ne v6, v2, :cond_3

    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    invoke-static {p1, v0, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object p1

    invoke-direct {p2, p1, v5, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object p2

    :cond_3
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemBinding;

    invoke-static {p1, v0, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object p1

    invoke-direct {p2, p1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemBinding;-><init>([[CI)V

    return-object p2

    :cond_4
    instance-of v4, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v4, :cond_6

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v4

    if-nez v4, :cond_5

    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    invoke-static {p1, v0, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object p1

    move-object p3, v1

    check-cast p3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->closestMatch()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p3

    check-cast p3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result p4

    invoke-direct {p2, p1, p3, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object p2

    :cond_5
    move-object v4, v1

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p0, v4, p4}, Lorg/eclipse/jdt/internal/eval/CodeSnippetScope;->canBeSeenByForCodeSnippet(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Z

    move-result p4

    if-nez p4, :cond_8

    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    invoke-static {p1, v0, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object p1

    const/4 p3, 0x2

    invoke-direct {p2, p1, v4, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object p2

    :cond_6
    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move v4, v6

    goto :goto_0

    :cond_7
    move v6, v3

    :cond_8
    :goto_2
    const/16 p4, 0x2e

    if-lt v6, v2, :cond_9

    goto :goto_3

    :cond_9
    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    add-int/lit8 v4, v6, 0x1

    aget-object v5, p1, v6

    invoke-interface {p3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->setFieldIndex(I)V

    invoke-virtual {p0, v1, v5, p3}, Lorg/eclipse/jdt/internal/eval/CodeSnippetScope;->findFieldForCodeSnippet(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CLorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v6

    if-eqz v6, :cond_e

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result p3

    if-nez p3, :cond_a

    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    iget-object p3, v6, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {p1, v0, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object p1

    invoke-static {p1, p4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object p1

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result p4

    invoke-direct {p2, v6, p3, p1, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[CI)V

    return-object p2

    :cond_a
    move-object v1, v6

    move v6, v4

    :goto_3
    and-int/lit8 p3, p2, 0x1

    if-eqz p3, :cond_c

    instance-of p3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz p3, :cond_c

    move-object p2, v1

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result p3

    if-nez p3, :cond_b

    new-instance p3, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    iget-object v1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {p1, v0, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object p1

    invoke-static {p1, p4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object p1

    const/4 p4, 0x7

    invoke-direct {p3, p2, v1, p1, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[CI)V

    return-object p3

    :cond_b
    return-object v1

    :cond_c
    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_d

    instance-of p2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz p2, :cond_d

    return-object v1

    :cond_d
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemBinding;

    invoke-static {p1, v0, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object p1

    invoke-direct {p2, p1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemBinding;-><init>([[CI)V

    return-object p2

    :cond_e
    invoke-virtual {p0, v5, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->findMemberType([CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p4

    if-nez p4, :cond_f

    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemBinding;

    invoke-static {p1, v0, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object p1

    invoke-direct {p2, p1, v1, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object p2

    :cond_f
    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v1

    if-nez v1, :cond_10

    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;

    invoke-static {p1, v0, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->subarray([[CII)[[C

    move-result-object p1

    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->closestMatch()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p3

    check-cast p3, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result p4

    invoke-direct {p2, p1, p3, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemReferenceBinding;-><init>([[CLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;I)V

    return-object p2

    :cond_10
    move-object v1, p4

    move v6, v4

    goto/16 :goto_2

    :cond_11
    :goto_4
    return-object v1
.end method

.method public getConstructor(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 9

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getExactConstructor([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1, p3, p0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetScope;->canBeSeenByForCodeSnippet(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->INIT:[C

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getMethods([C)[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v1

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_METHODS:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    invoke-direct {p1, v0, p2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;-><init>([C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    return-object p1

    :cond_1
    array-length v0, v1

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    array-length v2, v1

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    if-lt v5, v2, :cond_7

    if-nez v6, :cond_2

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    sget-object p3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->INIT:[C

    invoke-direct {p1, p3, p2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;-><init>([C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    return-object p1

    :cond_2
    new-array v7, v6, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move p2, v4

    move v1, p2

    :goto_1
    if-lt p2, v6, :cond_5

    if-ne v1, v3, :cond_3

    aget-object p1, v7, v4

    return-object p1

    :cond_3
    if-nez v1, :cond_4

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    aget-object p2, v0, v4

    sget-object p3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->INIT:[C

    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v1, 0x2

    invoke-direct {p1, p2, p3, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    return-object p1

    :cond_4
    invoke-virtual {p0, v7, v1, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->mostSpecificClassMethodBinding([Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;ILorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    return-object p1

    :cond_5
    aget-object v2, v0, p2

    invoke-virtual {p0, v2, p1, p3, p0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetScope;->canBeSeenByForCodeSnippet(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v5

    if-eqz v5, :cond_6

    add-int/lit8 v5, v1, 0x1

    aput-object v2, v7, v1

    move v1, v5

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_7
    aget-object v7, v1, v5

    invoke-virtual {p0, v7, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->computeCompatibleMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v7

    if-eqz v7, :cond_8

    add-int/lit8 v8, v6, 0x1

    aput-object v7, v0, v6

    move v6, v8

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public getFieldForCodeSnippet(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CLorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/eval/CodeSnippetScope;->findFieldForCodeSnippet(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CLorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object p3

    if-nez p3, :cond_1

    new-instance p3, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;

    instance-of v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x1

    invoke-direct {p3, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[CI)V

    :cond_1
    return-object p3
.end method

.method public getImplicitMethod(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 7

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/eval/CodeSnippetScope;->findExactMethod(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/eval/CodeSnippetScope;->findMethod(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Z)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0, p1, p4, p0}, Lorg/eclipse/jdt/internal/eval/CodeSnippetScope;->canBeSeenByForCodeSnippet(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    const/4 p4, 0x2

    invoke-direct {p1, v0, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    return-object p1

    :cond_1
    return-object v0

    :cond_2
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    const/4 p4, 0x1

    invoke-direct {p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;-><init>([C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    return-object p1
.end method
