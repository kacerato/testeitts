.class public final Lcom/android/tools/r8/shaking/U4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/j40;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/shaking/V4;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/shaking/V4;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/shaking/U4;->a:Lcom/android/tools/r8/shaking/V4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/internal/VY;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/tools/r8/shaking/U4;->a:Lcom/android/tools/r8/shaking/V4;

    iget-object p1, p1, Lcom/android/tools/r8/shaking/V4;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/shaking/U4;->a:Lcom/android/tools/r8/shaking/V4;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/V4;->f:Ljava/util/Set;

    .line 2
    iget-object v2, p2, Lcom/android/tools/r8/internal/VY;->d:Lcom/android/tools/r8/internal/xt;

    .line 3
    invoke-virtual {v2, p1, v0, v1}, Lcom/android/tools/r8/internal/xt;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Ljava/util/Set;)Lcom/android/tools/r8/internal/xt;

    move-result-object p1

    iput-object p1, p2, Lcom/android/tools/r8/internal/VY;->d:Lcom/android/tools/r8/internal/xt;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/WY;)V
    .locals 2

    .line 4
    iget-object p1, p0, Lcom/android/tools/r8/shaking/U4;->a:Lcom/android/tools/r8/shaking/V4;

    iget-object p1, p1, Lcom/android/tools/r8/shaking/V4;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/shaking/U4;->a:Lcom/android/tools/r8/shaking/V4;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/V4;->f:Ljava/util/Set;

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/tools/r8/internal/WY;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Ljava/util/Set;)Lcom/android/tools/r8/internal/WY;

    return-void
.end method
