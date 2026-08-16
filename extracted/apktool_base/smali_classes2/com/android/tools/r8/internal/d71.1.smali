.class public final synthetic Lcom/android/tools/r8/internal/d71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/b2;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Jx;

.field public final synthetic c:Ljava/util/Deque;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Jx;Ljava/util/Deque;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/d71;->b:Lcom/android/tools/r8/internal/Jx;

    iput-object p2, p0, Lcom/android/tools/r8/internal/d71;->c:Ljava/util/Deque;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/d71;->b:Lcom/android/tools/r8/internal/Jx;

    iget-object v1, p0, Lcom/android/tools/r8/internal/d71;->c:Ljava/util/Deque;

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/cD;->a(Lcom/android/tools/r8/internal/Jx;Ljava/util/Deque;)V

    return-void
.end method
