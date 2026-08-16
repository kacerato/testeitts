.class public final Lcom/android/tools/r8/internal/Da0;
.super Lcom/android/tools/r8/internal/Ba0;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/l1;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ba0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Da0;->a:Lcom/android/tools/r8/graph/l1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/internal/zE;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Da0;->a:Lcom/android/tools/r8/graph/l1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    new-instance p2, Lcom/android/tools/r8/internal/Mo0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Da0;->a:Lcom/android/tools/r8/graph/l1;

    invoke-direct {p2, v0, p1}, Lcom/android/tools/r8/internal/Mo0;-><init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/xw0;)V

    return-object p2
.end method

.method public final c()Lcom/android/tools/r8/internal/Da0;
    .locals 0

    return-object p0
.end method
