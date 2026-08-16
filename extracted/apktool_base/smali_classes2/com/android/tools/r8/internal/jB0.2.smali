.class public final synthetic Lcom/android/tools/r8/internal/jB0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/C9;

.field public final synthetic c:Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/C9;Ljava/util/function/BiFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/jB0;->b:Lcom/android/tools/r8/internal/C9;

    iput-object p2, p0, Lcom/android/tools/r8/internal/jB0;->c:Ljava/util/function/BiFunction;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/jB0;->b:Lcom/android/tools/r8/internal/C9;

    iget-object v1, p0, Lcom/android/tools/r8/internal/jB0;->c:Ljava/util/function/BiFunction;

    check-cast p1, Lcom/android/tools/r8/internal/W9;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/C9;->a(Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/W9;Ljava/lang/Object;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    return-object p1
.end method
