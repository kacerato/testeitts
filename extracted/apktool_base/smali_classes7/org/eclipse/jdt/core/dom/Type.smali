.class public abstract Lorg/eclipse/jdt/core/dom/Type;
.super Lorg/eclipse/jdt/core/dom/ASTNode;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/dom/AST;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-void
.end method


# virtual methods
.method public isAnnotatable()Z
    .locals 1

    instance-of v0, p0, Lorg/eclipse/jdt/core/dom/AnnotatableType;

    return v0
.end method

.method public final isArrayType()Z
    .locals 1

    instance-of v0, p0, Lorg/eclipse/jdt/core/dom/ArrayType;

    return v0
.end method

.method public final isIntersectionType()Z
    .locals 1

    instance-of v0, p0, Lorg/eclipse/jdt/core/dom/IntersectionType;

    return v0
.end method

.method public final isNameQualifiedType()Z
    .locals 1

    instance-of v0, p0, Lorg/eclipse/jdt/core/dom/NameQualifiedType;

    return v0
.end method

.method public final isParameterizedType()Z
    .locals 1

    instance-of v0, p0, Lorg/eclipse/jdt/core/dom/ParameterizedType;

    return v0
.end method

.method public final isPrimitiveType()Z
    .locals 1

    instance-of v0, p0, Lorg/eclipse/jdt/core/dom/PrimitiveType;

    return v0
.end method

.method public final isQualifiedType()Z
    .locals 1

    instance-of v0, p0, Lorg/eclipse/jdt/core/dom/QualifiedType;

    return v0
.end method

.method public final isSimpleType()Z
    .locals 1

    instance-of v0, p0, Lorg/eclipse/jdt/core/dom/SimpleType;

    return v0
.end method

.method public final isUnionType()Z
    .locals 1

    instance-of v0, p0, Lorg/eclipse/jdt/core/dom/UnionType;

    return v0
.end method

.method public isVar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isWildcardType()Z
    .locals 1

    instance-of v0, p0, Lorg/eclipse/jdt/core/dom/WildcardType;

    return v0
.end method

.method public final resolveBinding()Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->getBindingResolver()Lorg/eclipse/jdt/core/dom/BindingResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/BindingResolver;->resolveType(Lorg/eclipse/jdt/core/dom/Type;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    return-object v0
.end method
