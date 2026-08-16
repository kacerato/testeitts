.class public final synthetic Lcom/android/tools/r8/internal/j91;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/Hz;

.field public final synthetic b:Lcom/android/tools/r8/internal/tD;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/tD;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/j91;->a:Lcom/android/tools/r8/internal/Hz;

    iput-object p2, p0, Lcom/android/tools/r8/internal/j91;->b:Lcom/android/tools/r8/internal/tD;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/j91;->a:Lcom/android/tools/r8/internal/Hz;

    iget-object v1, p0, Lcom/android/tools/r8/internal/j91;->b:Lcom/android/tools/r8/internal/tD;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    check-cast p2, Lcom/android/tools/r8/graph/l1;

    invoke-static {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/dx;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/tD;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/l1;)V

    return-void
.end method
