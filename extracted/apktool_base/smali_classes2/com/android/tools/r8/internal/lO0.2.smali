.class public final synthetic Lcom/android/tools/r8/internal/lO0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Kj;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Kj;Ljava/util/List;Ljava/util/function/BiFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/lO0;->b:Lcom/android/tools/r8/internal/Kj;

    iput-object p2, p0, Lcom/android/tools/r8/internal/lO0;->c:Ljava/util/List;

    iput-object p3, p0, Lcom/android/tools/r8/internal/lO0;->d:Ljava/util/function/BiFunction;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/lO0;->b:Lcom/android/tools/r8/internal/Kj;

    iget-object v1, p0, Lcom/android/tools/r8/internal/lO0;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/android/tools/r8/internal/lO0;->d:Ljava/util/function/BiFunction;

    check-cast p1, Lcom/android/tools/r8/internal/Mj0;

    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/Nj0;->a(Lcom/android/tools/r8/internal/Kj;Ljava/util/List;Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/Mj0;)V

    return-void
.end method
