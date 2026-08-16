.class public abstract Lcom/android/tools/r8/internal/pj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/y50;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;
    .locals 3

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pj;->b()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/y50;

    .line 13
    new-instance v2, Lcom/android/tools/r8/internal/aq1;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/aq1;-><init>(Lcom/android/tools/r8/internal/pj;)V

    invoke-interface {v1, v2, p1}, Lcom/android/tools/r8/internal/y50;->a(Ljava/util/function/Consumer;Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;
    .locals 3

    .line 14
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pj;->b()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/y50;

    .line 15
    new-instance v2, Lcom/android/tools/r8/internal/aq1;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/aq1;-><init>(Lcom/android/tools/r8/internal/pj;)V

    invoke-interface {v1, p1, v2, p2}, Lcom/android/tools/r8/internal/y50;->a(Ljava/lang/String;Ljava/util/function/Consumer;Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/util/function/Consumer;Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p3}, Lcom/android/tools/r8/internal/pj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/function/Consumer;Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;
    .locals 0

    .line 6
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/pj;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Q2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method public a()Z
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pj;->b()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/y50;

    .line 3
    invoke-interface {v1}, Lcom/android/tools/r8/internal/y50;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 3

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pj;->b()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/y50;

    .line 9
    new-instance v2, Lcom/android/tools/r8/internal/aq1;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/aq1;-><init>(Lcom/android/tools/r8/internal/pj;)V

    invoke-interface {v1, p2, v2, p1}, Lcom/android/tools/r8/internal/y50;->a(Ljava/lang/String;Ljava/util/function/Consumer;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pj;->b()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/y50;

    .line 11
    new-instance v2, Lcom/android/tools/r8/internal/aq1;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/aq1;-><init>(Lcom/android/tools/r8/internal/pj;)V

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/tools/r8/internal/y50;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)Z
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/pj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/String;Ljava/util/function/Consumer;Ljava/lang/Object;)Z
    .locals 0

    .line 4
    invoke-virtual {p0, p3, p1}, Lcom/android/tools/r8/internal/pj;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public abstract b()Lcom/android/tools/r8/internal/hC;
.end method
