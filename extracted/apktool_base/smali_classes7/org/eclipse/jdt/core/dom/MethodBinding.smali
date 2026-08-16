.class Lorg/eclipse/jdt/core/dom/MethodBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/dom/IMethodBinding;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/core/dom/MethodBinding$LambdaMethod;
    }
.end annotation


# static fields
.field private static final NO_TYPE_BINDINGS:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

.field static final NO_VARIABLE_BINDINGS:[Lorg/eclipse/jdt/core/dom/IVariableBinding;

.field private static final VALID_MODIFIERS:I = 0x10d3f


# instance fields
.field private volatile annotations:[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

.field protected binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

.field private volatile declaringClass:Lorg/eclipse/jdt/core/dom/ITypeBinding;

.field private volatile exceptionTypes:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

.field private volatile key:Ljava/lang/String;

.field private volatile name:Ljava/lang/String;

.field private volatile parameterAnnotations:[[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

.field private volatile parameterTypes:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

.field protected resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

.field private volatile returnType:Lorg/eclipse/jdt/core/dom/ITypeBinding;

.field private volatile typeArguments:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

.field private volatile typeParameters:[Lorg/eclipse/jdt/core/dom/ITypeBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lorg/eclipse/jdt/core/dom/ITypeBinding;

    sput-object v1, Lorg/eclipse/jdt/core/dom/MethodBinding;->NO_TYPE_BINDINGS:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    new-array v0, v0, [Lorg/eclipse/jdt/core/dom/IVariableBinding;

    sput-object v0, Lorg/eclipse/jdt/core/dom/MethodBinding;->NO_VARIABLE_BINDINGS:[Lorg/eclipse/jdt/core/dom/IVariableBinding;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/core/dom/BindingResolver;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    iput-object p2, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    return-void
.end method

.method private getUnresolvedJavaElement()Lorg/eclipse/jdt/internal/core/JavaElement;
    .locals 3

    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getPlugin()Lorg/eclipse/core/runtime/Plugin;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    instance-of v2, v0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    check-cast v0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;

    iget-boolean v2, v0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->fromJavaProject:Z

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v2, v0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->workingCopyOwner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->getBindingsToNodesMap()Lorg/eclipse/jdt/internal/core/util/Util$BindingsToNodesMap;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->getUnresolvedJavaElement(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/jdt/internal/core/util/Util$BindingsToNodesMap;)Lorg/eclipse/jdt/internal/core/JavaElement;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public filterTypeAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;
    .locals 13

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    if-eqz v1, :cond_6

    new-array v2, v1, [Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodBinding;->isConstructor()Z

    move-result v3

    move v4, v0

    move v5, v4

    :goto_1
    if-lt v4, v1, :cond_3

    if-ne v5, v1, :cond_1

    return-object v2

    :cond_1
    if-nez v5, :cond_2

    sget-object p1, Lorg/eclipse/jdt/core/dom/AnnotationBinding;->NoAnnotations:[Lorg/eclipse/jdt/core/dom/AnnotationBinding;

    return-object p1

    :cond_2
    new-array p1, v5, [Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    invoke-static {v2, v0, p1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_3
    aget-object v6, p1, v4

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->getAnnotationType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v7

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->getAnnotationTagBits()J

    move-result-wide v7

    if-eqz v3, :cond_4

    const-wide v9, 0x10000000000L

    and-long/2addr v9, v7

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_4

    const-wide v9, 0x20600ff800000000L    # 9.583895004233563E-153

    and-long/2addr v7, v9

    cmp-long v7, v7, v11

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    iget-object v7, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    invoke-virtual {v7, v6}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getAnnotationInstance(Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    move-result-object v6

    if-nez v6, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v7, v5, 0x1

    aput-object v6, v2, v5

    move v5, v7

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    sget-object p1, Lorg/eclipse/jdt/core/dom/AnnotationBinding;->NoAnnotations:[Lorg/eclipse/jdt/core/dom/AnnotationBinding;

    return-object p1
.end method

.method public getAnnotations()[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->annotations:[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->annotations:[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/MethodBinding;->filterTypeAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->annotations:[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    return-object v0
.end method

.method public getDeclaredReceiverType()Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->receiver:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringClass()Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->declaringClass:Lorg/eclipse/jdt/core/dom/ITypeBinding;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->declaringClass:Lorg/eclipse/jdt/core/dom/ITypeBinding;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->declaringClass:Lorg/eclipse/jdt/core/dom/ITypeBinding;

    return-object v0
.end method

.method public getDeclaringMember()Lorg/eclipse/jdt/core/dom/IBinding;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodBinding;->isAnnotationMember()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;->buildDOMValue(Ljava/lang/Object;Lorg/eclipse/jdt/core/dom/BindingResolver;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExceptionTypes()[Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->exceptionTypes:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->exceptionTypes:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    array-length v2, v0

    :goto_0
    if-nez v2, :cond_2

    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodBinding;->NO_TYPE_BINDINGS:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->exceptionTypes:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    return-object v0

    :cond_2
    new-array v3, v2, [Lorg/eclipse/jdt/core/dom/ITypeBinding;

    :goto_1
    if-lt v1, v2, :cond_3

    iput-object v3, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->exceptionTypes:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    return-object v3

    :cond_3
    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v4

    if-nez v4, :cond_4

    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodBinding;->NO_TYPE_BINDINGS:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->exceptionTypes:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    return-object v0

    :cond_4
    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getJavaElement()Lorg/eclipse/jdt/core/IJavaElement;
    .locals 2

    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/MethodBinding;->getUnresolvedJavaElement()Lorg/eclipse/jdt/internal/core/JavaElement;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaElement;->resolved(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)Lorg/eclipse/jdt/internal/core/JavaElement;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->key:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->computeUniqueKey()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->key:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getKind()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getMethodDeclaration()Lorg/eclipse/jdt/core/dom/IMethodBinding;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getMethodBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object v0

    return-object v0
.end method

.method public getModifiers()I
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->getAccessFlags()I

    move-result v0

    const v1, 0x10d3f

    and-int/2addr v0, v1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->name:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodBinding;->getDeclaringClass()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->name:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterAnnotations(I)[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;
    .locals 10

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodBinding;->getParameterTypes()[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/core/dom/MethodBinding;->NO_TYPE_BINDINGS:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    if-ne v0, v1, :cond_0

    sget-object p1, Lorg/eclipse/jdt/core/dom/AnnotationBinding;->NoAnnotations:[Lorg/eclipse/jdt/core/dom/AnnotationBinding;

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->parameterAnnotations:[[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->parameterAnnotations:[[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    aget-object p1, v0, p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->getParameterAnnotations()[[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object p1, Lorg/eclipse/jdt/core/dom/AnnotationBinding;->NoAnnotations:[Lorg/eclipse/jdt/core/dom/AnnotationBinding;

    return-object p1

    :cond_2
    array-length v1, v0

    new-array v2, v1, [[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v1, :cond_3

    iput-object v2, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->parameterAnnotations:[[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->parameterAnnotations:[[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    aget-object p1, v0, p1

    return-object p1

    :cond_3
    aget-object v5, v0, v4

    array-length v6, v5

    new-array v7, v6, [Lorg/eclipse/jdt/core/dom/AnnotationBinding;

    aput-object v7, v2, v4

    move v7, v3

    :goto_1
    if-lt v7, v6, :cond_4

    goto :goto_2

    :cond_4
    iget-object v8, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    aget-object v9, v5, v7

    invoke-virtual {v8, v9}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getAnnotationInstance(Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    move-result-object v8

    if-nez v8, :cond_5

    sget-object v5, Lorg/eclipse/jdt/core/dom/AnnotationBinding;->NoAnnotations:[Lorg/eclipse/jdt/core/dom/AnnotationBinding;

    aput-object v5, v2, v4

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    aget-object v9, v2, v4

    aput-object v8, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method public getParameterTypes()[Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->parameterTypes:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->parameterTypes:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    array-length v2, v0

    :goto_0
    if-nez v2, :cond_2

    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodBinding;->NO_TYPE_BINDINGS:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->parameterTypes:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    return-object v0

    :cond_2
    new-array v3, v2, [Lorg/eclipse/jdt/core/dom/ITypeBinding;

    :goto_1
    if-lt v1, v2, :cond_3

    iput-object v3, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->parameterTypes:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    return-object v3

    :cond_3
    aget-object v4, v0, v1

    if-eqz v4, :cond_5

    iget-object v5, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    invoke-virtual {v5, v4}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v4

    if-nez v4, :cond_4

    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodBinding;->NO_TYPE_BINDINGS:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->parameterTypes:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    return-object v0

    :cond_4
    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Report method binding where a parameter is null:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodBinding;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/eclipse/jdt/internal/core/util/Util;->log(Ljava/lang/Throwable;Ljava/lang/String;)V

    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodBinding;->NO_TYPE_BINDINGS:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->parameterTypes:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    return-object v0
.end method

.method public getReturnType()Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->returnType:Lorg/eclipse/jdt/core/dom/ITypeBinding;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->returnType:Lorg/eclipse/jdt/core/dom/ITypeBinding;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->returnType:Lorg/eclipse/jdt/core/dom/ITypeBinding;

    return-object v0
.end method

.method public getSyntheticOuterLocals()[Lorg/eclipse/jdt/core/dom/IVariableBinding;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodBinding;->NO_VARIABLE_BINDINGS:[Lorg/eclipse/jdt/core/dom/IVariableBinding;

    return-object v0
.end method

.method public getTypeArguments()[Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->typeArguments:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->typeArguments:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    if-eqz v1, :cond_4

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    array-length v2, v0

    :goto_0
    if-eqz v2, :cond_4

    new-array v3, v2, [Lorg/eclipse/jdt/core/dom/ITypeBinding;

    :goto_1
    if-lt v1, v2, :cond_2

    iput-object v3, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->typeArguments:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    return-object v3

    :cond_2
    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v4

    if-nez v4, :cond_3

    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodBinding;->NO_TYPE_BINDINGS:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->typeArguments:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    return-object v0

    :cond_3
    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodBinding;->NO_TYPE_BINDINGS:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->typeArguments:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    return-object v0
.end method

.method public getTypeParameters()[Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->typeParameters:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->typeParameters:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    array-length v2, v0

    :goto_0
    if-nez v2, :cond_2

    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodBinding;->NO_TYPE_BINDINGS:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->typeParameters:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    return-object v0

    :cond_2
    new-array v3, v2, [Lorg/eclipse/jdt/core/dom/ITypeBinding;

    :goto_1
    if-lt v1, v2, :cond_3

    iput-object v3, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->typeParameters:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    return-object v3

    :cond_3
    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v4

    if-nez v4, :cond_4

    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodBinding;->NO_TYPE_BINDINGS:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->typeParameters:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    return-object v0

    :cond_4
    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public isAnnotationMember()Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MethodBinding;->getDeclaringClass()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->isAnnotation()Z

    move-result v0

    return v0
.end method

.method public isConstructor()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v0

    return v0
.end method

.method public isDefaultConstructor()Z
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isRawType()Z

    move-result v1

    const/4 v2, 0x1

    const/high16 v3, 0x4000000

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->genericType()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isBinaryBinding()Z

    move-result v0

    if-eqz v0, :cond_0

    return v4

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_1

    return v2

    :cond_1
    return v4

    :cond_2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isBinaryBinding()Z

    move-result v0

    if-eqz v0, :cond_3

    return v4

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_4

    return v2

    :cond_4
    return v4
.end method

.method public isDeprecated()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isDeprecated()Z

    move-result v0

    return v0
.end method

.method public isEqualTo(Lorg/eclipse/jdt/core/dom/IBinding;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    instance-of v1, p1, Lorg/eclipse/jdt/core/dom/MethodBinding;

    if-nez v1, :cond_2

    return v0

    :cond_2
    check-cast p1, Lorg/eclipse/jdt/core/dom/MethodBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/core/dom/MethodBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-static {v0, p1}, Lorg/eclipse/jdt/core/dom/BindingComparator;->isEqual(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result p1

    return p1
.end method

.method public isGenericMethod()Z
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->typeParameters:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->typeParameters:[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    array-length v0, v0

    if-lez v0, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public isParameterizedMethod()Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->isRaw:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRawMethod()Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->isRaw:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRecovered()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSubsignature(Lorg/eclipse/jdt/core/dom/IMethodBinding;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/BindingResolver;->lookupEnvironment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->methodVerifier()Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    check-cast p1, Lorg/eclipse/jdt/core/dom/MethodBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/core/dom/MethodBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v1, v2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->isMethodSubsignature(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result p1
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    return v0
.end method

.method public isSynthetic()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isSynthetic()Z

    move-result v0

    return v0
.end method

.method public isVarargs()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isVarargs()Z

    move-result v0

    return v0
.end method

.method public overrides(Lorg/eclipse/jdt/core/dom/IMethodBinding;)Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/BindingResolver;->lookupEnvironment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->methodVerifier()Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    check-cast p1, Lorg/eclipse/jdt/core/dom/MethodBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/core/dom/MethodBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;->doesMethodOverride(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
