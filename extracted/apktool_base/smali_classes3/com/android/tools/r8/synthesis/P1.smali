.class public final synthetic Lcom/android/tools/r8/synthesis/P1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/x0;

.field public final synthetic b:Lcom/android/tools/r8/graph/L2;

.field public final synthetic c:Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/graph/L2;Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/synthesis/P1;->a:Lcom/android/tools/r8/graph/x0;

    iput-object p2, p0, Lcom/android/tools/r8/synthesis/P1;->b:Lcom/android/tools/r8/graph/L2;

    iput-object p3, p0, Lcom/android/tools/r8/synthesis/P1;->c:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/P1;->a:Lcom/android/tools/r8/graph/x0;

    iget-object v1, p0, Lcom/android/tools/r8/synthesis/P1;->b:Lcom/android/tools/r8/graph/L2;

    iget-object v2, p0, Lcom/android/tools/r8/synthesis/P1;->c:Ljava/util/function/BiConsumer;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    check-cast p2, Lcom/android/tools/r8/synthesis/w;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/tools/r8/synthesis/z;->a(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/graph/L2;Ljava/util/function/BiConsumer;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/synthesis/w;)V

    return-void
.end method
