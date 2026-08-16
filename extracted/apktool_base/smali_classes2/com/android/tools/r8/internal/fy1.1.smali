.class public final synthetic Lcom/android/tools/r8/internal/fy1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/wx0;

.field public final synthetic b:Lcom/android/tools/r8/internal/Cq;

.field public final synthetic c:Lcom/android/tools/r8/graph/H2;

.field public final synthetic d:Lcom/android/tools/r8/graph/H2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/wx0;Lcom/android/tools/r8/internal/Cq;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/fy1;->a:Lcom/android/tools/r8/internal/wx0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/fy1;->b:Lcom/android/tools/r8/internal/Cq;

    iput-object p3, p0, Lcom/android/tools/r8/internal/fy1;->c:Lcom/android/tools/r8/graph/H2;

    iput-object p4, p0, Lcom/android/tools/r8/internal/fy1;->d:Lcom/android/tools/r8/graph/H2;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/fy1;->a:Lcom/android/tools/r8/internal/wx0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/fy1;->b:Lcom/android/tools/r8/internal/Cq;

    iget-object v2, p0, Lcom/android/tools/r8/internal/fy1;->c:Lcom/android/tools/r8/graph/H2;

    iget-object v3, p0, Lcom/android/tools/r8/internal/fy1;->d:Lcom/android/tools/r8/graph/H2;

    move-object v4, p1

    check-cast v4, Lcom/android/tools/r8/graph/F2;

    move-object v5, p2

    check-cast v5, Lcom/android/tools/r8/internal/vx0;

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/wx0;->a(Lcom/android/tools/r8/internal/Cq;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/internal/vx0;)V

    return-void
.end method
