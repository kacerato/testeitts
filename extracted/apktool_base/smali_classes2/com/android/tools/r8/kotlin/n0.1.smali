.class public final Lcom/android/tools/r8/kotlin/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/kotlin/p;


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/PQ;

.field public final b:Lcom/android/tools/r8/kotlin/O;

.field public final c:Ljava/lang/String;

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/PQ;Lcom/android/tools/r8/kotlin/O;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/n0;->a:Lcom/android/tools/r8/internal/PQ;

    iput-object p2, p0, Lcom/android/tools/r8/kotlin/n0;->b:Lcom/android/tools/r8/kotlin/O;

    iput p3, p0, Lcom/android/tools/r8/kotlin/n0;->d:I

    iput-object p4, p0, Lcom/android/tools/r8/kotlin/n0;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/o50;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/n0;->a:Lcom/android/tools/r8/internal/PQ;

    sget-object v1, Lcom/android/tools/r8/kotlin/b0;->a:Lcom/android/tools/r8/internal/ML;

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/PQ;->a()Lcom/android/tools/r8/internal/ML;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/ML;->a(Lcom/android/tools/r8/internal/ML;)I

    move-result v2

    if-gez v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/PQ;->a(Lcom/android/tools/r8/internal/ML;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/n0;->b:Lcom/android/tools/r8/kotlin/O;

    if-nez v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/android/tools/r8/kotlin/n0;->a:Lcom/android/tools/r8/internal/PQ;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/PQ;->b()Lcom/android/tools/r8/internal/KL;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/o50;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/o50;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    new-instance v0, Lcom/android/tools/r8/internal/C7;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/C7;-><init>()V

    .line 7
    iget-object v1, p0, Lcom/android/tools/r8/kotlin/n0;->b:Lcom/android/tools/r8/kotlin/O;

    new-instance v2, Lcom/android/tools/r8/kotlin/i4;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/kotlin/i4;-><init>(Lcom/android/tools/r8/internal/C7;)V

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/tools/r8/kotlin/O;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    .line 8
    sget-boolean p2, Lcom/android/tools/r8/kotlin/n0;->e:Z

    if-nez p2, :cond_3

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/D7;->b()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/android/tools/r8/kotlin/n0;->a:Lcom/android/tools/r8/internal/PQ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/rQ;

    .line 10
    iput-object v0, p2, Lcom/android/tools/r8/internal/PQ;->b:Lcom/android/tools/r8/internal/rQ;

    .line 11
    iget-object p2, p0, Lcom/android/tools/r8/kotlin/n0;->a:Lcom/android/tools/r8/internal/PQ;

    const/4 v0, 0x0

    .line 12
    iput v0, p2, Lcom/android/tools/r8/internal/PQ;->d:I

    .line 13
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/PQ;->b()Lcom/android/tools/r8/internal/KL;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/tools/r8/internal/o50;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/o50;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/d1;)V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/n0;->b:Lcom/android/tools/r8/kotlin/O;

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, v0, Lcom/android/tools/r8/kotlin/O;->a:Lcom/android/tools/r8/kotlin/K;

    .line 16
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/kotlin/K;->a(Lcom/android/tools/r8/graph/d1;)V

    :cond_0
    return-void
.end method

.method public final g()Lcom/android/tools/r8/kotlin/n0;
    .locals 0

    return-object p0
.end method

.method public final l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/n0;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final u()Lcom/android/tools/r8/internal/ML;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/n0;->a:Lcom/android/tools/r8/internal/PQ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/PQ;->c:Lcom/android/tools/r8/internal/ML;

    return-object v0
.end method
