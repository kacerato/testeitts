.class public final synthetic Lcom/android/tools/r8/internal/if1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/j40;

.field public final synthetic c:Lcom/android/tools/r8/internal/KV;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/j40;Lcom/android/tools/r8/internal/KV;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/if1;->b:Lcom/android/tools/r8/internal/j40;

    iput-object p2, p0, Lcom/android/tools/r8/internal/if1;->c:Lcom/android/tools/r8/internal/KV;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/if1;->b:Lcom/android/tools/r8/internal/j40;

    iget-object v1, p0, Lcom/android/tools/r8/internal/if1;->c:Lcom/android/tools/r8/internal/KV;

    check-cast p1, Lcom/android/tools/r8/graph/g1;

    invoke-interface {v0, v1, p1}, Lcom/android/tools/r8/internal/j40;->a(Lcom/android/tools/r8/internal/KV;Lcom/android/tools/r8/graph/g1;)V

    return-void
.end method
