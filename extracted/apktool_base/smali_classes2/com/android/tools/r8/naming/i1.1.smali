.class public final synthetic Lcom/android/tools/r8/naming/i1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/naming/D0;

.field public final synthetic c:Ljava/util/Deque;

.field public final synthetic d:Ljava/util/Set;

.field public final synthetic e:Lcom/android/tools/r8/graph/Y5;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/naming/D0;Ljava/util/Deque;Ljava/util/Set;Lcom/android/tools/r8/graph/Y5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/naming/i1;->b:Lcom/android/tools/r8/naming/D0;

    iput-object p2, p0, Lcom/android/tools/r8/naming/i1;->c:Ljava/util/Deque;

    iput-object p3, p0, Lcom/android/tools/r8/naming/i1;->d:Ljava/util/Set;

    iput-object p4, p0, Lcom/android/tools/r8/naming/i1;->e:Lcom/android/tools/r8/graph/Y5;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/naming/i1;->b:Lcom/android/tools/r8/naming/D0;

    iget-object v1, p0, Lcom/android/tools/r8/naming/i1;->c:Ljava/util/Deque;

    iget-object v2, p0, Lcom/android/tools/r8/naming/i1;->d:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/tools/r8/naming/i1;->e:Lcom/android/tools/r8/graph/Y5;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/naming/D0;->c(Ljava/util/Deque;Ljava/util/Set;Lcom/android/tools/r8/graph/Y5;Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method
