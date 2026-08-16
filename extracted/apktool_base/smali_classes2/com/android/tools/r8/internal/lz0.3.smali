.class public final synthetic Lcom/android/tools/r8/internal/lz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Wr0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/Aj;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Aj;Ljava/util/Map;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/lz0;->a:Lcom/android/tools/r8/internal/Aj;

    iput-object p2, p0, Lcom/android/tools/r8/internal/lz0;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/android/tools/r8/internal/lz0;->c:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/lz0;->a:Lcom/android/tools/r8/internal/Aj;

    iget-object v1, p0, Lcom/android/tools/r8/internal/lz0;->b:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/tools/r8/internal/lz0;->c:Ljava/util/function/Consumer;

    check-cast p1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/Aj;->b(Ljava/util/Map;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method
