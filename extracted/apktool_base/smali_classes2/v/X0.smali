.class public final synthetic Lv/X0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/ht0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/ir/optimize/q;

.field public final synthetic b:Ljava/util/function/Predicate;

.field public final synthetic c:Lcom/android/tools/r8/internal/fB;

.field public final synthetic d:Ljava/util/Set;

.field public final synthetic e:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/ir/optimize/q;Ljava/util/function/Predicate;Lcom/android/tools/r8/internal/fB;Ljava/util/Set;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/X0;->a:Lcom/android/tools/r8/ir/optimize/q;

    iput-object p2, p0, Lv/X0;->b:Ljava/util/function/Predicate;

    iput-object p3, p0, Lv/X0;->c:Lcom/android/tools/r8/internal/fB;

    iput-object p4, p0, Lv/X0;->d:Ljava/util/Set;

    iput-object p5, p0, Lv/X0;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8

    iget-object v0, p0, Lv/X0;->a:Lcom/android/tools/r8/ir/optimize/q;

    iget-object v1, p0, Lv/X0;->b:Ljava/util/function/Predicate;

    iget-object v2, p0, Lv/X0;->c:Lcom/android/tools/r8/internal/fB;

    iget-object v3, p0, Lv/X0;->d:Ljava/util/Set;

    iget-object v4, p0, Lv/X0;->e:Ljava/util/Map;

    move-object v5, p1

    check-cast v5, Lcom/android/tools/r8/internal/zE;

    move-object v6, p2

    check-cast v6, Lcom/android/tools/r8/internal/xw0;

    move-object v7, p3

    check-cast v7, Lcom/android/tools/r8/ir/optimize/i;

    invoke-virtual/range {v0 .. v7}, Lcom/android/tools/r8/ir/optimize/q;->a(Ljava/util/function/Predicate;Lcom/android/tools/r8/internal/fB;Ljava/util/Set;Ljava/util/Map;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/ir/optimize/i;)Z

    move-result p1

    return p1
.end method
