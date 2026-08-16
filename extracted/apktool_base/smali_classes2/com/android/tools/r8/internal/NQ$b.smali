.class public final Lcom/android/tools/r8/internal/NQ$b;
.super Lcom/android/tools/r8/internal/NQ;
.source "SourceFile"


# annotations
.annotation runtime Lcom/android/tools/r8/internal/tW;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000f\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tB\u0019\u0008\u0010\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0008\u0010\u000eJ\u0008\u0010\u001b\u001a\u00020\u000bH\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0004\u001a\u00020\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0006\u001a\u00020\u0007X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001c"
    }
    d2 = {
        "Lkotlin/metadata/jvm/KotlinClassMetadata$FileFacade;",
        "Lkotlin/metadata/jvm/KotlinClassMetadata;",
        "kmPackage",
        "Lkotlin/metadata/KmPackage;",
        "version",
        "Lkotlin/metadata/jvm/JvmMetadataVersion;",
        "flags",
        "",
        "<init>",
        "(Lkotlin/metadata/KmPackage;Lkotlin/metadata/jvm/JvmMetadataVersion;I)V",
        "annotationData",
        "Lkotlin/Metadata;",
        "lenient",
        "",
        "(Lkotlin/Metadata;Z)V",
        "getKmPackage",
        "()Lkotlin/metadata/KmPackage;",
        "setKmPackage",
        "(Lkotlin/metadata/KmPackage;)V",
        "getVersion",
        "()Lkotlin/metadata/jvm/JvmMetadataVersion;",
        "setVersion",
        "(Lkotlin/metadata/jvm/JvmMetadataVersion;)V",
        "getFlags",
        "()I",
        "setFlags",
        "(I)V",
        "write",
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

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/internal/NQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public b:Lcom/android/tools/r8/internal/sQ;

.field public c:Lcom/android/tools/r8/internal/ML;

.field public final d:I


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/kotlin/S;)V
    .locals 3

    invoke-static {p1}, Lcom/android/tools/r8/internal/qM;->a(Lcom/android/tools/r8/kotlin/S;)Lcom/android/tools/r8/internal/sQ;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/ML;

    iget-object v2, p1, Lcom/android/tools/r8/kotlin/S;->b:[I

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/ML;-><init>([I)V

    iget p1, p1, Lcom/android/tools/r8/kotlin/S;->e:I

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/tools/r8/internal/NQ;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/NQ$b;->b:Lcom/android/tools/r8/internal/sQ;

    iput-object v1, p0, Lcom/android/tools/r8/internal/NQ$b;->c:Lcom/android/tools/r8/internal/ML;

    iput p1, p0, Lcom/android/tools/r8/internal/NQ$b;->d:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/NQ;->a:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/ML;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/NQ$b;->c:Lcom/android/tools/r8/internal/ML;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/ML;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/internal/NQ$b;->c:Lcom/android/tools/r8/internal/ML;

    return-void
.end method

.method public final b()Lcom/android/tools/r8/internal/KL;
    .locals 9

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/NQ;->a:Z

    const-string v1, "file facade"

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/OQ;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/NQ$b;->c:Lcom/android/tools/r8/internal/ML;

    invoke-static {v0}, Lcom/android/tools/r8/internal/OQ;->a(Lcom/android/tools/r8/internal/ML;)V

    :try_start_0
    new-instance v0, Lcom/android/tools/r8/internal/n50;

    new-instance v1, Lcom/android/tools/r8/internal/rM;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/rM;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/n50;-><init>(Lcom/android/tools/r8/internal/rM;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/NQ$b;->b:Lcom/android/tools/r8/internal/sQ;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/n50;->a(Lcom/android/tools/r8/internal/sQ;)V

    iget-object v1, v0, Lcom/android/tools/r8/internal/n50;->a:Lcom/android/tools/r8/internal/r90;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/r90;->c()Lcom/android/tools/r8/internal/s90;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/s90;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/android/tools/r8/internal/n50;->b:Lcom/android/tools/r8/internal/by0;

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/uM;->a(Lcom/android/tools/r8/internal/Ty;Lcom/android/tools/r8/internal/by0;)Lcom/android/tools/r8/internal/p50;

    move-result-object v0

    iget-object v1, v0, Lcom/android/tools/r8/internal/p50;->b:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, [Ljava/lang/String;

    iget-object v0, v0, Lcom/android/tools/r8/internal/p50;->c:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, [Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Lcom/android/tools/r8/internal/NQ$b;->c:Lcom/android/tools/r8/internal/ML;

    iget v1, v0, Lcom/android/tools/r8/internal/ML;->b:I

    iget v3, v0, Lcom/android/tools/r8/internal/ML;->c:I

    iget v0, v0, Lcom/android/tools/r8/internal/ML;->d:I

    filled-new-array {v1, v3, v0}, [I

    move-result-object v3

    iget v0, p0, Lcom/android/tools/r8/internal/NQ$b;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x30

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/tools/r8/internal/LL;->a(Ljava/lang/Integer;[I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;I)Lcom/android/tools/r8/internal/KL;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    instance-of v1, v0, Ljava/lang/IllegalArgumentException;

    if-nez v1, :cond_2

    instance-of v1, v0, Ljava/lang/VirtualMachineError;

    if-nez v1, :cond_2

    instance-of v1, v0, Ljava/lang/ThreadDeath;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Kotlin metadata is not correct and can not be written"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    :cond_2
    :goto_1
    throw v0
.end method

.method public final c()Lcom/android/tools/r8/internal/sQ;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/NQ$b;->b:Lcom/android/tools/r8/internal/sQ;

    return-object v0
.end method
