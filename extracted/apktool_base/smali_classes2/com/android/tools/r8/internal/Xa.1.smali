.class public final Lcom/android/tools/r8/internal/Xa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/dH;

.field public final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/dH;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Xa;->a:Lcom/android/tools/r8/internal/dH;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Xa;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "regs["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/Xa;->a:Lcom/android/tools/r8/internal/dH;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/dH;->c()Lcom/android/tools/r8/internal/I30;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/aH;

    new-instance v2, Lcom/android/tools/r8/internal/WG;

    iget-object v1, v1, Lcom/android/tools/r8/internal/aH;->b:Lcom/android/tools/r8/internal/dH;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/WG;-><init>(Lcom/android/tools/r8/internal/dH;)V

    :goto_0
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/bH;->hasNext()Z

    move-result v1

    const-string v3, ", "

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/WG;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/RG;

    invoke-interface {v1}, Lcom/android/tools/r8/internal/RG;->a()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "], stack["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Xa;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/tools/r8/internal/Ju0;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
