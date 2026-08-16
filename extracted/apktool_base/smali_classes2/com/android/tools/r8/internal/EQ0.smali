.class public final synthetic Lcom/android/tools/r8/internal/EQ0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/P00;

.field public final synthetic b:Lcom/android/tools/r8/graph/h;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/P00;Lcom/android/tools/r8/graph/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/EQ0;->a:Lcom/android/tools/r8/internal/P00;

    iput-object p2, p0, Lcom/android/tools/r8/internal/EQ0;->b:Lcom/android/tools/r8/graph/h;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/EQ0;->a:Lcom/android/tools/r8/internal/P00;

    iget-object v1, p0, Lcom/android/tools/r8/internal/EQ0;->b:Lcom/android/tools/r8/graph/h;

    check-cast p1, Lcom/android/tools/r8/internal/vo0;

    check-cast p2, Lcom/android/tools/r8/internal/qo0$a;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/P00;->a(Lcom/android/tools/r8/graph/h;Lcom/android/tools/r8/internal/vo0;Lcom/android/tools/r8/internal/qo0$a;)V

    return-void
.end method
