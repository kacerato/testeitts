.class public final synthetic Lcom/android/tools/r8/internal/eB1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/kc0;

.field public final synthetic c:Ljava/util/Collection;

.field public final synthetic d:Lcom/android/tools/r8/internal/lc0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/kc0;Ljava/util/Collection;Lcom/android/tools/r8/internal/lc0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/eB1;->b:Lcom/android/tools/r8/internal/kc0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/eB1;->c:Ljava/util/Collection;

    iput-object p3, p0, Lcom/android/tools/r8/internal/eB1;->d:Lcom/android/tools/r8/internal/lc0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/eB1;->b:Lcom/android/tools/r8/internal/kc0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/eB1;->c:Ljava/util/Collection;

    iget-object v2, p0, Lcom/android/tools/r8/internal/eB1;->d:Lcom/android/tools/r8/internal/lc0;

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/yc0;->a(Lcom/android/tools/r8/internal/kc0;Ljava/util/Collection;Lcom/android/tools/r8/internal/lc0;Lcom/android/tools/r8/graph/H2;)V

    return-void
.end method
