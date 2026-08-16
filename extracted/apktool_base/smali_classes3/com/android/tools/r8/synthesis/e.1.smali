.class public final Lcom/android/tools/r8/synthesis/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/GlobalSyntheticsResourceProvider;


# instance fields
.field public final a:Lcom/android/tools/r8/origin/ArchiveEntryOrigin;

.field public final b:[B


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/origin/ArchiveEntryOrigin;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/synthesis/e;->a:Lcom/android/tools/r8/origin/ArchiveEntryOrigin;

    iput-object p2, p0, Lcom/android/tools/r8/synthesis/e;->b:[B

    return-void
.end method


# virtual methods
.method public final getByteStream()Ljava/io/InputStream;
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/android/tools/r8/synthesis/e;->b:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public final getOrigin()Lcom/android/tools/r8/origin/Origin;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/e;->a:Lcom/android/tools/r8/origin/ArchiveEntryOrigin;

    return-object v0
.end method
