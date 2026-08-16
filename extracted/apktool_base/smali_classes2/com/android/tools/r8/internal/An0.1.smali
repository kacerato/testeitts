.class public final Lcom/android/tools/r8/internal/An0;
.super Lcom/android/tools/r8/internal/Cn0;
.source "SourceFile"


# instance fields
.field public final synthetic i:Lcom/android/tools/r8/internal/WK;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/En0;Ljava/lang/String;Lcom/android/tools/r8/internal/WK;)V
    .locals 0

    iput-object p3, p0, Lcom/android/tools/r8/internal/An0;->i:Lcom/android/tools/r8/internal/WK;

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/Cn0;-><init>(Lcom/android/tools/r8/internal/En0;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 0

    iget-object p1, p0, Lcom/android/tools/r8/internal/An0;->i:Lcom/android/tools/r8/internal/WK;

    iget-object p1, p1, Lcom/android/tools/r8/internal/WK;->a:Ljava/util/regex/Matcher;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result p1

    return p1
.end method

.method public final b(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/An0;->i:Lcom/android/tools/r8/internal/WK;

    iget-object v0, v0, Lcom/android/tools/r8/internal/WK;->a:Ljava/util/regex/Matcher;

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/tools/r8/internal/An0;->i:Lcom/android/tools/r8/internal/WK;

    iget-object p1, p1, Lcom/android/tools/r8/internal/WK;->a:Ljava/util/regex/Matcher;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method
