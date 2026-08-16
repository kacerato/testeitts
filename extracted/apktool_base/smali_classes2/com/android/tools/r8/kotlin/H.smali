.class public final Lcom/android/tools/r8/kotlin/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/kotlin/p;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/NQ$b;

.field public final b:Lcom/android/tools/r8/kotlin/g0;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/NQ$b;Lcom/android/tools/r8/kotlin/g0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/H;->a:Lcom/android/tools/r8/internal/NQ$b;

    iput-object p2, p0, Lcom/android/tools/r8/kotlin/H;->b:Lcom/android/tools/r8/kotlin/g0;

    iput-object p3, p0, Lcom/android/tools/r8/kotlin/H;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/o50;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/sQ;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/sQ;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/kotlin/H;->b:Lcom/android/tools/r8/kotlin/g0;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/tools/r8/kotlin/g0;->a(Lcom/android/tools/r8/internal/sQ;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    .line 3
    iget-object p2, p0, Lcom/android/tools/r8/kotlin/H;->a:Lcom/android/tools/r8/internal/NQ$b;

    .line 4
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/NQ$b;->a()Lcom/android/tools/r8/internal/ML;

    move-result-object v1

    sget-object v2, Lcom/android/tools/r8/kotlin/b0;->a:Lcom/android/tools/r8/internal/ML;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/ML;->a(Lcom/android/tools/r8/internal/ML;)I

    move-result v1

    if-gez v1, :cond_0

    .line 5
    invoke-virtual {p2, v2}, Lcom/android/tools/r8/internal/NQ$b;->a(Lcom/android/tools/r8/internal/ML;)V

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/android/tools/r8/kotlin/H;->a:Lcom/android/tools/r8/internal/NQ$b;

    .line 7
    iput-object v0, p2, Lcom/android/tools/r8/internal/NQ$b;->b:Lcom/android/tools/r8/internal/sQ;

    .line 8
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/NQ$b;->b()Lcom/android/tools/r8/internal/KL;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/tools/r8/internal/o50;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/o50;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/d1;)V
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/H;->b:Lcom/android/tools/r8/kotlin/g0;

    .line 10
    iget-object v1, v0, Lcom/android/tools/r8/kotlin/g0;->b:Lcom/android/tools/r8/kotlin/C;

    .line 11
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/kotlin/C;->a(Lcom/android/tools/r8/graph/d1;)V

    .line 12
    iget-object v0, v0, Lcom/android/tools/r8/kotlin/g0;->c:Lcom/android/tools/r8/kotlin/P;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/kotlin/P;->a(Lcom/android/tools/r8/graph/d1;)V

    return-void
.end method

.method public final k()Lcom/android/tools/r8/kotlin/H;
    .locals 0

    return-object p0
.end method

.method public final o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/H;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final u()Lcom/android/tools/r8/internal/ML;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/H;->a:Lcom/android/tools/r8/internal/NQ$b;

    iget-object v0, v0, Lcom/android/tools/r8/internal/NQ$b;->c:Lcom/android/tools/r8/internal/ML;

    return-object v0
.end method
