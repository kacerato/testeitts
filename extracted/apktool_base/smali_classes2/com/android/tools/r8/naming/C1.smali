.class public final synthetic Lcom/android/tools/r8/naming/C1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/L2;

.field public final synthetic b:Lcom/android/tools/r8/naming/Y;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/naming/Y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/naming/C1;->a:Lcom/android/tools/r8/graph/L2;

    iput-object p2, p0, Lcom/android/tools/r8/naming/C1;->b:Lcom/android/tools/r8/naming/Y;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/naming/C1;->a:Lcom/android/tools/r8/graph/L2;

    iget-object v1, p0, Lcom/android/tools/r8/naming/C1;->b:Lcom/android/tools/r8/naming/Y;

    check-cast p1, Lcom/android/tools/r8/graph/H0;

    check-cast p2, Lcom/android/tools/r8/naming/J;

    invoke-static {v0, v1, p1, p2}, Lcom/android/tools/r8/naming/I;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/naming/Y;Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/naming/J;)V

    return-void
.end method
