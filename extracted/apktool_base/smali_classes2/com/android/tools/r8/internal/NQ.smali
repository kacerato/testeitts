.class public abstract Lcom/android/tools/r8/internal/NQ;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/android/tools/r8/internal/tW;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u0000 \u001e2\u00020\u0001:\u0007\u0018\u0019\u001a\u001b\u001c\u001d\u001eB\t\u0008\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H&R\u0018\u0010\u0006\u001a\u00020\u0007X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u0018\u0010\u000c\u001a\u00020\rX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017\u0082\u0001\u0006\u001f !\"#$\u00a8\u0006%"
    }
    d2 = {
        "Lkotlin/metadata/jvm/KotlinClassMetadata;",
        "",
        "<init>",
        "()V",
        "write",
        "Lkotlin/Metadata;",
        "version",
        "Lkotlin/metadata/jvm/JvmMetadataVersion;",
        "getVersion",
        "()Lkotlin/metadata/jvm/JvmMetadataVersion;",
        "setVersion",
        "(Lkotlin/metadata/jvm/JvmMetadataVersion;)V",
        "flags",
        "",
        "getFlags",
        "()I",
        "setFlags",
        "(I)V",
        "isAllowedToWrite",
        "",
        "isAllowedToWrite$kotlin_metadata_jvm",
        "()Z",
        "setAllowedToWrite$kotlin_metadata_jvm",
        "(Z)V",
        "Class",
        "FileFacade",
        "SyntheticClass",
        "MultiFileClassFacade",
        "MultiFileClassPart",
        "Unknown",
        "Companion",
        "Lkotlin/metadata/jvm/KotlinClassMetadata$Class;",
        "Lkotlin/metadata/jvm/KotlinClassMetadata$FileFacade;",
        "Lkotlin/metadata/jvm/KotlinClassMetadata$MultiFileClassFacade;",
        "Lkotlin/metadata/jvm/KotlinClassMetadata$MultiFileClassPart;",
        "Lkotlin/metadata/jvm/KotlinClassMetadata$SyntheticClass;",
        "Lkotlin/metadata/jvm/KotlinClassMetadata$Unknown;",
        "kotlin-metadata-jvm"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/internal/NQ$a;,
        Lcom/android/tools/r8/internal/NQ$b;,
        Lcom/android/tools/r8/internal/NQ$c;,
        Lcom/android/tools/r8/internal/NQ$d;
    }
.end annotation


# instance fields
.field public a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/NQ;->a:Z

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/internal/NQ;-><init>()V

    return-void
.end method

.method public static final a(Lcom/android/tools/r8/kotlin/S;)Lcom/android/tools/r8/internal/NQ;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/S;->b:[I

    .line 2
    array-length v0, v0

    if-eqz v0, :cond_16

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/NL;

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/kotlin/S;->b:[I

    .line 5
    iget v2, p0, Lcom/android/tools/r8/kotlin/S;->e:I

    and-int/lit8 v2, v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 6
    :goto_0
    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/NL;-><init>([IZ)V

    .line 7
    iget v1, v0, Lcom/android/tools/r8/internal/t6;->b:I

    if-le v1, v4, :cond_1

    goto :goto_1

    :cond_1
    if-ge v1, v4, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    iget v2, v0, Lcom/android/tools/r8/internal/t6;->c:I

    if-le v2, v4, :cond_3

    goto :goto_1

    :cond_3
    if-ge v2, v4, :cond_4

    goto :goto_2

    .line 9
    :cond_4
    iget v2, v0, Lcom/android/tools/r8/internal/t6;->d:I

    if-ltz v2, :cond_5

    :goto_1
    move v2, v4

    goto :goto_3

    :cond_5
    :goto_2
    move v2, v3

    .line 10
    :goto_3
    iget-boolean v5, v0, Lcom/android/tools/r8/internal/NL;->f:Z

    if-eqz v5, :cond_6

    sget-object v5, Lcom/android/tools/r8/internal/NL;->g:Lcom/android/tools/r8/internal/NL;

    goto :goto_4

    :cond_6
    sget-object v5, Lcom/android/tools/r8/internal/NL;->h:Lcom/android/tools/r8/internal/NL;

    :goto_4
    if-ne v1, v4, :cond_7

    .line 11
    iget v6, v0, Lcom/android/tools/r8/internal/t6;->c:I

    if-nez v6, :cond_7

    goto :goto_7

    :cond_7
    if-nez v1, :cond_8

    goto :goto_7

    .line 12
    :cond_8
    iget v6, v5, Lcom/android/tools/r8/internal/t6;->b:I

    if-le v1, v6, :cond_9

    goto :goto_5

    :cond_9
    if-ge v1, v6, :cond_a

    goto :goto_6

    .line 13
    :cond_a
    iget v1, v0, Lcom/android/tools/r8/internal/t6;->c:I

    iget v5, v5, Lcom/android/tools/r8/internal/t6;->c:I

    if-le v1, v5, :cond_b

    :goto_5
    move v3, v4

    :cond_b
    :goto_6
    xor-int/2addr v3, v4

    :goto_7
    if-nez v3, :cond_e

    if-eqz v2, :cond_d

    .line 14
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "while maximum supported version is "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    iget-boolean v1, v0, Lcom/android/tools/r8/internal/NL;->f:Z

    if-eqz v1, :cond_c

    .line 16
    sget-object v1, Lcom/android/tools/r8/internal/NL;->g:Lcom/android/tools/r8/internal/NL;

    goto :goto_8

    :cond_c
    sget-object v1, Lcom/android/tools/r8/internal/NL;->h:Lcom/android/tools/r8/internal/NL;

    :goto_8
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". To support newer versions, update the kotlin-metadata-jvm library."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_9

    .line 17
    :cond_d
    const-string p0, "while minimum supported version is 1.1.0 (Kotlin 1.0)."

    .line 18
    :goto_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Provided Metadata instance has version "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 19
    :cond_e
    :try_start_0
    iget v0, p0, Lcom/android/tools/r8/kotlin/S;->a:I

    if-eq v0, v4, :cond_13

    const/4 v1, 0x2

    if-eq v0, v1, :cond_12

    const/4 v1, 0x3

    if-eq v0, v1, :cond_11

    const/4 v1, 0x4

    if-eq v0, v1, :cond_10

    const/4 v1, 0x5

    if-eq v0, v1, :cond_f

    .line 20
    new-instance v0, Lcom/android/tools/r8/internal/QQ;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/QQ;-><init>(Lcom/android/tools/r8/kotlin/S;)V

    return-object v0

    :catchall_0
    move-exception p0

    goto :goto_a

    .line 21
    :cond_f
    new-instance v0, Lcom/android/tools/r8/internal/NQ$d;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/NQ$d;-><init>(Lcom/android/tools/r8/kotlin/S;)V

    return-object v0

    .line 22
    :cond_10
    new-instance v0, Lcom/android/tools/r8/internal/NQ$c;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/NQ$c;-><init>(Lcom/android/tools/r8/kotlin/S;)V

    return-object v0

    .line 23
    :cond_11
    new-instance v0, Lcom/android/tools/r8/internal/PQ;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/PQ;-><init>(Lcom/android/tools/r8/kotlin/S;)V

    return-object v0

    .line 24
    :cond_12
    new-instance v0, Lcom/android/tools/r8/internal/NQ$b;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/NQ$b;-><init>(Lcom/android/tools/r8/kotlin/S;)V

    return-object v0

    .line 25
    :cond_13
    new-instance v0, Lcom/android/tools/r8/internal/NQ$a;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/NQ$a;-><init>(Lcom/android/tools/r8/kotlin/S;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 26
    :goto_a
    instance-of v0, p0, Ljava/lang/IllegalArgumentException;

    if-nez v0, :cond_15

    .line 27
    instance-of v0, p0, Ljava/lang/VirtualMachineError;

    if-nez v0, :cond_15

    instance-of v0, p0, Ljava/lang/ThreadDeath;

    if-eqz v0, :cond_14

    goto :goto_b

    .line 28
    :cond_14
    new-instance v0, Lcom/android/tools/r8/internal/lD;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/lD;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v0

    :cond_15
    :goto_b
    throw p0

    .line 29
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Provided Metadata instance does not have metadataVersion in it and therefore is malformed and cannot be read."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract a()Lcom/android/tools/r8/internal/ML;
.end method

.method public abstract a(Lcom/android/tools/r8/internal/ML;)V
.end method

.method public abstract b()Lcom/android/tools/r8/internal/KL;
.end method
