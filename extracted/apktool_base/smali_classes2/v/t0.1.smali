.class public final synthetic Lv/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/ir/optimize/e0;

.field public final synthetic c:Lcom/android/tools/r8/graph/H5;

.field public final synthetic d:Lcom/android/tools/r8/internal/dX;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/ir/optimize/e0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/dX;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/t0;->b:Lcom/android/tools/r8/ir/optimize/e0;

    iput-object p2, p0, Lv/t0;->c:Lcom/android/tools/r8/graph/H5;

    iput-object p3, p0, Lv/t0;->d:Lcom/android/tools/r8/internal/dX;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lv/t0;->b:Lcom/android/tools/r8/ir/optimize/e0;

    iget-object v1, p0, Lv/t0;->c:Lcom/android/tools/r8/graph/H5;

    iget-object v2, p0, Lv/t0;->d:Lcom/android/tools/r8/internal/dX;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/ir/optimize/e0;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/dX;)Lcom/android/tools/r8/ir/optimize/H;

    move-result-object v0

    return-object v0
.end method
