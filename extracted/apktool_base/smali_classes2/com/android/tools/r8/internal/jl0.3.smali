.class public abstract Lcom/android/tools/r8/internal/jl0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/android/tools/r8/internal/hC;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v6, ".webp"

    const-string v7, ".avif"

    const-string v0, ".png"

    const-string v1, ".9.png"

    const-string v2, ".gif"

    const-string v3, ".jpeg"

    const-string v4, ".jpg"

    const-string v5, ".bmp"

    invoke-static/range {v0 .. v7}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/jl0;->a:Lcom/android/tools/r8/internal/hC;

    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;Ljava/lang/String;II)I
    .locals 3

    if-le p3, p2, :cond_2

    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_1

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 14
    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_0

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    .line 15
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return p3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge p2, p3, :cond_2

    .line 16
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    return p3
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5e

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_3

    .line 4
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2a

    if-ne v4, v5, :cond_1

    .line 5
    invoke-static {v0, p0, v3, v2}, Lcom/android/tools/r8/internal/jl0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;II)I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v6, v1, -0x1

    if-ge v2, v6, :cond_0

    add-int/lit8 v6, v2, 0x1

    .line 6
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v5, :cond_0

    add-int/lit8 v4, v3, 0x2

    move v2, v6

    .line 7
    :cond_0
    const-string v3, ".*?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v4

    goto :goto_1

    :cond_1
    const/16 v5, 0x3f

    if-ne v4, v5, :cond_2

    .line 8
    invoke-static {v0, p0, v3, v2}, Lcom/android/tools/r8/internal/jl0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;II)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 9
    const-string v4, ".?"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, p0, v3, v1}, Lcom/android/tools/r8/internal/jl0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;II)I

    const/16 p0, 0x24

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
