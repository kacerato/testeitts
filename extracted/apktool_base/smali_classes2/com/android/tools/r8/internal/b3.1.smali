.class public abstract Lcom/android/tools/r8/internal/b3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/LinkedHashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "androidx.appcompat.widget.ResourcesWrapper"

    const-string v1, "androidx.appcompat.widget.TintContextWrapper$TintResources"

    const-string v2, "androidx.appcompat.widget.SuggestionsAdapter"

    const-string v3, "androidx.appcompat.internal.widget.ResourcesWrapper"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/android/tools/r8/internal/uV;->a(I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/LinkedHashSet;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sput-object v1, Lcom/android/tools/r8/internal/b3;->a:Ljava/util/LinkedHashSet;

    return-void
.end method
