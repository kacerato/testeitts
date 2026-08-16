.class public final synthetic Lcom/android/tools/r8/internal/W91;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/f50;

.field public final synthetic c:Lcom/android/tools/r8/internal/kB;

.field public final synthetic d:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/f50;Lcom/android/tools/r8/internal/kB;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/W91;->b:Lcom/android/tools/r8/internal/f50;

    iput-object p2, p0, Lcom/android/tools/r8/internal/W91;->c:Lcom/android/tools/r8/internal/kB;

    iput-object p3, p0, Lcom/android/tools/r8/internal/W91;->d:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/W91;->b:Lcom/android/tools/r8/internal/f50;

    iget-object v1, p0, Lcom/android/tools/r8/internal/W91;->c:Lcom/android/tools/r8/internal/kB;

    iget-object v2, p0, Lcom/android/tools/r8/internal/W91;->d:Ljava/util/function/Consumer;

    check-cast p1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/f50;->a(Lcom/android/tools/r8/internal/kB;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method
