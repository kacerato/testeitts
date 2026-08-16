.class public final synthetic Lcom/android/tools/r8/internal/k21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Xh;

.field public final synthetic c:Lcom/android/tools/r8/graph/A2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Xh;Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/k21;->b:Lcom/android/tools/r8/internal/Xh;

    iput-object p2, p0, Lcom/android/tools/r8/internal/k21;->c:Lcom/android/tools/r8/graph/A2;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/k21;->b:Lcom/android/tools/r8/internal/Xh;

    iget-object v1, p0, Lcom/android/tools/r8/internal/k21;->c:Lcom/android/tools/r8/graph/A2;

    check-cast p1, Lcom/android/tools/r8/internal/aB;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Xh;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/aB;)V

    return-void
.end method
