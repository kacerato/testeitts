.class public final Lcom/android/tools/r8/internal/w3;
.super Lcom/android/tools/r8/graph/n0;
.source "SourceFile"


# static fields
.field public static final synthetic h:Z = true


# instance fields
.field public final f:Lcom/android/tools/r8/graph/y;

.field public final g:Lcom/android/tools/r8/internal/u3;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/u3;)V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/tools/r8/graph/n0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Ljava/lang/Boolean;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/w3;->f:Lcom/android/tools/r8/graph/y;

    iput-object p3, p0, Lcom/android/tools/r8/internal/w3;->g:Lcom/android/tools/r8/internal/u3;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/w3;->h(Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/D0;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/internal/w3;->f:Lcom/android/tools/r8/graph/y;

    .line 3
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j;

    .line 4
    iget-object v2, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 5
    check-cast v2, Lcom/android/tools/r8/graph/H5;

    invoke-static {p1, v0, v1, v2}, Lcom/android/tools/r8/internal/kR;->b(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/kR;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 6
    sget-boolean p1, Lcom/android/tools/r8/internal/w3;->h:Z

    if-nez p1, :cond_1

    iget-object v1, v0, Lcom/android/tools/r8/internal/kR;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 7
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/w3;->f:Lcom/android/tools/r8/graph/y;

    .line 8
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    iget-object v2, v0, Lcom/android/tools/r8/internal/kR;->e:Ljava/util/ArrayList;

    const/4 v3, 0x0

    .line 9
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/M2;

    .line 10
    iget-object v0, v0, Lcom/android/tools/r8/internal/kR;->b:Lcom/android/tools/r8/graph/A2;

    .line 11
    invoke-virtual {v1, v2, v0}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Z4;->r()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    if-nez v0, :cond_2

    goto/16 :goto_2

    .line 13
    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/w3;->g:Lcom/android/tools/r8/internal/u3;

    .line 14
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/lZ;->c(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    .line 15
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    .line 16
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 17
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 18
    iput-object p1, p0, Lcom/android/tools/r8/graph/g6;->e:Ljava/lang/Boolean;

    .line 19
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/f6;->a()V

    return-void

    :cond_3
    if-nez p1, :cond_9

    .line 20
    iget-object p1, p0, Lcom/android/tools/r8/internal/w3;->g:Lcom/android/tools/r8/internal/u3;

    .line 21
    iget-object p1, p1, Lcom/android/tools/r8/internal/u3;->n:Ljava/util/IdentityHashMap;

    .line 22
    invoke-virtual {p1, v1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    .line 23
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 24
    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->a:Lcom/android/tools/r8/graph/y;

    .line 25
    iget-object v1, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 26
    check-cast v1, Lcom/android/tools/r8/graph/H5;

    invoke-static {p1, v0, v1}, Lcom/android/tools/r8/internal/xc0;->a(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 27
    iget-object p1, p1, Lcom/android/tools/r8/graph/D0;->h:Ljava/util/List;

    .line 28
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/R2;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    instance-of v1, v0, Lcom/android/tools/r8/graph/X2;

    if-eqz v1, :cond_6

    .line 31
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/R2;->z0()Lcom/android/tools/r8/graph/X2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/X2;->W0()Lcom/android/tools/r8/graph/d4;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/C2;

    .line 32
    sget-boolean v1, Lcom/android/tools/r8/internal/w3;->h:Z

    if-nez v1, :cond_8

    .line 33
    iget-object v1, v0, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    .line 34
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/B2;->a()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_1

    .line 35
    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 36
    :cond_8
    :goto_1
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/C2;->l0()Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/w3;->i(Lcom/android/tools/r8/graph/l1;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_9
    :goto_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/w3;->i(Lcom/android/tools/r8/graph/l1;)Z

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/w3;->h(Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/w3;->i(Lcom/android/tools/r8/graph/l1;)Z

    return-void
.end method

.method public final d(Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/w3;->h(Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method

.method public final e(Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/w3;->i(Lcom/android/tools/r8/graph/l1;)Z

    return-void
.end method

.method public final f(Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/w3;->h(Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method

.method public final g(Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/w3;->h(Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method

.method public final g(Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/w3;->i(Lcom/android/tools/r8/graph/l1;)Z

    return-void
.end method

.method public final h(Lcom/android/tools/r8/graph/A2;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/w3;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/j;->f(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4$c;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4$c;->r()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/w3;->g:Lcom/android/tools/r8/internal/u3;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/lZ;->c(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/android/tools/r8/internal/w3;->g:Lcom/android/tools/r8/internal/u3;

    iget-object p1, p1, Lcom/android/tools/r8/internal/u3;->n:Ljava/util/IdentityHashMap;

    invoke-virtual {p1, v0}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/tools/r8/graph/g6;->e:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/f6;->a()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final i(Lcom/android/tools/r8/graph/l1;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/w3;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/D3;->r()Lcom/android/tools/r8/graph/F5;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/D3;->r()Lcom/android/tools/r8/graph/F5;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/w3;->g:Lcom/android/tools/r8/internal/u3;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/l1;

    iget-object v0, v0, Lcom/android/tools/r8/internal/lZ;->f:Lcom/android/tools/r8/internal/o6;

    invoke-interface {v0, v2, v2}, Lcom/android/tools/r8/internal/m6;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/l1;->a(Lcom/android/tools/r8/graph/l1;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/tools/r8/graph/g6;->e:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/f6;->a()V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method
