.class public final synthetic Lcom/android/tools/r8/internal/tU0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Qu;

.field public final synthetic c:Lcom/android/tools/r8/internal/mu;

.field public final synthetic d:Lcom/android/tools/r8/internal/PT;

.field public final synthetic e:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Qu;Lcom/android/tools/r8/internal/mu;Lcom/android/tools/r8/internal/PT;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/tU0;->b:Lcom/android/tools/r8/internal/Qu;

    iput-object p2, p0, Lcom/android/tools/r8/internal/tU0;->c:Lcom/android/tools/r8/internal/mu;

    iput-object p3, p0, Lcom/android/tools/r8/internal/tU0;->d:Lcom/android/tools/r8/internal/PT;

    iput-object p4, p0, Lcom/android/tools/r8/internal/tU0;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/tU0;->b:Lcom/android/tools/r8/internal/Qu;

    iget-object v1, p0, Lcom/android/tools/r8/internal/tU0;->c:Lcom/android/tools/r8/internal/mu;

    iget-object v2, p0, Lcom/android/tools/r8/internal/tU0;->d:Lcom/android/tools/r8/internal/PT;

    iget-object v3, p0, Lcom/android/tools/r8/internal/tU0;->e:Ljava/util/Map;

    check-cast p1, Lcom/android/tools/r8/graph/F5;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/internal/Qu;->a(Lcom/android/tools/r8/internal/mu;Lcom/android/tools/r8/internal/PT;Ljava/util/Map;Lcom/android/tools/r8/graph/F5;)V

    return-void
.end method
