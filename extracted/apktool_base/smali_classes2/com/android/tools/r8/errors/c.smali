.class public final Lcom/android/tools/r8/errors/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/eC;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    new-instance v0, Lcom/android/tools/r8/internal/eC;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/eC;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/errors/c;->a:Lcom/android/tools/r8/internal/eC;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/errors/CheckDiscardDiagnostic;
    .locals 3

    .line 9
    new-instance v0, Lcom/android/tools/r8/errors/CheckDiscardDiagnostic;

    iget-object v1, p0, Lcom/android/tools/r8/errors/c;->a:Lcom/android/tools/r8/internal/eC;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/errors/CheckDiscardDiagnostic;-><init>(Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/errors/k;)V

    return-object v0
.end method

.method public final a(Ljava/util/ArrayList;Lcom/android/tools/r8/shaking/S0;Lcom/android/tools/r8/shaking/b5;)Lcom/android/tools/r8/errors/c;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/tools/r8/graph/D5;

    .line 2
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3
    invoke-interface {v2}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/experimental/graphinfo/GraphNode;

    move-result-object v4

    new-instance v5, Ljava/io/PrintStream;

    invoke-direct {v5, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 4
    invoke-virtual {p3, v4, v5}, Lcom/android/tools/r8/shaking/b5;->a(Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Ljava/io/PrintStream;)V

    .line 5
    iget-object v4, p0, Lcom/android/tools/r8/errors/c;->a:Lcom/android/tools/r8/internal/eC;

    .line 6
    invoke-interface {v2}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/n1;->j0()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Item "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was not discarded.\n"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {v4, v2}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    goto :goto_0

    :cond_0
    return-object p0
.end method
