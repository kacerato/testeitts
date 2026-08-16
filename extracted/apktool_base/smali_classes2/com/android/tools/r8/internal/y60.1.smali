.class public final Lcom/android/tools/r8/internal/y60;
.super Lcom/android/tools/r8/internal/B60;
.source "SourceFile"


# static fields
.field public static final synthetic j:I


# instance fields
.field public final h:Lcom/android/tools/r8/internal/AH;

.field public final i:Lcom/android/tools/r8/graph/A2;


# direct methods
.method public constructor <init>(ILcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/B60;ZZLcom/android/tools/r8/internal/AH;Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/tools/r8/internal/B60;-><init>(ILcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/B60;ZZ)V

    iput-object p6, p0, Lcom/android/tools/r8/internal/y60;->h:Lcom/android/tools/r8/internal/AH;

    iput-object p7, p0, Lcom/android/tools/r8/internal/y60;->i:Lcom/android/tools/r8/graph/A2;

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/tools/r8/internal/B60;->a(Lcom/android/tools/r8/internal/Pq0;)V

    return-void
.end method

.method public static c(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/jz1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/jz1;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p0}, Lcom/android/tools/r8/internal/Nq0;->a(Lcom/android/tools/r8/internal/Pq0;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Pq0;->a()Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/kz1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/kz1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->b(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/lz1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/lz1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->e(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/mz1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/mz1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->e(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method


# virtual methods
.method public final E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public final a()Lcom/android/tools/r8/internal/y60;
    .locals 0

    return-object p0
.end method

.method public final b()Lcom/android/tools/r8/internal/B60$a;
    .locals 3

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/x60;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/x60;-><init>()V

    .line 3
    iget v1, p0, Lcom/android/tools/r8/internal/B60;->b:I

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/B60$a;->a(I)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/x60;

    iget-object v1, p0, Lcom/android/tools/r8/internal/B60;->c:Lcom/android/tools/r8/graph/A2;

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/B60$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/x60;

    iget-object v1, p0, Lcom/android/tools/r8/internal/B60;->d:Lcom/android/tools/r8/internal/B60;

    .line 6
    iput-object v1, v0, Lcom/android/tools/r8/internal/B60$a;->c:Lcom/android/tools/r8/internal/B60;

    .line 7
    iget-object v1, p0, Lcom/android/tools/r8/internal/y60;->i:Lcom/android/tools/r8/graph/A2;

    .line 8
    iput-object v1, v0, Lcom/android/tools/r8/internal/x60;->i:Lcom/android/tools/r8/graph/A2;

    .line 9
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/B60;->e:Z

    .line 10
    iput-boolean v1, v0, Lcom/android/tools/r8/internal/B60$a;->d:Z

    .line 11
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/B60;->f:Z

    .line 12
    iput-boolean v1, v0, Lcom/android/tools/r8/internal/B60$a;->e:Z

    .line 13
    iget-object v1, p0, Lcom/android/tools/r8/internal/y60;->h:Lcom/android/tools/r8/internal/AH;

    new-instance v2, Lcom/android/tools/r8/internal/iz1;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/iz1;-><init>(Lcom/android/tools/r8/internal/x60;)V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/AH;->a(Ljava/util/function/BiConsumer;)V

    return-object v0
.end method

.method public final d()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public final i()Lcom/android/tools/r8/graph/A2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/y60;->i:Lcom/android/tools/r8/graph/A2;

    return-object v0
.end method

.method public final j()Lcom/android/tools/r8/internal/AH;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/y60;->h:Lcom/android/tools/r8/internal/AH;

    return-object v0
.end method

.method public final m()Lcom/android/tools/r8/internal/Nq0;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/nz1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/nz1;-><init>()V

    return-object v0
.end method

.method public final o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final p()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
