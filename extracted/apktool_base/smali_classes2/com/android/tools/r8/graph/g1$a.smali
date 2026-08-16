.class public Lcom/android/tools/r8/graph/g1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/graph/g1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final synthetic n:Z = true


# instance fields
.field public a:Lcom/android/tools/r8/graph/l1;

.field public b:Lcom/android/tools/r8/graph/u0;

.field public c:Lcom/android/tools/r8/graph/k3;

.field public d:Lcom/android/tools/r8/graph/H3$e;

.field public final e:Lcom/android/tools/r8/kotlin/G;

.field public f:Lcom/android/tools/r8/graph/R2;

.field public final g:Lcom/android/tools/r8/graph/y5;

.field public h:Lcom/android/tools/r8/androidapi/f;

.field public final i:Lcom/android/tools/r8/internal/vw;

.field public j:Z

.field public final k:Z

.field public l:Ljava/util/function/Consumer;

.field public m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/android/tools/r8/graph/u0;->l0()Lcom/android/tools/r8/graph/u0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/g1$a;->b:Lcom/android/tools/r8/graph/u0;

    .line 3
    invoke-static {}, Lcom/android/tools/r8/graph/H3$e;->p()Lcom/android/tools/r8/graph/H3$e;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/g1$a;->d:Lcom/android/tools/r8/graph/H3$e;

    .line 4
    sget-object v0, Lcom/android/tools/r8/kotlin/b0;->b:Lcom/android/tools/r8/kotlin/a0;

    .line 5
    iput-object v0, p0, Lcom/android/tools/r8/graph/g1$a;->e:Lcom/android/tools/r8/kotlin/G;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/android/tools/r8/graph/g1$a;->f:Lcom/android/tools/r8/graph/R2;

    .line 7
    iput-object v0, p0, Lcom/android/tools/r8/graph/g1$a;->g:Lcom/android/tools/r8/graph/y5;

    .line 8
    sget v0, Lcom/android/tools/r8/androidapi/f;->a:I

    .line 9
    sget-object v0, Lcom/android/tools/r8/androidapi/g;->b:Lcom/android/tools/r8/androidapi/g;

    iput-object v0, p0, Lcom/android/tools/r8/graph/g1$a;->h:Lcom/android/tools/r8/androidapi/f;

    .line 10
    sget-object v0, Lcom/android/tools/r8/internal/xj;->a:Lcom/android/tools/r8/internal/xj;

    iput-object v0, p0, Lcom/android/tools/r8/graph/g1$a;->i:Lcom/android/tools/r8/internal/vw;

    .line 11
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/g1$a;->l:Ljava/util/function/Consumer;

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/android/tools/r8/graph/g1$a;->m:Z

    .line 13
    iput-boolean p1, p0, Lcom/android/tools/r8/graph/g1$a;->k:Z

    return-void
.end method

.method public constructor <init>(ZLcom/android/tools/r8/graph/g1;)V
    .locals 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {}, Lcom/android/tools/r8/graph/u0;->l0()Lcom/android/tools/r8/graph/u0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/g1$a;->b:Lcom/android/tools/r8/graph/u0;

    .line 16
    invoke-static {}, Lcom/android/tools/r8/graph/H3$e;->p()Lcom/android/tools/r8/graph/H3$e;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/g1$a;->d:Lcom/android/tools/r8/graph/H3$e;

    .line 17
    sget-object v0, Lcom/android/tools/r8/kotlin/b0;->b:Lcom/android/tools/r8/kotlin/a0;

    .line 18
    iput-object v0, p0, Lcom/android/tools/r8/graph/g1$a;->e:Lcom/android/tools/r8/kotlin/G;

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/android/tools/r8/graph/g1$a;->f:Lcom/android/tools/r8/graph/R2;

    .line 20
    iput-object v0, p0, Lcom/android/tools/r8/graph/g1$a;->g:Lcom/android/tools/r8/graph/y5;

    .line 21
    sget v0, Lcom/android/tools/r8/androidapi/f;->a:I

    .line 22
    sget-object v0, Lcom/android/tools/r8/androidapi/g;->b:Lcom/android/tools/r8/androidapi/g;

    iput-object v0, p0, Lcom/android/tools/r8/graph/g1$a;->h:Lcom/android/tools/r8/androidapi/f;

    .line 23
    sget-object v0, Lcom/android/tools/r8/internal/xj;->a:Lcom/android/tools/r8/internal/xj;

    iput-object v0, p0, Lcom/android/tools/r8/graph/g1$a;->i:Lcom/android/tools/r8/internal/vw;

    .line 24
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/g1$a;->l:Ljava/util/function/Consumer;

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/android/tools/r8/graph/g1$a;->m:Z

    .line 26
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    iput-object v0, p0, Lcom/android/tools/r8/graph/g1$a;->a:Lcom/android/tools/r8/graph/l1;

    .line 27
    iget-object v0, p2, Lcom/android/tools/r8/graph/g1;->g:Lcom/android/tools/r8/graph/k3;

    .line 28
    new-instance v1, Lcom/android/tools/r8/graph/k3;

    .line 29
    iget v2, v0, Lcom/android/tools/r8/graph/g;->b:I

    .line 30
    iget v0, v0, Lcom/android/tools/r8/graph/g;->c:I

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/graph/k3;-><init>(II)V

    .line 31
    iput-object v1, p0, Lcom/android/tools/r8/graph/g1$a;->c:Lcom/android/tools/r8/graph/k3;

    .line 32
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/g1;->J0()Lcom/android/tools/r8/graph/H3$e;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/g1$a;->d:Lcom/android/tools/r8/graph/H3$e;

    .line 33
    iget-object v0, p2, Lcom/android/tools/r8/graph/g1;->m:Lcom/android/tools/r8/kotlin/G;

    .line 34
    iput-object v0, p0, Lcom/android/tools/r8/graph/g1$a;->e:Lcom/android/tools/r8/kotlin/G;

    .line 35
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/g1$a;->b:Lcom/android/tools/r8/graph/u0;

    .line 36
    iget-object v0, p2, Lcom/android/tools/r8/graph/g1;->h:Lcom/android/tools/r8/graph/R2;

    iput-object v0, p0, Lcom/android/tools/r8/graph/g1$a;->f:Lcom/android/tools/r8/graph/R2;

    .line 37
    iget-object v0, p2, Lcom/android/tools/r8/graph/g1;->i:Lcom/android/tools/r8/graph/y5;

    iput-object v0, p0, Lcom/android/tools/r8/graph/g1$a;->g:Lcom/android/tools/r8/graph/y5;

    .line 38
    iget-object v0, p2, Lcom/android/tools/r8/graph/h1;->e:Lcom/android/tools/r8/androidapi/f;

    .line 39
    iput-object v0, p0, Lcom/android/tools/r8/graph/g1$a;->h:Lcom/android/tools/r8/androidapi/f;

    .line 40
    iget-object v0, p2, Lcom/android/tools/r8/graph/g1;->l:Lcom/android/tools/r8/internal/vw;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    instance-of v0, v0, Lcom/android/tools/r8/internal/VY;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p2, Lcom/android/tools/r8/graph/g1;->l:Lcom/android/tools/r8/internal/vw;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/KV;->b()Lcom/android/tools/r8/internal/VY;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    new-instance v1, Lcom/android/tools/r8/internal/VY;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/VY;-><init>()V

    .line 44
    iget-object v2, v0, Lcom/android/tools/r8/internal/VY;->a:Lcom/android/tools/r8/internal/F1;

    iput-object v2, v1, Lcom/android/tools/r8/internal/VY;->a:Lcom/android/tools/r8/internal/F1;

    .line 45
    iget v2, v0, Lcom/android/tools/r8/internal/VY;->b:I

    iput v2, v1, Lcom/android/tools/r8/internal/VY;->b:I

    .line 46
    iget v2, v0, Lcom/android/tools/r8/internal/VY;->c:I

    iput v2, v1, Lcom/android/tools/r8/internal/VY;->c:I

    .line 47
    iget-object v0, v0, Lcom/android/tools/r8/internal/VY;->d:Lcom/android/tools/r8/internal/xt;

    iput-object v0, v1, Lcom/android/tools/r8/internal/VY;->d:Lcom/android/tools/r8/internal/xt;

    goto :goto_0

    .line 48
    :cond_0
    iget-object v1, p2, Lcom/android/tools/r8/graph/g1;->l:Lcom/android/tools/r8/internal/vw;

    :goto_0
    iput-object v1, p0, Lcom/android/tools/r8/graph/g1$a;->i:Lcom/android/tools/r8/internal/vw;

    .line 49
    iget-boolean p2, p2, Lcom/android/tools/r8/graph/g1;->j:Z

    .line 50
    iput-boolean p2, p0, Lcom/android/tools/r8/graph/g1$a;->j:Z

    .line 51
    iput-boolean p1, p0, Lcom/android/tools/r8/graph/g1$a;->k:Z

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/g1;)V
    .locals 2

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/o40;->b:Lcom/android/tools/r8/internal/o40;

    .line 3
    invoke-static {}, Lcom/android/tools/r8/internal/xt;->m()Lcom/android/tools/r8/internal/zt;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/tools/r8/internal/o40;->a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/internal/xt;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1$a;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/android/tools/r8/graph/g1$a;->a:Lcom/android/tools/r8/graph/l1;

    return-object p0
.end method

.method public final a(Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/g1$a;
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-object p0
.end method

.method public a()Lcom/android/tools/r8/graph/g1;
    .locals 10

    .line 5
    sget-boolean v0, Lcom/android/tools/r8/graph/g1$a;->n:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/graph/g1$a;->a:Lcom/android/tools/r8/graph/l1;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 6
    iget-object v1, p0, Lcom/android/tools/r8/graph/g1$a;->c:Lcom/android/tools/r8/graph/k3;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 7
    iget-object v1, p0, Lcom/android/tools/r8/graph/g1$a;->d:Lcom/android/tools/r8/graph/H3$e;

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    .line 8
    iget-object v1, p0, Lcom/android/tools/r8/graph/g1$a;->b:Lcom/android/tools/r8/graph/u0;

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_7
    :goto_3
    if-nez v0, :cond_9

    .line 9
    iget-boolean v0, p0, Lcom/android/tools/r8/graph/g1$a;->m:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/tools/r8/graph/g1$a;->h:Lcom/android/tools/r8/androidapi/f;

    invoke-interface {v0}, Lcom/android/tools/r8/androidapi/f;->x()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 10
    :cond_9
    :goto_4
    new-instance v0, Lcom/android/tools/r8/graph/g1;

    iget-object v2, p0, Lcom/android/tools/r8/graph/g1$a;->a:Lcom/android/tools/r8/graph/l1;

    iget-object v3, p0, Lcom/android/tools/r8/graph/g1$a;->c:Lcom/android/tools/r8/graph/k3;

    iget-object v4, p0, Lcom/android/tools/r8/graph/g1$a;->d:Lcom/android/tools/r8/graph/H3$e;

    iget-object v5, p0, Lcom/android/tools/r8/graph/g1$a;->b:Lcom/android/tools/r8/graph/u0;

    iget-object v6, p0, Lcom/android/tools/r8/graph/g1$a;->f:Lcom/android/tools/r8/graph/R2;

    iget-object v7, p0, Lcom/android/tools/r8/graph/g1$a;->h:Lcom/android/tools/r8/androidapi/f;

    iget-boolean v8, p0, Lcom/android/tools/r8/graph/g1$a;->j:Z

    iget-boolean v9, p0, Lcom/android/tools/r8/graph/g1$a;->k:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/android/tools/r8/graph/g1;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/k3;Lcom/android/tools/r8/graph/H3$e;Lcom/android/tools/r8/graph/u0;Lcom/android/tools/r8/graph/R2;Lcom/android/tools/r8/androidapi/f;ZZ)V

    .line 11
    iget-object v1, p0, Lcom/android/tools/r8/graph/g1$a;->e:Lcom/android/tools/r8/kotlin/G;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/g1;->a(Lcom/android/tools/r8/kotlin/G;)V

    .line 12
    iget-object v1, p0, Lcom/android/tools/r8/graph/g1$a;->i:Lcom/android/tools/r8/internal/vw;

    iput-object v1, v0, Lcom/android/tools/r8/graph/g1;->l:Lcom/android/tools/r8/internal/vw;

    .line 13
    iget-object v1, p0, Lcom/android/tools/r8/graph/g1$a;->g:Lcom/android/tools/r8/graph/y5;

    iput-object v1, v0, Lcom/android/tools/r8/graph/g1;->i:Lcom/android/tools/r8/graph/y5;

    .line 14
    iget-object v1, p0, Lcom/android/tools/r8/graph/g1$a;->l:Ljava/util/function/Consumer;

    invoke-interface {v1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final b()Lcom/android/tools/r8/graph/g1$a;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/graph/rd;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/rd;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/graph/g1$a;->l:Ljava/util/function/Consumer;

    invoke-interface {v1, v0}, Ljava/util/function/Consumer;->andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/g1$a;->l:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public final b(Ljava/util/function/Consumer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/g1$a;->c:Lcom/android/tools/r8/graph/k3;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public c()Lcom/android/tools/r8/graph/g1$a;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/graph/g1$a;->m:Z

    return-object p0
.end method
