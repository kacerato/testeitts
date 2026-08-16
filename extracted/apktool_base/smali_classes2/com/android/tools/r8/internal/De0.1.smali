.class public abstract Lcom/android/tools/r8/internal/De0;
.super Lcom/android/tools/r8/internal/vt0;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Ljava/util/LinkedHashMap;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/vt0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/De0;->a:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/Object;
.end method

.method public final a(Lcom/android/tools/r8/internal/lL;)Ljava/lang/Object;
    .locals 3

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->u()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->r()V

    const/4 p1, 0x0

    return-object p1

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/De0;->a()Ljava/lang/Object;

    move-result-object v0

    .line 11
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->d()V

    .line 12
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->k()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->q()Ljava/lang/String;

    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/android/tools/r8/internal/De0;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Ce0;

    if-eqz v1, :cond_2

    .line 15
    iget-boolean v2, v1, Lcom/android/tools/r8/internal/Ce0;->e:Z

    if-nez v2, :cond_1

    goto :goto_1

    .line 16
    :cond_1
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/tools/r8/internal/De0;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/lL;Lcom/android/tools/r8/internal/Ce0;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    .line 17
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->y()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 18
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->h()V

    .line 19
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/De0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 20
    :goto_2
    sget-object v0, Lcom/android/tools/r8/internal/ye0;->a:Lcom/android/tools/r8/internal/ve0;

    .line 21
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected IllegalAccessException occurred (Gson 2.10.1). Certain ReflectionAccessFilter features require Java >= 9 to work correctly. If you are not using ReflectionAccessFilter, report this to the Gson maintainers."

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 22
    :goto_3
    new-instance v0, Lcom/android/tools/r8/internal/mL;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/mL;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public abstract a(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final a(Lcom/android/tools/r8/internal/qL;Ljava/lang/Object;)V
    .locals 2

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/qL;->i()Lcom/android/tools/r8/internal/qL;

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/qL;->e()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/De0;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Ce0;

    .line 4
    invoke-virtual {v1, p1, p2}, Lcom/android/tools/r8/internal/Ce0;->a(Lcom/android/tools/r8/internal/qL;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/qL;->g()V

    return-void

    .line 6
    :goto_1
    sget-object p2, Lcom/android/tools/r8/internal/ye0;->a:Lcom/android/tools/r8/internal/ve0;

    .line 7
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Unexpected IllegalAccessException occurred (Gson 2.10.1). Certain ReflectionAccessFilter features require Java >= 9 to work correctly. If you are not using ReflectionAccessFilter, report this to the Gson maintainers."

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public abstract a(Ljava/lang/Object;Lcom/android/tools/r8/internal/lL;Lcom/android/tools/r8/internal/Ce0;)V
.end method
