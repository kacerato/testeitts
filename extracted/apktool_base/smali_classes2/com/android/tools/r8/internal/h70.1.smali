.class public final Lcom/android/tools/r8/internal/h70;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/L4;

.field public final b:Z

.field public final c:Lcom/android/tools/r8/internal/t40;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/j1;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/graph/L4;->f:Z

    new-instance v0, Lcom/android/tools/r8/graph/K4;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/K4;-><init>()V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->O0()Lcom/android/tools/r8/graph/L4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/tools/r8/graph/f;->a:Lcom/android/tools/r8/graph/g;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g;->u()V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/tools/r8/graph/f;->a:Lcom/android/tools/r8/graph/g;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g;->A()V

    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->O0()Lcom/android/tools/r8/graph/L4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/tools/r8/graph/f;->a:Lcom/android/tools/r8/graph/g;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g;->v()V

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lcom/android/tools/r8/graph/f;->a:Lcom/android/tools/r8/graph/g;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g;->B()V

    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->O0()Lcom/android/tools/r8/graph/L4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g;->l()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/f;->a(Z)Lcom/android/tools/r8/graph/f;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/K4;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->O0()Lcom/android/tools/r8/graph/L4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/L4;->K()Z

    move-result v1

    const/16 v2, 0x800

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/tools/r8/graph/f;->a:Lcom/android/tools/r8/graph/g;

    check-cast v1, Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/g;->a(I)V

    goto :goto_2

    :cond_2
    iget-object v1, v0, Lcom/android/tools/r8/graph/f;->a:Lcom/android/tools/r8/graph/g;

    check-cast v1, Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/g;->b(I)V

    :goto_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->O0()Lcom/android/tools/r8/graph/L4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/L4;->L()Z

    move-result v1

    const/16 v2, 0x20

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/tools/r8/graph/f;->a:Lcom/android/tools/r8/graph/g;

    check-cast v1, Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/g;->a(I)V

    goto :goto_3

    :cond_3
    iget-object v1, v0, Lcom/android/tools/r8/graph/f;->a:Lcom/android/tools/r8/graph/g;

    check-cast v1, Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/g;->b(I)V

    :goto_3
    iget-object v0, v0, Lcom/android/tools/r8/graph/f;->a:Lcom/android/tools/r8/graph/g;

    check-cast v0, Lcom/android/tools/r8/graph/L4;

    iput-object v0, p0, Lcom/android/tools/r8/internal/h70;->a:Lcom/android/tools/r8/graph/L4;

    iput-boolean p2, p0, Lcom/android/tools/r8/internal/h70;->b:Z

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->k1()Lcom/android/tools/r8/internal/t40;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/h70;->c:Lcom/android/tools/r8/internal/t40;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/android/tools/r8/internal/h70;

    if-eq v2, v1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/h70;

    iget-object v1, p0, Lcom/android/tools/r8/internal/h70;->a:Lcom/android/tools/r8/graph/L4;

    iget-object v2, p1, Lcom/android/tools/r8/internal/h70;->a:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/g;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/h70;->b:Z

    iget-boolean v2, p1, Lcom/android/tools/r8/internal/h70;->b:Z

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/h70;->c:Lcom/android/tools/r8/internal/t40;

    iget-object p1, p1, Lcom/android/tools/r8/internal/h70;->c:Lcom/android/tools/r8/internal/t40;

    if-ne v1, p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/h70;->a:Lcom/android/tools/r8/graph/L4;

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/h70;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/h70;->c:Lcom/android/tools/r8/internal/t40;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/t40;->f()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
