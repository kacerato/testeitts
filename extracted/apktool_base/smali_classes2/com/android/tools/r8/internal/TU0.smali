.class public final synthetic Lcom/android/tools/r8/internal/TU0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/R7;

.field public final synthetic c:Lcom/android/tools/r8/graph/F2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/R7;Lcom/android/tools/r8/graph/F2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/TU0;->b:Lcom/android/tools/r8/internal/R7;

    iput-object p2, p0, Lcom/android/tools/r8/internal/TU0;->c:Lcom/android/tools/r8/graph/F2;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/TU0;->b:Lcom/android/tools/r8/internal/R7;

    iget-object v1, p0, Lcom/android/tools/r8/internal/TU0;->c:Lcom/android/tools/r8/graph/F2;

    check-cast p1, Lcom/android/tools/r8/synthesis/N;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/R7;->a(Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/synthesis/N;)V

    return-void
.end method
