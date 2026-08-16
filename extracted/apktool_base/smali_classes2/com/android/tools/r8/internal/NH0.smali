.class public final synthetic Lcom/android/tools/r8/internal/NH0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/Hz;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Hz;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/NH0;->a:Lcom/android/tools/r8/internal/Hz;

    iput-object p2, p0, Lcom/android/tools/r8/internal/NH0;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/android/tools/r8/internal/NH0;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/NH0;->a:Lcom/android/tools/r8/internal/Hz;

    iget-object v1, p0, Lcom/android/tools/r8/internal/NH0;->b:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/tools/r8/internal/NH0;->c:Ljava/util/Map;

    check-cast p1, Lcom/android/tools/r8/graph/J2;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/tools/r8/internal/Hz;->a(Ljava/util/Map;Ljava/util/Map;Lcom/android/tools/r8/graph/J2;Ljava/lang/Object;)V

    return-void
.end method
