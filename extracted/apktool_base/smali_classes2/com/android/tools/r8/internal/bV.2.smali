.class public interface abstract Lcom/android/tools/r8/internal/bV;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/MappingPartitionMetadata;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/internal/bV$a;
    }
.end annotation


# static fields
.field public static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/tools/r8/internal/bV;->a:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x56t
        -0x58t
    .end array-data
.end method

.method public static a(Lcom/android/tools/r8/dex/s;Lcom/android/tools/r8/naming/MapVersion;Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/internal/bV;
    .locals 4

    if-nez p0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/android/tools/r8/internal/bV$a;->a(Lcom/android/tools/r8/naming/MapVersion;)Lcom/android/tools/r8/internal/bV$a;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/dex/s;->a()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    const/4 v0, 0x2

    if-le p1, v0, :cond_6

    .line 4
    iget-object p1, p0, Lcom/android/tools/r8/dex/s;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    const p2, 0xffff

    and-int/2addr p1, p2

    .line 5
    sget-object p2, Lcom/android/tools/r8/internal/bV;->a:[B

    const/4 v1, 0x0

    aget-byte v2, p2, v1

    const/4 v3, 0x1

    aget-byte p2, p2, v3

    invoke-static {v1, v1, v2, p2}, Lcom/android/tools/r8/internal/HJ;->a(BBBB)I

    move-result p2

    if-ne p1, p2, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/dex/s;->d()S

    move-result p1

    .line 7
    :cond_1
    sget-object p2, Lcom/android/tools/r8/internal/aV;->a:[I

    if-eqz p1, :cond_3

    if-eq p1, v3, :cond_2

    .line 8
    sget-object v1, Lcom/android/tools/r8/internal/ZU;->c:Lcom/android/tools/r8/internal/ZU;

    goto :goto_0

    .line 9
    :cond_2
    sget-object v1, Lcom/android/tools/r8/internal/ZU;->e:Lcom/android/tools/r8/internal/ZU;

    goto :goto_0

    .line 10
    :cond_3
    sget-object v1, Lcom/android/tools/r8/internal/ZU;->d:Lcom/android/tools/r8/internal/ZU;

    .line 11
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p2, p2, v1

    if-eq p2, v3, :cond_5

    if-ne p2, v0, :cond_4

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/dex/s;->f()Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-static {p1}, Lcom/android/tools/r8/naming/MapVersion;->fromName(Ljava/lang/String;)Lcom/android/tools/r8/naming/MapVersion;

    move-result-object p1

    .line 14
    new-instance p2, Lcom/android/tools/r8/internal/zW;

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/dex/s;->a:Ljava/nio/ByteBuffer;

    .line 16
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 17
    new-array v0, v0, [B

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/dex/s;->a([B)V

    .line 19
    invoke-direct {p2, v0}, Lcom/android/tools/r8/internal/zW;-><init>([B)V

    .line 20
    new-instance v0, Lcom/android/tools/r8/internal/vW;

    .line 21
    iget-object v1, p0, Lcom/android/tools/r8/dex/s;->a:Ljava/nio/ByteBuffer;

    .line 22
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 23
    new-array v1, v1, [B

    .line 24
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/dex/s;->a([B)V

    .line 25
    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/vW;-><init>([B)V

    .line 26
    new-instance p0, Lcom/android/tools/r8/internal/cV;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/tools/r8/internal/cV;-><init>(Lcom/android/tools/r8/naming/MapVersion;Lcom/android/tools/r8/internal/AW;Lcom/android/tools/r8/internal/wW;)V

    return-object p0

    .line 27
    :cond_4
    new-instance p0, Lcom/android/tools/r8/retrace/RetracePartitionException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not find partition key strategy from serialized key: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/tools/r8/retrace/RetracePartitionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 28
    :cond_5
    invoke-virtual {p0}, Lcom/android/tools/r8/dex/s;->a()Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 29
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    .line 30
    new-instance p1, Ljava/lang/String;

    array-length p2, p0

    sub-int/2addr p2, v0

    invoke-direct {p1, p0, v0, p2}, Ljava/lang/String;-><init>([BII)V

    invoke-static {p1}, Lcom/android/tools/r8/naming/MapVersion;->fromName(Ljava/lang/String;)Lcom/android/tools/r8/naming/MapVersion;

    move-result-object p0

    .line 31
    invoke-static {p0}, Lcom/android/tools/r8/internal/bV$a;->a(Lcom/android/tools/r8/naming/MapVersion;)Lcom/android/tools/r8/internal/bV$a;

    move-result-object p0

    return-object p0

    .line 32
    :cond_6
    new-instance p0, Lcom/android/tools/r8/retrace/RetracePartitionException;

    const-string p1, "Unknown map partition strategy for metadata"

    invoke-direct {p0, p1}, Lcom/android/tools/r8/retrace/RetracePartitionException;-><init>(Ljava/lang/String;)V

    .line 33
    new-instance p1, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p2, p1}, Lcom/android/tools/r8/DiagnosticsHandler;->error(Lcom/android/tools/r8/Diagnostic;)V

    .line 34
    throw p0
.end method


# virtual methods
.method public a()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract b()Lcom/android/tools/r8/naming/MapVersion;
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()Lcom/android/tools/r8/internal/wW;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/wW;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/android/tools/r8/internal/wW;-><init>(Ljava/util/List;Ljava/util/HashSet;)V

    return-object v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
