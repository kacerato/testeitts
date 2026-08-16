.class public final synthetic Lcom/android/tools/r8/internal/VE0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Ti;

.field public final synthetic c:Lcom/android/tools/r8/internal/Gt;

.field public final synthetic d:Ljava/util/function/Consumer;

.field public final synthetic e:Ljava/util/Deque;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Ti;Lcom/android/tools/r8/internal/Gt;Ljava/util/function/Consumer;Ljava/util/Deque;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/VE0;->b:Lcom/android/tools/r8/internal/Ti;

    iput-object p2, p0, Lcom/android/tools/r8/internal/VE0;->c:Lcom/android/tools/r8/internal/Gt;

    iput-object p3, p0, Lcom/android/tools/r8/internal/VE0;->d:Ljava/util/function/Consumer;

    iput-object p4, p0, Lcom/android/tools/r8/internal/VE0;->e:Ljava/util/Deque;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/VE0;->b:Lcom/android/tools/r8/internal/Ti;

    iget-object v1, p0, Lcom/android/tools/r8/internal/VE0;->c:Lcom/android/tools/r8/internal/Gt;

    iget-object v2, p0, Lcom/android/tools/r8/internal/VE0;->d:Ljava/util/function/Consumer;

    iget-object v3, p0, Lcom/android/tools/r8/internal/VE0;->e:Ljava/util/Deque;

    check-cast p1, Lcom/android/tools/r8/internal/Gt;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/internal/Ft;->a(Lcom/android/tools/r8/internal/Ti;Lcom/android/tools/r8/internal/Gt;Ljava/util/function/Consumer;Ljava/util/Deque;Lcom/android/tools/r8/internal/Gt;)Z

    move-result p1

    return p1
.end method
