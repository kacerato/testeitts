.class public final synthetic Lcom/android/tools/r8/internal/TZ0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/TD;

.field public final synthetic b:Lcom/android/tools/r8/graph/proto/c;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/TD;Lcom/android/tools/r8/graph/proto/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/TZ0;->a:Lcom/android/tools/r8/internal/TD;

    iput-object p2, p0, Lcom/android/tools/r8/internal/TZ0;->b:Lcom/android/tools/r8/graph/proto/c;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/TZ0;->a:Lcom/android/tools/r8/internal/TD;

    iget-object v1, p0, Lcom/android/tools/r8/internal/TZ0;->b:Lcom/android/tools/r8/graph/proto/c;

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    check-cast p2, Lcom/android/tools/r8/internal/SD;

    invoke-static {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/W00;->a(Lcom/android/tools/r8/internal/TD;Lcom/android/tools/r8/graph/proto/c;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/SD;)V

    return-void
.end method
