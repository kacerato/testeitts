.class public final synthetic Lcom/android/tools/r8/internal/TE0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/Ft;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Lcom/android/tools/r8/graph/O5;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Ft;Ljava/util/Map;Lcom/android/tools/r8/graph/O5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/TE0;->a:Lcom/android/tools/r8/internal/Ft;

    iput-object p2, p0, Lcom/android/tools/r8/internal/TE0;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/android/tools/r8/internal/TE0;->c:Lcom/android/tools/r8/graph/O5;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/TE0;->a:Lcom/android/tools/r8/internal/Ft;

    iget-object v1, p0, Lcom/android/tools/r8/internal/TE0;->b:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/tools/r8/internal/TE0;->c:Lcom/android/tools/r8/graph/O5;

    check-cast p1, Lcom/android/tools/r8/internal/aX;

    check-cast p2, Ljava/util/Set;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/tools/r8/internal/Ft;->a(Lcom/android/tools/r8/internal/Ft;Ljava/util/Map;Lcom/android/tools/r8/graph/O5;Lcom/android/tools/r8/internal/aX;Ljava/util/Set;)V

    return-void
.end method
