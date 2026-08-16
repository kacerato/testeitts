.class public final synthetic Lcom/android/tools/r8/internal/e31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/u2;

.field public final synthetic c:Lcom/android/tools/r8/graph/u1;

.field public final synthetic d:Lcom/android/tools/r8/graph/a6;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/u2;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/a6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/e31;->b:Lcom/android/tools/r8/graph/u2;

    iput-object p2, p0, Lcom/android/tools/r8/internal/e31;->c:Lcom/android/tools/r8/graph/u1;

    iput-object p3, p0, Lcom/android/tools/r8/internal/e31;->d:Lcom/android/tools/r8/graph/a6;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/e31;->b:Lcom/android/tools/r8/graph/u2;

    iget-object v1, p0, Lcom/android/tools/r8/internal/e31;->c:Lcom/android/tools/r8/graph/u1;

    iget-object v2, p0, Lcom/android/tools/r8/internal/e31;->d:Lcom/android/tools/r8/graph/a6;

    check-cast p1, Lcom/android/tools/r8/synthesis/W;

    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/Y2;->a(Lcom/android/tools/r8/graph/u2;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/a6;Lcom/android/tools/r8/synthesis/W;)V

    return-void
.end method
