.class Lorg/eclipse/jdt/core/dom/DefaultValuePairBinding;
.super Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;
.source "SourceFile"


# instance fields
.field private method:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/core/dom/BindingResolver;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;Lorg/eclipse/jdt/core/dom/BindingResolver;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/DefaultValuePairBinding;->method:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;->buildDOMValue(Ljava/lang/Object;Lorg/eclipse/jdt/core/dom/BindingResolver;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;->value:Ljava/lang/Object;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isArrayType()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;->value:Ljava/lang/Object;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;->value:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;->value:Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getMethodBinding()Lorg/eclipse/jdt/core/dom/IMethodBinding;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;->bindingResolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/DefaultValuePairBinding;->method:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getMethodBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/DefaultValuePairBinding;->method:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public isDefault()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isDeprecated()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultValuePairBinding;->method:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isDeprecated()Z

    move-result v0

    return v0
.end method
