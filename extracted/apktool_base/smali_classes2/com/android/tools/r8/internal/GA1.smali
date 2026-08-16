.class public final synthetic Lcom/android/tools/r8/internal/GA1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/ya0;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Lcom/android/tools/r8/internal/Dq;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/ya0;Ljava/util/Map;Lcom/android/tools/r8/internal/Dq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/GA1;->a:Lcom/android/tools/r8/internal/ya0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/GA1;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/android/tools/r8/internal/GA1;->c:Lcom/android/tools/r8/internal/Dq;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/GA1;->a:Lcom/android/tools/r8/internal/ya0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/GA1;->b:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/tools/r8/internal/GA1;->c:Lcom/android/tools/r8/internal/Dq;

    check-cast p1, Lcom/android/tools/r8/graph/F2;

    check-cast p2, Lcom/android/tools/r8/internal/Dq;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/tools/r8/internal/ya0;->a(Ljava/util/Map;Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/internal/Dq;)V

    return-void
.end method
