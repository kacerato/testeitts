.class public final synthetic Lcom/android/tools/r8/internal/S81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Ljava/util/function/Function;

.field public final synthetic b:Lcom/android/tools/r8/internal/wI$a;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;Lcom/android/tools/r8/internal/wI$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/S81;->a:Ljava/util/function/Function;

    iput-object p2, p0, Lcom/android/tools/r8/internal/S81;->b:Lcom/android/tools/r8/internal/wI$a;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/S81;->a:Ljava/util/function/Function;

    iget-object v1, p0, Lcom/android/tools/r8/internal/S81;->b:Lcom/android/tools/r8/internal/wI$a;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    check-cast p2, Ljava/lang/Boolean;

    invoke-static {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/de;->a(Ljava/util/function/Function;Lcom/android/tools/r8/internal/wI$a;Lcom/android/tools/r8/graph/M2;Ljava/lang/Boolean;)V

    return-void
.end method
