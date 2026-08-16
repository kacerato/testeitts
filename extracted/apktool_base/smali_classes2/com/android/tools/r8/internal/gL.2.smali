.class public final Lcom/android/tools/r8/internal/gL;
.super Lcom/android/tools/r8/internal/dL;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/internal/FS;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/tools/r8/internal/dL;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/FS;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/FS;-><init>(Z)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/android/tools/r8/internal/dL;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    if-nez p2, :cond_0

    sget-object p2, Lcom/android/tools/r8/internal/fL;->b:Lcom/android/tools/r8/internal/fL;

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/FS;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    .line 2
    sget-object p2, Lcom/android/tools/r8/internal/fL;->b:Lcom/android/tools/r8/internal/fL;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/jL;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/jL;-><init>(Ljava/lang/String;)V

    move-object p2, v0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/gL;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/dL;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    instance-of v0, p1, Lcom/android/tools/r8/internal/gL;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/tools/r8/internal/gL;

    iget-object p1, p1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    iget-object v0, p0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
