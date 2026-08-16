.class public final Lcom/android/tools/r8/internal/Zd0;
.super Lcom/android/tools/r8/internal/ae0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/p10;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/ae0;-><init>(Lcom/android/tools/r8/internal/p10;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 2
    sget-object p1, Lcom/android/tools/r8/graph/u1;->E6:Lcom/android/tools/r8/graph/M2;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/ae0;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/ae0;
    .locals 0

    .line 3
    iget-object p2, p0, Lcom/android/tools/r8/internal/ae0;->b:Lcom/android/tools/r8/internal/p10;

    .line 4
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/ae0;->b(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/ae0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/ae0;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/p10;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/tools/r8/internal/ae0;->c:Lcom/android/tools/r8/internal/Zd0;

    return-object p1

    :cond_0
    sget-object p1, Lcom/android/tools/r8/internal/ae0;->d:Lcom/android/tools/r8/internal/Zd0;

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/ae0;->b:Lcom/android/tools/r8/internal/p10;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/p10;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/tools/r8/graph/u1;->E6:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
