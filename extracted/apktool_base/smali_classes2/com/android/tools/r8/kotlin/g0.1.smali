.class public final Lcom/android/tools/r8/kotlin/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/shaking/f0;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/android/tools/r8/kotlin/C;

.field public final c:Lcom/android/tools/r8/kotlin/P;

.field public final d:Lcom/android/tools/r8/kotlin/X;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/tools/r8/kotlin/C;Lcom/android/tools/r8/kotlin/P;Lcom/android/tools/r8/kotlin/X;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/g0;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/tools/r8/kotlin/g0;->b:Lcom/android/tools/r8/kotlin/C;

    iput-object p3, p0, Lcom/android/tools/r8/kotlin/g0;->c:Lcom/android/tools/r8/kotlin/P;

    iput-object p4, p0, Lcom/android/tools/r8/kotlin/g0;->d:Lcom/android/tools/r8/kotlin/X;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/sQ;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;Ljava/util/function/Consumer;)Lcom/android/tools/r8/kotlin/g0;
    .locals 9

    .line 1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->I0()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/g1;

    .line 3
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/l1;

    sget-object v4, Lcom/android/tools/r8/kotlin/b0;->a:Lcom/android/tools/r8/internal/ML;

    .line 4
    new-instance v4, Lcom/android/tools/r8/internal/CL;

    iget-object v5, v3, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v3, v3, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lcom/android/tools/r8/internal/CL;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/CL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->z1()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 8
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    invoke-static {v3}, Lcom/android/tools/r8/kotlin/b0;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/OL;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/OL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 9
    :cond_1
    new-instance p1, Lcom/android/tools/r8/kotlin/X;

    invoke-direct {p1, p2}, Lcom/android/tools/r8/kotlin/X;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 10
    new-instance v7, Lcom/android/tools/r8/kotlin/g0;

    .line 11
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p0}, Lcom/android/tools/r8/internal/AL;->a(Lcom/android/tools/r8/internal/sQ;)Lcom/android/tools/r8/internal/WL;

    move-result-object v0

    .line 13
    iget-object v8, v0, Lcom/android/tools/r8/internal/WL;->b:Ljava/lang/String;

    .line 14
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v3

    .line 15
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-object v4, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    move-object v0, p0

    move-object v5, p3

    move-object v6, p1

    .line 16
    invoke-static/range {v0 .. v6}, Lcom/android/tools/r8/kotlin/C;->a(Lcom/android/tools/r8/internal/hQ;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;Ljava/util/function/Consumer;Lcom/android/tools/r8/kotlin/X;)Lcom/android/tools/r8/kotlin/C;

    move-result-object p3

    .line 17
    invoke-static {p0}, Lcom/android/tools/r8/internal/AL;->a(Lcom/android/tools/r8/internal/sQ;)Lcom/android/tools/r8/internal/WL;

    move-result-object p0

    .line 18
    iget-object p0, p0, Lcom/android/tools/r8/internal/WL;->a:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 20
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p2

    iget-object p2, p2, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 21
    invoke-static {p0, v0, p2}, Lcom/android/tools/r8/kotlin/P;->a(Ljava/util/ArrayList;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/kotlin/P;

    move-result-object p0

    invoke-direct {v7, v8, p3, p0, p1}, Lcom/android/tools/r8/kotlin/g0;-><init>(Ljava/lang/String;Lcom/android/tools/r8/kotlin/C;Lcom/android/tools/r8/kotlin/P;Lcom/android/tools/r8/kotlin/X;)V

    return-object v7
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/d1;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/g0;->b:Lcom/android/tools/r8/kotlin/C;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/kotlin/C;->a(Lcom/android/tools/r8/graph/d1;)V

    .line 41
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/g0;->c:Lcom/android/tools/r8/kotlin/P;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/kotlin/P;->a(Lcom/android/tools/r8/graph/d1;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/sQ;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;)Z
    .locals 8

    .line 22
    new-instance v7, Lcom/android/tools/r8/kotlin/X;

    invoke-direct {v7, p3}, Lcom/android/tools/r8/kotlin/X;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/g0;->b:Lcom/android/tools/r8/kotlin/C;

    .line 24
    iget-object v1, p1, Lcom/android/tools/r8/internal/sQ;->a:Ljava/util/ArrayList;

    .line 25
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/kotlin/S3;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/kotlin/S3;-><init>(Ljava/util/List;)V

    .line 26
    iget-object v1, p1, Lcom/android/tools/r8/internal/sQ;->b:Ljava/util/ArrayList;

    .line 27
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/tools/r8/kotlin/T3;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/kotlin/T3;-><init>(Ljava/util/List;)V

    .line 28
    iget-object v1, p1, Lcom/android/tools/r8/internal/sQ;->c:Ljava/util/ArrayList;

    .line 29
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/tools/r8/kotlin/U3;

    invoke-direct {v4, v1}, Lcom/android/tools/r8/kotlin/U3;-><init>(Ljava/util/List;)V

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, p2

    move-object v5, p3

    move-object v6, v7

    .line 30
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/kotlin/C;->a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/kotlin/X;)Z

    move-result p2

    .line 31
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/g0;->c:Lcom/android/tools/r8/kotlin/P;

    .line 32
    invoke-static {p1}, Lcom/android/tools/r8/internal/AL;->a(Lcom/android/tools/r8/internal/sQ;)Lcom/android/tools/r8/internal/WL;

    move-result-object v1

    .line 33
    iget-object v1, v1, Lcom/android/tools/r8/internal/WL;->a:Ljava/util/ArrayList;

    .line 34
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/kotlin/T3;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/kotlin/T3;-><init>(Ljava/util/List;)V

    .line 35
    invoke-virtual {v0, v2, p3}, Lcom/android/tools/r8/kotlin/P;->b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;)Z

    move-result v0

    or-int/2addr p2, v0

    .line 36
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/g0;->a:Ljava/lang/String;

    .line 37
    invoke-static {p1}, Lcom/android/tools/r8/internal/AL;->a(Lcom/android/tools/r8/internal/sQ;)Lcom/android/tools/r8/internal/WL;

    move-result-object p1

    .line 38
    iput-object v0, p1, Lcom/android/tools/r8/internal/WL;->b:Ljava/lang/String;

    if-nez p2, :cond_1

    .line 39
    iget-object p1, p0, Lcom/android/tools/r8/kotlin/g0;->d:Lcom/android/tools/r8/kotlin/X;

    invoke-virtual {p1, v7, p3}, Lcom/android/tools/r8/kotlin/X;->a(Lcom/android/tools/r8/kotlin/X;Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
