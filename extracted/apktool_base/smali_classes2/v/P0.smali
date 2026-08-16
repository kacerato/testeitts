.class public final synthetic Lv/P0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/ir/optimize/k;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/ir/optimize/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/P0;->a:Lcom/android/tools/r8/ir/optimize/k;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lv/P0;->a:Lcom/android/tools/r8/ir/optimize/k;

    check-cast p1, Lcom/android/tools/r8/internal/zE;

    check-cast p2, Ljava/util/Map;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/ir/optimize/k;->a(Lcom/android/tools/r8/internal/zE;Ljava/util/Map;)V

    return-void
.end method
