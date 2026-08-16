.class public final synthetic Lv/f1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/gt0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/ir/optimize/q;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Lcom/android/tools/r8/internal/tR;

.field public final synthetic d:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/ir/optimize/q;Ljava/util/Map;Lcom/android/tools/r8/internal/tR;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/f1;->a:Lcom/android/tools/r8/ir/optimize/q;

    iput-object p2, p0, Lv/f1;->b:Ljava/util/Map;

    iput-object p3, p0, Lv/f1;->c:Lcom/android/tools/r8/internal/tR;

    iput-object p4, p0, Lv/f1;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lv/f1;->a:Lcom/android/tools/r8/ir/optimize/q;

    iget-object v1, p0, Lv/f1;->b:Ljava/util/Map;

    iget-object v2, p0, Lv/f1;->c:Lcom/android/tools/r8/internal/tR;

    iget-object v3, p0, Lv/f1;->d:Ljava/util/Map;

    move-object v4, p1

    check-cast v4, Lcom/android/tools/r8/internal/zE;

    move-object v5, p2

    check-cast v5, Lcom/android/tools/r8/internal/xw0;

    move-object v6, p3

    check-cast v6, Lcom/android/tools/r8/ir/optimize/i;

    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/ir/optimize/q;->a(Ljava/util/Map;Lcom/android/tools/r8/internal/tR;Ljava/util/Map;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/ir/optimize/i;)Lcom/android/tools/r8/ir/optimize/h;

    move-result-object p1

    return-object p1
.end method
