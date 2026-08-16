.class public final synthetic Lcom/android/tools/r8/internal/Df1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Ljava/util/Map;

.field public final synthetic b:Ljava/util/function/BiConsumer;

.field public final synthetic c:Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Df1;->a:Ljava/util/Map;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Df1;->b:Ljava/util/function/BiConsumer;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Df1;->c:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Df1;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Df1;->b:Ljava/util/function/BiConsumer;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Df1;->c:Ljava/util/function/BiConsumer;

    check-cast p1, Lcom/android/tools/r8/graph/n1;

    check-cast p2, Lcom/android/tools/r8/graph/M2;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/tools/r8/internal/jY;->a(Ljava/util/Map;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;Lcom/android/tools/r8/graph/n1;Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method
