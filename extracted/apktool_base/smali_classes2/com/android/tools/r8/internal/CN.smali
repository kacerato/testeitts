.class public final Lcom/android/tools/r8/internal/CN;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/android/tools/r8/internal/MN;

.field public b:Lcom/android/tools/r8/internal/QM;

.field public c:Lcom/android/tools/r8/internal/jP;

.field public d:Lcom/android/tools/r8/internal/cN;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/tools/r8/internal/MN;->d:Lcom/android/tools/r8/internal/MN;

    iput-object v0, p0, Lcom/android/tools/r8/internal/CN;->a:Lcom/android/tools/r8/internal/MN;

    sget-object v0, Lcom/android/tools/r8/internal/QM;->b:Lcom/android/tools/r8/internal/QM;

    iput-object v0, p0, Lcom/android/tools/r8/internal/CN;->b:Lcom/android/tools/r8/internal/QM;

    sget-object v0, Lcom/android/tools/r8/internal/gP;->a:Lcom/android/tools/r8/internal/gP;

    iput-object v0, p0, Lcom/android/tools/r8/internal/CN;->c:Lcom/android/tools/r8/internal/jP;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/MM;Lcom/android/tools/r8/internal/ZM;)Lcom/android/tools/r8/internal/ZM;
    .locals 0

    .line 5
    new-instance p1, Lcom/android/tools/r8/internal/ZM;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/ZM;-><init>(Lcom/android/tools/r8/internal/MM;)V

    return-object p1
.end method

.method public static a(Lcom/android/tools/r8/internal/MM;Lcom/android/tools/r8/internal/xP;)Lcom/android/tools/r8/internal/xP;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/yN;->c:Lcom/android/tools/r8/internal/yN;

    .line 2
    iget-object p1, p1, Lcom/android/tools/r8/internal/xP;->b:Lcom/android/tools/r8/internal/zN;

    if-eqz p0, :cond_0

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/xP;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/xP;-><init>(Lcom/android/tools/r8/internal/MM;Lcom/android/tools/r8/internal/zN;)V

    return-object v0

    .line 4
    :cond_0
    new-instance p0, Lcom/android/tools/r8/internal/FN;

    const-string p1, "Target must define an item pattern"

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/android/tools/r8/internal/bN;Lcom/android/tools/r8/internal/RM;Lcom/android/tools/r8/internal/xP;)V
    .locals 2

    .line 11
    iget-object v0, p2, Lcom/android/tools/r8/internal/xP;->a:Lcom/android/tools/r8/internal/MM;

    .line 12
    new-instance v1, Lcom/android/tools/r8/internal/CB0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/CB0;-><init>()V

    .line 13
    invoke-virtual {p1, v0, p2, v1}, Lcom/android/tools/r8/internal/RM;->a(Lcom/android/tools/r8/internal/MM;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/xP;

    .line 14
    iget-object p0, p0, Lcom/android/tools/r8/internal/bN;->a:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/hP;Lcom/android/tools/r8/internal/RM;Lcom/android/tools/r8/internal/ZM;)V
    .locals 2

    .line 6
    iget-object v0, p2, Lcom/android/tools/r8/internal/ZM;->a:Lcom/android/tools/r8/internal/MM;

    .line 7
    new-instance v1, Lcom/android/tools/r8/internal/DB0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/DB0;-><init>()V

    .line 8
    invoke-virtual {p1, v0, p2, v1}, Lcom/android/tools/r8/internal/RM;->a(Lcom/android/tools/r8/internal/MM;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/ZM;

    .line 9
    iget-object p0, p0, Lcom/android/tools/r8/internal/hP;->a:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/cN;)Lcom/android/tools/r8/internal/CN;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/android/tools/r8/internal/CN;->d:Lcom/android/tools/r8/internal/cN;

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/jP;)Lcom/android/tools/r8/internal/CN;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/android/tools/r8/internal/CN;->c:Lcom/android/tools/r8/internal/jP;

    return-object p0
.end method

.method public final a()Lcom/android/tools/r8/internal/DN;
    .locals 7

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/internal/CN;->d:Lcom/android/tools/r8/internal/cN;

    .line 19
    iget-object v0, v0, Lcom/android/tools/r8/internal/cN;->a:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/internal/CN;->b:Lcom/android/tools/r8/internal/QM;

    .line 22
    new-instance v1, Lcom/android/tools/r8/internal/RM;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/RM;-><init>(Lcom/android/tools/r8/internal/QM;)V

    .line 23
    new-instance v0, Lcom/android/tools/r8/internal/hP;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/hP;-><init>()V

    .line 24
    iget-object v2, p0, Lcom/android/tools/r8/internal/CN;->c:Lcom/android/tools/r8/internal/jP;

    new-instance v3, Lcom/android/tools/r8/internal/AB0;

    invoke-direct {v3, v0, v1}, Lcom/android/tools/r8/internal/AB0;-><init>(Lcom/android/tools/r8/internal/hP;Lcom/android/tools/r8/internal/RM;)V

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/jP;->a(Ljava/util/function/Consumer;)V

    .line 25
    new-instance v2, Lcom/android/tools/r8/internal/bN;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/bN;-><init>()V

    .line 26
    iget-object v3, p0, Lcom/android/tools/r8/internal/CN;->d:Lcom/android/tools/r8/internal/cN;

    new-instance v4, Lcom/android/tools/r8/internal/BB0;

    invoke-direct {v4, v2, v1}, Lcom/android/tools/r8/internal/BB0;-><init>(Lcom/android/tools/r8/internal/bN;Lcom/android/tools/r8/internal/RM;)V

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/cN;->a(Ljava/util/function/Consumer;)V

    .line 27
    new-instance v3, Lcom/android/tools/r8/internal/DN;

    iget-object v4, p0, Lcom/android/tools/r8/internal/CN;->a:Lcom/android/tools/r8/internal/MN;

    .line 28
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/RM;->a()Lcom/android/tools/r8/internal/QM;

    move-result-object v5

    .line 29
    iget-boolean v6, v1, Lcom/android/tools/r8/internal/RM;->c:Z

    if-eqz v6, :cond_1

    .line 30
    iget-object v6, v0, Lcom/android/tools/r8/internal/hP;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 31
    sget-object v0, Lcom/android/tools/r8/internal/gP;->a:Lcom/android/tools/r8/internal/gP;

    goto :goto_0

    .line 32
    :cond_0
    new-instance v6, Lcom/android/tools/r8/internal/iP;

    iget-object v0, v0, Lcom/android/tools/r8/internal/hP;->a:Ljava/util/ArrayList;

    invoke-direct {v6, v0}, Lcom/android/tools/r8/internal/iP;-><init>(Ljava/util/ArrayList;)V

    move-object v0, v6

    goto :goto_0

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/CN;->c:Lcom/android/tools/r8/internal/jP;

    .line 34
    :goto_0
    iget-boolean v1, v1, Lcom/android/tools/r8/internal/RM;->c:Z

    if-eqz v1, :cond_2

    .line 35
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/bN;->a()Lcom/android/tools/r8/internal/cN;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/CN;->d:Lcom/android/tools/r8/internal/cN;

    :goto_1
    invoke-direct {v3, v4, v5, v0, v1}, Lcom/android/tools/r8/internal/DN;-><init>(Lcom/android/tools/r8/internal/MN;Lcom/android/tools/r8/internal/QM;Lcom/android/tools/r8/internal/jP;Lcom/android/tools/r8/internal/cN;)V

    return-object v3

    .line 36
    :cond_3
    new-instance v0, Lcom/android/tools/r8/internal/FN;

    const-string v1, "KeepEdge must have non-empty set of consequences."

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw v0
.end method
