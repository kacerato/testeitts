.class public final Lcom/android/tools/r8/internal/Pa0;
.super Lcom/android/tools/r8/internal/Ba0;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/M2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ba0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Pa0;->a:Lcom/android/tools/r8/graph/M2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/internal/zE;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Pa0;->a:Lcom/android/tools/r8/graph/M2;

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    sget-boolean v2, Lcom/android/tools/r8/internal/pu0;->a:Z

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->w2:Lcom/android/tools/r8/graph/M2;

    invoke-static {v2, v1, p1}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    new-instance p2, Lcom/android/tools/r8/internal/jh;

    const/4 v1, 0x0

    invoke-direct {p2, p1, v0, v1}, Lcom/android/tools/r8/internal/jh;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/M2;Z)V

    return-object p2
.end method

.method public final d()Lcom/android/tools/r8/internal/Pa0;
    .locals 0

    return-object p0
.end method
