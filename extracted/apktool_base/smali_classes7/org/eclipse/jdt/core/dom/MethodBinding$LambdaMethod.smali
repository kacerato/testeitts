.class Lorg/eclipse/jdt/core/dom/MethodBinding$LambdaMethod;
.super Lorg/eclipse/jdt/core/dom/MethodBinding;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/core/dom/MethodBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LambdaMethod"
.end annotation


# instance fields
.field private declaringMember:Lorg/eclipse/jdt/core/dom/IBinding;

.field private implementation:Lorg/eclipse/jdt/core/dom/MethodBinding;

.field private syntheticOuterLocalVariables:[Lorg/eclipse/jdt/core/dom/IVariableBinding;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/core/dom/IBinding;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/MethodBinding;-><init>(Lorg/eclipse/jdt/core/dom/BindingResolver;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    new-instance p2, Lorg/eclipse/jdt/core/dom/MethodBinding;

    invoke-direct {p2, p1, p3}, Lorg/eclipse/jdt/core/dom/MethodBinding;-><init>(Lorg/eclipse/jdt/core/dom/BindingResolver;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    iput-object p2, p0, Lorg/eclipse/jdt/core/dom/MethodBinding$LambdaMethod;->implementation:Lorg/eclipse/jdt/core/dom/MethodBinding;

    iput-object p4, p0, Lorg/eclipse/jdt/core/dom/MethodBinding$LambdaMethod;->declaringMember:Lorg/eclipse/jdt/core/dom/IBinding;

    return-void
.end method


# virtual methods
.method public getAnnotations()[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding$LambdaMethod;->implementation:Lorg/eclipse/jdt/core/dom/MethodBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/MethodBinding;->getAnnotations()[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringMember()Lorg/eclipse/jdt/core/dom/IBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding$LambdaMethod;->declaringMember:Lorg/eclipse/jdt/core/dom/IBinding;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding$LambdaMethod;->implementation:Lorg/eclipse/jdt/core/dom/MethodBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/MethodBinding;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMethodDeclaration()Lorg/eclipse/jdt/core/dom/IMethodBinding;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/MethodBinding;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getMethodBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object v0

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/core/dom/MethodBinding;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, -0x401

    return v0
.end method

.method public getParameterAnnotations(I)[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding$LambdaMethod;->implementation:Lorg/eclipse/jdt/core/dom/MethodBinding;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/MethodBinding;->getParameterAnnotations(I)[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    move-result-object p1

    return-object p1
.end method

.method public getParameterTypes()[Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding$LambdaMethod;->implementation:Lorg/eclipse/jdt/core/dom/MethodBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/MethodBinding;->getParameterTypes()[Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    return-object v0
.end method

.method public getSyntheticOuterLocals()[Lorg/eclipse/jdt/core/dom/IVariableBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MethodBinding$LambdaMethod;->syntheticOuterLocalVariables:[Lorg/eclipse/jdt/core/dom/IVariableBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodBinding;->NO_VARIABLE_BINDINGS:[Lorg/eclipse/jdt/core/dom/IVariableBinding;

    return-object v0
.end method

.method public setSyntheticOuterLocals([Lorg/eclipse/jdt/core/dom/IVariableBinding;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/MethodBinding$LambdaMethod;->syntheticOuterLocalVariables:[Lorg/eclipse/jdt/core/dom/IVariableBinding;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-super {p0}, Lorg/eclipse/jdt/core/dom/MethodBinding;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "public abstract "

    const-string v2, "public "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
