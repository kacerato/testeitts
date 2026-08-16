.class public final Lcom/android/tools/r8/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/AndroidResourceInput;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/android/tools/r8/AndroidResourceInput$Kind;

.field public final c:[B

.field public final d:Lcom/android/tools/r8/origin/ArchiveEntryOrigin;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/tools/r8/AndroidResourceInput$Kind;[BLcom/android/tools/r8/origin/ArchiveEntryOrigin;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/tools/r8/b;->b:Lcom/android/tools/r8/AndroidResourceInput$Kind;

    iput-object p3, p0, Lcom/android/tools/r8/b;->c:[B

    iput-object p4, p0, Lcom/android/tools/r8/b;->d:Lcom/android/tools/r8/origin/ArchiveEntryOrigin;

    return-void
.end method


# virtual methods
.method public final synthetic b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getByteStream()Ljava/io/InputStream;
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/android/tools/r8/b;->c:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public final getKind()Lcom/android/tools/r8/AndroidResourceInput$Kind;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/b;->b:Lcom/android/tools/r8/AndroidResourceInput$Kind;

    return-object v0
.end method

.method public final getOrigin()Lcom/android/tools/r8/origin/Origin;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/b;->d:Lcom/android/tools/r8/origin/ArchiveEntryOrigin;

    return-object v0
.end method

.method public final getPath()Lcom/android/tools/r8/ResourcePath;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/N3;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/N3;-><init>(Lcom/android/tools/r8/b;)V

    return-object v0
.end method
