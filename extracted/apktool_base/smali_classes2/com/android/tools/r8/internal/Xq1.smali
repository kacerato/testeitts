.class public final synthetic Lcom/android/tools/r8/internal/Xq1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/qm;

.field public final synthetic b:Lcom/android/tools/r8/graph/E0;

.field public final synthetic c:Lcom/android/tools/r8/internal/tm;

.field public final synthetic d:Lcom/android/tools/r8/graph/H2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/qm;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/tm;Lcom/android/tools/r8/graph/H2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Xq1;->a:Lcom/android/tools/r8/internal/qm;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Xq1;->b:Lcom/android/tools/r8/graph/E0;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Xq1;->c:Lcom/android/tools/r8/internal/tm;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Xq1;->d:Lcom/android/tools/r8/graph/H2;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/Xq1;->a:Lcom/android/tools/r8/internal/qm;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Xq1;->b:Lcom/android/tools/r8/graph/E0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Xq1;->c:Lcom/android/tools/r8/internal/tm;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Xq1;->d:Lcom/android/tools/r8/graph/H2;

    move-object v4, p1

    check-cast v4, Lcom/android/tools/r8/graph/M2;

    move-object v5, p2

    check-cast v5, Ljava/util/List;

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/qm;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/tm;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/M2;Ljava/util/List;)V

    return-void
.end method
