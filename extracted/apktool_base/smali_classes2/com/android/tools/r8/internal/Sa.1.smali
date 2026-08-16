.class public final Lcom/android/tools/r8/internal/Sa;
.super Lcom/android/tools/r8/internal/Ta;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final c:Lcom/android/tools/r8/shaking/Q;

.field public final d:Lcom/android/tools/r8/internal/Y9;

.field public final e:Ljava/util/function/BiConsumer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/shaking/Q;Lcom/android/tools/r8/internal/Y9;Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ta;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Sa;->c:Lcom/android/tools/r8/shaking/Q;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Sa;->d:Lcom/android/tools/r8/internal/Y9;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Sa;->e:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 12
    iget-object p1, p0, Lcom/android/tools/r8/internal/Sa;->c:Lcom/android/tools/r8/shaking/Q;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/shaking/Q;->a(Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/E0;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/Sa;->c:Lcom/android/tools/r8/shaking/Q;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/shaking/Q;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/E0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/I0;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/Sa;->c:Lcom/android/tools/r8/shaking/Q;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/shaking/Q;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/E0;)V

    .line 4
    iget-object p1, p0, Lcom/android/tools/r8/internal/Sa;->c:Lcom/android/tools/r8/shaking/Q;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/shaking/Q;->a(Lcom/android/tools/r8/graph/I0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/yI;)V
    .locals 0

    .line 2
    iget-object p3, p0, Lcom/android/tools/r8/internal/Sa;->e:Ljava/util/function/BiConsumer;

    invoke-interface {p3, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H0;)V
    .locals 0

    .line 8
    iget-object p2, p0, Lcom/android/tools/r8/internal/Sa;->c:Lcom/android/tools/r8/shaking/Q;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/shaking/Q;->a(Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 10
    sget-boolean p2, Lcom/android/tools/r8/internal/Sa;->f:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/tools/r8/internal/Sa;->d:Lcom/android/tools/r8/internal/Y9;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Y9;->a(Lcom/android/tools/r8/graph/H5;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 11
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/Sa;->c:Lcom/android/tools/r8/shaking/Q;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/shaking/Q;->a(Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/Z4$a;)V
    .locals 0

    .line 9
    iget-object p2, p0, Lcom/android/tools/r8/internal/Sa;->c:Lcom/android/tools/r8/shaking/Q;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/shaking/Q;->a(Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/cu;)V
    .locals 0

    .line 7
    iget-object p2, p0, Lcom/android/tools/r8/internal/Sa;->c:Lcom/android/tools/r8/shaking/Q;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/shaking/Q;->a(Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/I0;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/Sa;->c:Lcom/android/tools/r8/shaking/Q;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/Q;->a(Lcom/android/tools/r8/graph/I0;)V

    return-void
.end method

.method public final b()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Sa;->c:Lcom/android/tools/r8/shaking/Q;

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/shaking/Q;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/E0;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/Sa;->c:Lcom/android/tools/r8/shaking/Q;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/shaking/Q;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/E0;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/I0;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/Sa;->c:Lcom/android/tools/r8/shaking/Q;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/Q;->a(Lcom/android/tools/r8/graph/I0;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/I0;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Sa;->c:Lcom/android/tools/r8/shaking/Q;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/Q;->a(Lcom/android/tools/r8/graph/I0;)V

    return-void
.end method

.method public final e(Lcom/android/tools/r8/graph/I0;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Sa;->c:Lcom/android/tools/r8/shaking/Q;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/Q;->a(Lcom/android/tools/r8/graph/I0;)V

    return-void
.end method

.method public final u(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    iget-object p2, p0, Lcom/android/tools/r8/internal/Sa;->c:Lcom/android/tools/r8/shaking/Q;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/shaking/Q;->a(Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final v(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    iget-object p2, p0, Lcom/android/tools/r8/internal/Sa;->c:Lcom/android/tools/r8/shaking/Q;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/shaking/Q;->a(Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final z(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    iget-object p2, p0, Lcom/android/tools/r8/internal/Sa;->c:Lcom/android/tools/r8/shaking/Q;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/shaking/Q;->a(Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method
