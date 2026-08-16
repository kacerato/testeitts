.class public final synthetic Lcom/android/tools/r8/internal/Ji1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/lY;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/lY;Ljava/util/List;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ji1;->a:Lcom/android/tools/r8/internal/lY;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Ji1;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Ji1;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ji1;->a:Lcom/android/tools/r8/internal/lY;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ji1;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Ji1;->c:Ljava/util/Map;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    check-cast p2, Ljava/util/Set;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/tools/r8/internal/lY;->a(Ljava/util/List;Ljava/util/Map;Lcom/android/tools/r8/graph/M2;Ljava/util/Set;)V

    return-void
.end method
