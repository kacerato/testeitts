.class public final Lcom/android/tools/r8/internal/Ip0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Np0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Hp0;Lcom/android/tools/r8/internal/Hp0;Lcom/android/tools/r8/internal/Mp0;)Z
    .locals 5

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Hp0;->g()Lcom/android/tools/r8/internal/up0;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Hp0;->o()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Hp0;->m()Lcom/android/tools/r8/internal/Hp0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Hp0;->j()Lcom/android/tools/r8/internal/yp0;

    move-result-object v2

    if-eqz v2, :cond_5

    move-object v3, v2

    check-cast v3, Lcom/android/tools/r8/internal/Hp0;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Hp0;->p()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    instance-of v3, v3, Lcom/android/tools/r8/internal/xp0;

    if-eqz v3, :cond_2

    iget-object v3, p3, Lcom/android/tools/r8/internal/Mp0;->d:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    invoke-static {v0, p3}, Lcom/android/tools/r8/internal/Op0;->a(Lcom/android/tools/r8/internal/yp0;Lcom/android/tools/r8/internal/Mp0;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    invoke-static {v2, p3}, Lcom/android/tools/r8/internal/Op0;->a(Lcom/android/tools/r8/internal/yp0;Lcom/android/tools/r8/internal/Mp0;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    return v1

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/android/tools/r8/internal/yp0;->a(Ljava/lang/String;)V

    iget-object v1, p3, Lcom/android/tools/r8/internal/Mp0;->a:Ljava/util/IdentityHashMap;

    invoke-interface {v2}, Lcom/android/tools/r8/internal/Fp0;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/cp0;

    invoke-direct {v3, p1}, Lcom/android/tools/r8/internal/cp0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p3, Lcom/android/tools/r8/internal/Mp0;->a:Ljava/util/IdentityHashMap;

    iget-object p3, v0, Lcom/android/tools/r8/internal/up0;->e:Lcom/android/tools/r8/internal/mK;

    sget-object v0, Lcom/android/tools/r8/internal/dp0;->a:Lcom/android/tools/r8/internal/dp0;

    invoke-virtual {p1, p3, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Hp0;->s()V

    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_0
    return v1
.end method
