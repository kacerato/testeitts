.class public final synthetic Lcom/android/tools/r8/internal/PJ0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/JR;

.field public final synthetic b:Lcom/android/tools/r8/internal/IA$a;

.field public final synthetic c:Lcom/android/tools/r8/graph/x0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/JR;Lcom/android/tools/r8/internal/IA$a;Lcom/android/tools/r8/graph/x0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/PJ0;->a:Lcom/android/tools/r8/internal/JR;

    iput-object p2, p0, Lcom/android/tools/r8/internal/PJ0;->b:Lcom/android/tools/r8/internal/IA$a;

    iput-object p3, p0, Lcom/android/tools/r8/internal/PJ0;->c:Lcom/android/tools/r8/graph/x0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/PJ0;->a:Lcom/android/tools/r8/internal/JR;

    iget-object v1, p0, Lcom/android/tools/r8/internal/PJ0;->b:Lcom/android/tools/r8/internal/IA$a;

    iget-object v2, p0, Lcom/android/tools/r8/internal/PJ0;->c:Lcom/android/tools/r8/graph/x0;

    check-cast p1, Lcom/android/tools/r8/graph/L2;

    check-cast p2, Ljava/util/Map;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/tools/r8/internal/JR;->b(Lcom/android/tools/r8/internal/IA$a;Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/graph/L2;Ljava/util/Map;)V

    return-void
.end method
