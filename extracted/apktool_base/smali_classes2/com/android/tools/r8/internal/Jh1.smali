.class public final synthetic Lcom/android/tools/r8/internal/Jh1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/util/function/BiConsumer;

.field public final synthetic c:Lcom/android/tools/r8/internal/xp0;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/internal/xp0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Jh1;->b:Ljava/util/function/BiConsumer;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Jh1;->c:Lcom/android/tools/r8/internal/xp0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Jh1;->b:Ljava/util/function/BiConsumer;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Jh1;->c:Lcom/android/tools/r8/internal/xp0;

    check-cast p1, Lcom/android/tools/r8/internal/xw0;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/kp0;->a(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/internal/xp0;Lcom/android/tools/r8/internal/xw0;)V

    return-void
.end method
