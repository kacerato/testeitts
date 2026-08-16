.class public final synthetic Lcom/android/tools/r8/internal/TO0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/f0;

.field public final synthetic c:Lcom/android/tools/r8/graph/y;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/f0;Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/TO0;->b:Lcom/android/tools/r8/graph/f0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/TO0;->c:Lcom/android/tools/r8/graph/y;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/TO0;->b:Lcom/android/tools/r8/graph/f0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/TO0;->c:Lcom/android/tools/r8/graph/y;

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/Nw;->a(Lcom/android/tools/r8/graph/f0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/l1;)V

    return-void
.end method
