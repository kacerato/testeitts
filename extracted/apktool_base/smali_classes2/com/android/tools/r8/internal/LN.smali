.class public final Lcom/android/tools/r8/internal/LN;
.super Lcom/android/tools/r8/internal/IN;
.source "SourceFile"


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/IN;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/LN;->g:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/android/tools/r8/internal/LN;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/tools/r8/internal/LN;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/tools/r8/internal/LN;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/tools/r8/internal/LN;->f:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Context$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Context$Builder;
    .locals 6

    .line 6
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;->newBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/LN;->c:Ljava/lang/String;

    .line 7
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;->newBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc$Builder;->setDesc(Ljava/lang/String;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc$Builder;->build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc$Builder;->setHolder(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/LN;->d:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc$Builder;->setName(Ljava/lang/String;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/LN;->e:Ljava/lang/String;

    .line 10
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;->newBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc$Builder;->setDesc(Ljava/lang/String;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc$Builder;->build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;

    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc$Builder;->setReturnType(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc$Builder;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/android/tools/r8/internal/LN;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/lang/String;

    .line 13
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;->newBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc$Builder;->setDesc(Ljava/lang/String;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc$Builder;->build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;

    move-result-object v4

    .line 14
    invoke-virtual {v0, v4}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc$Builder;->addParameterTypes(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc$Builder;

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc$Builder;->build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Context$Builder;->setMethodDesc(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodDesc;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/internal/LN;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/LN;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/internal/LN;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 v1, 0x29

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/LN;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/LN;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/LN;

    iget-object v1, p0, Lcom/android/tools/r8/internal/LN;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/tools/r8/internal/LN;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/LN;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/tools/r8/internal/LN;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/LN;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/tools/r8/internal/LN;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/LN;->f:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/tools/r8/internal/LN;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/LN;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/tools/r8/internal/LN;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/tools/r8/internal/LN;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/tools/r8/internal/LN;->f:Ljava/util/ArrayList;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
