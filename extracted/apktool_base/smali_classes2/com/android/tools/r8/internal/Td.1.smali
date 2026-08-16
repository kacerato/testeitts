.class public final Lcom/android/tools/r8/internal/Td;
.super Lcom/android/tools/r8/internal/Ud;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/internal/iC;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/V;Lcom/android/tools/r8/internal/iC;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Ud;-><init>(Lcom/android/tools/r8/graph/V;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/Td;->b:Lcom/android/tools/r8/internal/iC;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Collection;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/Td;->b:Lcom/android/tools/r8/internal/iC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/iC;->f()Lcom/android/tools/r8/internal/LY;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Td;->b:Lcom/android/tools/r8/internal/iC;

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/internal/iC;->f:Lcom/android/tools/r8/internal/nC;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/hC;

    if-nez p1, :cond_0

    .line 4
    sget p1, Lcom/android/tools/r8/internal/hC;->c:I

    .line 5
    sget-object p1, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    .line 6
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/E0;

    .line 7
    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Td;->b:Lcom/android/tools/r8/internal/iC;

    iget v0, v0, Lcom/android/tools/r8/internal/iC;->g:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preloaded("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
