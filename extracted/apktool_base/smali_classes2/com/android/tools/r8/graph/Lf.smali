.class public final synthetic Lcom/android/tools/r8/graph/Lf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/s5;

.field public final synthetic b:Lcom/android/tools/r8/internal/Hz;

.field public final synthetic c:Lcom/android/tools/r8/internal/Hz;

.field public final synthetic d:Lcom/android/tools/r8/internal/RR;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/s5;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/RR;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/Lf;->a:Lcom/android/tools/r8/graph/s5;

    iput-object p2, p0, Lcom/android/tools/r8/graph/Lf;->b:Lcom/android/tools/r8/internal/Hz;

    iput-object p3, p0, Lcom/android/tools/r8/graph/Lf;->c:Lcom/android/tools/r8/internal/Hz;

    iput-object p4, p0, Lcom/android/tools/r8/graph/Lf;->d:Lcom/android/tools/r8/internal/RR;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/graph/Lf;->a:Lcom/android/tools/r8/graph/s5;

    iget-object v1, p0, Lcom/android/tools/r8/graph/Lf;->b:Lcom/android/tools/r8/internal/Hz;

    iget-object v2, p0, Lcom/android/tools/r8/graph/Lf;->c:Lcom/android/tools/r8/internal/Hz;

    iget-object v3, p0, Lcom/android/tools/r8/graph/Lf;->d:Lcom/android/tools/r8/internal/RR;

    move-object v4, p1

    check-cast v4, Lcom/android/tools/r8/graph/M2;

    move-object v5, p2

    check-cast v5, Ljava/util/List;

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/graph/s5;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/graph/M2;Ljava/util/List;)V

    return-void
.end method
