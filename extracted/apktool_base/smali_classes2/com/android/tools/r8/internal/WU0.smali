.class public final synthetic Lcom/android/tools/r8/internal/WU0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/R7;

.field public final synthetic b:Lcom/android/tools/r8/graph/H2;

.field public final synthetic c:Lcom/android/tools/r8/internal/vg;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/R7;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/vg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/WU0;->a:Lcom/android/tools/r8/internal/R7;

    iput-object p2, p0, Lcom/android/tools/r8/internal/WU0;->b:Lcom/android/tools/r8/graph/H2;

    iput-object p3, p0, Lcom/android/tools/r8/internal/WU0;->c:Lcom/android/tools/r8/internal/vg;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/WU0;->a:Lcom/android/tools/r8/internal/R7;

    iget-object v1, p0, Lcom/android/tools/r8/internal/WU0;->b:Lcom/android/tools/r8/graph/H2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/WU0;->c:Lcom/android/tools/r8/internal/vg;

    check-cast p1, Lcom/android/tools/r8/graph/F2;

    check-cast p2, Lcom/android/tools/r8/graph/F2;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/tools/r8/internal/R7;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/vg;Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/graph/F2;)V

    return-void
.end method
