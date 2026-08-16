.class public final Lcom/android/tools/r8/internal/Tm0;
.super Lcom/android/tools/r8/internal/QC;
.source "SourceFile"


# instance fields
.field public final transient d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/QC;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Tm0;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(I[Ljava/lang/Object;)I
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/Tm0;->d:Ljava/lang/Object;

    aput-object v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final a()Lcom/android/tools/r8/internal/hC;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Tm0;->d:Ljava/lang/Object;

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Tm0;->d:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Tm0;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final iterator()Lcom/android/tools/r8/internal/Av0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Tm0;->d:Ljava/lang/Object;

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/EK;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/EK;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/Tm0;->d:Ljava/lang/Object;

    .line 4
    new-instance v1, Lcom/android/tools/r8/internal/EK;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/EK;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public final size()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/Tm0;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
