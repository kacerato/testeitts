.class public Lcom/android/tools/r8/graph/proto/g$a;
.super Lcom/android/tools/r8/graph/proto/g$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/graph/proto/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/graph/proto/g$b<",
        "Lcom/android/tools/r8/graph/proto/g$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/proto/g$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/proto/g$b;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/graph/proto/g$b;->b:Lcom/android/tools/r8/graph/M2;

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/proto/g$a;->b()Lcom/android/tools/r8/graph/proto/g$b;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/internal/Pm0;)Lcom/android/tools/r8/graph/proto/g$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/tools/r8/graph/proto/g$b;->a:Lcom/android/tools/r8/internal/Pm0;

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/proto/g$a;->b()Lcom/android/tools/r8/graph/proto/g$b;

    move-result-object p1

    return-object p1
.end method

.method public a()Lcom/android/tools/r8/graph/proto/g;
    .locals 3

    .line 5
    new-instance v0, Lcom/android/tools/r8/graph/proto/g;

    iget-object v1, p0, Lcom/android/tools/r8/graph/proto/g$b;->a:Lcom/android/tools/r8/internal/Pm0;

    iget-object v2, p0, Lcom/android/tools/r8/graph/proto/g$b;->b:Lcom/android/tools/r8/graph/M2;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/graph/proto/g;-><init>(Lcom/android/tools/r8/internal/Pm0;Lcom/android/tools/r8/graph/M2;)V

    return-object v0
.end method

.method public final b()Lcom/android/tools/r8/graph/proto/g$b;
    .locals 0

    return-object p0
.end method
