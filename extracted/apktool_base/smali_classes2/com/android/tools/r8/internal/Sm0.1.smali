.class public final Lcom/android/tools/r8/internal/Sm0;
.super Lcom/android/tools/r8/internal/hC;
.source "SourceFile"


# instance fields
.field public final transient d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/hC;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Sm0;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final e(II)Lcom/android/tools/r8/internal/hC;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/android/tools/r8/internal/U60;->a(III)V

    if-ne p1, p2, :cond_0

    sget-object p1, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    return-object p1

    :cond_0
    return-object p0
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/U60;->a(II)V

    iget-object p1, p0, Lcom/android/tools/r8/internal/Sm0;->d:Ljava/lang/Object;

    return-object p1
.end method

.method public final iterator()Lcom/android/tools/r8/internal/Av0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Sm0;->d:Ljava/lang/Object;

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/EK;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/EK;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/Sm0;->d:Ljava/lang/Object;

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

.method public final spliterator()Ljava/util/Spliterator;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Sm0;->d:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Sm0;->e(II)Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/Sm0;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
