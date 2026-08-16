.class public final synthetic Lv/s1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/ir/optimize/s0;

.field public final synthetic b:Lcom/android/tools/r8/graph/y;

.field public final synthetic c:Lcom/android/tools/r8/internal/QJ;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/ir/optimize/s0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/QJ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/s1;->a:Lcom/android/tools/r8/ir/optimize/s0;

    iput-object p2, p0, Lv/s1;->b:Lcom/android/tools/r8/graph/y;

    iput-object p3, p0, Lv/s1;->c:Lcom/android/tools/r8/internal/QJ;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lv/s1;->a:Lcom/android/tools/r8/ir/optimize/s0;

    iget-object v1, p0, Lv/s1;->b:Lcom/android/tools/r8/graph/y;

    iget-object v2, p0, Lv/s1;->c:Lcom/android/tools/r8/internal/QJ;

    check-cast p1, Lcom/android/tools/r8/graph/F0;

    check-cast p2, Lcom/android/tools/r8/internal/SD;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/tools/r8/ir/optimize/s0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/QJ;Lcom/android/tools/r8/graph/F0;Lcom/android/tools/r8/internal/SD;)V

    return-void
.end method
