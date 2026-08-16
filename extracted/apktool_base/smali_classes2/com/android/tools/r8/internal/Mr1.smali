.class public final synthetic Lcom/android/tools/r8/internal/Mr1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/rY;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/rY;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Mr1;->a:Lcom/android/tools/r8/internal/rY;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Mr1;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Mr1;->a:Lcom/android/tools/r8/internal/rY;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Mr1;->b:Ljava/util/List;

    check-cast p1, Lcom/android/tools/r8/graph/n1;

    check-cast p2, Lcom/android/tools/r8/graph/g;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/rY;->a(Ljava/util/List;Lcom/android/tools/r8/graph/n1;Lcom/android/tools/r8/graph/g;)V

    return-void
.end method
