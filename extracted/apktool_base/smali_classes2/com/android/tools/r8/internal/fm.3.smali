.class public final Lcom/android/tools/r8/internal/fm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/d1;

.field public final b:Lcom/android/tools/r8/internal/Ef0;

.field public final c:Lcom/android/tools/r8/androidapi/f;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/androidapi/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/fm;->a:Lcom/android/tools/r8/graph/d1;

    iput-object p2, p0, Lcom/android/tools/r8/internal/fm;->b:Lcom/android/tools/r8/internal/Ef0;

    iput-object p3, p0, Lcom/android/tools/r8/internal/fm;->c:Lcom/android/tools/r8/androidapi/f;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;)V
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/android/tools/r8/internal/X2;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/xU;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    .line 3
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/CU;->b()Ljava/util/Map;

    move-result-object v1

    .line 4
    iget-object v0, v0, Lcom/android/tools/r8/internal/xU;->c:Lcom/android/tools/r8/internal/CU;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CU;->a()Ljava/util/Map;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 6
    iget-object v3, p0, Lcom/android/tools/r8/graph/y;->T:Lcom/android/tools/r8/androidapi/f;

    .line 7
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    .line 8
    :cond_0
    new-instance v4, Lcom/android/tools/r8/internal/fm;

    invoke-direct {v4, p0, v2, v3}, Lcom/android/tools/r8/internal/fm;-><init>(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/androidapi/f;)V

    .line 9
    invoke-virtual {v4, v1, v0}, Lcom/android/tools/r8/internal/fm;->a(Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/v2;)Lcom/android/tools/r8/graph/u2;
    .locals 4

    .line 42
    iget-object v0, p0, Lcom/android/tools/r8/internal/fm;->a:Lcom/android/tools/r8/graph/d1;

    .line 43
    iget-object v1, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 44
    invoke-interface {v0, v1}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->G()Lcom/android/tools/r8/graph/u2;

    move-result-object p1

    return-object p1

    .line 47
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/fm;->a:Lcom/android/tools/r8/graph/d1;

    .line 48
    iget-object v2, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 49
    invoke-interface {v1, v2}, Lcom/android/tools/r8/graph/d1;->f(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/b0;

    move-result-object v1

    .line 50
    invoke-interface {v1}, Lcom/android/tools/r8/graph/b0;->n()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 51
    invoke-interface {v1}, Lcom/android/tools/r8/graph/b0;->v()Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 52
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 53
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->G()Lcom/android/tools/r8/graph/u2;

    move-result-object p1

    return-object p1

    .line 54
    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/fm;->b:Lcom/android/tools/r8/internal/Ef0;

    if-nez v0, :cond_3

    .line 55
    const-string v0, "(null)."

    goto :goto_1

    :cond_3
    const-string v0, "."

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Desugared library: Cannot amend library reference "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " because the holder is not a library class"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/Ef0;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/L4;)V
    .locals 3

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fm;->a(Lcom/android/tools/r8/graph/v2;)Lcom/android/tools/r8/graph/u2;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/E0;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v1

    if-eqz v1, :cond_1

    :goto_0
    return-void

    .line 33
    :cond_1
    sget-object v1, Lcom/android/tools/r8/graph/j1;->u:[Lcom/android/tools/r8/graph/j1;

    .line 34
    new-instance v1, Lcom/android/tools/r8/graph/j1$a;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/tools/r8/graph/j1$a;-><init>(Z)V

    .line 35
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object p1

    .line 36
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object p1

    iget-object p2, p0, Lcom/android/tools/r8/internal/fm;->c:Lcom/android/tools/r8/androidapi/f;

    .line 37
    iput-object p2, p1, Lcom/android/tools/r8/graph/j1$a;->l:Lcom/android/tools/r8/androidapi/f;

    .line 38
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    .line 39
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    sget-object v0, Lcom/android/tools/r8/graph/j1;->v:Lcom/android/tools/r8/graph/j1;

    iput-object v0, p2, Lcom/android/tools/r8/graph/N4;->c:Lcom/android/tools/r8/graph/j1;

    .line 41
    iget-object p2, p2, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/O4;->b(Lcom/android/tools/r8/graph/j1;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/k3;)V
    .locals 3

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fm;->a(Lcom/android/tools/r8/graph/v2;)Lcom/android/tools/r8/graph/u2;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    iget-object v1, v0, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    .line 14
    iget-object v1, v1, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    .line 15
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/s3;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 16
    :cond_1
    sget-object v1, Lcom/android/tools/r8/graph/g1;->o:[Lcom/android/tools/r8/graph/g1;

    .line 17
    new-instance v1, Lcom/android/tools/r8/graph/g1$a;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/tools/r8/graph/g1$a;-><init>(Z)V

    .line 18
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/g1$a;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1$a;

    move-result-object p1

    .line 19
    iput-object p2, p1, Lcom/android/tools/r8/graph/g1$a;->c:Lcom/android/tools/r8/graph/k3;

    .line 20
    iget-object v1, p0, Lcom/android/tools/r8/internal/fm;->c:Lcom/android/tools/r8/androidapi/f;

    .line 21
    iput-object v1, p1, Lcom/android/tools/r8/graph/g1$a;->h:Lcom/android/tools/r8/androidapi/f;

    .line 22
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/g1$a;->a()Lcom/android/tools/r8/graph/g1;

    move-result-object p1

    .line 23
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 24
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/g1;)V

    return-void

    .line 25
    :cond_2
    iget-object p2, v0, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    .line 26
    sget-boolean v0, Lcom/android/tools/r8/graph/r3;->c:Z

    if-nez v0, :cond_3

    .line 27
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/r3;->a(Lcom/android/tools/r8/graph/g1;)V

    .line 28
    :cond_3
    iget-object v1, p2, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    .line 29
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/s3;->a(Lcom/android/tools/r8/graph/g1;)V

    if-nez v0, :cond_4

    .line 30
    iget-object p1, p2, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/s3;->h()V

    :cond_4
    :goto_0
    return-void
.end method

.method public final a(Ljava/util/Map;Ljava/util/Map;)V
    .locals 1

    .line 10
    new-instance v0, Lcom/android/tools/r8/internal/Xa1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Xa1;-><init>(Lcom/android/tools/r8/internal/fm;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 11
    new-instance p1, Lcom/android/tools/r8/internal/Ya1;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/Ya1;-><init>(Lcom/android/tools/r8/internal/fm;)V

    invoke-interface {p2, p1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method
