.class public final Lcom/android/tools/r8/internal/rC;
.super Lcom/android/tools/r8/internal/sC;
.source "SourceFile"


# instance fields
.field public final transient e:Lcom/android/tools/r8/internal/nC;

.field public final transient f:Lcom/android/tools/r8/internal/hC;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/hC;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/internal/sC;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/internal/rC;->e:Lcom/android/tools/r8/internal/nC;

    .line 3
    iput-object p2, p0, Lcom/android/tools/r8/internal/rC;->f:Lcom/android/tools/r8/internal/hC;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/nC;[Ljava/util/Map$Entry;)V
    .locals 1

    .line 4
    array-length v0, p2

    invoke-static {v0, p2}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p2

    .line 5
    invoke-direct {p0}, Lcom/android/tools/r8/internal/sC;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/android/tools/r8/internal/rC;->e:Lcom/android/tools/r8/internal/nC;

    .line 7
    iput-object p2, p0, Lcom/android/tools/r8/internal/rC;->f:Lcom/android/tools/r8/internal/hC;

    return-void
.end method


# virtual methods
.method public final a(I[Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/rC;->f:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/hC;->a(I[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final forEach(Ljava/util/function/Consumer;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/rC;->f:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/hC;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final iterator()Lcom/android/tools/r8/internal/Av0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/rC;->f:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hC;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v0

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/rC;->f:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hC;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lcom/android/tools/r8/internal/hC;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/Se0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/rC;->f:Lcom/android/tools/r8/internal/hC;

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/internal/Se0;-><init>(Lcom/android/tools/r8/internal/JC;Lcom/android/tools/r8/internal/hC;)V

    return-object v0
.end method

.method public final k()Lcom/android/tools/r8/internal/nC;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/rC;->e:Lcom/android/tools/r8/internal/nC;

    return-object v0
.end method

.method public final spliterator()Ljava/util/Spliterator;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/rC;->f:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hC;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
