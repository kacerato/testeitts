.class public final Lcom/android/tools/r8/references/Reference;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static BOOL:Lcom/android/tools/r8/references/PrimitiveReference; = null

.field public static BYTE:Lcom/android/tools/r8/references/PrimitiveReference; = null

.field public static CHAR:Lcom/android/tools/r8/references/PrimitiveReference; = null

.field public static DOUBLE:Lcom/android/tools/r8/references/PrimitiveReference; = null

.field public static FLOAT:Lcom/android/tools/r8/references/PrimitiveReference; = null

.field public static INT:Lcom/android/tools/r8/references/PrimitiveReference; = null

.field public static LONG:Lcom/android/tools/r8/references/PrimitiveReference; = null

.field public static SHORT:Lcom/android/tools/r8/references/PrimitiveReference; = null

.field static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/tools/r8/references/PrimitiveReference;->a:Lcom/android/tools/r8/references/a;

    sput-object v0, Lcom/android/tools/r8/references/Reference;->BOOL:Lcom/android/tools/r8/references/PrimitiveReference;

    sget-object v0, Lcom/android/tools/r8/references/PrimitiveReference;->b:Lcom/android/tools/r8/references/b;

    sput-object v0, Lcom/android/tools/r8/references/Reference;->BYTE:Lcom/android/tools/r8/references/PrimitiveReference;

    sget-object v0, Lcom/android/tools/r8/references/PrimitiveReference;->c:Lcom/android/tools/r8/references/c;

    sput-object v0, Lcom/android/tools/r8/references/Reference;->CHAR:Lcom/android/tools/r8/references/PrimitiveReference;

    sget-object v0, Lcom/android/tools/r8/references/PrimitiveReference;->d:Lcom/android/tools/r8/references/d;

    sput-object v0, Lcom/android/tools/r8/references/Reference;->SHORT:Lcom/android/tools/r8/references/PrimitiveReference;

    sget-object v0, Lcom/android/tools/r8/references/PrimitiveReference;->e:Lcom/android/tools/r8/references/e;

    sput-object v0, Lcom/android/tools/r8/references/Reference;->INT:Lcom/android/tools/r8/references/PrimitiveReference;

    sget-object v0, Lcom/android/tools/r8/references/PrimitiveReference;->f:Lcom/android/tools/r8/references/f;

    sput-object v0, Lcom/android/tools/r8/references/Reference;->FLOAT:Lcom/android/tools/r8/references/PrimitiveReference;

    sget-object v0, Lcom/android/tools/r8/references/PrimitiveReference;->g:Lcom/android/tools/r8/references/g;

    sput-object v0, Lcom/android/tools/r8/references/Reference;->LONG:Lcom/android/tools/r8/references/PrimitiveReference;

    sget-object v0, Lcom/android/tools/r8/references/PrimitiveReference;->h:Lcom/android/tools/r8/references/h;

    sput-object v0, Lcom/android/tools/r8/references/Reference;->DOUBLE:Lcom/android/tools/r8/references/PrimitiveReference;

    return-void
.end method

.method public static array(Lcom/android/tools/r8/references/TypeReference;I)Lcom/android/tools/r8/references/ArrayReference;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/tools/r8/references/ArrayReference;->a(Lcom/android/tools/r8/references/TypeReference;I)Lcom/android/tools/r8/references/ArrayReference;

    move-result-object p0

    return-object p0
.end method

.method public static arrayFromDescriptor(Ljava/lang/String;)Lcom/android/tools/r8/references/ArrayReference;
    .locals 0

    invoke-static {p0}, Lcom/android/tools/r8/references/ArrayReference;->a(Ljava/lang/String;)Lcom/android/tools/r8/references/ArrayReference;

    move-result-object p0

    return-object p0
.end method

.method public static classConstructor(Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/references/MethodReference;
    .locals 3

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const-string v1, "<clinit>"

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lcom/android/tools/r8/references/Reference;->method(Lcom/android/tools/r8/references/ClassReference;Ljava/lang/String;Ljava/util/List;Lcom/android/tools/r8/references/TypeReference;)Lcom/android/tools/r8/references/MethodReference;

    move-result-object p0

    return-object p0
.end method

.method public static classFromBinaryName(Ljava/lang/String;)Lcom/android/tools/r8/references/ClassReference;
    .locals 0

    invoke-static {p0}, Lcom/android/tools/r8/internal/Bl;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/references/Reference;->classFromDescriptor(Ljava/lang/String;)Lcom/android/tools/r8/references/ClassReference;

    move-result-object p0

    return-object p0
.end method

.method public static classFromClass(Ljava/lang/Class;)Lcom/android/tools/r8/references/ClassReference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/android/tools/r8/references/ClassReference;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/references/Reference;->classFromTypeName(Ljava/lang/String;)Lcom/android/tools/r8/references/ClassReference;

    move-result-object p0

    return-object p0
.end method

.method public static classFromDescriptor(Ljava/lang/String;)Lcom/android/tools/r8/references/ClassReference;
    .locals 0

    invoke-static {p0}, Lcom/android/tools/r8/references/ClassReference;->a(Ljava/lang/String;)Lcom/android/tools/r8/references/ClassReference;

    move-result-object p0

    return-object p0
.end method

.method public static classFromTypeName(Ljava/lang/String;)Lcom/android/tools/r8/references/ClassReference;
    .locals 0

    invoke-static {p0}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/references/Reference;->classFromDescriptor(Ljava/lang/String;)Lcom/android/tools/r8/references/ClassReference;

    move-result-object p0

    return-object p0
.end method

.method public static field(Lcom/android/tools/r8/references/ClassReference;Ljava/lang/String;Lcom/android/tools/r8/references/TypeReference;)Lcom/android/tools/r8/references/FieldReference;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/references/FieldReference;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/references/FieldReference;-><init>(Lcom/android/tools/r8/references/ClassReference;Ljava/lang/String;Lcom/android/tools/r8/references/TypeReference;)V

    return-object v0
.end method

.method public static fieldFromField(Ljava/lang/reflect/Field;)Lcom/android/tools/r8/references/FieldReference;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p0

    invoke-static {v0}, Lcom/android/tools/r8/references/Reference;->classFromClass(Ljava/lang/Class;)Lcom/android/tools/r8/references/ClassReference;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/references/Reference;->typeFromDescriptor(Ljava/lang/String;)Lcom/android/tools/r8/references/TypeReference;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/android/tools/r8/references/Reference;->field(Lcom/android/tools/r8/references/ClassReference;Ljava/lang/String;Lcom/android/tools/r8/references/TypeReference;)Lcom/android/tools/r8/references/FieldReference;

    move-result-object p0

    return-object p0
.end method

.method public static method(Lcom/android/tools/r8/references/ClassReference;Ljava/lang/String;Ljava/util/List;Lcom/android/tools/r8/references/TypeReference;)Lcom/android/tools/r8/references/MethodReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/references/ClassReference;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/references/TypeReference;",
            ">;",
            "Lcom/android/tools/r8/references/TypeReference;",
            ")",
            "Lcom/android/tools/r8/references/MethodReference;"
        }
    .end annotation

    new-instance v0, Lcom/android/tools/r8/references/MethodReference;

    invoke-static {p2}, Lcom/android/tools/r8/internal/hC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/hC;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/tools/r8/references/MethodReference;-><init>(Lcom/android/tools/r8/references/ClassReference;Ljava/lang/String;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/references/TypeReference;)V

    return-object v0
.end method

.method public static methodFromDescriptor(Lcom/android/tools/r8/references/ClassReference;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/references/MethodReference;
    .locals 8

    .line 14
    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    const/4 v0, 0x4

    .line 15
    new-array v0, v0, [Ljava/lang/Object;

    .line 16
    invoke-static {p2}, Lcom/android/tools/r8/internal/Bl;->e(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v5, v1, v3

    .line 17
    invoke-static {v5}, Lcom/android/tools/r8/references/Reference;->typeFromDescriptor(Ljava/lang/String;)Lcom/android/tools/r8/references/TypeReference;

    move-result-object v5

    .line 18
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v6, v4, 0x1

    .line 19
    array-length v7, v0

    if-ge v7, v6, :cond_0

    .line 20
    array-length v7, v0

    invoke-static {v7, v6}, Lcom/android/tools/r8/internal/WB;->a(II)I

    move-result v7

    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 21
    :cond_0
    aput-object v5, v0, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_0

    .line 22
    :cond_1
    invoke-static {p2}, Lcom/android/tools/r8/internal/Bl;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 23
    invoke-static {v4, v0}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    .line 24
    const-string v1, "V"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    invoke-static {p2}, Lcom/android/tools/r8/references/Reference;->typeFromDescriptor(Ljava/lang/String;)Lcom/android/tools/r8/references/TypeReference;

    move-result-object p2

    .line 25
    :goto_1
    invoke-static {p0, p1, v0, p2}, Lcom/android/tools/r8/references/Reference;->method(Lcom/android/tools/r8/references/ClassReference;Ljava/lang/String;Ljava/util/List;Lcom/android/tools/r8/references/TypeReference;)Lcom/android/tools/r8/references/MethodReference;

    move-result-object p0

    return-object p0
.end method

.method public static methodFromDescriptor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/references/MethodReference;
    .locals 8

    .line 1
    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Lcom/android/tools/r8/internal/Bl;->e(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v5, v1, v3

    .line 4
    invoke-static {v5}, Lcom/android/tools/r8/references/Reference;->typeFromDescriptor(Ljava/lang/String;)Lcom/android/tools/r8/references/TypeReference;

    move-result-object v5

    .line 5
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v6, v4, 0x1

    .line 6
    array-length v7, v0

    if-ge v7, v6, :cond_0

    .line 7
    array-length v7, v0

    invoke-static {v7, v6}, Lcom/android/tools/r8/internal/WB;->a(II)I

    move-result v7

    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 8
    :cond_0
    aput-object v5, v0, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {p2}, Lcom/android/tools/r8/internal/Bl;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 10
    invoke-static {p0}, Lcom/android/tools/r8/references/Reference;->classFromDescriptor(Ljava/lang/String;)Lcom/android/tools/r8/references/ClassReference;

    move-result-object p0

    .line 11
    invoke-static {v4, v0}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    .line 12
    const-string v1, "V"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    invoke-static {p2}, Lcom/android/tools/r8/references/Reference;->typeFromDescriptor(Ljava/lang/String;)Lcom/android/tools/r8/references/TypeReference;

    move-result-object p2

    .line 13
    :goto_1
    invoke-static {p0, p1, v0, p2}, Lcom/android/tools/r8/references/Reference;->method(Lcom/android/tools/r8/references/ClassReference;Ljava/lang/String;Ljava/util/List;Lcom/android/tools/r8/references/TypeReference;)Lcom/android/tools/r8/references/MethodReference;

    move-result-object p0

    return-object p0
.end method

.method public static methodFromMethod(Ljava/lang/reflect/Constructor;)Lcom/android/tools/r8/references/MethodReference;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)",
            "Lcom/android/tools/r8/references/MethodReference;"
        }
    .end annotation

    .line 22
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 23
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    .line 24
    sget v1, Lcom/android/tools/r8/internal/hC;->c:I

    const/4 v1, 0x4

    .line 25
    new-array v1, v1, [Ljava/lang/Object;

    .line 26
    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v5, p0, v3

    .line 27
    invoke-virtual {v5}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/tools/r8/references/Reference;->typeFromDescriptor(Ljava/lang/String;)Lcom/android/tools/r8/references/TypeReference;

    move-result-object v5

    .line 28
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v6, v4, 0x1

    .line 29
    array-length v7, v1

    if-ge v7, v6, :cond_0

    .line 30
    array-length v7, v1

    invoke-static {v7, v6}, Lcom/android/tools/r8/internal/WB;->a(II)I

    move-result v7

    invoke-static {v1, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    .line 31
    :cond_0
    aput-object v5, v1, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_0

    .line 32
    :cond_1
    invoke-static {v0}, Lcom/android/tools/r8/references/Reference;->classFromClass(Ljava/lang/Class;)Lcom/android/tools/r8/references/ClassReference;

    move-result-object p0

    .line 33
    invoke-static {v4, v1}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    const/4 v1, 0x0

    .line 34
    const-string v2, "<init>"

    invoke-static {p0, v2, v0, v1}, Lcom/android/tools/r8/references/Reference;->method(Lcom/android/tools/r8/references/ClassReference;Ljava/lang/String;Ljava/util/List;Lcom/android/tools/r8/references/TypeReference;)Lcom/android/tools/r8/references/MethodReference;

    move-result-object p0

    return-object p0
.end method

.method public static methodFromMethod(Ljava/lang/reflect/Executable;)Lcom/android/tools/r8/references/MethodReference;
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Ljava/lang/reflect/Constructor;

    invoke-static {p0}, Lcom/android/tools/r8/references/Reference;->methodFromMethod(Ljava/lang/reflect/Constructor;)Lcom/android/tools/r8/references/MethodReference;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/references/Reference;->a:Z

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 4
    :cond_2
    :goto_0
    check-cast p0, Ljava/lang/reflect/Method;

    invoke-static {p0}, Lcom/android/tools/r8/references/Reference;->methodFromMethod(Ljava/lang/reflect/Method;)Lcom/android/tools/r8/references/MethodReference;

    move-result-object p0

    return-object p0
.end method

.method public static methodFromMethod(Ljava/lang/reflect/Method;)Lcom/android/tools/r8/references/MethodReference;
    .locals 10

    .line 5
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    .line 7
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 8
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    .line 9
    sget v3, Lcom/android/tools/r8/internal/hC;->c:I

    const/4 v3, 0x4

    .line 10
    new-array v3, v3, [Ljava/lang/Object;

    .line 11
    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v7, v2, v5

    .line 12
    invoke-virtual {v7}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/tools/r8/references/Reference;->typeFromDescriptor(Ljava/lang/String;)Lcom/android/tools/r8/references/TypeReference;

    move-result-object v7

    .line 13
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v8, v6, 0x1

    .line 14
    array-length v9, v3

    if-ge v9, v8, :cond_0

    .line 15
    array-length v9, v3

    invoke-static {v9, v8}, Lcom/android/tools/r8/internal/WB;->a(II)I

    move-result v9

    invoke-static {v3, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    .line 16
    :cond_0
    aput-object v7, v3, v6

    add-int/lit8 v5, v5, 0x1

    move v6, v8

    goto :goto_0

    .line 17
    :cond_1
    invoke-static {v1}, Lcom/android/tools/r8/references/Reference;->classFromClass(Ljava/lang/Class;)Lcom/android/tools/r8/references/ClassReference;

    move-result-object v1

    .line 18
    invoke-static {v6, v3}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v2

    .line 19
    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v3, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    .line 20
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/references/Reference;->typeFromDescriptor(Ljava/lang/String;)Lcom/android/tools/r8/references/TypeReference;

    move-result-object p0

    .line 21
    :goto_1
    invoke-static {v1, v0, v2, p0}, Lcom/android/tools/r8/references/Reference;->method(Lcom/android/tools/r8/references/ClassReference;Ljava/lang/String;Ljava/util/List;Lcom/android/tools/r8/references/TypeReference;)Lcom/android/tools/r8/references/MethodReference;

    move-result-object p0

    return-object p0
.end method

.method public static packageFromPackage(Ljava/lang/Package;)Lcom/android/tools/r8/references/PackageReference;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/references/PackageReference;

    invoke-virtual {p0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/references/PackageReference;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static packageFromString(Ljava/lang/String;)Lcom/android/tools/r8/references/PackageReference;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/references/PackageReference;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/references/PackageReference;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static primitiveFromDescriptor(Ljava/lang/String;)Lcom/android/tools/r8/references/PrimitiveReference;
    .locals 0

    invoke-static {p0}, Lcom/android/tools/r8/references/PrimitiveReference;->a(Ljava/lang/String;)Lcom/android/tools/r8/references/PrimitiveReference;

    move-result-object p0

    return-object p0
.end method

.method public static returnTypeFromDescriptor(Ljava/lang/String;)Lcom/android/tools/r8/references/TypeReference;
    .locals 1

    const-string v0, "V"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/android/tools/r8/references/Reference;->typeFromDescriptor(Ljava/lang/String;)Lcom/android/tools/r8/references/TypeReference;

    move-result-object p0

    return-object p0
.end method

.method public static returnTypeFromTypeName(Ljava/lang/String;)Lcom/android/tools/r8/references/TypeReference;
    .locals 1

    const-string v0, "void"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/android/tools/r8/references/Reference;->typeFromTypeName(Ljava/lang/String;)Lcom/android/tools/r8/references/TypeReference;

    move-result-object p0

    return-object p0
.end method

.method public static typeFromDescriptor(Ljava/lang/String;)Lcom/android/tools/r8/references/TypeReference;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x4c

    if-eq v0, v1, :cond_1

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lcom/android/tools/r8/references/Reference;->primitiveFromDescriptor(Ljava/lang/String;)Lcom/android/tools/r8/references/PrimitiveReference;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/android/tools/r8/references/Reference;->arrayFromDescriptor(Ljava/lang/String;)Lcom/android/tools/r8/references/ArrayReference;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Lcom/android/tools/r8/references/Reference;->classFromDescriptor(Ljava/lang/String;)Lcom/android/tools/r8/references/ClassReference;

    move-result-object p0

    return-object p0
.end method

.method public static typeFromTypeName(Ljava/lang/String;)Lcom/android/tools/r8/references/TypeReference;
    .locals 0

    invoke-static {p0}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/references/Reference;->typeFromDescriptor(Ljava/lang/String;)Lcom/android/tools/r8/references/TypeReference;

    move-result-object p0

    return-object p0
.end method
