.class public final Lcom/android/tools/r8/internal/ho0;
.super Lcom/android/tools/r8/internal/eo0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/eo0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/android/tools/r8/internal/fo0;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Id1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/Id1;-><init>(Lcom/android/tools/r8/internal/ho0;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ".*"

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/android/tools/r8/internal/Tn0;Ljava/util/regex/Matcher;)Z
    .locals 6

    .line 3
    invoke-virtual {p3, p1}, Ljava/util/regex/Matcher;->start(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    invoke-virtual {p3, p1}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    :goto_0
    if-lez v2, :cond_3

    add-int/lit8 v3, v2, -0x1

    .line 6
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3a

    if-ne v4, v5, :cond_1

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_2

    .line 9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    :goto_1
    add-int/2addr v3, v0

    .line 11
    invoke-virtual {p2, v0, v3}, Lcom/android/tools/r8/internal/Tn0;->e(II)V

    .line 12
    invoke-virtual {p3, p1}, Ljava/util/regex/Matcher;->end(Ljava/lang/String;)I

    move-result p1

    .line 13
    invoke-static {v3, p1}, Ljava/lang/Integer;->min(II)I

    move-result p3

    const/4 v0, 0x1

    invoke-virtual {p2, p3, p1, v0}, Lcom/android/tools/r8/internal/Tn0;->a(IIZ)V

    return v0
.end method
