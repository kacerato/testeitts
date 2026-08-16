.class public final synthetic Lv/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/ir/optimize/e0;

.field public final synthetic b:Lcom/android/tools/r8/internal/sY;

.field public final synthetic c:Lcom/android/tools/r8/internal/qU;

.field public final synthetic d:Lcom/android/tools/r8/internal/Hz;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/ir/optimize/e0;Lcom/android/tools/r8/internal/sY;Lcom/android/tools/r8/internal/qU;Lcom/android/tools/r8/internal/Hz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/w0;->a:Lcom/android/tools/r8/ir/optimize/e0;

    iput-object p2, p0, Lv/w0;->b:Lcom/android/tools/r8/internal/sY;

    iput-object p3, p0, Lv/w0;->c:Lcom/android/tools/r8/internal/qU;

    iput-object p4, p0, Lv/w0;->d:Lcom/android/tools/r8/internal/Hz;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lv/w0;->a:Lcom/android/tools/r8/ir/optimize/e0;

    iget-object v1, p0, Lv/w0;->b:Lcom/android/tools/r8/internal/sY;

    iget-object v2, p0, Lv/w0;->c:Lcom/android/tools/r8/internal/qU;

    iget-object v3, p0, Lv/w0;->d:Lcom/android/tools/r8/internal/Hz;

    move-object v4, p1

    check-cast v4, Lcom/android/tools/r8/graph/H5;

    move-object v5, p2

    check-cast v5, Ljava/util/Optional;

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/ir/optimize/e0;->a(Lcom/android/tools/r8/internal/sY;Lcom/android/tools/r8/internal/qU;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/H5;Ljava/util/Optional;)V

    return-void
.end method
