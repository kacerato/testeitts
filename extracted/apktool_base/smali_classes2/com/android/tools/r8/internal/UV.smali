.class public final Lcom/android/tools/r8/internal/UV;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/Q5;


# instance fields
.field public final synthetic a:Ljava/util/Set;

.field public final synthetic b:Lcom/android/tools/r8/internal/SV;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lcom/android/tools/r8/internal/SV;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/UV;->a:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/tools/r8/internal/UV;->b:Lcom/android/tools/r8/internal/SV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;)V
    .locals 4

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/UV;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/internal/UV;->b:Lcom/android/tools/r8/internal/SV;

    .line 14
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 15
    :cond_0
    iget-object v1, v0, Lcom/android/tools/r8/internal/SV;->a:Lcom/android/tools/r8/graph/y;

    .line 16
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/h;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 17
    iget-object v2, v0, Lcom/android/tools/r8/internal/SV;->a:Lcom/android/tools/r8/graph/y;

    .line 18
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v2, v1, p1}, Lcom/android/tools/r8/graph/j;->h(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 19
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/Z4$c;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object v3

    if-eq v3, v1, :cond_3

    .line 20
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/Z4$c;->q()Lcom/android/tools/r8/graph/j1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    .line 21
    sget-boolean v2, Lcom/android/tools/r8/internal/SV;->e:Z

    if-nez v2, :cond_2

    .line 22
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 23
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 24
    :cond_2
    :goto_0
    iget-object v0, v0, Lcom/android/tools/r8/internal/SV;->d:Ljava/util/AbstractMap;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/UV;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/UV;->b:Lcom/android/tools/r8/internal/SV;

    .line 3
    iget-object v1, v0, Lcom/android/tools/r8/internal/SV;->a:Lcom/android/tools/r8/graph/y;

    .line 4
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/D3;->q()Lcom/android/tools/r8/graph/g1;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/l1;

    .line 6
    invoke-virtual {v2, p1}, Lcom/android/tools/r8/graph/l1;->a(Lcom/android/tools/r8/graph/l1;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 7
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    .line 8
    sget-boolean v2, Lcom/android/tools/r8/internal/SV;->e:Z

    if-nez v2, :cond_1

    .line 9
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/l1;->a(Lcom/android/tools/r8/graph/l1;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 11
    :cond_1
    :goto_0
    iget-object v0, v0, Lcom/android/tools/r8/internal/SV;->c:Ljava/util/AbstractMap;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method
