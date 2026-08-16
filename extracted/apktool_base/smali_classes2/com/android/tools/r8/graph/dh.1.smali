.class public final synthetic Lcom/android/tools/r8/graph/dh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/v4;

.field public final synthetic c:Lcom/android/tools/r8/internal/nJ;

.field public final synthetic d:Lcom/android/tools/r8/internal/nC;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/v4;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/nC;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/dh;->b:Lcom/android/tools/r8/graph/v4;

    iput-object p2, p0, Lcom/android/tools/r8/graph/dh;->c:Lcom/android/tools/r8/internal/nJ;

    iput-object p3, p0, Lcom/android/tools/r8/graph/dh;->d:Lcom/android/tools/r8/internal/nC;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/graph/dh;->b:Lcom/android/tools/r8/graph/v4;

    iget-object v1, p0, Lcom/android/tools/r8/graph/dh;->c:Lcom/android/tools/r8/internal/nJ;

    iget-object v2, p0, Lcom/android/tools/r8/graph/dh;->d:Lcom/android/tools/r8/internal/nC;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/graph/v4;->a(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    return-object p1
.end method
