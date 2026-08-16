.class public final Lcom/android/tools/r8/shaking/U1;
.super Lcom/android/tools/r8/experimental/graphinfo/GraphNode;
.source "SourceFile"


# instance fields
.field public final c:Lcom/android/tools/r8/origin/Origin;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/origin/Origin;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/tools/r8/experimental/graphinfo/GraphNode;-><init>(Z)V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/U1;->c:Lcom/android/tools/r8/origin/Origin;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/android/tools/r8/shaking/U1;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/android/tools/r8/shaking/U1;

    iget-object p1, p1, Lcom/android/tools/r8/shaking/U1;->c:Lcom/android/tools/r8/origin/Origin;

    iget-object v0, p0, Lcom/android/tools/r8/shaking/U1;->c:Lcom/android/tools/r8/origin/Origin;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/origin/Origin;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/U1;->c:Lcom/android/tools/r8/origin/Origin;

    invoke-virtual {v0}, Lcom/android/tools/r8/origin/Origin;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/U1;->c:Lcom/android/tools/r8/origin/Origin;

    invoke-virtual {v0}, Lcom/android/tools/r8/origin/Origin;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
