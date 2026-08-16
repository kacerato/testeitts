.class public abstract Lcom/android/tools/r8/diagnostic/internal/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/eC;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    new-instance v0, Lcom/android/tools/r8/internal/eC;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/eC;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/diagnostic/internal/i;->a:Lcom/android/tools/r8/internal/eC;

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/android/tools/r8/diagnostic/internal/i;
.end method

.method public final a(Lcom/android/tools/r8/diagnostic/DefinitionContext;)Lcom/android/tools/r8/diagnostic/internal/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/diagnostic/internal/i;->a:Lcom/android/tools/r8/internal/eC;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/diagnostic/internal/i;->a()Lcom/android/tools/r8/diagnostic/internal/i;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/Collection;)Lcom/android/tools/r8/diagnostic/internal/i;
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/diagnostic/internal/u;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/diagnostic/internal/u;-><init>(Lcom/android/tools/r8/diagnostic/internal/i;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/diagnostic/internal/i;->a()Lcom/android/tools/r8/diagnostic/internal/i;

    move-result-object p1

    return-object p1
.end method
