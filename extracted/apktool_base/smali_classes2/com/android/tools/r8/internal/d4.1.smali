.class public final Lcom/android/tools/r8/internal/d4;
.super Lcom/android/tools/r8/internal/L70;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/c4;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/L70;-><init>(Lcom/android/tools/r8/internal/m1;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/L70;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/d4;

    iget-object v1, p0, Lcom/android/tools/r8/internal/L70;->a:Lcom/android/tools/r8/internal/m1;

    check-cast v1, Lcom/android/tools/r8/internal/c4;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/d4;-><init>(Lcom/android/tools/r8/internal/c4;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/p1;
    .locals 1

    .line 2
    invoke-static {}, Lcom/android/tools/r8/internal/q4;->d()Lcom/android/tools/r8/internal/q4$a;

    move-result-object v0

    .line 3
    iput-object p1, v0, Lcom/android/tools/r8/internal/q4$a;->b:Lcom/android/tools/r8/graph/A2;

    return-object v0
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/n1;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/i4;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/i4;-><init>()V

    iput-object p1, v0, Lcom/android/tools/r8/internal/i4;->b:Lcom/android/tools/r8/graph/M2;

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/l1;
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/c4;->b:Z

    new-instance v0, Lcom/android/tools/r8/internal/c4$a;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/c4$a;-><init>(Ljava/util/LinkedHashMap;)V

    return-object v0
.end method

.method public final d()Ljava/util/Comparator;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/f81;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/f81;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lcom/android/tools/r8/internal/L70;
    .locals 0

    return-object p0
.end method
