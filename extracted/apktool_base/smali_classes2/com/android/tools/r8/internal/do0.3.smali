.class public final Lcom/android/tools/r8/internal/do0;
.super Lcom/android/tools/r8/internal/eo0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/eo0;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lcom/android/tools/r8/internal/Tn0;Ljava/util/regex/Matcher;)Z
    .locals 2

    .line 3
    invoke-virtual {p2, p0}, Ljava/util/regex/Matcher;->start(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 4
    :cond_0
    invoke-virtual {p2, p0}, Ljava/util/regex/Matcher;->end(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/android/tools/r8/internal/Tn0;->d(II)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/android/tools/r8/internal/fo0;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/X81;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/X81;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "(?:([^\\d\\s\\[\\];:()<>][^\\s\\[\\];:()<>]*|\\<init\\>|\\<clinit\\>))"

    return-object v0
.end method
