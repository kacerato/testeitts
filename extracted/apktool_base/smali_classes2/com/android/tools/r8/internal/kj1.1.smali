.class public final synthetic Lcom/android/tools/r8/internal/kj1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/ks0;

.field public final synthetic b:Z

.field public final synthetic c:Ljava/util/Deque;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/ks0;ZLjava/util/Deque;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/kj1;->a:Lcom/android/tools/r8/internal/ks0;

    iput-boolean p2, p0, Lcom/android/tools/r8/internal/kj1;->b:Z

    iput-object p3, p0, Lcom/android/tools/r8/internal/kj1;->c:Ljava/util/Deque;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/kj1;->a:Lcom/android/tools/r8/internal/ks0;

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/kj1;->b:Z

    iget-object v2, p0, Lcom/android/tools/r8/internal/kj1;->c:Ljava/util/Deque;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/tools/r8/internal/is0;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/tools/r8/internal/ls0;->a(Lcom/android/tools/r8/internal/ks0;ZLjava/util/Deque;Ljava/lang/String;Lcom/android/tools/r8/internal/is0;)V

    return-void
.end method
