.class public final Lcom/android/tools/r8/internal/ro0;
.super Lcom/android/tools/r8/internal/L70;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/qo0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/L70;-><init>(Lcom/android/tools/r8/internal/m1;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/L70;
    .locals 2

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/ro0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/L70;->a:Lcom/android/tools/r8/internal/m1;

    check-cast v1, Lcom/android/tools/r8/internal/qo0;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/ro0;-><init>(Lcom/android/tools/r8/internal/qo0;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/p1;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/uo0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/uo0;-><init>()V

    .line 2
    iput-object p1, v0, Lcom/android/tools/r8/internal/uo0;->b:Lcom/android/tools/r8/graph/A2;

    return-object v0
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/n1;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/so0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/so0;-><init>()V

    iput-object p1, v0, Lcom/android/tools/r8/internal/so0;->b:Lcom/android/tools/r8/graph/M2;

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/l1;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/qo0$a;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/qo0$a;-><init>()V

    return-object v0
.end method

.method public final d()Ljava/util/Comparator;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/qs1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/qs1;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lcom/android/tools/r8/internal/L70;
    .locals 0

    return-object p0
.end method
