.class public final synthetic Lcom/android/tools/r8/internal/Pa1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/fd;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/fd;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Pa1;->a:Lcom/android/tools/r8/internal/fd;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Pa1;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Pa1;->a:Lcom/android/tools/r8/internal/fd;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Pa1;->b:Ljava/util/List;

    check-cast p1, Ljava/util/Set;

    check-cast p2, Lcom/android/tools/r8/graph/g1;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/fd;->a(Ljava/util/List;Ljava/util/Set;Lcom/android/tools/r8/graph/g1;)V

    return-void
.end method
