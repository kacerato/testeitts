.class public Lcom/android/tools/r8/shaking/i4$b;
.super Lcom/android/tools/r8/shaking/i4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/shaking/i4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final b:Lcom/android/tools/r8/graph/M2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/shaking/i4;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/i4$b;->b:Lcom/android/tools/r8/graph/M2;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/shaking/i4$b;
    .locals 0

    return-object p0
.end method

.method public b()Lcom/android/tools/r8/graph/M2;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/i4$b;->b:Lcom/android/tools/r8/graph/M2;

    return-object v0
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/i4$b;->b:Lcom/android/tools/r8/graph/M2;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/tools/r8/shaking/i4$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/shaking/i4$b;->b:Lcom/android/tools/r8/graph/M2;

    check-cast p1, Lcom/android/tools/r8/shaking/i4$b;

    iget-object p1, p1, Lcom/android/tools/r8/shaking/i4$b;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/E;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/i4$b;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/i4$b;->b:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
