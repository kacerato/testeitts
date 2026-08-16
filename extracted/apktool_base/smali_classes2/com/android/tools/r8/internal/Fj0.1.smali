.class public abstract Lcom/android/tools/r8/internal/Fj0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/fi;
.implements Ljava/io/Serializable;


# instance fields
.field public final b:Lcom/android/tools/r8/internal/fi;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/fi;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Fj0;->b:Lcom/android/tools/r8/internal/fi;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/android/tools/r8/internal/fi;->getContext()Lcom/android/tools/r8/internal/Lt;

    move-result-object p1

    sget-object v0, Lcom/android/tools/r8/internal/Lt;->b:Lcom/android/tools/r8/internal/Lt;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Coroutines with restricted suspension must have EmptyCoroutineContext"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/android/tools/r8/internal/ol0;Lcom/android/tools/r8/internal/ol0;)Lcom/android/tools/r8/internal/fi;
.end method

.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 2

    move-object v0, p0

    .line 2
    :goto_0
    check-cast v0, Lcom/android/tools/r8/internal/Fj0;

    .line 3
    iget-object v1, v0, Lcom/android/tools/r8/internal/Fj0;->b:Lcom/android/tools/r8/internal/fi;

    invoke-static {v1}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;)V

    .line 4
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Fj0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    sget-object v0, Lcom/android/tools/r8/internal/ji;->b:Lcom/android/tools/r8/internal/ji;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    return-void

    :catchall_0
    move-exception p1

    .line 6
    new-instance v0, Lcom/android/tools/r8/internal/Gj0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Gj0;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    .line 7
    :cond_0
    instance-of v0, v1, Lcom/android/tools/r8/internal/Fj0;

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {v1, p1}, Lcom/android/tools/r8/internal/fi;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public abstract b(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final b()Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Continuation at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/android/tools/r8/internal/gj;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/gj;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto/16 :goto_8

    .line 3
    :cond_0
    invoke-interface {v1}, Lcom/android/tools/r8/internal/gj;->v()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_c

    const/4 v3, -0x1

    .line 4
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "label"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 5
    invoke-virtual {v5, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 6
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Ljava/lang/Integer;

    if-eqz v6, :cond_1

    check-cast v5, Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    move-object v5, v2

    :goto_0
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    sub-int/2addr v5, v4

    goto :goto_2

    :catch_0
    move v5, v3

    :goto_2
    if-gez v5, :cond_3

    goto :goto_3

    .line 7
    :cond_3
    invoke-interface {v1}, Lcom/android/tools/r8/internal/gj;->l()[I

    move-result-object v3

    aget v3, v3, v5

    .line 8
    :goto_3
    sget-object v4, Lcom/android/tools/r8/internal/OX;->b:Lcom/android/tools/r8/internal/NX;

    if-nez v4, :cond_4

    .line 9
    :try_start_1
    const-class v4, Ljava/lang/Class;

    const-string v5, "getModule"

    invoke-virtual {v4, v5, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const-string v6, "java.lang.Module"

    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 11
    const-string v6, "getDescriptor"

    invoke-virtual {v5, v6, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const-string v7, "java.lang.module.ModuleDescriptor"

    invoke-virtual {v6, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 13
    const-string v7, "name"

    invoke-virtual {v6, v7, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 14
    new-instance v7, Lcom/android/tools/r8/internal/NX;

    invoke-direct {v7, v4, v5, v6}, Lcom/android/tools/r8/internal/NX;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    sput-object v7, Lcom/android/tools/r8/internal/OX;->b:Lcom/android/tools/r8/internal/NX;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v7

    goto :goto_4

    .line 15
    :catch_1
    sget-object v4, Lcom/android/tools/r8/internal/OX;->a:Lcom/android/tools/r8/internal/NX;

    sput-object v4, Lcom/android/tools/r8/internal/OX;->b:Lcom/android/tools/r8/internal/NX;

    .line 16
    :cond_4
    :goto_4
    sget-object v5, Lcom/android/tools/r8/internal/OX;->a:Lcom/android/tools/r8/internal/NX;

    if-ne v4, v5, :cond_5

    goto :goto_6

    .line 17
    :cond_5
    iget-object v5, v4, Lcom/android/tools/r8/internal/NX;->a:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_6

    goto :goto_6

    .line 18
    :cond_6
    iget-object v6, v4, Lcom/android/tools/r8/internal/NX;->b:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_9

    invoke-virtual {v6, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_7

    goto :goto_6

    .line 19
    :cond_7
    iget-object v4, v4, Lcom/android/tools/r8/internal/NX;->c:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_8

    invoke-virtual {v4, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_5

    :cond_8
    move-object v4, v2

    :goto_5
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_9

    move-object v2, v4

    check-cast v2, Ljava/lang/String;

    :cond_9
    :goto_6
    if-nez v2, :cond_a

    .line 20
    invoke-interface {v1}, Lcom/android/tools/r8/internal/gj;->c()Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/android/tools/r8/internal/gj;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 21
    :goto_7
    new-instance v4, Ljava/lang/StackTraceElement;

    invoke-interface {v1}, Lcom/android/tools/r8/internal/gj;->m()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, Lcom/android/tools/r8/internal/gj;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v2, v5, v1, v3}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v2, v4

    :goto_8
    if-eqz v2, :cond_b

    goto :goto_9

    .line 22
    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 23
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Debug metadata version mismatch. Expected: 1, got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Please update the Kotlin standard library."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getContext()Lcom/android/tools/r8/internal/Lt;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/Lt;->b:Lcom/android/tools/r8/internal/Lt;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Fj0;->b:Lcom/android/tools/r8/internal/fi;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/tools/r8/internal/te0;->a:Lcom/android/tools/r8/internal/ue0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "kotlin.jvm.functions."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "renderLambdaToString(...)"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Fj0;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
