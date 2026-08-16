.class public final Lcom/android/tools/r8/internal/LV;
.super Lcom/android/tools/r8/graph/m0;
.source "SourceFile"


# instance fields
.field public final e:Lcom/android/tools/r8/graph/y;

.field public final synthetic f:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/OV;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Ljava/util/Map;)V
    .locals 0

    iput-object p4, p0, Lcom/android/tools/r8/internal/LV;->f:Ljava/util/Map;

    invoke-direct {p0, p2, p3}, Lcom/android/tools/r8/graph/m0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H0;)V

    iget-object p1, p1, Lcom/android/tools/r8/internal/RV;->b:Lcom/android/tools/r8/graph/y;

    iput-object p1, p0, Lcom/android/tools/r8/internal/LV;->e:Lcom/android/tools/r8/graph/y;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/Z4$c;)V
    .locals 2

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/Z4$c;->q()Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    .line 4
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/LV;->f:Ljava/util/Map;

    new-instance v1, Lcom/android/tools/r8/internal/XL0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/XL0;-><init>()V

    .line 6
    invoke-static {v1}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v1

    .line 7
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/MV;

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/graph/f6;->b:Lcom/android/tools/r8/graph/J5;

    .line 9
    check-cast v0, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p1, p2, p3, v0}, Lcom/android/tools/r8/internal/MV;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/graph/H5;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/A2;)V
    .locals 3

    sget-object v0, Lcom/android/tools/r8/internal/kK;->e:Lcom/android/tools/r8/internal/kK;

    iget-object v1, p0, Lcom/android/tools/r8/internal/LV;->e:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/tools/r8/internal/LV;->a(Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/Z4$c;)V

    return-void
.end method

.method public final d(Lcom/android/tools/r8/graph/A2;)V
    .locals 2

    sget-object v0, Lcom/android/tools/r8/internal/kK;->f:Lcom/android/tools/r8/internal/kK;

    iget-object v1, p0, Lcom/android/tools/r8/internal/LV;->e:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/j;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/tools/r8/internal/LV;->a(Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/Z4$c;)V

    return-void
.end method

.method public final f(Lcom/android/tools/r8/graph/A2;)V
    .locals 2

    sget-object v0, Lcom/android/tools/r8/internal/kK;->g:Lcom/android/tools/r8/internal/kK;

    iget-object v1, p0, Lcom/android/tools/r8/internal/LV;->e:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/j;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/tools/r8/internal/LV;->a(Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/Z4$c;)V

    return-void
.end method

.method public final g(Lcom/android/tools/r8/graph/A2;)V
    .locals 5

    sget-object v0, Lcom/android/tools/r8/internal/kK;->h:Lcom/android/tools/r8/internal/kK;

    iget-object v1, p0, Lcom/android/tools/r8/internal/LV;->e:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    sget-boolean v2, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->c()V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->c()V

    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->y0()Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    invoke-virtual {v1, v3, v2, v4}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/tools/r8/internal/LV;->a(Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/Z4$c;)V

    return-void
.end method
