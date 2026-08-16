.class public final synthetic Lcom/android/tools/r8/internal/gc1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Ljava/util/Map;

.field public final synthetic b:Lcom/android/tools/r8/graph/y;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/gc1;->a:Ljava/util/Map;

    iput-object p2, p0, Lcom/android/tools/r8/internal/gc1;->b:Lcom/android/tools/r8/graph/y;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/gc1;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/tools/r8/internal/gc1;->b:Lcom/android/tools/r8/graph/y;

    check-cast p1, Lcom/android/tools/r8/internal/Vk0;

    check-cast p2, Ljava/util/LinkedList;

    invoke-static {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/gd;->a(Ljava/util/Map;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Vk0;Ljava/util/LinkedList;)V

    return-void
.end method
