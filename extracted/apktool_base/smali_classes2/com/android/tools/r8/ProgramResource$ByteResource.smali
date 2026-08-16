.class public Lcom/android/tools/r8/ProgramResource$ByteResource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/ProgramResource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/ProgramResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByteResource"
.end annotation


# static fields
.field static final synthetic e:Z = true


# instance fields
.field private final a:Lcom/android/tools/r8/origin/Origin;

.field private final b:Lcom/android/tools/r8/ProgramResource$Kind;

.field private final c:[B

.field private final d:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/ProgramResource$Kind;[BLjava/util/Set;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-boolean v0, Lcom/android/tools/r8/ProgramResource$ByteResource;->e:Z

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/ProgramResource$ByteResource;->a:Lcom/android/tools/r8/origin/Origin;

    .line 5
    iput-object p2, p0, Lcom/android/tools/r8/ProgramResource$ByteResource;->b:Lcom/android/tools/r8/ProgramResource$Kind;

    .line 6
    iput-object p3, p0, Lcom/android/tools/r8/ProgramResource$ByteResource;->c:[B

    .line 7
    iput-object p4, p0, Lcom/android/tools/r8/ProgramResource$ByteResource;->d:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/ProgramResource$Kind;[BLjava/util/Set;Lcom/android/tools/r8/C2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/ProgramResource$ByteResource;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/ProgramResource$Kind;[BLjava/util/Set;)V

    return-void
.end method


# virtual methods
.method public getByteStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/ResourceException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/android/tools/r8/ProgramResource$ByteResource;->c:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getBytes()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/ResourceException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/ProgramResource$ByteResource;->c:[B

    return-object v0
.end method

.method public getClassDescriptors()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/ProgramResource$ByteResource;->d:Ljava/util/Set;

    return-object v0
.end method

.method public getKind()Lcom/android/tools/r8/ProgramResource$Kind;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/ProgramResource$ByteResource;->b:Lcom/android/tools/r8/ProgramResource$Kind;

    return-object v0
.end method

.method public getOrigin()Lcom/android/tools/r8/origin/Origin;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/ProgramResource$ByteResource;->a:Lcom/android/tools/r8/origin/Origin;

    return-object v0
.end method
