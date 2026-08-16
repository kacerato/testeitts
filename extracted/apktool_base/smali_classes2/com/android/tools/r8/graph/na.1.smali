.class public final synthetic Lcom/android/tools/r8/graph/na;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/P4;

.field public final synthetic c:Ljava/util/SortedMap;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/P4;Ljava/util/SortedMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/na;->b:Lcom/android/tools/r8/graph/P4;

    iput-object p2, p0, Lcom/android/tools/r8/graph/na;->c:Ljava/util/SortedMap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/na;->b:Lcom/android/tools/r8/graph/P4;

    iget-object v1, p0, Lcom/android/tools/r8/graph/na;->c:Ljava/util/SortedMap;

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/graph/P4;->b(Ljava/util/SortedMap;Lcom/android/tools/r8/graph/j1;)V

    return-void
.end method
