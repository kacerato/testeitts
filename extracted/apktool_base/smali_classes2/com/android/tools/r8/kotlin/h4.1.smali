.class public final synthetic Lcom/android/tools/r8/kotlin/h4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/U6;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Lcom/android/tools/r8/graph/y;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/U6;Ljava/util/Map;Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/h4;->a:Lcom/android/tools/r8/internal/U6;

    iput-object p2, p0, Lcom/android/tools/r8/kotlin/h4;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/android/tools/r8/kotlin/h4;->c:Lcom/android/tools/r8/graph/y;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/h4;->a:Lcom/android/tools/r8/internal/U6;

    iget-object v1, p0, Lcom/android/tools/r8/kotlin/h4;->b:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/tools/r8/kotlin/h4;->c:Lcom/android/tools/r8/graph/y;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/tools/r8/kotlin/m;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/tools/r8/kotlin/n;->a(Lcom/android/tools/r8/internal/U6;Ljava/util/Map;Lcom/android/tools/r8/graph/y;Ljava/lang/String;Lcom/android/tools/r8/kotlin/m;)V

    return-void
.end method
