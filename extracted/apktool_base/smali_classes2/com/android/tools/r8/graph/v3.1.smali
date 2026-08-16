.class public final Lcom/android/tools/r8/graph/v3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public a:Lcom/android/tools/r8/graph/D3;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/graph/v3;->a:Lcom/android/tools/r8/graph/D3;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/graph/D3$a;)V
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/D7;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    sget-boolean v0, Lcom/android/tools/r8/graph/v3;->b:Z

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/D3$a;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/D3;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 28
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Unexpected multiple results between program and classpath"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 29
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/C7;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/List;Lcom/android/tools/r8/graph/E3;)V
    .locals 1

    .line 30
    new-instance v0, Lcom/android/tools/r8/graph/Rg;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/graph/Rg;-><init>(Lcom/android/tools/r8/graph/E3;)V

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/vK;->b(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static synthetic a(Ljava/util/List;Lcom/android/tools/r8/graph/x3;)V
    .locals 1

    .line 33
    new-instance v0, Lcom/android/tools/r8/graph/Qg;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/graph/Qg;-><init>(Lcom/android/tools/r8/graph/x3;)V

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/vK;->b(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/E3;Lcom/android/tools/r8/graph/E3;)Z
    .locals 0

    .line 32
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/D3$a;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/D3$a;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/x3;Lcom/android/tools/r8/graph/x3;)Z
    .locals 0

    .line 35
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J4;->h()Z

    move-result p1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/J4;->h()Z

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/D3;)V
    .locals 8

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/graph/v3;->b:Z

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/graph/v3;->a:Lcom/android/tools/r8/graph/D3;

    if-nez v1, :cond_0

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/graph/v3;->a:Lcom/android/tools/r8/graph/D3;

    return-void

    .line 4
    :cond_0
    new-instance v1, Lcom/android/tools/r8/internal/C7;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/C7;-><init>()V

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v4, p0, Lcom/android/tools/r8/graph/v3;->a:Lcom/android/tools/r8/graph/D3;

    .line 8
    new-instance v5, Lcom/android/tools/r8/graph/Sg;

    invoke-direct {v5, v1}, Lcom/android/tools/r8/graph/Sg;-><init>(Lcom/android/tools/r8/internal/C7;)V

    new-instance v6, Lcom/android/tools/r8/graph/Tg;

    invoke-direct {v6, v2}, Lcom/android/tools/r8/graph/Tg;-><init>(Ljava/util/List;)V

    new-instance v7, Lcom/android/tools/r8/graph/Ug;

    invoke-direct {v7, v3}, Lcom/android/tools/r8/graph/Ug;-><init>(Ljava/util/List;)V

    .line 9
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/tools/r8/graph/D3;->a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 10
    new-instance v4, Lcom/android/tools/r8/graph/Vg;

    invoke-direct {v4, v1}, Lcom/android/tools/r8/graph/Vg;-><init>(Lcom/android/tools/r8/internal/C7;)V

    new-instance v5, Lcom/android/tools/r8/graph/Wg;

    invoke-direct {v5, v2}, Lcom/android/tools/r8/graph/Wg;-><init>(Ljava/util/List;)V

    new-instance v6, Lcom/android/tools/r8/graph/Xg;

    invoke-direct {v6, v3}, Lcom/android/tools/r8/graph/Xg;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v4, v5, v6}, Lcom/android/tools/r8/graph/D3;->a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 11
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/D7;->b()Z

    move-result p1

    if-nez p1, :cond_3

    .line 12
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 13
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/D3;

    iput-object p1, p0, Lcom/android/tools/r8/graph/v3;->a:Lcom/android/tools/r8/graph/D3;

    return-void

    .line 14
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v1, :cond_2

    .line 15
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/D3;

    iput-object p1, p0, Lcom/android/tools/r8/graph/v3;->a:Lcom/android/tools/r8/graph/D3;

    return-void

    .line 16
    :cond_2
    new-instance p1, Lcom/android/tools/r8/graph/A3;

    invoke-direct {p1, v2, v3}, Lcom/android/tools/r8/graph/A3;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object p1, p0, Lcom/android/tools/r8/graph/v3;->a:Lcom/android/tools/r8/graph/D3;

    return-void

    .line 17
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 18
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/D3;

    iput-object p1, p0, Lcom/android/tools/r8/graph/v3;->a:Lcom/android/tools/r8/graph/D3;

    return-void

    .line 19
    :cond_4
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/D3$a;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/D3;->u()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 20
    new-instance p1, Lcom/android/tools/r8/graph/B3;

    .line 21
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/D3$a;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/D3;->m()Lcom/android/tools/r8/graph/F3;

    move-result-object v0

    invoke-direct {p1, v0, v2, v3}, Lcom/android/tools/r8/graph/B3;-><init>(Lcom/android/tools/r8/graph/F3;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object p1, p0, Lcom/android/tools/r8/graph/v3;->a:Lcom/android/tools/r8/graph/D3;

    return-void

    .line 22
    :cond_5
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/D3$a;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/D3;->k()Lcom/android/tools/r8/graph/C3;

    move-result-object p1

    if-nez v0, :cond_7

    if-eqz p1, :cond_6

    goto :goto_0

    .line 23
    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 24
    :cond_7
    :goto_0
    new-instance v0, Lcom/android/tools/r8/graph/y3;

    invoke-direct {v0, p1, v2, v3}, Lcom/android/tools/r8/graph/y3;-><init>(Lcom/android/tools/r8/graph/C3;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/tools/r8/graph/v3;->a:Lcom/android/tools/r8/graph/D3;

    return-void
.end method
