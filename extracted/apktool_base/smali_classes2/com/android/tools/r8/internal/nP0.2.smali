.class public final synthetic Lcom/android/tools/r8/internal/nP0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Ljava/util/function/BiFunction;

.field public final synthetic c:Lcom/android/tools/r8/internal/W9;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/W9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/nP0;->b:Ljava/util/function/BiFunction;

    iput-object p2, p0, Lcom/android/tools/r8/internal/nP0;->c:Lcom/android/tools/r8/internal/W9;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/nP0;->b:Ljava/util/function/BiFunction;

    iget-object v1, p0, Lcom/android/tools/r8/internal/nP0;->c:Lcom/android/tools/r8/internal/W9;

    check-cast p1, Lcom/android/tools/r8/internal/Ys0;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/O9;->a(Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/Ys0;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    return-object p1
.end method
