.class public final Lcom/android/tools/r8/experimental/graphinfo/ClassGraphNode;
.super Lcom/android/tools/r8/experimental/graphinfo/GraphNode;
.source "SourceFile"


# static fields
.field static final synthetic d:Z = true


# instance fields
.field private final c:Lcom/android/tools/r8/references/ClassReference;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ZLcom/android/tools/r8/references/ClassReference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/experimental/graphinfo/GraphNode;-><init>(Z)V

    sget-boolean p1, Lcom/android/tools/r8/experimental/graphinfo/ClassGraphNode;->d:Z

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/android/tools/r8/experimental/graphinfo/ClassGraphNode;->c:Lcom/android/tools/r8/references/ClassReference;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/android/tools/r8/experimental/graphinfo/ClassGraphNode;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/tools/r8/experimental/graphinfo/ClassGraphNode;

    iget-object p1, p1, Lcom/android/tools/r8/experimental/graphinfo/ClassGraphNode;->c:Lcom/android/tools/r8/references/ClassReference;

    iget-object v0, p0, Lcom/android/tools/r8/experimental/graphinfo/ClassGraphNode;->c:Lcom/android/tools/r8/references/ClassReference;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/references/ClassReference;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public getReference()Lcom/android/tools/r8/references/ClassReference;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/experimental/graphinfo/ClassGraphNode;->c:Lcom/android/tools/r8/references/ClassReference;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/experimental/graphinfo/ClassGraphNode;->c:Lcom/android/tools/r8/references/ClassReference;

    invoke-virtual {v0}, Lcom/android/tools/r8/references/ClassReference;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/experimental/graphinfo/ClassGraphNode;->c:Lcom/android/tools/r8/references/ClassReference;

    invoke-virtual {v0}, Lcom/android/tools/r8/references/ClassReference;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
