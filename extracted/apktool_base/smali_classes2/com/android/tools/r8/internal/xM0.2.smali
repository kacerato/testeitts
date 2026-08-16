.class public final synthetic Lcom/android/tools/r8/internal/xM0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Ljava/util/Set;

.field public final synthetic b:Lcom/android/tools/r8/graph/L2;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;Lcom/android/tools/r8/graph/L2;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/xM0;->a:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/tools/r8/internal/xM0;->b:Lcom/android/tools/r8/graph/L2;

    iput-object p3, p0, Lcom/android/tools/r8/internal/xM0;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/xM0;->a:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/tools/r8/internal/xM0;->b:Lcom/android/tools/r8/graph/L2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/xM0;->c:Ljava/util/List;

    check-cast p1, Lcom/android/tools/r8/graph/L2;

    check-cast p2, Lcom/android/tools/r8/graph/L2;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/tools/r8/internal/MA;->a(Ljava/util/Set;Lcom/android/tools/r8/graph/L2;Ljava/util/List;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;)V

    return-void
.end method
