.class public final synthetic Lcom/android/tools/r8/graph/Rd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/j1;

.field public final synthetic c:Lcom/android/tools/r8/internal/U6;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/U6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/Rd;->b:Lcom/android/tools/r8/graph/j1;

    iput-object p2, p0, Lcom/android/tools/r8/graph/Rd;->c:Lcom/android/tools/r8/internal/U6;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/Rd;->b:Lcom/android/tools/r8/graph/j1;

    iget-object v1, p0, Lcom/android/tools/r8/graph/Rd;->c:Lcom/android/tools/r8/internal/U6;

    check-cast p1, Lcom/android/tools/r8/internal/B60;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/internal/U6;Lcom/android/tools/r8/internal/B60;)V

    return-void
.end method
