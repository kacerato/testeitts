.class public final synthetic Lcom/android/tools/r8/graph/jh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Ljava/util/function/Function;

.field public final synthetic b:Lcom/android/tools/r8/internal/kC;

.field public final synthetic c:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;Lcom/android/tools/r8/internal/kC;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/jh;->a:Ljava/util/function/Function;

    iput-object p2, p0, Lcom/android/tools/r8/graph/jh;->b:Lcom/android/tools/r8/internal/kC;

    iput-object p3, p0, Lcom/android/tools/r8/graph/jh;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/graph/jh;->a:Ljava/util/function/Function;

    iget-object v1, p0, Lcom/android/tools/r8/graph/jh;->b:Lcom/android/tools/r8/internal/kC;

    iget-object v2, p0, Lcom/android/tools/r8/graph/jh;->c:Ljava/util/Set;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    check-cast p2, Lcom/android/tools/r8/graph/E0;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/tools/r8/graph/w4;->a(Ljava/util/function/Function;Lcom/android/tools/r8/internal/kC;Ljava/util/Set;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;)V

    return-void
.end method
