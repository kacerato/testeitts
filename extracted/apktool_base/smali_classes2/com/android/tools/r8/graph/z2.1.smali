.class public abstract Lcom/android/tools/r8/graph/z2;
.super Lcom/android/tools/r8/graph/n1;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/graph/v2;

.field public final c:Lcom/android/tools/r8/graph/n1;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/v2;Lcom/android/tools/r8/graph/n1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/n1;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/z2;->b:Lcom/android/tools/r8/graph/v2;

    iput-object p2, p0, Lcom/android/tools/r8/graph/z2;->c:Lcom/android/tools/r8/graph/n1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/dex/X;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/z2;->c:Lcom/android/tools/r8/graph/n1;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/n1;->a(Lcom/android/tools/r8/dex/X;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/graph/z2;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/android/tools/r8/graph/z2;

    iget-object v1, p0, Lcom/android/tools/r8/graph/z2;->b:Lcom/android/tools/r8/graph/v2;

    iget-object v3, p1, Lcom/android/tools/r8/graph/z2;->b:Lcom/android/tools/r8/graph/v2;

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/graph/E;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/graph/z2;->c:Lcom/android/tools/r8/graph/n1;

    iget-object p1, p1, Lcom/android/tools/r8/graph/z2;->c:Lcom/android/tools/r8/graph/n1;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/z2;->b:Lcom/android/tools/r8/graph/v2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    iget-object v1, p0, Lcom/android/tools/r8/graph/z2;->c:Lcom/android/tools/r8/graph/n1;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
