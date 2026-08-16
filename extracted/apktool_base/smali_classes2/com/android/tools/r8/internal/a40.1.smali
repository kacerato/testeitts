.class public final Lcom/android/tools/r8/internal/a40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/ProgramResource;


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/origin/Origin;

.field public final b:Lcom/android/tools/r8/ProgramResource$Kind;

.field public c:[B

.field public final d:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/ProgramResource$Kind;[BLjava/util/Set;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/a40;->e:Z

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/a40;->a:Lcom/android/tools/r8/origin/Origin;

    iput-object p2, p0, Lcom/android/tools/r8/internal/a40;->b:Lcom/android/tools/r8/ProgramResource$Kind;

    iput-object p3, p0, Lcom/android/tools/r8/internal/a40;->c:[B

    iput-object p4, p0, Lcom/android/tools/r8/internal/a40;->d:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final getByteStream()Ljava/io/InputStream;
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/a40;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public final getBytes()[B
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/internal/a40;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/a40;->c:[B

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/a40;->c:[B

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/tools/r8/internal/a40;->c:[B

    return-object v0
.end method

.method public final getClassDescriptors()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/a40;->d:Ljava/util/Set;

    return-object v0
.end method

.method public final getKind()Lcom/android/tools/r8/ProgramResource$Kind;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/a40;->b:Lcom/android/tools/r8/ProgramResource$Kind;

    return-object v0
.end method

.method public final getOrigin()Lcom/android/tools/r8/origin/Origin;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/a40;->a:Lcom/android/tools/r8/origin/Origin;

    return-object v0
.end method
