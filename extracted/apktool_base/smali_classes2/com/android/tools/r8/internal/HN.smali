.class public final Lcom/android/tools/r8/internal/HN;
.super Lcom/android/tools/r8/internal/IN;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/IN;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/HN;->d:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/HN;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Context$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Context$Builder;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/HN;->c:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;->newBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc$Builder;->setDesc(Ljava/lang/String;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc$Builder;->build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;

    move-result-object v0

    .line 4
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Context$Builder;->setClassDesc(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeDesc;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Context$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/HN;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/android/tools/r8/internal/HN;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/HN;

    iget-object v0, p0, Lcom/android/tools/r8/internal/HN;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/tools/r8/internal/HN;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/HN;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
