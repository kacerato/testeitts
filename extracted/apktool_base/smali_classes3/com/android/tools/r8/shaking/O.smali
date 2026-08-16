.class public final Lcom/android/tools/r8/shaking/O;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/A2;

.field public final b:Z

.field public c:Lcom/android/tools/r8/graph/Z4;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/A2;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/O;->a:Lcom/android/tools/r8/graph/A2;

    iput-boolean p2, p0, Lcom/android/tools/r8/shaking/O;->b:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/shaking/O;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/shaking/O;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/O;->a:Lcom/android/tools/r8/graph/A2;

    iget-object v3, p1, Lcom/android/tools/r8/shaking/O;->a:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/O;->b:Z

    iget-boolean p1, p1, Lcom/android/tools/r8/shaking/O;->b:Z

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/O;->a:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E;->hashCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/O;->b:Z

    invoke-static {v1}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method
