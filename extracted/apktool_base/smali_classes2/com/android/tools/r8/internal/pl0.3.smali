.class public abstract Lcom/android/tools/r8/internal/pl0;
.super Lcom/android/tools/r8/internal/sl0;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/android/tools/r8/internal/nl0;Lcom/android/tools/r8/internal/ny;)Lcom/android/tools/r8/internal/Ax;
    .locals 2

    .line 2
    instance-of v0, p0, Lcom/android/tools/r8/internal/Rs0;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lcom/android/tools/r8/internal/Rs0;

    .line 4
    const-string v0, "iterator"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcom/android/tools/r8/internal/Ax;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Rs0;->a:Lcom/android/tools/r8/internal/nl0;

    iget-object p0, p0, Lcom/android/tools/r8/internal/Rs0;->b:Lcom/android/tools/r8/internal/ny;

    invoke-direct {v0, v1, p0, p1}, Lcom/android/tools/r8/internal/Ax;-><init>(Lcom/android/tools/r8/internal/nl0;Lcom/android/tools/r8/internal/ny;Lcom/android/tools/r8/internal/ny;)V

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Ax;

    new-instance v1, Lcom/android/tools/r8/internal/dq1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/dq1;-><init>()V

    invoke-direct {v0, p0, v1, p1}, Lcom/android/tools/r8/internal/Ax;-><init>(Lcom/android/tools/r8/internal/nl0;Lcom/android/tools/r8/internal/ny;Lcom/android/tools/r8/internal/ny;)V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/internal/Ax;Lcom/android/tools/r8/internal/ny;)Lcom/android/tools/r8/internal/Rs0;
    .locals 1

    .line 9
    new-instance v0, Lcom/android/tools/r8/internal/cq1;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/cq1;-><init>(Lcom/android/tools/r8/internal/ny;)V

    const-string p1, "transform"

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance p1, Lcom/android/tools/r8/internal/Rs0;

    invoke-direct {p1, p0, v0}, Lcom/android/tools/r8/internal/Rs0;-><init>(Lcom/android/tools/r8/internal/nl0;Lcom/android/tools/r8/internal/ny;)V

    return-object p1
.end method

.method public static a(Lcom/android/tools/r8/internal/nl0;)Lcom/android/tools/r8/internal/cx;
    .locals 3

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/bq1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/bq1;-><init>()V

    const-string v1, "predicate"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v1, Lcom/android/tools/r8/internal/cx;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/android/tools/r8/internal/cx;-><init>(Lcom/android/tools/r8/internal/nl0;ZLcom/android/tools/r8/internal/ny;)V

    return-object v1
.end method

.method public static varargs a([Ljava/lang/Object;)Lcom/android/tools/r8/internal/nl0;
    .locals 1

    .line 12
    array-length v0, p0

    if-nez v0, :cond_0

    sget-object p0, Lcom/android/tools/r8/internal/Xt;->a:Lcom/android/tools/r8/internal/Xt;

    return-object p0

    .line 13
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/b4;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/b4;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final a(Lcom/android/tools/r8/internal/ny;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/ny;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public static final a(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final b(Lcom/android/tools/r8/internal/nl0;)Lcom/android/tools/r8/internal/Ax;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/eq1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/eq1;-><init>()V

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/pl0;->a(Lcom/android/tools/r8/internal/nl0;Lcom/android/tools/r8/internal/ny;)Lcom/android/tools/r8/internal/Ax;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    return-object p0
.end method

.method public static final c(Lcom/android/tools/r8/internal/nl0;)Ljava/util/Iterator;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/android/tools/r8/internal/nl0;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lcom/android/tools/r8/internal/nl0;)Ljava/util/List;
    .locals 2

    invoke-interface {p0}, Lcom/android/tools/r8/internal/nl0;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/android/tools/r8/internal/Ut;->b:Lcom/android/tools/r8/internal/Ut;

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "singletonList(...)"

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method
