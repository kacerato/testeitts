.class public final synthetic Lcom/android/tools/r8/internal/J61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/Nu;

.field public final synthetic b:Lcom/android/tools/r8/graph/y;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Nu;Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/J61;->a:Lcom/android/tools/r8/internal/Nu;

    iput-object p2, p0, Lcom/android/tools/r8/internal/J61;->b:Lcom/android/tools/r8/graph/y;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/J61;->a:Lcom/android/tools/r8/internal/Nu;

    iget-object v1, p0, Lcom/android/tools/r8/internal/J61;->b:Lcom/android/tools/r8/graph/y;

    check-cast p1, Lcom/android/tools/r8/internal/q4;

    check-cast p2, Lcom/android/tools/r8/internal/c4$a;

    invoke-static {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/c4;->a(Lcom/android/tools/r8/internal/Nu;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/q4;Lcom/android/tools/r8/internal/c4$a;)V

    return-void
.end method
