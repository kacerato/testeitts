.class public final Lcom/android/tools/r8/internal/E40;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/origin/Origin;

.field public final b:Lcom/android/tools/r8/position/Position;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/E40;->a:Lcom/android/tools/r8/origin/Origin;

    iput-object p2, p0, Lcom/android/tools/r8/internal/E40;->b:Lcom/android/tools/r8/position/Position;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/tools/r8/internal/E40;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/tools/r8/internal/E40;

    iget-object v0, p1, Lcom/android/tools/r8/internal/E40;->a:Lcom/android/tools/r8/origin/Origin;

    iget-object v2, p0, Lcom/android/tools/r8/internal/E40;->a:Lcom/android/tools/r8/origin/Origin;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/android/tools/r8/internal/E40;->b:Lcom/android/tools/r8/position/Position;

    iget-object v0, p0, Lcom/android/tools/r8/internal/E40;->b:Lcom/android/tools/r8/position/Position;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/E40;->a:Lcom/android/tools/r8/origin/Origin;

    invoke-virtual {v0}, Lcom/android/tools/r8/origin/Origin;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0xd

    iget-object v1, p0, Lcom/android/tools/r8/internal/E40;->b:Lcom/android/tools/r8/position/Position;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
