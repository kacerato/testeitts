.class public final synthetic Lv/G1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/ir/optimize/w;

.field public final synthetic b:Ljava/util/Set;

.field public final synthetic c:Ljava/util/Map;

.field public final synthetic d:Lcom/android/tools/r8/graph/H5;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/ir/optimize/w;Ljava/util/Set;Ljava/util/Map;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/G1;->a:Lcom/android/tools/r8/ir/optimize/w;

    iput-object p2, p0, Lv/G1;->b:Ljava/util/Set;

    iput-object p3, p0, Lv/G1;->c:Ljava/util/Map;

    iput-object p4, p0, Lv/G1;->d:Lcom/android/tools/r8/graph/H5;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lv/G1;->a:Lcom/android/tools/r8/ir/optimize/w;

    iget-object v1, p0, Lv/G1;->b:Ljava/util/Set;

    iget-object v2, p0, Lv/G1;->c:Ljava/util/Map;

    iget-object v3, p0, Lv/G1;->d:Lcom/android/tools/r8/graph/H5;

    move-object v4, p1

    check-cast v4, Lcom/android/tools/r8/graph/g1;

    move-object v5, p2

    check-cast v5, Lcom/android/tools/r8/internal/No0;

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/ir/optimize/w;->a(Ljava/util/Set;Ljava/util/Map;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/internal/No0;)V

    return-void
.end method
