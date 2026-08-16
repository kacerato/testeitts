.class public final Lcom/android/tools/r8/internal/Xp0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Xp0;->a:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/q21;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/q21;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/tools/r8/internal/Xp0;->b:I

    sget-boolean v1, Lcom/android/tools/r8/internal/Xp0;->c:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Xp0;
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, ""

    move v4, v2

    move-object v5, v3

    :goto_0
    const/16 v6, 0x25

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_3

    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_0
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    new-instance p0, Lcom/android/tools/r8/internal/Wp0;

    invoke-direct {p0, v5}, Lcom/android/tools/r8/internal/Wp0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance p0, Lcom/android/tools/r8/internal/Xp0;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/Xp0;-><init>(Ljava/util/ArrayList;)V

    return-object p0

    :cond_3
    add-int/lit8 v8, v7, 0x1

    const/4 v9, 0x0

    if-ne v8, v1, :cond_4

    return-object v9

    :cond_4
    invoke-virtual {p0, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v6, :cond_8

    const/16 v6, 0x62

    if-eq v5, v6, :cond_6

    const/16 v6, 0x64

    if-eq v5, v6, :cond_5

    const/16 v6, 0x73

    if-eq v5, v6, :cond_6

    return-object v9

    :cond_5
    if-nez p1, :cond_6

    return-object v9

    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    new-instance v6, Lcom/android/tools/r8/internal/Wp0;

    invoke-direct {v6, v2}, Lcom/android/tools/r8/internal/Wp0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v3

    :cond_7
    new-instance v6, Lcom/android/tools/r8/internal/Wp0;

    invoke-direct {v6, v5, v4}, Lcom/android/tools/r8/internal/Wp0;-><init>(CI)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    :goto_1
    move-object v5, v2

    goto :goto_2

    :cond_8
    const-string v5, "%"

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :goto_2
    add-int/lit8 v2, v7, 0x2

    goto :goto_0
.end method
