.class public final Lcom/android/tools/r8/internal/KN;
.super Lcom/android/tools/r8/internal/IN;
.source "SourceFile"


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/IN;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/KN;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/tools/r8/internal/KN;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/tools/r8/internal/KN;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Context$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Context$Builder;
    .locals 3

    .line 2
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$FieldDesc;->newBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$FieldDesc$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/KN;->c:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;->newBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc$Builder;->setDesc(Ljava/lang/String;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc$Builder;->build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$FieldDesc$Builder;->setHolder(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$FieldDesc$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/KN;->d:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$FieldDesc$Builder;->setName(Ljava/lang/String;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$FieldDesc$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/KN;->e:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;->newBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc$Builder;->setDesc(Ljava/lang/String;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc$Builder;->build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$FieldDesc$Builder;->setFieldType(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$FieldDesc$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$FieldDesc$Builder;->build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$FieldDesc;

    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Context$Builder;->setFieldDesc(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$FieldDesc;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/KN;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/tools/r8/internal/KN;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/tools/r8/internal/KN;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/KN;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/KN;

    iget-object v1, p0, Lcom/android/tools/r8/internal/KN;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/tools/r8/internal/KN;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/KN;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/tools/r8/internal/KN;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/KN;->e:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/tools/r8/internal/KN;->e:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/KN;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/tools/r8/internal/KN;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/tools/r8/internal/KN;->e:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
