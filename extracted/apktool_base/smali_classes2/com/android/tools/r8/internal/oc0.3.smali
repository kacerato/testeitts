.class public final Lcom/android/tools/r8/internal/oc0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Jq0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .line 5
    new-instance v0, Lcom/android/tools/r8/internal/Jo1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jo1;-><init>()V

    invoke-static {v0}, Lcom/android/tools/r8/internal/nf;->a(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/pf;)I
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    check-cast p2, [Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/oc0;->a([Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/Object;Lcom/android/tools/r8/internal/rA;)V
    .locals 3

    .line 2
    check-cast p1, [Ljava/lang/String;

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 4
    invoke-virtual {p2, v2}, Lcom/android/tools/r8/internal/rA;->a(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
