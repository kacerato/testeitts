.class public final synthetic Lcom/android/tools/r8/internal/JI0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Ia;

.field public final synthetic c:Lcom/android/tools/r8/graph/A2;

.field public final synthetic d:Lcom/android/tools/r8/internal/ga;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Ia;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/ga;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/JI0;->b:Lcom/android/tools/r8/internal/Ia;

    iput-object p2, p0, Lcom/android/tools/r8/internal/JI0;->c:Lcom/android/tools/r8/graph/A2;

    iput-object p3, p0, Lcom/android/tools/r8/internal/JI0;->d:Lcom/android/tools/r8/internal/ga;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/JI0;->b:Lcom/android/tools/r8/internal/Ia;

    iget-object v1, p0, Lcom/android/tools/r8/internal/JI0;->c:Lcom/android/tools/r8/graph/A2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/JI0;->d:Lcom/android/tools/r8/internal/ga;

    check-cast p1, Ljava/util/Deque;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/Ia;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/ga;Ljava/util/Deque;)V

    return-void
.end method
