.class public final Lcom/android/tools/r8/internal/Wh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:Z

.field public final c:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/Map;ZLjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Wh;->a:Ljava/util/Map;

    iput-boolean p2, p0, Lcom/android/tools/r8/internal/Wh;->b:Z

    iput-object p3, p0, Lcom/android/tools/r8/internal/Wh;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Cu0;)Lcom/android/tools/r8/internal/z30;
    .locals 6

    iget-object v0, p1, Lcom/android/tools/r8/internal/Cu0;->b:Ljava/lang/reflect/Type;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Cu0;->a:Ljava/lang/Class;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Wh;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/android/tools/r8/internal/Wh;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_15

    const-class v1, Ljava/util/EnumSet;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/tools/r8/internal/Sh;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Sh;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_0

    :cond_0
    const-class v1, Ljava/util/EnumMap;

    if-ne p1, v1, :cond_1

    new-instance v1, Lcom/android/tools/r8/internal/Th;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Th;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/Wh;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_14

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    sget-object v3, Lcom/android/tools/r8/internal/ye0;->a:Lcom/android/tools/r8/internal/ve0;

    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v2

    goto :goto_1

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed making constructor \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/tools/r8/internal/ye0;->a(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' accessible; either increase its visibility or write a custom InstanceCreator or TypeAdapter for its declaring type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_4

    new-instance v1, Lcom/android/tools/r8/internal/Uh;

    invoke-direct {v1, v3}, Lcom/android/tools/r8/internal/Uh;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    new-instance v3, Lcom/android/tools/r8/internal/Vh;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/internal/Vh;-><init>(Ljava/lang/reflect/Constructor;)V

    move-object v1, v3

    goto :goto_3

    :catch_1
    :goto_2
    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_5

    return-object v1

    :cond_5
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-class v0, Ljava/util/SortedSet;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/android/tools/r8/internal/Gh;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Gh;-><init>()V

    goto/16 :goto_4

    :cond_6
    const-class v0, Ljava/util/Set;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/android/tools/r8/internal/Hh;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Hh;-><init>()V

    goto/16 :goto_4

    :cond_7
    const-class v0, Ljava/util/Queue;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/android/tools/r8/internal/Ih;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Ih;-><init>()V

    goto :goto_4

    :cond_8
    new-instance v0, Lcom/android/tools/r8/internal/Jh;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jh;-><init>()V

    goto :goto_4

    :cond_9
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-class v1, Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v0, Lcom/android/tools/r8/internal/Kh;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Kh;-><init>()V

    goto :goto_4

    :cond_a
    const-class v1, Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v0, Lcom/android/tools/r8/internal/Lh;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Lh;-><init>()V

    goto :goto_4

    :cond_b
    const-class v1, Ljava/util/SortedMap;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v0, Lcom/android/tools/r8/internal/Mh;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Mh;-><init>()V

    goto :goto_4

    :cond_c
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_d

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    new-instance v1, Lcom/android/tools/r8/internal/Cu0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Cu0;-><init>(Ljava/lang/reflect/Type;)V

    iget-object v0, v1, Lcom/android/tools/r8/internal/Cu0;->a:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_d

    new-instance v0, Lcom/android/tools/r8/internal/Nh;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Nh;-><init>()V

    goto :goto_4

    :cond_d
    new-instance v0, Lcom/android/tools/r8/internal/Oh;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Oh;-><init>()V

    goto :goto_4

    :cond_e
    move-object v0, v2

    :goto_4
    if-eqz v0, :cond_f

    return-object v0

    :cond_f
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Interfaces can\'t be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Interface name: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_10
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Abstract classes can\'t be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Class name: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_11
    :goto_5
    if-eqz v2, :cond_12

    new-instance p1, Lcom/android/tools/r8/internal/Rh;

    invoke-direct {p1, v2}, Lcom/android/tools/r8/internal/Rh;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_12
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/Wh;->b:Z

    if-eqz v0, :cond_13

    new-instance v0, Lcom/android/tools/r8/internal/Ph;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Ph;-><init>(Ljava/lang/Class;)V

    goto :goto_6

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to create instance of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; usage of JDK Unsafe is disabled. Registering an InstanceCreator or a TypeAdapter for this type, adding a no-args constructor, or enabling usage of JDK Unsafe may fix this problem."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/Qh;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Qh;-><init>(Ljava/lang/String;)V

    :goto_6
    return-object v0

    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_15
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_16
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Wh;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
