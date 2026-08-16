.class public Lcom/android/tools/r8/graph/proto/k$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/graph/proto/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/android/tools/r8/graph/M2;

.field public b:Lcom/android/tools/r8/graph/M2;

.field public c:Lcom/android/tools/r8/graph/M2;

.field public d:Lcom/android/tools/r8/internal/Pm0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/proto/k$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/graph/proto/k$a;->c:Lcom/android/tools/r8/graph/M2;

    return-object p0
.end method

.method public final a(ZLjava/util/function/Consumer;)Lcom/android/tools/r8/graph/proto/k$a;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public a()Lcom/android/tools/r8/graph/proto/k;
    .locals 5

    .line 3
    new-instance v0, Lcom/android/tools/r8/graph/proto/k;

    iget-object v1, p0, Lcom/android/tools/r8/graph/proto/k$a;->b:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p0, Lcom/android/tools/r8/graph/proto/k$a;->c:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p0, Lcom/android/tools/r8/graph/proto/k$a;->a:Lcom/android/tools/r8/graph/M2;

    iget-object v4, p0, Lcom/android/tools/r8/graph/proto/k$a;->d:Lcom/android/tools/r8/internal/Pm0;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/tools/r8/graph/proto/k;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Pm0;)V

    return-object v0
.end method

.method public b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/proto/k$a;
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/graph/proto/k$a;->b:Lcom/android/tools/r8/graph/M2;

    return-object p0
.end method
