.class public final Lcom/android/tools/r8/internal/ES;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;


# instance fields
.field public b:Lcom/android/tools/r8/internal/ES;

.field public c:Lcom/android/tools/r8/internal/ES;

.field public d:Lcom/android/tools/r8/internal/ES;

.field public e:Lcom/android/tools/r8/internal/ES;

.field public f:Lcom/android/tools/r8/internal/ES;

.field public final g:Ljava/lang/Object;

.field public final h:Z

.field public i:Ljava/lang/Object;

.field public j:I


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/tools/r8/internal/ES;->g:Ljava/lang/Object;

    .line 3
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/ES;->h:Z

    .line 4
    iput-object p0, p0, Lcom/android/tools/r8/internal/ES;->f:Lcom/android/tools/r8/internal/ES;

    iput-object p0, p0, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    return-void
.end method

.method public constructor <init>(ZLcom/android/tools/r8/internal/ES;Ljava/lang/Object;Lcom/android/tools/r8/internal/ES;Lcom/android/tools/r8/internal/ES;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lcom/android/tools/r8/internal/ES;->b:Lcom/android/tools/r8/internal/ES;

    .line 7
    iput-object p3, p0, Lcom/android/tools/r8/internal/ES;->g:Ljava/lang/Object;

    .line 8
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/ES;->h:Z

    const/4 p1, 0x1

    .line 9
    iput p1, p0, Lcom/android/tools/r8/internal/ES;->j:I

    .line 10
    iput-object p4, p0, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 11
    iput-object p5, p0, Lcom/android/tools/r8/internal/ES;->f:Lcom/android/tools/r8/internal/ES;

    .line 12
    iput-object p0, p5, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 13
    iput-object p0, p4, Lcom/android/tools/r8/internal/ES;->f:Lcom/android/tools/r8/internal/ES;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/android/tools/r8/internal/ES;->g:Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/ES;->i:Ljava/lang/Object;

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ES;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ES;->i:Ljava/lang/Object;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/ES;->g:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/ES;->i:Ljava/lang/Object;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/ES;->h:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/ES;->i:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/tools/r8/internal/ES;->i:Ljava/lang/Object;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/internal/ES;->g:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ES;->i:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
