.class public final Lcom/android/tools/r8/internal/vc;
.super Lcom/android/tools/r8/internal/Au;
.source "SourceFile"


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Au;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/internal/vc;->a:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/proto/c;)Lcom/android/tools/r8/internal/Au;
    .locals 1

    .line 2
    iget v0, p0, Lcom/android/tools/r8/internal/vc;->a:I

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/proto/c;->a(I)Lcom/android/tools/r8/graph/proto/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/proto/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object p1, Lcom/android/tools/r8/internal/jv0;->a:Lcom/android/tools/r8/internal/jv0;

    return-object p1

    .line 4
    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/vc;->a:I

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/proto/c;->b(I)I

    move-result p1

    .line 5
    iget v0, p0, Lcom/android/tools/r8/internal/vc;->a:I

    if-eq p1, v0, :cond_1

    .line 6
    new-instance v0, Lcom/android/tools/r8/internal/vc;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/vc;-><init>(I)V

    return-object v0

    :cond_1
    return-object p0
.end method

.method public final a()Lcom/android/tools/r8/internal/vc;
    .locals 0

    .line 1
    return-object p0
.end method
