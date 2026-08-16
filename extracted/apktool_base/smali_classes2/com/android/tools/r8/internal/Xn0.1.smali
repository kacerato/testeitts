.class public final Lcom/android/tools/r8/internal/Xn0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/fo0;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/android/tools/r8/internal/Yn0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Yn0;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Xn0;->b:Lcom/android/tools/r8/internal/Yn0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Xn0;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/Tn0;Ljava/util/regex/Matcher;)Z
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Xn0;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/regex/Matcher;->start(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/Xn0;->a:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    const-string v3, "Suppressed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    .line 5
    :cond_1
    iget-object v2, p0, Lcom/android/tools/r8/internal/Xn0;->b:Lcom/android/tools/r8/internal/Yn0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Yn0;->b()Lcom/android/tools/r8/internal/Rn0;

    move-result-object v2

    .line 6
    sget-object v3, Lcom/android/tools/r8/internal/Rn0;->c:Lcom/android/tools/r8/internal/Rn0;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    const/16 v2, 0x2f

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/2addr v1, v4

    add-int/2addr v0, v1

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/Xn0;->a:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/regex/Matcher;->end(Ljava/lang/String;)I

    move-result p2

    iget-object v1, p0, Lcom/android/tools/r8/internal/Xn0;->b:Lcom/android/tools/r8/internal/Yn0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Yn0;->b()Lcom/android/tools/r8/internal/Rn0;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/android/tools/r8/internal/Tn0;->a(IILcom/android/tools/r8/internal/Rn0;)V

    return v4
.end method
