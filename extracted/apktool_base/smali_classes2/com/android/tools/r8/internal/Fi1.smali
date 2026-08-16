.class public final synthetic Lcom/android/tools/r8/internal/Fi1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/lY;

.field public final synthetic b:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/lY;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Fi1;->a:Lcom/android/tools/r8/internal/lY;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Fi1;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Fi1;->a:Lcom/android/tools/r8/internal/lY;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Fi1;->b:Ljava/util/Map;

    check-cast p1, Lcom/android/tools/r8/graph/n1;

    check-cast p2, [Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/lY;->a(Ljava/util/Map;Lcom/android/tools/r8/graph/n1;[Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method
