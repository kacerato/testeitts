.class Lcom/android/tools/r8/kotlin/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/shaking/f0;


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/M2;

.field public final b:Ljava/lang/String;

.field public final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/android/tools/r8/kotlin/s0;->a:Lcom/android/tools/r8/graph/M2;

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/android/tools/r8/kotlin/s0;->c:Z

    .line 10
    iput-object p1, p0, Lcom/android/tools/r8/kotlin/s0;->b:Ljava/lang/String;

    .line 11
    sget-boolean v0, Lcom/android/tools/r8/kotlin/s0;->d:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/tools/r8/graph/M2;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/kotlin/s0;->b:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/android/tools/r8/kotlin/s0;->a:Lcom/android/tools/r8/graph/M2;

    .line 4
    iput-boolean p3, p0, Lcom/android/tools/r8/kotlin/s0;->c:Z

    .line 5
    sget-boolean p1, Lcom/android/tools/r8/kotlin/s0;->d:Z

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 3

    .line 22
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 23
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/tools/r8/kotlin/s0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1

    .line 25
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-nez v0, :cond_2

    return-object p1

    .line 26
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    .line 27
    iget-object v2, p0, Lcom/android/tools/r8/graph/y;->k:Lcom/android/tools/r8/internal/Hz;

    .line 28
    invoke-virtual {v0, v2, p1}, Lcom/android/tools/r8/internal/Hz;->d(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 29
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 30
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/i;->i(Lcom/android/tools/r8/graph/M2;)Z

    move-result p0

    if-nez p0, :cond_3

    return-object v1

    :cond_3
    return-object p1
.end method

.method public static a(Ljava/lang/String;Lcom/android/tools/r8/graph/u1;Ljava/lang/String;)Lcom/android/tools/r8/kotlin/s0;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/Bl;->a:Lcom/android/tools/r8/internal/nC;

    const/16 v0, 0x2f

    const/16 v1, 0x2e

    .line 2
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/android/tools/r8/internal/Bl;->E(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {p0}, Lcom/android/tools/r8/internal/Bl;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p0}, Lcom/android/tools/r8/internal/Bl;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 7
    :goto_0
    invoke-static {p0, p1, p2, v0}, Lcom/android/tools/r8/kotlin/s0;->a(Ljava/lang/String;Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Z)Lcom/android/tools/r8/kotlin/s0;

    move-result-object p0

    return-object p0

    .line 8
    :cond_1
    new-instance p1, Lcom/android/tools/r8/kotlin/s0;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/kotlin/s0;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public static a(Ljava/lang/String;Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Z)Lcom/android/tools/r8/kotlin/s0;
    .locals 1

    .line 9
    invoke-static {p0}, Lcom/android/tools/r8/internal/Bl;->z(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    .line 11
    new-instance p1, Lcom/android/tools/r8/kotlin/s0;

    invoke-direct {p1, p2, p0, p3}, Lcom/android/tools/r8/kotlin/s0;-><init>(Ljava/lang/String;Lcom/android/tools/r8/graph/M2;Z)V

    return-object p1

    .line 12
    :cond_0
    new-instance p0, Lcom/android/tools/r8/kotlin/s0;

    invoke-direct {p0, p2}, Lcom/android/tools/r8/kotlin/s0;-><init>(Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/d1;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/s0;->a:Lcom/android/tools/r8/graph/M2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/s0;->a:Lcom/android/tools/r8/graph/M2;

    invoke-interface {p1, v0}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    :cond_0
    return-void
.end method

.method public final synthetic a(Ljava/lang/String;Ljava/util/function/Consumer;Ljava/lang/String;)V
    .locals 0

    if-eqz p3, :cond_2

    .line 16
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 17
    :cond_0
    iget-boolean p1, p0, Lcom/android/tools/r8/kotlin/s0;->c:Z

    if-eqz p1, :cond_1

    .line 18
    invoke-static {p3}, Lcom/android/tools/r8/internal/Bl;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 19
    :cond_1
    invoke-static {p3}, Lcom/android/tools/r8/internal/Bl;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 20
    :goto_0
    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 21
    :cond_2
    :goto_1
    invoke-interface {p2, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;Ljava/lang/String;)Z
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/s0;->a:Lcom/android/tools/r8/graph/M2;

    if-nez v0, :cond_0

    .line 14
    iget-object p2, p0, Lcom/android/tools/r8/kotlin/s0;->b:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    .line 15
    :cond_0
    new-instance v0, Lcom/android/tools/r8/kotlin/N4;

    invoke-direct {v0, p0, p3, p1}, Lcom/android/tools/r8/kotlin/N4;-><init>(Lcom/android/tools/r8/kotlin/s0;Ljava/lang/String;Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/tools/r8/kotlin/s0;->b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/s0;->a:Lcom/android/tools/r8/graph/M2;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p2, p0, Lcom/android/tools/r8/kotlin/s0;->b:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return v1

    :cond_0
    invoke-static {p2, v0}, Lcom/android/tools/r8/kotlin/s0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object p2, p0, Lcom/android/tools/r8/kotlin/s0;->a:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/android/tools/r8/kotlin/b;->a:Lcom/android/tools/r8/internal/QC;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return v1

    :cond_1
    invoke-interface {p1, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return v2

    :cond_2
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->s()Lcom/android/tools/r8/naming/r0;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/naming/r0;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/tools/r8/kotlin/s0;->a:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/s0;->a:Lcom/android/tools/r8/graph/M2;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/s0;->b:Ljava/lang/String;

    return-object v0
.end method
