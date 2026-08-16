.class public final synthetic Lcom/android/tools/r8/internal/Nk1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/md;

.field public final synthetic c:Lcom/android/tools/r8/shaking/x1;

.field public final synthetic d:Lcom/android/tools/r8/graph/j1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/md;Lcom/android/tools/r8/shaking/x1;Lcom/android/tools/r8/graph/j1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Nk1;->b:Lcom/android/tools/r8/internal/md;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Nk1;->c:Lcom/android/tools/r8/shaking/x1;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Nk1;->d:Lcom/android/tools/r8/graph/j1;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Nk1;->b:Lcom/android/tools/r8/internal/md;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Nk1;->c:Lcom/android/tools/r8/shaking/x1;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Nk1;->d:Lcom/android/tools/r8/graph/j1;

    check-cast p1, Lcom/android/tools/r8/shaking/H1;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/md;->a(Lcom/android/tools/r8/shaking/x1;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/shaking/H1;)V

    return-void
.end method
