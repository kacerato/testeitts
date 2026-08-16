.class public final Lcom/android/tools/r8/internal/Tl;
.super Lcom/android/tools/r8/internal/Ql;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/internal/jl;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/android/tools/r8/internal/Pl;

.field public final e:[Lcom/android/tools/r8/internal/Rl;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/jl;Lcom/android/tools/r8/internal/Pl;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ql;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Tl;->b:Lcom/android/tools/r8/internal/jl;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/jl;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p2, v1, v0}, Lcom/android/tools/r8/internal/Ul;->a(Lcom/android/tools/r8/internal/Pl;Lcom/android/tools/r8/internal/Cl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Tl;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Tl;->d:Lcom/android/tools/r8/internal/Pl;

    iget-object v0, p1, Lcom/android/tools/r8/internal/jl;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/tools/r8/internal/Rl;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Tl;->e:[Lcom/android/tools/r8/internal/Rl;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lcom/android/tools/r8/internal/jl;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Tl;->e:[Lcom/android/tools/r8/internal/Rl;

    new-instance v2, Lcom/android/tools/r8/internal/Rl;

    iget-object v3, p1, Lcom/android/tools/r8/internal/jl;->d:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Wk;

    invoke-direct {v2, v3, p2, p0}, Lcom/android/tools/r8/internal/Rl;-><init>(Lcom/android/tools/r8/internal/Wk;Lcom/android/tools/r8/internal/Pl;Lcom/android/tools/r8/internal/Tl;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p2, Lcom/android/tools/r8/internal/Pl;->h:Lcom/android/tools/r8/internal/El;

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/El;->a(Lcom/android/tools/r8/internal/Ql;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/Pl;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Tl;->d:Lcom/android/tools/r8/internal/Pl;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Tl;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Tl;->b:Lcom/android/tools/r8/internal/jl;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/jl;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/android/tools/r8/internal/fW;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Tl;->b:Lcom/android/tools/r8/internal/jl;

    return-object v0
.end method
