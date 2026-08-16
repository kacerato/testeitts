.class public final synthetic Lcom/android/tools/r8/internal/L51;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/l1;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/android/tools/r8/graph/u1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/l1;Ljava/util/List;Lcom/android/tools/r8/graph/u1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/L51;->a:Lcom/android/tools/r8/graph/l1;

    iput-object p2, p0, Lcom/android/tools/r8/internal/L51;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/android/tools/r8/internal/L51;->c:Lcom/android/tools/r8/graph/u1;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/L51;->a:Lcom/android/tools/r8/graph/l1;

    iget-object v1, p0, Lcom/android/tools/r8/internal/L51;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/android/tools/r8/internal/L51;->c:Lcom/android/tools/r8/graph/u1;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    check-cast p2, Lcom/android/tools/r8/graph/M2;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/tools/r8/internal/bc0;->a(Lcom/android/tools/r8/graph/l1;Ljava/util/List;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method
