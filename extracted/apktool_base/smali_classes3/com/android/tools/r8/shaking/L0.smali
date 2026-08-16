.class public abstract Lcom/android/tools/r8/shaking/L0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/shaking/N;

.field public final b:Ljava/util/concurrent/ConcurrentLinkedQueue;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/shaking/N;Ljava/util/concurrent/ConcurrentLinkedQueue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/L0;->a:Lcom/android/tools/r8/shaking/N;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/L0;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/X1;)V
.end method

.method public abstract a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/x;)V
.end method

.method public abstract a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/graph/p0;)V
.end method

.method public abstract a(Lcom/android/tools/r8/graph/F5;)V
.end method

.method public abstract a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/X1;)V
.end method

.method public abstract a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/H5;)V
.end method

.method public abstract a(Lcom/android/tools/r8/graph/H2;)V
.end method

.method public abstract a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;ILcom/android/tools/r8/shaking/X1;)V
.end method

.method public abstract a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/R0;)V
.end method

.method public abstract a(Lcom/android/tools/r8/graph/H5;)V
.end method

.method public abstract a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)V
.end method

.method public abstract a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)V
.end method

.method public abstract a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;)V
.end method

.method public abstract a(Lcom/android/tools/r8/internal/b2;)V
.end method

.method public abstract a(Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/H5;)V
.end method

.method public abstract a(Lcom/android/tools/r8/shaking/k0;)V
.end method

.method public final a(Ljava/util/Set;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/shaking/U6;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/U6;-><init>(Lcom/android/tools/r8/shaking/L0;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/L0;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public abstract a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/X1;)Z
.end method

.method public abstract b()Lcom/android/tools/r8/shaking/u0;
.end method

.method public abstract b(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/H5;)V
.end method

.method public abstract b(Lcom/android/tools/r8/graph/H2;)V
.end method

.method public abstract b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)V
.end method

.method public abstract b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)V
.end method

.method public abstract c(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/H5;)V
.end method

.method public abstract c(Lcom/android/tools/r8/graph/H2;)V
.end method
