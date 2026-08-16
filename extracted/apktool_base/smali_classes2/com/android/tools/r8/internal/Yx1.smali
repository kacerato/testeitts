.class public final synthetic Lcom/android/tools/r8/internal/Yx1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/wx0;

.field public final synthetic c:Lcom/android/tools/r8/internal/Cq;

.field public final synthetic d:Lcom/android/tools/r8/graph/H2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/wx0;Lcom/android/tools/r8/internal/Cq;Lcom/android/tools/r8/graph/H2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Yx1;->b:Lcom/android/tools/r8/internal/wx0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Yx1;->c:Lcom/android/tools/r8/internal/Cq;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Yx1;->d:Lcom/android/tools/r8/graph/H2;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Yx1;->b:Lcom/android/tools/r8/internal/wx0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Yx1;->c:Lcom/android/tools/r8/internal/Cq;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Yx1;->d:Lcom/android/tools/r8/graph/H2;

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/wx0;->a(Lcom/android/tools/r8/internal/Cq;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;)V

    return-void
.end method
