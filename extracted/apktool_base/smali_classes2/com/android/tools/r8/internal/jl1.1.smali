.class public final synthetic Lcom/android/tools/r8/internal/jl1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/android/tools/r8/internal/oi;

.field public final synthetic d:Lcom/android/tools/r8/graph/H5;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/android/tools/r8/internal/oi;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/jl1;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/android/tools/r8/internal/jl1;->c:Lcom/android/tools/r8/internal/oi;

    iput-object p3, p0, Lcom/android/tools/r8/internal/jl1;->d:Lcom/android/tools/r8/graph/H5;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/jl1;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/android/tools/r8/internal/jl1;->c:Lcom/android/tools/r8/internal/oi;

    iget-object v2, p0, Lcom/android/tools/r8/internal/jl1;->d:Lcom/android/tools/r8/graph/H5;

    check-cast p1, Lcom/android/tools/r8/graph/H5;

    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/mi;->a(Ljava/util/List;Lcom/android/tools/r8/internal/oi;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method
