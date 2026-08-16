.class Lorg/eclipse/jdt/core/dom/TypeBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/dom/ITypeBinding;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/core/dom/TypeBinding$LocalTypeBinding;
    }
.end annotation


# static fields
.field private static final EXPRESSION:Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;

.field protected static final NO_METHOD_BINDINGS:[Lorg/eclipse/jdt/core/dom/IMethodBinding;

.field private static final NO_NAME:Ljava/lang/String; = ""

.field protected static final NO_TYPE_BINDINGS:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

.field protected static final NO_VARIABLE_BINDINGS:[Lorg/eclipse/jdt/core/dom/IVariableBinding;

.field private static final VALID_MODIFIERS:I = 0xc1f


# instance fields
.field private annotations:[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

.field binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

.field private bounds:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

.field private fields:[Lorg/eclipse/jdt/core/dom/IVariableBinding;

.field private interfaces:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

.field private key:Ljava/lang/String;

.field private members:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

.field private methods:[Lorg/eclipse/jdt/core/dom/IMethodBinding;

.field private prototype:Lorg/eclipse/jdt/core/dom/TypeBinding;

.field protected resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

.field private typeAnnotations:[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

.field private typeArguments:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

.field private typeParameters:[Lorg/eclipse/jdt/core/dom/ITypeBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;-><init>(II)V

    sput-object v0, Lorg/eclipse/jdt/core/dom/TypeBinding;->EXPRESSION:Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;

    new-array v0, v1, [Lorg/eclipse/jdt/core/dom/IMethodBinding;

    sput-object v0, Lorg/eclipse/jdt/core/dom/TypeBinding;->NO_METHOD_BINDINGS:[Lorg/eclipse/jdt/core/dom/IMethodBinding;

    new-array v0, v1, [Lorg/eclipse/jdt/core/dom/ITypeBinding;

    sput-object v0, Lorg/eclipse/jdt/core/dom/TypeBinding;->NO_TYPE_BINDINGS:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    new-array v0, v1, [Lorg/eclipse/jdt/core/dom/IVariableBinding;

    sput-object v0, Lorg/eclipse/jdt/core/dom/TypeBinding;->NO_VARIABLE_BINDINGS:[Lorg/eclipse/jdt/core/dom/IVariableBinding;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/core/dom/BindingResolver;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->prototype:Lorg/eclipse/jdt/core/dom/TypeBinding;

    iput-object p2, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->prototype()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    if-eqz v1, :cond_1

    if-ne v1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    :cond_1
    :goto_0
    check-cast v0, Lorg/eclipse/jdt/core/dom/TypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->prototype:Lorg/eclipse/jdt/core/dom/TypeBinding;

    return-void
.end method

.method public static createTypeBinding(Lorg/eclipse/jdt/core/dom/BindingResolver;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/core/dom/IBinding;)Lorg/eclipse/jdt/core/dom/TypeBinding;
    .locals 1

    if-eqz p2, :cond_0

    new-instance v0, Lorg/eclipse/jdt/core/dom/TypeBinding$LocalTypeBinding;

    invoke-direct {v0, p0, p1, p2}, Lorg/eclipse/jdt/core/dom/TypeBinding$LocalTypeBinding;-><init>(Lorg/eclipse/jdt/core/dom/BindingResolver;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/core/dom/IBinding;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/core/dom/TypeBinding;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/core/dom/TypeBinding;-><init>(Lorg/eclipse/jdt/core/dom/BindingResolver;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    :goto_0
    return-object v0
.end method

.method private getIntersectingTypes()[Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 6

    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeBinding;->NO_TYPE_BINDINGS:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getIntersectingTypes()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    array-length v2, v1

    new-array v3, v2, [Lorg/eclipse/jdt/core/dom/ITypeBinding;

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    move-object v0, v3

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method private getUnresolvedJavaElement()Lorg/eclipse/jdt/internal/core/JavaElement;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->getUnresolvedJavaElement(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/core/JavaElement;

    move-result-object v0

    return-object v0
.end method

.method private getUnresolvedJavaElement(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/core/JavaElement;
    .locals 3

    .line 2
    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getPlugin()Lorg/eclipse/core/runtime/Plugin;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    instance-of v2, v0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;

    if-eqz v2, :cond_2

    .line 4
    check-cast v0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;

    .line 5
    iget-boolean v2, v0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->fromJavaProject:Z

    if-nez v2, :cond_1

    return-object v1

    .line 6
    :cond_1
    iget-object v1, v0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->workingCopyOwner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    .line 7
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getBindingsToNodesMap()Lorg/eclipse/jdt/internal/core/util/Util$BindingsToNodesMap;

    move-result-object v0

    .line 8
    invoke-static {p1, v1, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->getUnresolvedJavaElement(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/jdt/internal/core/util/Util$BindingsToNodesMap;)Lorg/eclipse/jdt/internal/core/JavaElement;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method private resolveAnnotationBindings([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Z)[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    if-eqz v1, :cond_6

    new-array v2, v1, [Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    move v3, v0

    move v4, v3

    :goto_1
    if-lt v3, v1, :cond_1

    goto :goto_2

    :cond_1
    aget-object v5, p1, v3

    if-eqz p2, :cond_4

    if-nez v5, :cond_4

    :goto_2
    if-eq v4, v1, :cond_3

    if-nez v4, :cond_2

    sget-object p1, Lorg/eclipse/jdt/core/dom/AnnotationBinding;->NoAnnotations:[Lorg/eclipse/jdt/core/dom/AnnotationBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->annotations:[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    return-object p1

    :cond_2
    new-array p1, v4, [Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    invoke-static {v2, v0, p1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, p1

    :cond_3
    return-object v2

    :cond_4
    iget-object v6, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    invoke-virtual {v6, v5}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getAnnotationInstance(Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    move-result-object v5

    if-nez v5, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v6, v4, 0x1

    aput-object v5, v2, v4

    move v4, v6

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    sget-object p1, Lorg/eclipse/jdt/core/dom/AnnotationBinding;->NoAnnotations:[Lorg/eclipse/jdt/core/dom/AnnotationBinding;

    return-object p1
.end method


# virtual methods
.method public createArrayType(I)Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->getDimensions()I

    move-result v0

    add-int/2addr v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    invoke-virtual {v0, p0, p1}, Lorg/eclipse/jdt/core/dom/BindingResolver;->resolveArrayType(Lorg/eclipse/jdt/core/dom/ITypeBinding;I)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getAnnotations()[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->prototype:Lorg/eclipse/jdt/core/dom/TypeBinding;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->getAnnotations()[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->annotations:[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->genericType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isAnnotationType()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isClass()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isEnum()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/core/dom/TypeBinding;->resolveAnnotationBindings([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Z)[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->annotations:[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    return-object v0

    :cond_5
    sget-object v0, Lorg/eclipse/jdt/core/dom/AnnotationBinding;->NoAnnotations:[Lorg/eclipse/jdt/core/dom/AnnotationBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->annotations:[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    return-object v0
.end method

.method public getBinaryName()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCapture()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result v0

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->declaringElement:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->kind()I

    move-result v6

    const/16 v7, 0x8

    const/16 v8, 0x24

    if-eq v6, v7, :cond_2

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->constantPoolName()[C

    move-result-object v4

    if-nez v4, :cond_1

    return-object v1

    :cond_1
    invoke-static {v4, v3, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replaceOnCopy([CCC)[C

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    check-cast v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v6, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->constantPoolName()[C

    move-result-object v6

    if-nez v6, :cond_3

    return-object v1

    :cond_3
    invoke-static {v6, v3, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replaceOnCopy([CCC)[C

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->signature()[C

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :goto_0
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->constantPoolName()[C

    move-result-object v0

    if-nez v0, :cond_5

    return-object v1

    :cond_5
    invoke-static {v0, v3, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->replaceOnCopy([CCC)[C

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public getBound()Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v0

    const/16 v1, 0x204

    if-eq v0, v1, :cond_0

    const/16 v1, 0x2004

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getComponentType()Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->elementsType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getDeclaredFields()[Lorg/eclipse/jdt/core/dom/IVariableBinding;
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->prototype:Lorg/eclipse/jdt/core/dom/TypeBinding;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->getDeclaredFields()[Lorg/eclipse/jdt/core/dom/IVariableBinding;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->fields:[Lorg/eclipse/jdt/core/dom/IVariableBinding;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isClass()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isInterface()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->availableFields()[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v0

    array-length v1, v0

    if-eqz v1, :cond_7

    new-array v2, v1, [Lorg/eclipse/jdt/core/dom/IVariableBinding;

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_1
    if-lt v4, v1, :cond_5

    if-eq v5, v1, :cond_4

    if-nez v5, :cond_3

    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeBinding;->NO_VARIABLE_BINDINGS:[Lorg/eclipse/jdt/core/dom/IVariableBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->fields:[Lorg/eclipse/jdt/core/dom/IVariableBinding;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_3
    :try_start_3
    new-array v0, v5, [Lorg/eclipse/jdt/core/dom/IVariableBinding;

    invoke-static {v2, v3, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v0

    :cond_4
    iput-object v2, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->fields:[Lorg/eclipse/jdt/core/dom/IVariableBinding;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v2

    :cond_5
    :try_start_4
    aget-object v6, v0, v4

    iget-object v7, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    invoke-virtual {v7, v6}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getVariableBinding(Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;)Lorg/eclipse/jdt/core/dom/IVariableBinding;

    move-result-object v6

    if-eqz v6, :cond_6

    add-int/lit8 v7, v5, 0x1

    aput-object v6, v2, v5
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v5, v7

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :goto_2
    :try_start_5
    const-string v1, "Could not retrieve declared fields"

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_7
    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeBinding;->NO_VARIABLE_BINDINGS:[Lorg/eclipse/jdt/core/dom/IVariableBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->fields:[Lorg/eclipse/jdt/core/dom/IVariableBinding;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_3
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0
.end method

.method public declared-synchronized getDeclaredMethods()[Lorg/eclipse/jdt/core/dom/IMethodBinding;
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->prototype:Lorg/eclipse/jdt/core/dom/TypeBinding;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->getDeclaredMethods()[Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->methods:[Lorg/eclipse/jdt/core/dom/IMethodBinding;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isClass()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isInterface()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->availableMethods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    array-length v1, v0

    if-eqz v1, :cond_8

    new-array v2, v1, [Lorg/eclipse/jdt/core/dom/IMethodBinding;

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_1
    if-lt v4, v1, :cond_5

    if-eq v5, v1, :cond_4

    if-nez v5, :cond_3

    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeBinding;->NO_METHOD_BINDINGS:[Lorg/eclipse/jdt/core/dom/IMethodBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->methods:[Lorg/eclipse/jdt/core/dom/IMethodBinding;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_3
    :try_start_3
    new-array v0, v5, [Lorg/eclipse/jdt/core/dom/IMethodBinding;

    invoke-static {v2, v3, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v0

    :cond_4
    iput-object v2, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->methods:[Lorg/eclipse/jdt/core/dom/IMethodBinding;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v2

    :cond_5
    :try_start_4
    aget-object v6, v0, v4

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isDefaultAbstract()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isSynthetic()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isInterface()Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_2

    :cond_6
    iget-object v7, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    invoke-virtual {v7, v6}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getMethodBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object v6

    if-eqz v6, :cond_7

    add-int/lit8 v7, v5, 0x1

    aput-object v6, v2, v5
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v5, v7

    :cond_7
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :goto_3
    :try_start_5
    const-string v1, "Could not retrieve declared methods"

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_8
    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeBinding;->NO_METHOD_BINDINGS:[Lorg/eclipse/jdt/core/dom/IMethodBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->methods:[Lorg/eclipse/jdt/core/dom/IMethodBinding;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_4
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0
.end method

.method public getDeclaredModifiers()I
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->getModifiers()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getDeclaredTypes()[Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->members:[Lorg/eclipse/jdt/core/dom/ITypeBinding;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isClass()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isInterface()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->memberTypes()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    array-length v1, v0

    if-eqz v1, :cond_4

    new-array v2, v1, [Lorg/eclipse/jdt/core/dom/ITypeBinding;

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v1, :cond_2

    iput-object v2, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->members:[Lorg/eclipse/jdt/core/dom/ITypeBinding;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    :cond_2
    :try_start_2
    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v4

    if-nez v4, :cond_3

    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeBinding;->NO_TYPE_BINDINGS:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->members:[Lorg/eclipse/jdt/core/dom/ITypeBinding;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_3
    :try_start_3
    aput-object v4, v2, v3
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :goto_2
    :try_start_4
    const-string v1, "Could not retrieve declared methods"

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_4
    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeBinding;->NO_TYPE_BINDINGS:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->members:[Lorg/eclipse/jdt/core/dom/ITypeBinding;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_3
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public declared-synchronized getDeclaringClass()Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isClass()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isInterface()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCapture()Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->sourceType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->declaringElement:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    :goto_0
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "Could not retrieve declaring class"

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNestedType()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_3

    :try_start_3
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->enclosingType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_1
    move-exception v0

    :try_start_4
    const-string v1, "Could not retrieve declaring class"

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    :goto_2
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :goto_3
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public getDeclaringMember()Lorg/eclipse/jdt/core/dom/IBinding;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized getDeclaringMethod()Lorg/eclipse/jdt/core/dom/IMethodBinding;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LocalTypeBinding;->enclosingMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getMethodBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "Could not retrieve declaring method"

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->declaringElement:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    :try_start_3
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getMethodBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_1
    move-exception v0

    :try_start_4
    const-string v1, "Could not retrieve declaring method"

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :goto_1
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public getDimensions()I
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->dimensions:I

    return v0
.end method

.method public getElementType()Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    return-object v0
.end method

.method public getErasure()Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    return-object v0
.end method

.method public getFunctionalInterfaceMethod()Lorg/eclipse/jdt/core/dom/IMethodBinding;
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/BindingResolver;->scope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getSingleAbstractMethod(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getMethodBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    return-object v2
.end method

.method public getGenericTypeOfWildcardType()Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v0

    const/16 v1, 0x204

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->genericType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized getInterfaces()[Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->prototype:Lorg/eclipse/jdt/core/dom/TypeBinding;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->getInterfaces()[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->interfaces:[Lorg/eclipse/jdt/core/dom/ITypeBinding;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v0, :cond_2

    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeBinding;->NO_TYPE_BINDINGS:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->interfaces:[Lorg/eclipse/jdt/core/dom/ITypeBinding;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_3
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v0

    const/16 v1, 0x44

    if-eq v0, v1, :cond_8

    const/16 v1, 0x84

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_5
    const-string v1, "Could not retrieve interfaces"

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_3

    move v2, v1

    goto :goto_1

    :cond_3
    array-length v2, v0

    :goto_1
    if-eqz v2, :cond_7

    new-array v3, v2, [Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move v4, v1

    move v5, v4

    :goto_2
    if-lt v4, v2, :cond_5

    if-eq v2, v5, :cond_4

    new-array v0, v5, [Lorg/eclipse/jdt/core/dom/ITypeBinding;

    invoke-static {v3, v1, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v0

    :cond_4
    iput-object v3, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->interfaces:[Lorg/eclipse/jdt/core/dom/ITypeBinding;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v3

    :cond_5
    :try_start_6
    iget-object v6, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    aget-object v7, v0, v4

    invoke-virtual {v6, v7}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v6

    if-nez v6, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v7, v5, 0x1

    aput-object v6, v3, v5

    move v5, v7

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeBinding;->NO_TYPE_BINDINGS:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->interfaces:[Lorg/eclipse/jdt/core/dom/ITypeBinding;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_8
    :try_start_7
    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeBinding;->NO_TYPE_BINDINGS:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->interfaces:[Lorg/eclipse/jdt/core/dom/ITypeBinding;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_4
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0
.end method

.method public getJavaElement()Lorg/eclipse/jdt/core/IJavaElement;
    .locals 4

    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->getUnresolvedJavaElement()Lorg/eclipse/jdt/internal/core/JavaElement;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaElement;->resolved(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)Lorg/eclipse/jdt/internal/core/JavaElement;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isRecovered()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->getPackage()Lorg/eclipse/jdt/core/dom/IPackageBinding;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/eclipse/jdt/core/dom/IBinding;->getJavaElement()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    check-cast v0, Lorg/eclipse/jdt/internal/core/PackageFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->sourceName()[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".java"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/PackageFragment;->getCompilationUnit(Ljava/lang/String;)Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/jdt/core/ICompilationUnit;->getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->key:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->computeUniqueKey()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->key:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getKind()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getModifiers()I
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isClass()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getAccessFlags()I

    move-result v1

    and-int/lit16 v2, v1, 0xc1f

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isAnonymousType()Z

    move-result v0

    if-eqz v0, :cond_0

    and-int/lit16 v0, v1, 0xc0f

    return v0

    :cond_0
    return v2

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isAnnotation()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getAccessFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x81f

    return v0

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getAccessFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x81f

    return v0

    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getAccessFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0xc1f

    return v0

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public getModule()Lorg/eclipse/jdt/core/dom/IModuleBinding;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getPackage()Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getPackageBinding(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/core/dom/IPackageBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/dom/IPackageBinding;->getModule()Lorg/eclipse/jdt/core/dom/IModuleBinding;

    move-result-object v2

    :cond_0
    return-object v2
.end method

.method public getName()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v0

    const/16 v1, 0x44

    const/4 v2, 0x2

    const-string v3, ""

    const/4 v4, 0x1

    if-eq v0, v1, :cond_f

    const/16 v1, 0x104

    const/4 v5, 0x0

    if-eq v0, v1, :cond_b

    const/16 v1, 0x204

    if-eq v0, v1, :cond_7

    const/16 v1, 0x404

    if-eq v0, v1, :cond_6

    const/16 v1, 0x1004

    if-eq v0, v1, :cond_4

    const/16 v1, 0x2004

    if-eq v0, v1, :cond_7

    const v1, 0x8004

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isNullType()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isAnonymous()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v3

    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->sourceName()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    new-instance v1, Ljava/lang/String;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->simpleName:[C

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1

    :cond_3
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;->getIntersectingTypes()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isCapture()Z

    move-result v0

    if-eqz v0, :cond_5

    return-object v3

    :cond_5
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    new-instance v1, Ljava/lang/String;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1

    :cond_6
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->getTypeDeclaration()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_NAME:[C

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->bound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v3, :cond_a

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    if-eq v0, v4, :cond_9

    if-eq v0, v2, :cond_8

    goto :goto_1

    :cond_8
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_SUPER:[C

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_9
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_EXTENDS:[C

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->getBound()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->sourceName()[C

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->getTypeArguments()[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    array-length v2, v0

    if-eqz v2, :cond_e

    const/16 v3, 0x3c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    if-lt v5, v2, :cond_c

    const/16 v0, 0x3e

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_c
    if-lez v5, :cond_d

    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_d
    aget-object v3, v0, v5

    invoke-interface {v3}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_e
    :goto_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->getElementType()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->isLocal()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-interface {v0}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->isAnonymous()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-interface {v0}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->isCapture()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_5

    :cond_10
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->getDimensions()I

    move-result v1

    mul-int/2addr v1, v2

    new-array v2, v1, [C

    sub-int/2addr v1, v4

    :goto_4
    if-gez v1, :cond_11

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_11
    const/16 v3, 0x5d

    aput-char v3, v2, v1

    add-int/lit8 v3, v1, -0x1

    const/16 v4, 0x5b

    aput-char v4, v2, v3

    add-int/lit8 v1, v1, -0x2

    goto :goto_4

    :cond_12
    :goto_5
    return-object v3
.end method

.method public getPackage()Lorg/eclipse/jdt/core/dom/IPackageBinding;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v0

    const/16 v1, 0x44

    if-eq v0, v1, :cond_0

    const/16 v1, 0x84

    if-eq v0, v1, :cond_0

    const/16 v1, 0x204

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1004

    if-eq v0, v1, :cond_0

    const/16 v1, 0x2004

    if-eq v0, v1, :cond_0

    const v1, 0x8004

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getPackage()Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getPackageBinding(Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;)Lorg/eclipse/jdt/core/dom/IPackageBinding;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getQualifiedName()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v0

    const/16 v1, 0x44

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_16

    const/16 v1, 0x104

    const-string v4, ""

    const/16 v5, 0x2e

    if-eq v0, v1, :cond_d

    const/16 v1, 0x204

    if-eq v0, v1, :cond_9

    const/16 v1, 0x404

    if-eq v0, v1, :cond_8

    const/16 v1, 0x1004

    if-eq v0, v1, :cond_6

    const/16 v1, 0x2004

    if-eq v0, v1, :cond_9

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isAnonymous()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isLocalType()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isIntersectionType18()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isNullType()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isMember()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->getDeclaringClass()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getPackage()Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    sget-object v2, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    if-eq v0, v2, :cond_3

    invoke-static {v0, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    new-instance v1, Ljava/lang/String;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;->simpleName:[C

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1

    :cond_5
    :goto_1
    return-object v4

    :cond_6
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isCapture()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object v4

    :cond_7
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    new-instance v1, Ljava/lang/String;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->sourceName:[C

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1

    :cond_8
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->getTypeDeclaration()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_NAME:[C

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->getBound()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v4

    if-eqz v4, :cond_c

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    if-eq v0, v3, :cond_b

    if-eq v0, v2, :cond_a

    goto :goto_2

    :cond_a
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_SUPER:[C

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_b
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->WILDCARD_EXTENDS:[C

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    :goto_2
    invoke-interface {v4}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isLocalType()Z

    move-result v0

    if-eqz v0, :cond_e

    return-object v4

    :cond_e
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isMember()Z

    move-result v1

    const/16 v2, 0x2c

    const/16 v3, 0x3e

    const/4 v4, 0x0

    const/16 v6, 0x3c

    if-eqz v1, :cond_12

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->getDeclaringClass()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->sourceName()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->getTypeArguments()[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v1

    array-length v5, v1

    if-eqz v5, :cond_11

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_3
    if-lt v4, v5, :cond_f

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_f
    if-lez v4, :cond_10

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_10
    aget-object v6, v1, v4

    invoke-interface {v6}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getQualifiedName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_11
    :goto_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_12
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->getTypeDeclaration()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->getTypeArguments()[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v1

    array-length v5, v1

    if-eqz v5, :cond_15

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_5
    if-lt v4, v5, :cond_13

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_13
    if-lez v4, :cond_14

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_14
    aget-object v6, v1, v4

    invoke-interface {v6}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getQualifiedName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_15
    :goto_6
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_16
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->getElementType()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->isLocal()Z

    move-result v1

    if-nez v1, :cond_19

    invoke-interface {v0}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->isAnonymous()Z

    move-result v1

    if-nez v1, :cond_19

    invoke-interface {v0}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->isCapture()Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_8

    :cond_17
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->getDimensions()I

    move-result v1

    mul-int/2addr v1, v2

    new-array v2, v1, [C

    sub-int/2addr v1, v3

    :goto_7
    if-gez v1, :cond_18

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_18
    const/16 v3, 0x5d

    aput-char v3, v2, v1

    add-int/lit8 v3, v1, -0x1

    const/16 v4, 0x5b

    aput-char v4, v2, v3

    add-int/lit8 v1, v1, -0x2

    goto :goto_7

    :cond_19
    :goto_8
    invoke-interface {v0}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRank()I
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v0

    const/16 v1, 0x204

    if-eq v0, v1, :cond_0

    const/16 v1, 0x2004

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->rank:I

    return v0
.end method

.method public declared-synchronized getSuperclass()Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v0

    const/16 v2, 0x44

    if-eq v0, v2, :cond_3

    const/16 v2, 0x84

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isInterface()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_2
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_2

    monitor-exit p0

    return-object v1

    :cond_2
    :try_start_3
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    const-string v1, "Could not retrieve superclass"

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    const-string v1, "java.lang.Object"

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/BindingResolver;->resolveWellKnownType(Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_3
    monitor-exit p0

    return-object v1

    :goto_0
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public getTypeAnnotations()[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->typeAnnotations:[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/core/dom/TypeBinding;->resolveAnnotationBindings([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Z)[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->typeAnnotations:[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    return-object v0
.end method

.method public getTypeArguments()[Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->prototype:Lorg/eclipse/jdt/core/dom/TypeBinding;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->getTypeArguments()[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->typeArguments:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedTypeWithActualArguments()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->arguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v1, v0

    new-array v2, v1, [Lorg/eclipse/jdt/core/dom/ITypeBinding;

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v1, :cond_2

    iput-object v2, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->typeArguments:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    return-object v2

    :cond_2
    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v4

    if-nez v4, :cond_3

    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeBinding;->NO_TYPE_BINDINGS:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->typeArguments:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    return-object v0

    :cond_3
    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeBinding;->NO_TYPE_BINDINGS:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->typeArguments:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    return-object v0
.end method

.method public getTypeBounds()[Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 8

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->prototype:Lorg/eclipse/jdt/core/dom/TypeBinding;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->getTypeBounds()[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->bounds:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    if-eqz v1, :cond_3

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->typeVariable()Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v0

    goto :goto_0

    :cond_3
    instance-of v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/IntersectionTypeBinding18;

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->getIntersectingTypes()[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->bounds:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    return-object v0

    :cond_4
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_7

    if-eqz v1, :cond_5

    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-eq v2, v5, :cond_5

    move-object v2, v1

    :goto_1
    move v1, v5

    goto :goto_3

    :cond_5
    move-object v2, v3

    :cond_6
    move v1, v4

    goto :goto_3

    :cond_7
    invoke-static {v3, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_2
    move-object v2, v3

    goto :goto_1

    :cond_8
    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    :goto_3
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    if-eqz v0, :cond_9

    array-length v3, v0

    add-int/2addr v1, v3

    goto :goto_4

    :cond_9
    move v3, v4

    :goto_4
    if-eqz v1, :cond_f

    new-array v1, v1, [Lorg/eclipse/jdt/core/dom/ITypeBinding;

    if-eqz v2, :cond_b

    iget-object v6, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    invoke-virtual {v6, v2}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v2

    if-nez v2, :cond_a

    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeBinding;->NO_TYPE_BINDINGS:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->bounds:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    return-object v0

    :cond_a
    aput-object v2, v1, v4

    move v2, v5

    goto :goto_5

    :cond_b
    move v2, v4

    :goto_5
    if-eqz v0, :cond_e

    :goto_6
    if-lt v4, v3, :cond_c

    goto :goto_7

    :cond_c
    iget-object v6, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    aget-object v7, v0, v4

    invoke-virtual {v6, v7}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v6

    if-nez v6, :cond_d

    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeBinding;->NO_TYPE_BINDINGS:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->bounds:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    return-object v0

    :cond_d
    aput-object v6, v1, v2

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v5

    goto :goto_6

    :cond_e
    :goto_7
    iput-object v1, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->bounds:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    return-object v1

    :cond_f
    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeBinding;->NO_TYPE_BINDINGS:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->bounds:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    return-object v0
.end method

.method public getTypeDeclaration()Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->genericType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->unannotated()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    return-object v0
.end method

.method public getTypeParameters()[Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->prototype:Lorg/eclipse/jdt/core/dom/TypeBinding;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->getTypeParameters()[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->typeParameters:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v0

    const/16 v1, 0x104

    if-eq v0, v1, :cond_6

    const/16 v1, 0x404

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    array-length v2, v0

    :goto_0
    if-eqz v2, :cond_5

    new-array v3, v2, [Lorg/eclipse/jdt/core/dom/ITypeBinding;

    :goto_1
    if-lt v1, v2, :cond_3

    iput-object v3, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->typeParameters:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    return-object v3

    :cond_3
    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v4

    if-nez v4, :cond_4

    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeBinding;->NO_TYPE_BINDINGS:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->typeParameters:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    return-object v0

    :cond_4
    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeBinding;->NO_TYPE_BINDINGS:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->typeParameters:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    return-object v0

    :cond_6
    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeBinding;->NO_TYPE_BINDINGS:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->typeParameters:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    return-object v0
.end method

.method public getWildcard()Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->wildcard:Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAnnotation()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isAnnotationType()Z

    move-result v0

    return v0
.end method

.method public isAnonymous()Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isClass()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isInterface()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isAnonymousType()Z

    move-result v0

    return v0
.end method

.method public isArray()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result v0

    return v0
.end method

.method public isAssignmentCompatible(Lorg/eclipse/jdt/core/dom/ITypeBinding;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    instance-of v2, p1, Lorg/eclipse/jdt/core/dom/TypeBinding;

    if-nez v2, :cond_1

    return v1

    :cond_1
    check-cast p1, Lorg/eclipse/jdt/core/dom/TypeBinding;

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/BindingResolver;->scope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v4, p1, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v2, v3, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->isBoxingCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0

    :catch_0
    return v1
.end method

.method public isCapture()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCapture()Z

    move-result v0

    return v0
.end method

.method public isCastCompatible(Lorg/eclipse/jdt/core/dom/ITypeBinding;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/BindingResolver;->scope()Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    instance-of v2, p1, Lorg/eclipse/jdt/core/dom/TypeBinding;

    if-nez v2, :cond_1

    return v0

    :cond_1
    check-cast p1, Lorg/eclipse/jdt/core/dom/TypeBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, v1, v0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->capture(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;II)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    sget-object v2, Lorg/eclipse/jdt/core/dom/TypeBinding;->EXPRESSION:Lorg/eclipse/jdt/internal/compiler/ast/StringLiteral;

    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, p1, v4}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->checkCastTypesCompatibility(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Z

    move-result p1
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method public isClass()Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v0

    const/16 v1, 0x204

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1004

    if-eq v0, v1, :cond_0

    const/16 v1, 0x2004

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isClass()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDeprecated()Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isClass()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isInterface()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isDeprecated()Z

    move-result v0

    return v0
.end method

.method public isEnum()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isEnum()Z

    move-result v0

    return v0
.end method

.method public isEqualTo(Lorg/eclipse/jdt/core/dom/IBinding;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lorg/eclipse/jdt/core/dom/TypeBinding;

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lorg/eclipse/jdt/core/dom/TypeBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->unannotated()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->unannotated()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v0, p1}, Lorg/eclipse/jdt/core/dom/BindingComparator;->isEqual(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    return p1
.end method

.method public isFromSource()Z
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isClass()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isInterface()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isTypeVariable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->declaringElement:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz v2, :cond_1

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isBinaryBinding()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_1
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v2, :cond_2

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isBinaryBinding()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_2
    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    if-eqz v2, :cond_4

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v2, :cond_4

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isBinaryBinding()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isCapture()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/CaptureBinding;->sourceType:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isBinaryBinding()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_4
    return v1

    :cond_5
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v2

    if-eqz v2, :cond_6

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->genericType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isBinaryBinding()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_6
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v2

    if-eqz v2, :cond_8

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-eqz v2, :cond_7

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isBinaryBinding()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_7
    return v1

    :cond_8
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isBinaryBinding()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isGenericType()Z
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isRawType()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public isInterface()Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v0

    const/16 v1, 0x204

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1004

    if-eq v0, v1, :cond_0

    const/16 v1, 0x2004

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isInterface()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isIntersectionType()Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v0

    const v1, 0x8004

    if-eq v0, v1, :cond_0

    const/16 v1, 0x2004

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isLocal()Z
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isClass()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isInterface()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isLocalType()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isMemberType()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public isMember()Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isClass()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isInterface()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isMemberType()Z

    move-result v0

    return v0
.end method

.method public isNested()Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isClass()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isInterface()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNestedType()Z

    move-result v0

    return v0
.end method

.method public isNullType()Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->NULL:Lorg/eclipse/jdt/internal/compiler/lookup/NullTypeBinding;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isParameterizedType()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedTypeWithActualArguments()Z

    move-result v0

    return v0
.end method

.method public isPrimitive()Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isNullType()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRawType()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v0

    return v0
.end method

.method public isRecovered()Z
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/16 v2, 0x80

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

.method public isSubTypeCompatible(Lorg/eclipse/jdt/core/dom/ITypeBinding;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    instance-of v1, p1, Lorg/eclipse/jdt/core/dom/TypeBinding;

    if-nez v1, :cond_2

    return v0

    :cond_2
    check-cast p1, Lorg/eclipse/jdt/core/dom/TypeBinding;

    iget-object v1, p1, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    :cond_3
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method public isSynthetic()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTopLevel()Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isClass()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isInterface()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/TypeBinding;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isNestedType()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isTypeVariable()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCapture()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isUpperbound()Z
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->kind()I

    move-result v0

    const/16 v1, 0x204

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2004

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    return v3

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;->boundKind:I

    if-ne v0, v3, :cond_2

    return v3

    :cond_2
    return v2
.end method

.method public isWildcardType()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isWildcard()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/TypeBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
