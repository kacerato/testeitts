.class public Lcom/android/tools/r8/shaking/Y4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Lcom/android/tools/r8/shaking/X4;

.field public static final synthetic f:Z = true


# instance fields
.field public final a:Ljava/util/function/Consumer;

.field public b:Lcom/android/tools/r8/graph/M2;

.field public c:Lcom/android/tools/r8/shaking/W4;

.field public d:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/shaking/X4;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/X4;-><init>()V

    sput-object v0, Lcom/android/tools/r8/shaking/Y4;->e:Lcom/android/tools/r8/shaking/X4;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Consumer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/shaking/Y4;->b:Lcom/android/tools/r8/graph/M2;

    new-instance v0, Lcom/android/tools/r8/shaking/W4;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/W4;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/Y4;->c:Lcom/android/tools/r8/shaking/W4;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/Y4;->d:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/tools/r8/shaking/Y4;->a:Ljava/util/function/Consumer;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/o50;Lcom/android/tools/r8/internal/o50;)I
    .locals 0

    .line 14
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/Mq0;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public a()V
    .locals 8

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/shaking/Y4;->d:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/shaking/Hb;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/Hb;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/shaking/Y4;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/tools/r8/internal/o50;

    .line 5
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/M2;

    .line 6
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/o50;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/shaking/W4;

    .line 7
    iget-object v5, p0, Lcom/android/tools/r8/shaking/Y4;->a:Ljava/util/function/Consumer;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    if-nez v3, :cond_0

    .line 8
    iget-object v3, p0, Lcom/android/tools/r8/shaking/Y4;->a:Ljava/util/function/Consumer;

    sget-object v4, Lcom/android/tools/r8/internal/zq0;->c:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v4, p0, Lcom/android/tools/r8/shaking/Y4;->a:Ljava/util/function/Consumer;

    sget-object v5, Lcom/android/tools/r8/internal/zq0;->c:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {v3}, Lcom/android/tools/r8/shaking/W4;->a()V

    .line 11
    iget-object v4, v3, Lcom/android/tools/r8/shaking/W4;->a:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/tools/r8/shaking/Ib;

    invoke-direct {v5, p0}, Lcom/android/tools/r8/shaking/Ib;-><init>(Lcom/android/tools/r8/shaking/Y4;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 12
    iget-object v3, v3, Lcom/android/tools/r8/shaking/W4;->b:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/tools/r8/shaking/Jb;

    invoke-direct {v4, p0}, Lcom/android/tools/r8/shaking/Jb;-><init>(Lcom/android/tools/r8/shaking/Y4;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/android/tools/r8/shaking/Y4;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public a(Lcom/android/tools/r8/graph/H2;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/shaking/Y4;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/Y4;->b:Lcom/android/tools/r8/graph/M2;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/Y4;->d:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/internal/o50;

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/tools/r8/internal/o50;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/g1;)V
    .locals 3

    .line 38
    const-string v0, "    "

    .line 39
    iget-object v1, p0, Lcom/android/tools/r8/shaking/Y4;->a:Ljava/util/function/Consumer;

    invoke-interface {v1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 40
    iget-object v0, p1, Lcom/android/tools/r8/graph/g1;->g:Lcom/android/tools/r8/graph/k3;

    const/4 v1, 0x0

    .line 41
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/g;->a(Z)Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v2, " "

    if-nez v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/android/tools/r8/shaking/Y4;->a:Ljava/util/function/Consumer;

    invoke-interface {v1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lcom/android/tools/r8/shaking/Y4;->a:Ljava/util/function/Consumer;

    invoke-interface {v0, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 45
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/android/tools/r8/shaking/Y4;->a:Ljava/util/function/Consumer;

    invoke-interface {v1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 47
    iget-object v0, p0, Lcom/android/tools/r8/shaking/Y4;->a:Ljava/util/function/Consumer;

    invoke-interface {v0, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 48
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/n1;->j0()Ljava/lang/String;

    move-result-object p1

    .line 49
    iget-object v0, p0, Lcom/android/tools/r8/shaking/Y4;->a:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 50
    sget-object p1, Lcom/android/tools/r8/internal/zq0;->c:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/android/tools/r8/shaking/Y4;->a:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/j1;)V
    .locals 4

    .line 15
    const-string v0, "    "

    .line 16
    iget-object v1, p0, Lcom/android/tools/r8/shaking/Y4;->a:Ljava/util/function/Consumer;

    invoke-interface {v1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 17
    iget-object v0, p1, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/g;->a(Z)Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const-string v3, " "

    if-nez v2, :cond_0

    .line 20
    iget-object v2, p0, Lcom/android/tools/r8/shaking/Y4;->a:Ljava/util/function/Consumer;

    invoke-interface {v2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/shaking/Y4;->a:Ljava/util/function/Consumer;

    invoke-interface {v0, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 22
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object v0

    .line 23
    iget-object v2, p0, Lcom/android/tools/r8/shaking/Y4;->a:Ljava/util/function/Consumer;

    invoke-interface {v2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 24
    iget-object v0, p0, Lcom/android/tools/r8/shaking/Y4;->a:Ljava/util/function/Consumer;

    invoke-interface {v0, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 25
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/n1;->j0()Ljava/lang/String;

    move-result-object v0

    .line 26
    iget-object v2, p0, Lcom/android/tools/r8/shaking/Y4;->a:Ljava/util/function/Consumer;

    invoke-interface {v2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 27
    const-string v0, "("

    .line 28
    iget-object v2, p0, Lcom/android/tools/r8/shaking/Y4;->a:Ljava/util/function/Consumer;

    invoke-interface {v2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 29
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v0, v0

    if-ge v1, v0, :cond_2

    if-eqz v1, :cond_1

    .line 30
    const-string v0, ","

    .line 31
    iget-object v2, p0, Lcom/android/tools/r8/shaking/Y4;->a:Ljava/util/function/Consumer;

    invoke-interface {v2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 32
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object v0

    .line 33
    iget-object v2, p0, Lcom/android/tools/r8/shaking/Y4;->a:Ljava/util/function/Consumer;

    invoke-interface {v2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    :cond_2
    const-string p1, ")"

    .line 35
    iget-object v0, p0, Lcom/android/tools/r8/shaking/Y4;->a:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 36
    sget-object p1, Lcom/android/tools/r8/internal/zq0;->c:Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcom/android/tools/r8/shaking/Y4;->a:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public b()V
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/shaking/Y4;->c:Lcom/android/tools/r8/shaking/W4;

    .line 4
    iget-object v1, v0, Lcom/android/tools/r8/shaking/W4;->a:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/tools/r8/shaking/W4;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/Y4;->d:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/internal/o50;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/Y4;->b:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p0, Lcom/android/tools/r8/shaking/Y4;->c:Lcom/android/tools/r8/shaking/W4;

    invoke-direct {v1, v2, v3}, Lcom/android/tools/r8/internal/o50;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v0, Lcom/android/tools/r8/shaking/W4;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/W4;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/Y4;->c:Lcom/android/tools/r8/shaking/W4;

    :cond_1
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/android/tools/r8/shaking/Y4;->b:Lcom/android/tools/r8/graph/M2;

    return-void
.end method

.method public b(Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/shaking/Y4;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/Y4;->b:Lcom/android/tools/r8/graph/M2;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iput-object p1, p0, Lcom/android/tools/r8/shaking/Y4;->b:Lcom/android/tools/r8/graph/M2;

    return-void
.end method

.method public b(Lcom/android/tools/r8/graph/g1;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/shaking/Y4;->c:Lcom/android/tools/r8/shaking/W4;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/W4;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/android/tools/r8/graph/j1;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/shaking/Y4;->c:Lcom/android/tools/r8/shaking/W4;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/W4;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
