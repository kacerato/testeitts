.class public final synthetic Lcom/android/tools/r8/internal/BG0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic b:Ljava/util/function/BiFunction;

.field public final synthetic c:Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BiFunction;Ljava/util/function/BiFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/BG0;->b:Ljava/util/function/BiFunction;

    iput-object p2, p0, Lcom/android/tools/r8/internal/BG0;->c:Ljava/util/function/BiFunction;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/BG0;->b:Ljava/util/function/BiFunction;

    iget-object v1, p0, Lcom/android/tools/r8/internal/BG0;->c:Ljava/util/function/BiFunction;

    check-cast p1, Lcom/android/tools/r8/internal/H9;

    check-cast p2, Lcom/android/tools/r8/internal/S60;

    invoke-static {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/H9;->a(Ljava/util/function/BiFunction;Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/internal/S60;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1
.end method
