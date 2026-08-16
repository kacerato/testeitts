.class public final synthetic Lcom/android/tools/r8/internal/Nr1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/rY;

.field public final synthetic b:Ljava/util/LinkedHashMap;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/rY;Ljava/util/LinkedHashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Nr1;->a:Lcom/android/tools/r8/internal/rY;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Nr1;->b:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Nr1;->a:Lcom/android/tools/r8/internal/rY;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Nr1;->b:Ljava/util/LinkedHashMap;

    check-cast p1, Lcom/android/tools/r8/graph/n1;

    check-cast p2, Lcom/android/tools/r8/internal/tn0;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/rY;->a(Ljava/util/LinkedHashMap;Lcom/android/tools/r8/graph/n1;Lcom/android/tools/r8/internal/tn0;)V

    return-void
.end method
