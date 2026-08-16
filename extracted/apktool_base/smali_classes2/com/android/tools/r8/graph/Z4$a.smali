.class public abstract Lcom/android/tools/r8/graph/Z4$a;
.super Lcom/android/tools/r8/graph/Y4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/graph/Z4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field public final b:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/Y4;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/Z4$a;->b:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/internal/t40;
    .locals 0

    .line 3
    sget-object p1, Lcom/android/tools/r8/internal/t40;->b:Lcom/android/tools/r8/internal/t40;

    return-object p1
.end method

.method public a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/tools/r8/graph/M2;",
            ">;",
            "Ljava/util/function/Consumer<",
            "-",
            "Lcom/android/tools/r8/graph/j1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/android/tools/r8/graph/Z4$a;->b:Ljava/util/Collection;

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 0

    .line 4
    invoke-interface {p4, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/t40;
    .locals 0

    sget-object p1, Lcom/android/tools/r8/internal/t40;->b:Lcom/android/tools/r8/internal/t40;

    return-object p1
.end method

.method public final h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final k()Lcom/android/tools/r8/graph/Z4$a;
    .locals 0

    return-object p0
.end method

.method public final x()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public y()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
