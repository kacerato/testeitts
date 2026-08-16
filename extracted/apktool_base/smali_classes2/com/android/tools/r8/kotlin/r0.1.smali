.class public final Lcom/android/tools/r8/kotlin/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/shaking/f0;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/FQ;

.field public final b:Lcom/android/tools/r8/kotlin/p0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/FQ;Lcom/android/tools/r8/kotlin/p0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/r0;->a:Lcom/android/tools/r8/internal/FQ;

    iput-object p2, p0, Lcom/android/tools/r8/kotlin/r0;->b:Lcom/android/tools/r8/kotlin/p0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/d1;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/r0;->b:Lcom/android/tools/r8/kotlin/p0;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/kotlin/p0;->a(Lcom/android/tools/r8/graph/d1;)V

    :cond_0
    return-void
.end method

.method public final synthetic a(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/yQ;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/DQ;

    iget-object v1, p0, Lcom/android/tools/r8/kotlin/r0;->a:Lcom/android/tools/r8/internal/FQ;

    invoke-direct {v0, v1, p2}, Lcom/android/tools/r8/internal/DQ;-><init>(Lcom/android/tools/r8/internal/FQ;Lcom/android/tools/r8/internal/yQ;)V

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/r0;->a:Lcom/android/tools/r8/internal/FQ;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/r0;->b:Lcom/android/tools/r8/kotlin/p0;

    if-nez v0, :cond_0

    sget-object p2, Lcom/android/tools/r8/internal/DQ;->c:Lcom/android/tools/r8/internal/DQ;

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/r0;->b:Lcom/android/tools/r8/kotlin/p0;

    new-instance v1, Lcom/android/tools/r8/kotlin/L4;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/kotlin/L4;-><init>(Lcom/android/tools/r8/kotlin/r0;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1, p2}, Lcom/android/tools/r8/kotlin/p0;->b(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    return p1
.end method
