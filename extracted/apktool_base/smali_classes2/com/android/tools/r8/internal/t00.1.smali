.class public final Lcom/android/tools/r8/internal/t00;
.super Lcom/android/tools/r8/internal/ex0;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/graph/y;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/ex0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/t00;->b:Lcom/android/tools/r8/graph/y;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/C4;)V
    .locals 0

    .line 29
    sget-boolean p0, Lcom/android/tools/r8/internal/t00;->c:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public static a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/graph/D4;)V
    .locals 1

    .line 25
    invoke-interface {p2}, Lcom/android/tools/r8/graph/D4;->d()Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    if-ne v0, p0, :cond_0

    return-void

    .line 26
    :cond_0
    invoke-interface {p2}, Lcom/android/tools/r8/graph/D4;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 27
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 28
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/C7;->a(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;)Z
    .locals 8

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->D1()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    .line 5
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    .line 6
    iget-object v3, p2, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    .line 7
    iget-object v3, v3, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 8
    invoke-virtual {v3, v1}, Lcom/android/tools/r8/graph/O4;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v1

    if-eqz v1, :cond_0

    return v2

    .line 9
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-nez v0, :cond_8

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->D1()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    .line 12
    iget-object v4, v3, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/L4;->H()Z

    move-result v4

    if-nez v4, :cond_2

    .line 13
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v3, v1

    :cond_4
    if-ge v3, p1, :cond_8

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/graph/j1;

    .line 15
    iget-object v5, p0, Lcom/android/tools/r8/internal/t00;->b:Lcom/android/tools/r8/graph/y;

    .line 16
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/shaking/i;

    .line 17
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v5, v6, v7}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v5

    iget-object v6, p0, Lcom/android/tools/r8/internal/t00;->b:Lcom/android/tools/r8/graph/y;

    .line 18
    invoke-virtual {v5, p2, v6}, Lcom/android/tools/r8/graph/Z4;->b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H4;

    move-result-object v5

    .line 19
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/H4;->a()Lcom/android/tools/r8/graph/H4$a;

    move-result-object v5

    .line 20
    sget-boolean v6, Lcom/android/tools/r8/internal/t00;->c:Z

    if-nez v6, :cond_6

    if-eqz v5, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_1
    if-nez v5, :cond_7

    return v2

    .line 21
    :cond_7
    invoke-virtual {v5, v4}, Lcom/android/tools/r8/graph/H4$a;->a(Lcom/android/tools/r8/graph/j1;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 22
    new-instance v6, Lcom/android/tools/r8/internal/C7;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v6, v7}, Lcom/android/tools/r8/internal/C7;-><init>(Ljava/lang/Object;)V

    .line 23
    new-instance v7, Lcom/android/tools/r8/internal/yt1;

    invoke-direct {v7, v4, v6}, Lcom/android/tools/r8/internal/yt1;-><init>(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/C7;)V

    new-instance v4, Lcom/android/tools/r8/internal/zt1;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/zt1;-><init>()V

    invoke-virtual {v5, v7, v4}, Lcom/android/tools/r8/graph/H4$a;->a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 24
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    return v2

    :cond_8
    return v1
.end method

.method public final a(Lcom/android/tools/r8/internal/lx0;)Z
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/android/tools/r8/internal/lx0;->b:Lcom/android/tools/r8/graph/H2;

    .line 2
    iget-object p1, p1, Lcom/android/tools/r8/internal/lx0;->c:Lcom/android/tools/r8/graph/H2;

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/t00;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "NoMethodResolutionChangesPolicy"

    return-object v0
.end method
