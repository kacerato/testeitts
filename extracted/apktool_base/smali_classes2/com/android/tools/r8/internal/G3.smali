.class public final Lcom/android/tools/r8/internal/G3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/c4;

.field public final c:Lcom/android/tools/r8/internal/Mw;

.field public final d:Lcom/android/tools/r8/internal/zX;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;Lcom/android/tools/r8/internal/Mw;Lcom/android/tools/r8/internal/zX;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/G3;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/G3;->b:Lcom/android/tools/r8/graph/c4;

    iput-object p3, p0, Lcom/android/tools/r8/internal/G3;->c:Lcom/android/tools/r8/internal/Mw;

    iput-object p4, p0, Lcom/android/tools/r8/internal/G3;->d:Lcom/android/tools/r8/internal/zX;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/F5;)V
    .locals 4

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/G3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/F5;)Lcom/android/tools/r8/shaking/q1;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/G3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/shaking/F1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/G5;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/G3;->a:Lcom/android/tools/r8/graph/y;

    .line 7
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    .line 8
    iget-object v0, v0, Lcom/android/tools/r8/shaking/i;->s:Lcom/android/tools/r8/graph/n3;

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    .line 10
    iget-object v0, v0, Lcom/android/tools/r8/graph/n3;->a:Ljava/util/Map;

    .line 11
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/o3;

    .line 12
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/o3;->e()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/o3;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 13
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/G3;->c:Lcom/android/tools/r8/internal/Mw;

    sget-object v1, Lcom/android/tools/r8/internal/zv0;->b:Lcom/android/tools/r8/internal/zv0;

    .line 14
    iget-object v0, v0, Lcom/android/tools/r8/internal/Mw;->a:Lcom/android/tools/r8/internal/e80;

    .line 15
    sget-object v2, Lcom/android/tools/r8/internal/Mn;->a:Lcom/android/tools/r8/internal/Mn;

    .line 16
    new-instance v3, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v3, v2, p1}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 17
    iget-object v0, v0, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 18
    check-cast v0, Lcom/android/tools/r8/internal/Q00;

    if-eqz v0, :cond_3

    return-void

    .line 19
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    .line 20
    check-cast p1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 21
    invoke-static {p1}, Lcom/android/tools/r8/internal/Iw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/B7;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/G3;->d:Lcom/android/tools/r8/internal/zX;

    sget-object v1, Lcom/android/tools/r8/internal/tv0;->a:Lcom/android/tools/r8/internal/tv0;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/yX;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/wX;)V

    return-void
.end method

.method public final a(Ljava/util/Set;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/H2;

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/mF0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/mF0;-><init>(Lcom/android/tools/r8/internal/G3;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    sget-object v2, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/graph/H2;->f(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Ljava/util/Set;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/G3;->a:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/internal/G3;->b:Lcom/android/tools/r8/graph/c4;

    new-instance v2, Lcom/android/tools/r8/internal/nF0;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/nF0;-><init>(Lcom/android/tools/r8/internal/G3;)V

    .line 2
    invoke-static {v0, v1, p1, v2}, Lcom/android/tools/r8/internal/ZW;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;Ljava/util/Collection;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/m80;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/oF0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/oF0;-><init>(Lcom/android/tools/r8/internal/G3;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/H5;)Z
    .locals 3

    .line 4
    sget-boolean v0, Lcom/android/tools/r8/internal/G3;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->J0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->k1()Lcom/android/tools/r8/internal/t40;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/f7;->e()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->r()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected virtual method without library method override information: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 8
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/G3;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->k1()Lcom/android/tools/r8/internal/t40;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/f7;->c()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/tools/r8/internal/G3;->a:Lcom/android/tools/r8/graph/y;

    .line 10
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object p1

    .line 11
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/shaking/I1;->i(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public final c(Lcom/android/tools/r8/graph/H5;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/G3;->b(Lcom/android/tools/r8/graph/H5;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->J0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->p1()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/G3;->d:Lcom/android/tools/r8/internal/zX;

    sget-object v1, Lcom/android/tools/r8/internal/tv0;->a:Lcom/android/tools/r8/internal/tv0;

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/yX;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/wX;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
