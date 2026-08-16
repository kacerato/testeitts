.class Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/dom/IMemberValuePairBinding;


# static fields
.field private static final EmptyArray:[Ljava/lang/Object;

.field static final NoPair:[Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;

.field private static final NoValue:Ljava/lang/Object;


# instance fields
.field protected bindingResolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

.field private internalPair:Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

.field protected value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;

    sput-object v1, Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;->NoPair:[Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;->NoValue:Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;->EmptyArray:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;Lorg/eclipse/jdt/core/dom/BindingResolver;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;->value:Ljava/lang/Object;

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;->internalPair:Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    iput-object p2, p0, Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;->bindingResolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    return-void
.end method

.method public static appendValue(Ljava/lang/Object;Ljava/lang/StringBuffer;)V
    .locals 3

    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    const/16 p0, 0x7b

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    array-length v1, v0

    const/4 p0, 0x0

    :goto_0
    if-lt p0, v1, :cond_0

    const/16 p0, 0x7d

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    if-eqz p0, :cond_1

    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    aget-object v2, v0, p0

    invoke-static {v2, p1}, Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;->appendValue(Ljava/lang/Object;Ljava/lang/StringBuffer;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lorg/eclipse/jdt/core/dom/ITypeBinding;

    if-eqz v0, :cond_3

    check-cast p0, Lorg/eclipse/jdt/core/dom/ITypeBinding;

    invoke-interface {p0}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, ".class"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :goto_1
    return-void
.end method

.method public static buildDOMValue(Ljava/lang/Object;Lorg/eclipse/jdt/core/dom/BindingResolver;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eqz v1, :cond_1

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->typeID()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->stringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_2
    new-instance p1, Ljava/lang/Float;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p0

    invoke-direct {p1, p0}, Ljava/lang/Float;-><init>(F)V

    return-object p1

    :pswitch_3
    new-instance p1, Ljava/lang/Double;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/lang/Double;-><init>(D)V

    return-object p1

    :pswitch_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v1, :cond_2

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getTypeBinding(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    if-eqz v1, :cond_3

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getAnnotationInstance(Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz v1, :cond_4

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getVariableBinding(Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;)Lorg/eclipse/jdt/core/dom/IVariableBinding;

    move-result-object p0

    return-object p0

    :cond_4
    instance-of v1, p0, [Ljava/lang/Object;

    if-eqz v1, :cond_7

    check-cast p0, [Ljava/lang/Object;

    array-length v1, p0

    if-nez v1, :cond_5

    sget-object v0, Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;->EmptyArray:[Ljava/lang/Object;

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_5
    new-array v0, v1, [Ljava/lang/Object;

    goto :goto_0

    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-lt v0, v1, :cond_6

    return-object v2

    :cond_6
    aget-object v3, p0, v0

    invoke-static {v3, p1}, Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;->buildDOMValue(Ljava/lang/Object;Lorg/eclipse/jdt/core/dom/BindingResolver;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private init()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;->internalPair:Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;->bindingResolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;->buildDOMValue(Ljava/lang/Object;Lorg/eclipse/jdt/core/dom/BindingResolver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;->NoValue:Ljava/lang/Object;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;->value:Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;->getMethodBinding()Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/dom/IMethodBinding;->getReturnType()Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/dom/ITypeBinding;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;->value:Ljava/lang/Object;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;->value:Ljava/lang/Object;

    :cond_1
    return-void
.end method


# virtual methods
.method public getAnnotations()[Lorg/eclipse/jdt/core/dom/IAnnotationBinding;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/AnnotationBinding;->NoAnnotations:[Lorg/eclipse/jdt/core/dom/AnnotationBinding;

    return-object v0
.end method

.method public getJavaElement()Lorg/eclipse/jdt/core/IJavaElement;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getKind()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public getMethodBinding()Lorg/eclipse/jdt/core/dom/IMethodBinding;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;->bindingResolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;->internalPair:Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;->getMethodBinding()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/BindingResolver;->getMethodBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object v0

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;->internalPair:Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;->getName()[C

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    :goto_0
    return-object v1
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;->init()V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;->value:Ljava/lang/Object;

    sget-object v1, Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;->NoValue:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public internalName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;->internalPair:Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;->getName()[C

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public isDefault()Z
    .locals 4

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;->getMethodBinding()Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jdt/core/dom/IMethodBinding;->getDefaultValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v0, Lorg/eclipse/jdt/core/dom/IBinding;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    instance-of v2, v1, Lorg/eclipse/jdt/core/dom/IBinding;

    if-eqz v2, :cond_0

    check-cast v0, Lorg/eclipse/jdt/core/dom/IBinding;

    check-cast v1, Lorg/eclipse/jdt/core/dom/IBinding;

    invoke-interface {v0, v1}, Lorg/eclipse/jdt/core/dom/IBinding;->isEqualTo(Lorg/eclipse/jdt/core/dom/IBinding;)Z

    move-result v0

    return v0

    :cond_0
    return v3

    :cond_1
    if-nez v1, :cond_2

    return v3

    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDeprecated()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;->internalPair:Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;->getMethodBinding()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isDeprecated()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public isEqualTo(Lorg/eclipse/jdt/core/dom/IBinding;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/IBinding;->getKind()I

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    return v3

    :cond_1
    check-cast p1, Lorg/eclipse/jdt/core/dom/IMemberValuePairBinding;

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;->getMethodBinding()Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object v1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/IMemberValuePairBinding;->getMethodBinding()Lorg/eclipse/jdt/core/dom/IMethodBinding;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/eclipse/jdt/core/dom/IBinding;->isEqualTo(Lorg/eclipse/jdt/core/dom/IBinding;)Z

    move-result v1

    if-nez v1, :cond_2

    return v3

    :cond_2
    invoke-interface {p1}, Lorg/eclipse/jdt/core/dom/IMemberValuePairBinding;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    if-nez p1, :cond_3

    return v0

    :cond_3
    return v3

    :cond_4
    instance-of v2, v1, Lorg/eclipse/jdt/core/dom/IBinding;

    if-eqz v2, :cond_6

    instance-of v0, p1, Lorg/eclipse/jdt/core/dom/IBinding;

    if-eqz v0, :cond_5

    check-cast v1, Lorg/eclipse/jdt/core/dom/IBinding;

    check-cast p1, Lorg/eclipse/jdt/core/dom/IBinding;

    invoke-interface {v1, p1}, Lorg/eclipse/jdt/core/dom/IBinding;->isEqualTo(Lorg/eclipse/jdt/core/dom/IBinding;)Z

    move-result p1

    return p1

    :cond_5
    return v3

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_7

    return v3

    :cond_7
    move-object v2, v1

    check-cast v2, [Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, [Ljava/lang/Object;

    array-length v5, v2

    array-length p1, v4

    if-eq v5, p1, :cond_8

    return v3

    :cond_8
    move p1, v3

    :goto_0
    if-lt p1, v5, :cond_9

    return v0

    :cond_9
    aget-object v1, v2, p1

    aget-object v6, v4, p1

    instance-of v7, v1, Lorg/eclipse/jdt/core/dom/IBinding;

    if-eqz v7, :cond_b

    instance-of v7, v6, Lorg/eclipse/jdt/core/dom/IBinding;

    if-nez v7, :cond_a

    return v3

    :cond_a
    check-cast v1, Lorg/eclipse/jdt/core/dom/IBinding;

    check-cast v6, Lorg/eclipse/jdt/core/dom/IBinding;

    invoke-interface {v1, v6}, Lorg/eclipse/jdt/core/dom/IBinding;->isEqualTo(Lorg/eclipse/jdt/core/dom/IBinding;)Z

    move-result v1

    if-nez v1, :cond_c

    return v3

    :cond_b
    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v3

    :cond_c
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_d
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isRecovered()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSynthetic()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/eclipse/jdt/core/dom/MemberValuePairBinding;->appendValue(Ljava/lang/Object;Ljava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
