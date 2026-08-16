.class public Lcom/android/tools/r8/internal/hX;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Kc1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Kc1;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/hX;->a:Ljava/util/Comparator;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/references/MethodReference;Lcom/android/tools/r8/references/MethodReference;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/references/MethodReference;->getHolderClass()Lcom/android/tools/r8/references/ClassReference;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/references/MethodReference;->getHolderClass()Lcom/android/tools/r8/references/ClassReference;

    move-result-object v1

    invoke-static {}, Lcom/android/tools/r8/internal/Xd;->a()Ljava/util/Comparator;

    move-result-object v2

    .line 2
    invoke-interface {v2, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/of;->a(I)I

    move-result v0

    .line 3
    invoke-static {v0}, Lcom/android/tools/r8/internal/of;->b(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-static {v0}, Lcom/android/tools/r8/internal/of;->c(I)I

    move-result p0

    return p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/references/MethodReference;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/references/MethodReference;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/of;->a(I)I

    move-result v0

    .line 7
    invoke-static {v0}, Lcom/android/tools/r8/internal/of;->b(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    invoke-static {v0}, Lcom/android/tools/r8/internal/of;->c(I)I

    move-result p0

    return p0

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/references/MethodReference;->getReturnType()Lcom/android/tools/r8/references/TypeReference;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/references/MethodReference;->getReturnType()Lcom/android/tools/r8/references/TypeReference;

    move-result-object v1

    .line 10
    sget-object v2, Lcom/android/tools/r8/internal/vu0;->a:Ljava/util/Comparator;

    .line 11
    invoke-interface {v2, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/of;->a(I)I

    move-result v0

    .line 12
    invoke-static {v0}, Lcom/android/tools/r8/internal/of;->b(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 13
    invoke-static {v0}, Lcom/android/tools/r8/internal/of;->c(I)I

    move-result p0

    return p0

    :cond_2
    const/4 v0, 0x0

    .line 14
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/references/MethodReference;->getFormalTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/tools/r8/references/MethodReference;->getFormalTypes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 15
    invoke-virtual {p0}, Lcom/android/tools/r8/references/MethodReference;->getFormalTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/references/TypeReference;

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/references/MethodReference;->getFormalTypes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/references/TypeReference;

    .line 17
    sget-object v3, Lcom/android/tools/r8/internal/vu0;->a:Ljava/util/Comparator;

    .line 18
    invoke-interface {v3, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/of;->a(I)I

    move-result v1

    .line 19
    invoke-static {v1}, Lcom/android/tools/r8/internal/of;->b(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 20
    invoke-static {v1}, Lcom/android/tools/r8/internal/of;->c(I)I

    move-result p0

    return p0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 21
    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/references/MethodReference;->getFormalTypes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/tools/r8/references/MethodReference;->getFormalTypes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method public static a(Lcom/android/tools/r8/references/MethodReference;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;
    .locals 3

    .line 42
    invoke-virtual {p0}, Lcom/android/tools/r8/references/MethodReference;->getHolderClass()Lcom/android/tools/r8/references/ClassReference;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/Xd;->a(Lcom/android/tools/r8/references/ClassReference;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 43
    invoke-virtual {p0}, Lcom/android/tools/r8/references/MethodReference;->getFormalTypes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/tools/r8/references/MethodReference;->getReturnType()Lcom/android/tools/r8/references/TypeReference;

    move-result-object v2

    .line 44
    invoke-static {v1, v2, p1}, Lcom/android/tools/r8/internal/vu0;->a(Ljava/util/List;Lcom/android/tools/r8/references/TypeReference;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    .line 45
    invoke-virtual {p0}, Lcom/android/tools/r8/references/MethodReference;->getMethodName()Ljava/lang/String;

    move-result-object p0

    .line 46
    invoke-virtual {p1, v0, v1, p0}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object p0

    return-object p0
.end method

.method public static a(ILjava/lang/String;)Lcom/android/tools/r8/references/MethodReference;
    .locals 6

    const/4 v0, 0x0

    .line 28
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 29
    sget-object v2, Lcom/android/tools/r8/internal/Xd;->a:Ljava/util/Comparator;

    .line 30
    invoke-static {v1}, Lcom/android/tools/r8/internal/Bl;->y(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 31
    invoke-static {v1}, Lcom/android/tools/r8/references/Reference;->classFromDescriptor(Ljava/lang/String;)Lcom/android/tools/r8/references/ClassReference;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-nez v1, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 p0, p0, 0x2

    .line 32
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x28

    .line 33
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-gtz p1, :cond_2

    return-object v3

    .line 34
    :cond_2
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    invoke-static {p0}, Lcom/android/tools/r8/internal/Bl;->e(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    :goto_1
    if-ge v0, v4, :cond_3

    aget-object v5, v3, v0

    .line 38
    invoke-static {v5}, Lcom/android/tools/r8/references/Reference;->typeFromDescriptor(Ljava/lang/String;)Lcom/android/tools/r8/references/TypeReference;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 39
    :cond_3
    invoke-static {p0}, Lcom/android/tools/r8/internal/Bl;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 40
    invoke-static {p0}, Lcom/android/tools/r8/references/Reference;->returnTypeFromDescriptor(Ljava/lang/String;)Lcom/android/tools/r8/references/TypeReference;

    move-result-object p0

    .line 41
    invoke-static {v1, v2, p1, p0}, Lcom/android/tools/r8/references/Reference;->method(Lcom/android/tools/r8/references/ClassReference;Ljava/lang/String;Ljava/util/List;Lcom/android/tools/r8/references/TypeReference;)Lcom/android/tools/r8/references/MethodReference;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/references/MethodReference;
    .locals 3

    .line 23
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const-string v1, "<init>"

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lcom/android/tools/r8/references/Reference;->method(Lcom/android/tools/r8/references/ClassReference;Ljava/lang/String;Ljava/util/List;Lcom/android/tools/r8/references/TypeReference;)Lcom/android/tools/r8/references/MethodReference;

    move-result-object p0

    return-object p0
.end method

.method public static varargs a(Lcom/android/tools/r8/references/ClassReference;[Lcom/android/tools/r8/references/TypeReference;)Lcom/android/tools/r8/references/MethodReference;
    .locals 2

    .line 24
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string v0, "<init>"

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/android/tools/r8/references/Reference;->method(Lcom/android/tools/r8/references/ClassReference;Ljava/lang/String;Ljava/util/List;Lcom/android/tools/r8/references/TypeReference;)Lcom/android/tools/r8/references/MethodReference;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Class;)Lcom/android/tools/r8/references/MethodReference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/android/tools/r8/references/MethodReference;"
        }
    .end annotation

    .line 22
    invoke-static {p0}, Lcom/android/tools/r8/references/Reference;->classFromClass(Ljava/lang/Class;)Lcom/android/tools/r8/references/ClassReference;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/internal/hX;->a(Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/references/MethodReference;

    move-result-object p0

    return-object p0
.end method

.method public static varargs a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Lcom/android/tools/r8/references/MethodReference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/android/tools/r8/references/MethodReference;"
        }
    .end annotation

    .line 26
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/references/Reference;->methodFromMethod(Ljava/lang/reflect/Method;)Lcom/android/tools/r8/references/MethodReference;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 27
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static a(Lcom/android/tools/r8/references/MethodReference;)Ljava/lang/String;
    .locals 3

    .line 47
    invoke-virtual {p0}, Lcom/android/tools/r8/references/MethodReference;->getHolderClass()Lcom/android/tools/r8/references/ClassReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/references/ClassReference;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-virtual {p0}, Lcom/android/tools/r8/references/MethodReference;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-virtual {p0}, Lcom/android/tools/r8/references/MethodReference;->getMethodDescriptor()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "->"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/references/MethodReference;ZZ)Ljava/lang/String;
    .locals 1

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_1

    .line 51
    invoke-virtual {p0}, Lcom/android/tools/r8/references/MethodReference;->getReturnType()Lcom/android/tools/r8/references/TypeReference;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/android/tools/r8/references/MethodReference;->getReturnType()Lcom/android/tools/r8/references/TypeReference;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/tools/r8/references/TypeReference;->getTypeName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 53
    :cond_0
    const-string p2, "void"

    .line 54
    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p1, :cond_2

    .line 56
    invoke-virtual {p0}, Lcom/android/tools/r8/references/MethodReference;->getHolderClass()Lcom/android/tools/r8/references/ClassReference;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/tools/r8/references/TypeReference;->getTypeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/references/MethodReference;->getMethodName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {p0}, Lcom/android/tools/r8/references/MethodReference;->getFormalTypes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 59
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 60
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/references/TypeReference;

    invoke-interface {p1}, Lcom/android/tools/r8/references/TypeReference;->getTypeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 62
    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/references/TypeReference;

    invoke-interface {p1}, Lcom/android/tools/r8/references/TypeReference;->getTypeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 63
    :cond_3
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/android/tools/r8/references/MethodReference;",
            ">;"
        }
    .end annotation

    .line 25
    sget-object v0, Lcom/android/tools/r8/internal/hX;->a:Ljava/util/Comparator;

    return-object v0
.end method

.method public static b(Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/references/MethodReference;
    .locals 3

    .line 2
    const-class v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/tools/r8/references/Reference;->classFromClass(Ljava/lang/Class;)Lcom/android/tools/r8/references/ClassReference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/tools/r8/references/Reference;->array(Lcom/android/tools/r8/references/TypeReference;I)Lcom/android/tools/r8/references/ArrayReference;

    move-result-object v0

    .line 3
    sget v1, Lcom/android/tools/r8/internal/hC;->c:I

    .line 4
    new-instance v1, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 5
    const-string v2, "main"

    invoke-static {p0, v2, v1, v0}, Lcom/android/tools/r8/references/Reference;->method(Lcom/android/tools/r8/references/ClassReference;Ljava/lang/String;Ljava/util/List;Lcom/android/tools/r8/references/TypeReference;)Lcom/android/tools/r8/references/MethodReference;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/Class;)Lcom/android/tools/r8/references/MethodReference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/android/tools/r8/references/MethodReference;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/android/tools/r8/references/Reference;->classFromClass(Ljava/lang/Class;)Lcom/android/tools/r8/references/ClassReference;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/internal/hX;->b(Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/references/MethodReference;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/android/tools/r8/references/MethodReference;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 6
    invoke-static {p0, v0, v0}, Lcom/android/tools/r8/internal/hX;->a(Lcom/android/tools/r8/references/MethodReference;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
