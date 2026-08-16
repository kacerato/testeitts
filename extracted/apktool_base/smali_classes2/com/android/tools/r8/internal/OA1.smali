.class public final synthetic Lcom/android/tools/r8/internal/OA1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Ljava/util/Map;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/OA1;->a:Ljava/util/Map;

    iput-object p2, p0, Lcom/android/tools/r8/internal/OA1;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/OA1;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/tools/r8/internal/OA1;->b:Ljava/util/List;

    check-cast p1, Lcom/android/tools/r8/FeatureSplit;

    check-cast p2, Lcom/android/tools/r8/internal/ci0;

    invoke-static {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/yb0;->a(Ljava/util/Map;Ljava/util/List;Lcom/android/tools/r8/FeatureSplit;Lcom/android/tools/r8/internal/ci0;)V

    return-void
.end method
