.class public abstract Lcom/android/tools/r8/internal/m8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


# static fields
.field public static final c:Lcom/android/tools/r8/internal/i8;

.field public static final d:Lcom/android/tools/r8/internal/g8;


# instance fields
.field public b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/i8;

    sget-object v1, Lcom/android/tools/r8/internal/YI;->d:[B

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/i8;-><init>([B)V

    sput-object v0, Lcom/android/tools/r8/internal/m8;->c:Lcom/android/tools/r8/internal/i8;

    invoke-static {}, Lcom/android/tools/r8/internal/u2;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/k8;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/k8;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/e8;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/e8;-><init>()V

    :goto_0
    sput-object v0, Lcom/android/tools/r8/internal/m8;->d:Lcom/android/tools/r8/internal/g8;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/m8;->b:I

    return-void
.end method

.method public static a(III)I
    .locals 3

    sub-int v0, p1, p0

    or-int v1, p0, p1

    or-int/2addr v1, v0

    sub-int v2, p2, p1

    or-int/2addr v1, v2

    if-gez v1, :cond_2

    if-ltz p0, :cond_1

    if-ge p1, p0, :cond_0

    .line 2
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Beginning index larger than ending index: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "End index: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 5
    const-string p2, "Beginning index: "

    const-string v0, " < 0"

    invoke-static {p0, p2, v0}, Lcom/android/tools/r8/internal/HC;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return v0
.end method

.method public static a(Ljava/lang/String;)Lcom/android/tools/r8/internal/i8;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/i8;

    sget-object v1, Lcom/android/tools/r8/internal/YI;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/i8;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method public abstract a(Lcom/android/tools/r8/internal/Ie;)V
.end method

.method public abstract a()Z
.end method

.method public abstract b()Lcom/android/tools/r8/internal/Be;
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/android/tools/r8/internal/YI;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/m8;->size()I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/m8;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract e(II)I
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract f(II)Lcom/android/tools/r8/internal/m8;
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/m8;->b:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/m8;->size()I

    move-result v0

    invoke-virtual {p0, v0, v0}, Lcom/android/tools/r8/internal/m8;->e(II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Lcom/android/tools/r8/internal/m8;->b:I

    :cond_1
    return v0
.end method

.method public abstract j(I)B
.end method

.method public abstract k(I)B
.end method

.method public abstract size()I
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/m8;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/m8;->size()I

    move-result v2

    const/16 v3, 0x32

    if-gt v2, v3, :cond_0

    new-instance v2, Lcom/android/tools/r8/internal/Dr0;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/Dr0;-><init>(Lcom/android/tools/r8/internal/m8;)V

    invoke-static {v2}, Lcom/android/tools/r8/internal/Gr0;->a(Lcom/android/tools/r8/internal/Fr0;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/16 v4, 0x2f

    invoke-virtual {p0, v3, v4}, Lcom/android/tools/r8/internal/m8;->f(II)Lcom/android/tools/r8/internal/m8;

    move-result-object v3

    new-instance v4, Lcom/android/tools/r8/internal/Dr0;

    invoke-direct {v4, v3}, Lcom/android/tools/r8/internal/Dr0;-><init>(Lcom/android/tools/r8/internal/m8;)V

    invoke-static {v4}, Lcom/android/tools/r8/internal/Gr0;->a(Lcom/android/tools/r8/internal/Fr0;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<ByteString@"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " size="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " contents=\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\">"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
