.class public final synthetic Lcom/android/tools/r8/internal/X61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiPredicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/cD;

.field public final synthetic c:Lcom/android/tools/r8/internal/Gx;

.field public final synthetic d:Lcom/android/tools/r8/internal/Jx;

.field public final synthetic e:Lcom/android/tools/r8/internal/yg;

.field public final synthetic f:Ljava/util/Deque;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/cD;Lcom/android/tools/r8/internal/Gx;Lcom/android/tools/r8/internal/Jx;Lcom/android/tools/r8/internal/yg;Ljava/util/Deque;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/X61;->b:Lcom/android/tools/r8/internal/cD;

    iput-object p2, p0, Lcom/android/tools/r8/internal/X61;->c:Lcom/android/tools/r8/internal/Gx;

    iput-object p3, p0, Lcom/android/tools/r8/internal/X61;->d:Lcom/android/tools/r8/internal/Jx;

    iput-object p4, p0, Lcom/android/tools/r8/internal/X61;->e:Lcom/android/tools/r8/internal/yg;

    iput-object p5, p0, Lcom/android/tools/r8/internal/X61;->f:Ljava/util/Deque;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7

    iget-object v0, p0, Lcom/android/tools/r8/internal/X61;->b:Lcom/android/tools/r8/internal/cD;

    iget-object v1, p0, Lcom/android/tools/r8/internal/X61;->c:Lcom/android/tools/r8/internal/Gx;

    iget-object v2, p0, Lcom/android/tools/r8/internal/X61;->d:Lcom/android/tools/r8/internal/Jx;

    iget-object v3, p0, Lcom/android/tools/r8/internal/X61;->e:Lcom/android/tools/r8/internal/yg;

    iget-object v4, p0, Lcom/android/tools/r8/internal/X61;->f:Ljava/util/Deque;

    move-object v5, p1

    check-cast v5, Lcom/android/tools/r8/internal/Jx;

    move-object v6, p2

    check-cast v6, Ljava/util/Set;

    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/cD;->a(Lcom/android/tools/r8/internal/Gx;Lcom/android/tools/r8/internal/Jx;Lcom/android/tools/r8/internal/yg;Ljava/util/Deque;Lcom/android/tools/r8/internal/Jx;Ljava/util/Set;)Z

    move-result p1

    return p1
.end method
