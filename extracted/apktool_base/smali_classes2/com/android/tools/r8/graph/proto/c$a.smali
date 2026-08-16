.class public Lcom/android/tools/r8/graph/proto/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/graph/proto/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/android/tools/r8/internal/iG;

.field public b:I

.field public c:Lcom/android/tools/r8/graph/proto/d;

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/iG;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/iG;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/graph/proto/c$a;->a:Lcom/android/tools/r8/internal/iG;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/graph/proto/c$a;->b:I

    sget-object v0, Lcom/android/tools/r8/graph/proto/f;->a:Lcom/android/tools/r8/graph/proto/f;

    iput-object v0, p0, Lcom/android/tools/r8/graph/proto/c$a;->c:Lcom/android/tools/r8/graph/proto/d;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/android/tools/r8/graph/proto/c$a;
    .locals 0

    .line 10
    iput p1, p0, Lcom/android/tools/r8/graph/proto/c$a;->b:I

    return-object p0
.end method

.method public a(ILcom/android/tools/r8/graph/proto/b;)Lcom/android/tools/r8/graph/proto/c$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/proto/c$a;->a:Lcom/android/tools/r8/internal/iG;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/iG;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/proto/c;)Lcom/android/tools/r8/graph/proto/c$a;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/graph/proto/n;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/proto/n;-><init>(Lcom/android/tools/r8/graph/proto/c$a;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/proto/c;->a(Lcom/android/tools/r8/internal/ZH;)V

    return-object p0
.end method

.method public a()Lcom/android/tools/r8/graph/proto/c;
    .locals 5

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/graph/proto/c$a;->a:Lcom/android/tools/r8/internal/iG;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/iG;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/graph/proto/c$a;->c:Lcom/android/tools/r8/graph/proto/d;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    instance-of v0, v0, Lcom/android/tools/r8/graph/proto/f;

    if-eqz v0, :cond_0

    .line 6
    iget-boolean v0, p0, Lcom/android/tools/r8/graph/proto/c$a;->d:Z

    if-nez v0, :cond_0

    .line 7
    sget-object v0, Lcom/android/tools/r8/graph/proto/c;->f:Lcom/android/tools/r8/graph/proto/c;

    return-object v0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/proto/c$a;->a:Lcom/android/tools/r8/internal/iG;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/iG;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/tools/r8/graph/proto/c;->e:Lcom/android/tools/r8/internal/iG;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/graph/proto/c$a;->a:Lcom/android/tools/r8/internal/iG;

    .line 9
    :goto_0
    new-instance v1, Lcom/android/tools/r8/graph/proto/c;

    iget v2, p0, Lcom/android/tools/r8/graph/proto/c$a;->b:I

    iget-object v3, p0, Lcom/android/tools/r8/graph/proto/c$a;->c:Lcom/android/tools/r8/graph/proto/d;

    iget-boolean v4, p0, Lcom/android/tools/r8/graph/proto/c$a;->d:Z

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/android/tools/r8/graph/proto/c;-><init>(Lcom/android/tools/r8/internal/iG;ILcom/android/tools/r8/graph/proto/d;Z)V

    return-object v1
.end method
