.class public final Lcom/android/tools/r8/graph/proto/h;
.super Lcom/android/tools/r8/graph/proto/g$b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/proto/g$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/proto/g$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/tools/r8/graph/proto/g$b;->b:Lcom/android/tools/r8/graph/M2;

    return-object p0
.end method

.method public final a()Lcom/android/tools/r8/graph/proto/i;
    .locals 3

    .line 2
    new-instance v0, Lcom/android/tools/r8/graph/proto/i;

    iget-object v1, p0, Lcom/android/tools/r8/graph/proto/g$b;->a:Lcom/android/tools/r8/internal/Pm0;

    iget-object v2, p0, Lcom/android/tools/r8/graph/proto/g$b;->b:Lcom/android/tools/r8/graph/M2;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/graph/proto/i;-><init>(Lcom/android/tools/r8/internal/Pm0;Lcom/android/tools/r8/graph/M2;)V

    return-object v0
.end method
