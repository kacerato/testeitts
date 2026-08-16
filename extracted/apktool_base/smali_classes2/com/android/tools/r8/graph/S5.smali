.class public final Lcom/android/tools/r8/graph/S5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/proto/j;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/proto/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/S5;->a:Lcom/android/tools/r8/graph/proto/j;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/BitSet;)Ljava/util/BitSet;
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/graph/S5;->a:Lcom/android/tools/r8/graph/proto/j;

    iget-object v0, v0, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/proto/c;->b()Z

    move-result v0

    if-nez v0, :cond_6

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Ljava/util/BitSet;->length()I

    move-result v0

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/tools/r8/graph/S5;->a:Lcom/android/tools/r8/graph/proto/j;

    iget-object v3, v3, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/graph/proto/c;->a(I)Lcom/android/tools/r8/graph/proto/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/proto/b;->c()Z

    move-result v4

    if-nez v4, :cond_3

    instance-of v3, v3, Lcom/android/tools/r8/graph/proto/k;

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/tools/r8/graph/S5;->a:Lcom/android/tools/r8/graph/proto/j;

    iget-object v3, v3, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/graph/proto/c;->b(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/util/BitSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    return-object p1

    :cond_5
    return-object v1

    :cond_6
    :goto_2
    return-object p1
.end method
