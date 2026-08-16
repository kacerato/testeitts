.class public abstract Lcom/android/tools/r8/internal/N5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/android/tools/r8/internal/L5;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/tools/r8/internal/L5;

    const/16 v1, 0x3d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/J5;

    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    const-string v4, "base64()"

    invoke-direct {v2, v4, v3}, Lcom/android/tools/r8/internal/J5;-><init>(Ljava/lang/String;[C)V

    invoke-direct {v0, v2, v1}, Lcom/android/tools/r8/internal/L5;-><init>(Lcom/android/tools/r8/internal/J5;Ljava/lang/Character;)V

    new-instance v0, Lcom/android/tools/r8/internal/L5;

    new-instance v2, Lcom/android/tools/r8/internal/J5;

    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    const-string v4, "base64Url()"

    invoke-direct {v2, v4, v3}, Lcom/android/tools/r8/internal/J5;-><init>(Ljava/lang/String;[C)V

    invoke-direct {v0, v2, v1}, Lcom/android/tools/r8/internal/L5;-><init>(Lcom/android/tools/r8/internal/J5;Ljava/lang/Character;)V

    sput-object v0, Lcom/android/tools/r8/internal/N5;->a:Lcom/android/tools/r8/internal/L5;

    new-instance v0, Lcom/android/tools/r8/internal/M5;

    new-instance v2, Lcom/android/tools/r8/internal/J5;

    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    const-string v4, "base32()"

    invoke-direct {v2, v4, v3}, Lcom/android/tools/r8/internal/J5;-><init>(Ljava/lang/String;[C)V

    invoke-direct {v0, v2, v1}, Lcom/android/tools/r8/internal/M5;-><init>(Lcom/android/tools/r8/internal/J5;Ljava/lang/Character;)V

    new-instance v0, Lcom/android/tools/r8/internal/M5;

    new-instance v2, Lcom/android/tools/r8/internal/J5;

    const-string v3, "0123456789ABCDEFGHIJKLMNOPQRSTUV"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    const-string v4, "base32Hex()"

    invoke-direct {v2, v4, v3}, Lcom/android/tools/r8/internal/J5;-><init>(Ljava/lang/String;[C)V

    invoke-direct {v0, v2, v1}, Lcom/android/tools/r8/internal/M5;-><init>(Lcom/android/tools/r8/internal/J5;Ljava/lang/Character;)V

    new-instance v0, Lcom/android/tools/r8/internal/K5;

    new-instance v1, Lcom/android/tools/r8/internal/J5;

    const-string v2, "0123456789ABCDEF"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const-string v3, "base16()"

    invoke-direct {v1, v3, v2}, Lcom/android/tools/r8/internal/J5;-><init>(Ljava/lang/String;[C)V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/K5;-><init>(Lcom/android/tools/r8/internal/J5;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([B)Ljava/lang/String;
    .locals 5

    .line 1
    array-length v0, p1

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lcom/android/tools/r8/internal/U60;->a(III)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v2, p0

    check-cast v2, Lcom/android/tools/r8/internal/M5;

    .line 4
    iget-object v2, v2, Lcom/android/tools/r8/internal/M5;->b:Lcom/android/tools/r8/internal/J5;

    iget v3, v2, Lcom/android/tools/r8/internal/J5;->e:I

    iget v2, v2, Lcom/android/tools/r8/internal/J5;->f:I

    sget-object v4, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v0, v2}, Lcom/android/tools/r8/internal/YH;->a(II)I

    move-result v2

    mul-int/2addr v2, v3

    .line 5
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    :try_start_0
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/tools/r8/internal/N5;->a(Ljava/lang/StringBuilder;[BI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public abstract a(Ljava/lang/StringBuilder;[BI)V
.end method
