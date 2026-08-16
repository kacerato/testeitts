.class public final Lcom/android/tools/r8/internal/Cg;
.super Lcom/android/tools/r8/internal/U0;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/android/tools/r8/internal/Dg;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Dg;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Cg;->c:Lcom/android/tools/r8/internal/Dg;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/U0;-><init>(Lcom/android/tools/r8/internal/V0;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/LY;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cg;->c:Lcom/android/tools/r8/internal/Dg;

    return-object v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/U0;->b:Lcom/android/tools/r8/internal/V0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/V0;->c()I

    move-result v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/tools/r8/internal/CT;->a(I)I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/U0;->b:Lcom/android/tools/r8/internal/V0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/V0;->g()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/U0;->b:Lcom/android/tools/r8/internal/V0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/V0;->c()I

    move-result v0

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/tools/r8/internal/CT;->a(I)I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/U0;->b:Lcom/android/tools/r8/internal/V0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/V0;->g()Ljava/util/Iterator;

    move-result-object v0

    .line 9
    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 10
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
