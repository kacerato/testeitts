.class public final synthetic Lcom/android/tools/r8/internal/xz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/V60;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/xw;

.field public final synthetic c:Lcom/android/tools/r8/internal/f80;

.field public final synthetic d:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/xw;Lcom/android/tools/r8/internal/f80;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/xz0;->b:Lcom/android/tools/r8/internal/xw;

    iput-object p2, p0, Lcom/android/tools/r8/internal/xz0;->c:Lcom/android/tools/r8/internal/f80;

    iput-object p3, p0, Lcom/android/tools/r8/internal/xz0;->d:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/xz0;->b:Lcom/android/tools/r8/internal/xw;

    iget-object v1, p0, Lcom/android/tools/r8/internal/xz0;->c:Lcom/android/tools/r8/internal/f80;

    iget-object v2, p0, Lcom/android/tools/r8/internal/xz0;->d:Ljava/util/function/Consumer;

    check-cast p1, Lcom/android/tools/r8/graph/F5;

    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/Aj;->a(Lcom/android/tools/r8/internal/xw;Lcom/android/tools/r8/internal/f80;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/F5;)Z

    move-result p1

    return p1
.end method
