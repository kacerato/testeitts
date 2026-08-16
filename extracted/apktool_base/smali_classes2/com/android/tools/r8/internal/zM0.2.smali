.class public final synthetic Lcom/android/tools/r8/internal/zM0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/MA;

.field public final synthetic b:Lcom/android/tools/r8/graph/M2;

.field public final synthetic c:Lcom/android/tools/r8/graph/L2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/MA;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/zM0;->a:Lcom/android/tools/r8/internal/MA;

    iput-object p2, p0, Lcom/android/tools/r8/internal/zM0;->b:Lcom/android/tools/r8/graph/M2;

    iput-object p3, p0, Lcom/android/tools/r8/internal/zM0;->c:Lcom/android/tools/r8/graph/L2;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/zM0;->a:Lcom/android/tools/r8/internal/MA;

    iget-object v1, p0, Lcom/android/tools/r8/internal/zM0;->b:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/zM0;->c:Lcom/android/tools/r8/graph/L2;

    check-cast p1, Lcom/android/tools/r8/graph/L2;

    check-cast p2, Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/tools/r8/internal/MA;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;)V

    return-void
.end method
