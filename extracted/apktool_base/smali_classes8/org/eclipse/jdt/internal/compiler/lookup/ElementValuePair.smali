.class public Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair$UnresolvedEnumConstant;
    }
.end annotation


# instance fields
.field public binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

.field name:[C

.field public value:Ljava/lang/Object;


# direct methods
.method public constructor <init>([CLjava/lang/Object;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;->name:[C

    .line 4
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;->value:Ljava/lang/Object;

    .line 5
    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    return-void
.end method

.method public constructor <init>([CLorg/eclipse/jdt/internal/compiler/ast/Expression;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V
    .locals 0

    .line 1
    invoke-static {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;->getValue(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;-><init>([CLjava/lang/Object;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    return-void
.end method

.method public static getValue(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->constant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eqz v1, :cond_1

    .line 2
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->NotAConstant:Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    if-eq v1, v2, :cond_1

    return-object v1

    .line 3
    :cond_1
    instance-of v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    if-eqz v1, :cond_2

    .line 4
    check-cast p0, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/Annotation;->getCompilerAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p0

    return-object p0

    .line 5
    :cond_2
    instance-of v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    if-eqz v1, :cond_5

    .line 6
    check-cast p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ArrayInitializer;->expressions:[Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    const/4 p0, 0x0

    if-nez v1, :cond_3

    move v2, p0

    goto :goto_0

    .line 7
    :cond_3
    array-length v0, v1

    move v2, v0

    .line 8
    :goto_0
    new-array v3, v2, [Ljava/lang/Object;

    :goto_1
    if-lt p0, v2, :cond_4

    return-object v3

    .line 9
    :cond_4
    aget-object v0, v1, p0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;->getValue(Lorg/eclipse/jdt/internal/compiler/ast/Expression;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 10
    :cond_5
    instance-of v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ClassLiteralAccess;

    if-eqz v1, :cond_6

    .line 11
    check-cast p0, Lorg/eclipse/jdt/internal/compiler/ast/ClassLiteralAccess;

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ClassLiteralAccess;->targetType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-object p0

    .line 12
    :cond_6
    instance-of v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/Reference;

    if-eqz v1, :cond_9

    .line 13
    instance-of v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;

    if-eqz v1, :cond_7

    .line 14
    check-cast p0, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/ast/FieldReference;->fieldBinding()Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object p0

    goto :goto_2

    .line 15
    :cond_7
    instance-of v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    if-eqz v1, :cond_8

    .line 16
    check-cast p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;

    iget-object p0, p0, Lorg/eclipse/jdt/internal/compiler/ast/NameReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/Binding;

    if-eqz p0, :cond_8

    .line 17
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->kind()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 18
    check-cast p0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    goto :goto_2

    :cond_8
    move-object p0, v0

    :goto_2
    if-eqz p0, :cond_9

    .line 19
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->modifiers:I

    and-int/lit16 v1, v1, 0x4000

    if-lez v1, :cond_9

    return-object p0

    :cond_9
    return-object v0
.end method


# virtual methods
.method public getMethodBinding()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    return-object v0
.end method

.method public getName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;->name:[C

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 4

    .line 20
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;->value:Ljava/lang/Object;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair$UnresolvedEnumConstant;

    if-eqz v1, :cond_0

    .line 21
    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair$UnresolvedEnumConstant;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair$UnresolvedEnumConstant;->getResolved()Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;->value:Ljava/lang/Object;

    goto :goto_1

    .line 22
    :cond_0
    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 23
    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 24
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_1

    goto :goto_1

    .line 25
    :cond_1
    aget-object v2, v0, v1

    .line 26
    instance-of v3, v2, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair$UnresolvedEnumConstant;

    if-eqz v3, :cond_2

    .line 27
    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair$UnresolvedEnumConstant;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair$UnresolvedEnumConstant;->getResolved()Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 28
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public setMethodBinding(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;->value:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;->name:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
