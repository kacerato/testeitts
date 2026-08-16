.class public final Lcom/android/tools/r8/internal/bo0;
.super Lcom/android/tools/r8/internal/eo0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/eo0;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/android/tools/r8/internal/Tn0;Ljava/util/regex/Matcher;)Z
    .locals 6

    .line 3
    invoke-virtual {p2, p0}, Ljava/util/regex/Matcher;->start(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x1

    if-lez v0, :cond_1

    .line 4
    iget-object v3, p1, Lcom/android/tools/r8/internal/Tn0;->a:Ljava/lang/String;

    add-int/lit8 v4, v0, -0x1

    .line 5
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x3a

    if-ne v3, v5, :cond_1

    move v2, v1

    move v0, v4

    .line 6
    :cond_1
    invoke-virtual {p2, p0}, Ljava/util/regex/Matcher;->end(Ljava/lang/String;)I

    move-result p0

    .line 7
    invoke-virtual {p1, v0, p0, v2}, Lcom/android/tools/r8/internal/Tn0;->a(IIZ)V

    return v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/android/tools/r8/internal/fo0;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/X51;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/X51;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "\\d*"

    return-object v0
.end method
