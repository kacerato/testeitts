.class public final synthetic Lcom/android/tools/r8/internal/QU0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/R7;

.field public final synthetic b:Lcom/android/tools/r8/synthesis/W;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/R7;Lcom/android/tools/r8/synthesis/W;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/QU0;->a:Lcom/android/tools/r8/internal/R7;

    iput-object p2, p0, Lcom/android/tools/r8/internal/QU0;->b:Lcom/android/tools/r8/synthesis/W;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/QU0;->a:Lcom/android/tools/r8/internal/R7;

    iget-object v1, p0, Lcom/android/tools/r8/internal/QU0;->b:Lcom/android/tools/r8/synthesis/W;

    check-cast p1, Lcom/android/tools/r8/graph/F2;

    check-cast p2, Lcom/android/tools/r8/graph/F2;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/R7;->a(Lcom/android/tools/r8/synthesis/W;Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/graph/F2;)V

    return-void
.end method
