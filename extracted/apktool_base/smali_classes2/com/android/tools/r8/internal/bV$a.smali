.class public Lcom/android/tools/r8/internal/bV$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/bV;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/internal/bV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final b:Lcom/android/tools/r8/naming/MapVersion;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/naming/MapVersion;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/bV$a;->b:Lcom/android/tools/r8/naming/MapVersion;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/naming/MapVersion;)Lcom/android/tools/r8/internal/bV$a;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/bV$a;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/bV$a;-><init>(Lcom/android/tools/r8/naming/MapVersion;)V

    return-object v0
.end method


# virtual methods
.method public final b()Lcom/android/tools/r8/naming/MapVersion;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/bV$a;->b:Lcom/android/tools/r8/naming/MapVersion;

    return-object v0
.end method

.method public getBytes()[B
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/bV$a;->b:Lcom/android/tools/r8/naming/MapVersion;

    invoke-virtual {v2}, Lcom/android/tools/r8/naming/MapVersion;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
