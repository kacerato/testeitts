.class public final synthetic Lcom/android/tools/r8/internal/Oh1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/x1;

.field public final synthetic b:Lcom/android/tools/r8/internal/mp0;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/x1;Lcom/android/tools/r8/internal/mp0;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Oh1;->a:Lcom/android/tools/r8/internal/x1;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Oh1;->b:Lcom/android/tools/r8/internal/mp0;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Oh1;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Oh1;->a:Lcom/android/tools/r8/internal/x1;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Oh1;->b:Lcom/android/tools/r8/internal/mp0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Oh1;->c:Ljava/util/List;

    check-cast p1, Lcom/android/tools/r8/internal/xw0;

    check-cast p2, Lcom/android/tools/r8/internal/Hp0;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/tools/r8/internal/kp0;->a(Lcom/android/tools/r8/internal/x1;Lcom/android/tools/r8/internal/mp0;Ljava/util/List;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/Hp0;)V

    return-void
.end method
