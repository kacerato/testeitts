.class public final Lcom/android/tools/r8/shaking/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/D5;

.field public final b:Lcom/android/tools/r8/graph/r0;

.field public final c:Lcom/android/tools/r8/graph/p0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/graph/p0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/e;->a:Lcom/android/tools/r8/graph/D5;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/e;->b:Lcom/android/tools/r8/graph/r0;

    iput-object p3, p0, Lcom/android/tools/r8/shaking/e;->c:Lcom/android/tools/r8/graph/p0;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/shaking/e;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/android/tools/r8/shaking/e;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/e;->a:Lcom/android/tools/r8/graph/D5;

    iget-object v3, p1, Lcom/android/tools/r8/shaking/e;->a:Lcom/android/tools/r8/graph/D5;

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/shaking/e;->b:Lcom/android/tools/r8/graph/r0;

    iget-object v3, p1, Lcom/android/tools/r8/shaking/e;->b:Lcom/android/tools/r8/graph/r0;

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/shaking/e;->c:Lcom/android/tools/r8/graph/p0;

    iget-object p1, p1, Lcom/android/tools/r8/shaking/e;->c:Lcom/android/tools/r8/graph/p0;

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/shaking/e;->a:Lcom/android/tools/r8/graph/D5;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/e;->b:Lcom/android/tools/r8/graph/r0;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/e;->c:Lcom/android/tools/r8/graph/p0;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
