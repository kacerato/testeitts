.class public Lcom/android/tools/r8/naming/T;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static varargs a([Lcom/android/tools/r8/naming/b;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/naming/MappingComposeException;
        }
    .end annotation

    new-instance v0, Lcom/android/tools/r8/internal/nJ;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/nJ;-><init>()V

    sget-boolean v1, Lcom/android/tools/r8/naming/T;->a:Z

    if-nez v1, :cond_1

    array-length v1, p0

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    new-instance v1, Lcom/android/tools/r8/naming/v;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/naming/v;-><init>(Lcom/android/tools/r8/internal/nJ;)V

    array-length v0, p0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/naming/v;->a(Lcom/android/tools/r8/naming/b;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/android/tools/r8/naming/v;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
