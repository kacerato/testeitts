.class public final synthetic Lv/p1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/ir/optimize/s0;

.field public final synthetic b:Lcom/android/tools/r8/graph/y;

.field public final synthetic c:Lcom/android/tools/r8/internal/xw0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/ir/optimize/s0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/xw0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/p1;->a:Lcom/android/tools/r8/ir/optimize/s0;

    iput-object p2, p0, Lv/p1;->b:Lcom/android/tools/r8/graph/y;

    iput-object p3, p0, Lv/p1;->c:Lcom/android/tools/r8/internal/xw0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lv/p1;->a:Lcom/android/tools/r8/ir/optimize/s0;

    iget-object v1, p0, Lv/p1;->b:Lcom/android/tools/r8/graph/y;

    iget-object v2, p0, Lv/p1;->c:Lcom/android/tools/r8/internal/xw0;

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    check-cast p2, Lcom/android/tools/r8/internal/F1;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/tools/r8/ir/optimize/s0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/F1;)V

    return-void
.end method
