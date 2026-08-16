.class public final synthetic Lcom/android/tools/r8/internal/c71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/cD;

.field public final synthetic b:Lcom/android/tools/r8/internal/Gx;

.field public final synthetic c:Lcom/android/tools/r8/internal/Jx;

.field public final synthetic d:Ljava/util/Deque;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/cD;Lcom/android/tools/r8/internal/Gx;Lcom/android/tools/r8/internal/Jx;Ljava/util/Deque;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/c71;->a:Lcom/android/tools/r8/internal/cD;

    iput-object p2, p0, Lcom/android/tools/r8/internal/c71;->b:Lcom/android/tools/r8/internal/Gx;

    iput-object p3, p0, Lcom/android/tools/r8/internal/c71;->c:Lcom/android/tools/r8/internal/Jx;

    iput-object p4, p0, Lcom/android/tools/r8/internal/c71;->d:Ljava/util/Deque;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/c71;->a:Lcom/android/tools/r8/internal/cD;

    iget-object v1, p0, Lcom/android/tools/r8/internal/c71;->b:Lcom/android/tools/r8/internal/Gx;

    iget-object v2, p0, Lcom/android/tools/r8/internal/c71;->c:Lcom/android/tools/r8/internal/Jx;

    iget-object v3, p0, Lcom/android/tools/r8/internal/c71;->d:Ljava/util/Deque;

    move-object v4, p1

    check-cast v4, Lcom/android/tools/r8/internal/Jx;

    move-object v5, p2

    check-cast v5, Ljava/util/Set;

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/cD;->a(Lcom/android/tools/r8/internal/Gx;Lcom/android/tools/r8/internal/Jx;Ljava/util/Deque;Lcom/android/tools/r8/internal/Jx;Ljava/util/Set;)V

    return-void
.end method
