.class public final Lmg/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExceptionsConstructor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExceptionsConstructor.kt\nkotlinx/coroutines/internal/ExceptionsConstructorKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,116:1\n1#2:117\n11335#3:118\n11670#3,3:119\n12904#3,3:136\n1963#4,14:122\n*S KotlinDebug\n*F\n+ 1 ExceptionsConstructor.kt\nkotlinx/coroutines/internal/ExceptionsConstructorKt\n*L\n45#1:118\n45#1:119,3\n82#1:136,3\n63#1:122,14\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nExceptionsConstructor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExceptionsConstructor.kt\nkotlinx/coroutines/internal/ExceptionsConstructorKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,116:1\n1#2:117\n11335#3:118\n11670#3,3:119\n12904#3,3:136\n1963#4,14:122\n*S KotlinDebug\n*F\n+ 1 ExceptionsConstructor.kt\nkotlinx/coroutines/internal/ExceptionsConstructorKt\n*L\n45#1:118\n45#1:119,3\n82#1:136,3\n63#1:122,14\n*E\n"
    }
.end annotation


# static fields
.field public static final a:I

.field public static final b:Lmg/k;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Ljava/lang/Throwable;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lmg/n;->e(Ljava/lang/Class;I)I

    move-result v0

    sput v0, Lmg/n;->a:I

    :try_start_0
    invoke-static {}, Lmg/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lmg/g0;->a:Lmg/g0;

    goto :goto_0

    :cond_0
    sget-object v0, Lmg/d;->a:Lmg/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    sget-object v0, Lmg/g0;->a:Lmg/g0;

    :goto_0
    sput-object v0, Lmg/n;->b:Lmg/k;

    return-void
.end method

.method public static final synthetic a(Ljava/lang/Class;)LMf/l;
    .locals 0

    invoke-static {p0}, Lmg/n;->b(Ljava/lang/Class;)LMf/l;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Ljava/lang/Class;)LMf/l;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "LMf/l<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    sget-object v0, Lmg/n$e;->b:Lmg/n$e;

    sget v1, Lmg/n;->a:I

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lmg/n;->e(Ljava/lang/Class;I)I

    move-result v3

    if-eq v1, v3, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    array-length v3, p0

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    array-length v3, p0

    move v4, v2

    :goto_0
    const/4 v5, 0x0

    if-ge v4, v3, :cond_7

    aget-object v6, p0, v4

    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v8, v7

    if-eqz v8, :cond_6

    const-class v9, Ljava/lang/Throwable;

    const-class v10, Ljava/lang/String;

    const/4 v11, 0x2

    const/4 v12, -0x1

    const/4 v13, 0x1

    if-eq v8, v13, :cond_3

    if-eq v8, v11, :cond_1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lnf/v0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lnf/Z;

    move-result-object v5

    goto/16 :goto_1

    :cond_1
    aget-object v8, v7, v2

    invoke-static {v8, v10}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    aget-object v7, v7, v13

    invoke-static {v7, v9}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v5, Lmg/n$a;

    invoke-direct {v5, v6}, Lmg/n$a;-><init>(Ljava/lang/reflect/Constructor;)V

    invoke-static {v5}, Lmg/n;->f(LMf/l;)LMf/l;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lnf/v0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lnf/Z;

    move-result-object v5

    goto :goto_1

    :cond_2
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lnf/v0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lnf/Z;

    move-result-object v5

    goto :goto_1

    :cond_3
    aget-object v7, v7, v2

    invoke-static {v7, v10}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    new-instance v5, Lmg/n$b;

    invoke-direct {v5, v6}, Lmg/n$b;-><init>(Ljava/lang/reflect/Constructor;)V

    invoke-static {v5}, Lmg/n;->f(LMf/l;)LMf/l;

    move-result-object v5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lnf/v0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lnf/Z;

    move-result-object v5

    goto :goto_1

    :cond_4
    invoke-static {v7, v9}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance v5, Lmg/n$c;

    invoke-direct {v5, v6}, Lmg/n$c;-><init>(Ljava/lang/reflect/Constructor;)V

    invoke-static {v5}, Lmg/n;->f(LMf/l;)LMf/l;

    move-result-object v5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lnf/v0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lnf/Z;

    move-result-object v5

    goto :goto_1

    :cond_5
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lnf/v0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lnf/Z;

    move-result-object v5

    goto :goto_1

    :cond_6
    new-instance v5, Lmg/n$d;

    invoke-direct {v5, v6}, Lmg/n$d;-><init>(Ljava/lang/reflect/Constructor;)V

    invoke-static {v5}, Lmg/n;->f(LMf/l;)LMf/l;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lnf/v0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lnf/Z;

    move-result-object v5

    :goto_1
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_7
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_2

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_2

    :cond_9
    move-object v1, v5

    check-cast v1, Lnf/Z;

    invoke-virtual {v1}, Lnf/Z;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lnf/Z;

    invoke-virtual {v3}, Lnf/Z;->f()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-ge v1, v3, :cond_b

    move-object v5, v2

    move v1, v3

    :cond_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_a

    :goto_2
    check-cast v5, Lnf/Z;

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Lnf/Z;->e()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LMf/l;

    if-nez p0, :cond_c

    goto :goto_3

    :cond_c
    move-object v0, p0

    :cond_d
    :goto_3
    return-object v0
.end method

.method public static final c(Ljava/lang/Class;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)I"
        }
    .end annotation

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr p1, v3

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    if-nez p0, :cond_0

    return p1
.end method

.method public static synthetic d(Ljava/lang/Class;IILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lmg/n;->c(Ljava/lang/Class;I)I

    move-result p0

    return p0
.end method

.method public static final e(Ljava/lang/Class;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)I"
        }
    .end annotation

    invoke-static {p0}, LLf/b;->i(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    :try_start_0
    sget-object v0, Lnf/i0;->c:Lnf/i0$a;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lmg/n;->d(Ljava/lang/Class;IILjava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lnf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Lnf/i0;->c:Lnf/i0$a;

    invoke-static {p0}, Lnf/j0;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lnf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Lnf/i0;->i(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p0, p1

    :cond_0
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public static final f(LMf/l;)LMf/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMf/l<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "LMf/l<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    new-instance v0, Lmg/n$f;

    invoke-direct {v0, p0}, Lmg/n$f;-><init>(LMf/l;)V

    return-object v0
.end method

.method public static final g(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2
    .param p0    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(TE;)TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p0, Leg/K;

    if-eqz v0, :cond_1

    :try_start_0
    sget-object v0, Lnf/i0;->c:Lnf/i0$a;

    check-cast p0, Leg/K;

    invoke-interface {p0}, Leg/K;->createCopy()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Lnf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Lnf/i0;->c:Lnf/i0$a;

    invoke-static {p0}, Lnf/j0;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lnf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lnf/i0;->i(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    check-cast p0, Ljava/lang/Throwable;

    return-object p0

    :cond_1
    sget-object v0, Lmg/n;->b:Lmg/k;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmg/k;->a(Ljava/lang/Class;)LMf/l;

    move-result-object v0

    invoke-interface {v0, p0}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    return-object p0
.end method
