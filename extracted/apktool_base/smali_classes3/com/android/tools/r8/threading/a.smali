.class public abstract Lcom/android/tools/r8/threading/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "com.android.tools.r8.threading.providers.blocking.ThreadingModuleBlockingProvider"

    const-string v1, "com.android.tools.r8.threading.providers.singlethreaded.ThreadingModuleSingleThreadedProvider"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lcom/android/tools/r8/threading/ThreadingModuleProvider;
    .locals 3

    invoke-static {}, Lcom/android/tools/r8/threading/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/threading/ThreadingModuleProvider;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/android/tools/r8/internal/If;

    const-string v2, "Failure creating provider for the threading module"

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/If;

    const-string v1, "Failure to find a provider for the threading module"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw v0
.end method
