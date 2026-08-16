.class public final Lcom/android/tools/r8/internal/NL;
.super Lcom/android/tools/r8/internal/t6;
.source "SourceFile"


# static fields
.field public static final g:Lcom/android/tools/r8/internal/NL;

.field public static final h:Lcom/android/tools/r8/internal/NL;


# instance fields
.field public final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/tools/r8/internal/NL;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    filled-new-array {v1, v2, v3}, [I

    move-result-object v4

    invoke-direct {v0, v4, v3}, Lcom/android/tools/r8/internal/NL;-><init>([IZ)V

    sput-object v0, Lcom/android/tools/r8/internal/NL;->g:Lcom/android/tools/r8/internal/NL;

    iget v4, v0, Lcom/android/tools/r8/internal/t6;->b:I

    if-ne v4, v2, :cond_0

    iget v5, v0, Lcom/android/tools/r8/internal/t6;->c:I

    const/16 v6, 0x9

    if-ne v5, v6, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/NL;

    filled-new-array {v1, v3, v3}, [I

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/android/tools/r8/internal/NL;-><init>([IZ)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/tools/r8/internal/NL;

    iget v0, v0, Lcom/android/tools/r8/internal/t6;->c:I

    add-int/2addr v0, v2

    filled-new-array {v4, v0, v3}, [I

    move-result-object v0

    invoke-direct {v1, v0, v3}, Lcom/android/tools/r8/internal/NL;-><init>([IZ)V

    move-object v0, v1

    :goto_0
    sput-object v0, Lcom/android/tools/r8/internal/NL;->h:Lcom/android/tools/r8/internal/NL;

    new-instance v0, Lcom/android/tools/r8/internal/NL;

    new-array v1, v3, [I

    invoke-direct {v0, v1, v3}, Lcom/android/tools/r8/internal/NL;-><init>([IZ)V

    return-void
.end method

.method public constructor <init>([IZ)V
    .locals 1

    const-string v0, "versionArray"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/t6;-><init>([I)V

    iput-boolean p2, p0, Lcom/android/tools/r8/internal/NL;->f:Z

    return-void
.end method
