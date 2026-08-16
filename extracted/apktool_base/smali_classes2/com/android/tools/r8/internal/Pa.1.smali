.class public final Lcom/android/tools/r8/internal/Pa;
.super Lcom/android/tools/r8/internal/Qa;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Qa;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Pa;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Collection;Lcom/android/tools/r8/internal/Ta;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V
    .locals 4

    new-instance v0, Lcom/android/tools/r8/errors/q;

    invoke-direct {v0}, Lcom/android/tools/r8/errors/q;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/Ye;->a(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/util/Collection;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Pa;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/tools/r8/internal/Na;

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/Na;->a(Ljava/util/Collection;Lcom/android/tools/r8/internal/Ta;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    goto :goto_0

    :cond_0
    return-void
.end method
