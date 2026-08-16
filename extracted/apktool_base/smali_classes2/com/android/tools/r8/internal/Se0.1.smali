.class public Lcom/android/tools/r8/internal/Se0;
.super Lcom/android/tools/r8/internal/TB;
.source "SourceFile"


# instance fields
.field public final d:Lcom/android/tools/r8/internal/XB;

.field public final e:Lcom/android/tools/r8/internal/hC;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/JC;Lcom/android/tools/r8/internal/hC;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/internal/TB;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/internal/Se0;->d:Lcom/android/tools/r8/internal/XB;

    .line 3
    iput-object p2, p0, Lcom/android/tools/r8/internal/Se0;->e:Lcom/android/tools/r8/internal/hC;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/XB;[Ljava/lang/Object;)V
    .locals 1

    .line 4
    array-length v0, p2

    invoke-static {v0, p2}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p2

    .line 5
    invoke-direct {p0}, Lcom/android/tools/r8/internal/TB;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/android/tools/r8/internal/Se0;->d:Lcom/android/tools/r8/internal/XB;

    .line 7
    iput-object p2, p0, Lcom/android/tools/r8/internal/Se0;->e:Lcom/android/tools/r8/internal/hC;

    return-void
.end method


# virtual methods
.method public final a(I[Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Se0;->e:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/hC;->a(I[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final b()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Se0;->e:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/XB;->b()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Se0;->e:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/XB;->c()I

    move-result v0

    return v0
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Se0;->e:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/XB;->d()I

    move-result v0

    return v0
.end method

.method public final forEach(Ljava/util/function/Consumer;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Se0;->e:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/hC;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Se0;->e:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final j(I)Lcom/android/tools/r8/internal/G;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Se0;->e:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/hC;->j(I)Lcom/android/tools/r8/internal/G;

    move-result-object p1

    return-object p1
.end method

.method public j()Lcom/android/tools/r8/internal/XB;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Se0;->d:Lcom/android/tools/r8/internal/XB;

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Se0;->e:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/hC;->j(I)Lcom/android/tools/r8/internal/G;

    move-result-object p1

    return-object p1
.end method
