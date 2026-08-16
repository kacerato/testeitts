.class public abstract Lcom/android/tools/r8/internal/UJ;
.super Lcom/android/tools/r8/internal/sE;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public d:Lcom/android/tools/r8/graph/A2;

.field public e:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/sE;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/internal/UJ;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/UJ;
    .locals 1

    .line 4
    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    .line 5
    new-instance v0, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/UJ;->a(Ljava/util/List;)Lcom/android/tools/r8/internal/UJ;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/List;)Lcom/android/tools/r8/internal/UJ;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/UJ;->f:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/UJ;->e:Ljava/util/List;

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sE;->a()Lcom/android/tools/r8/internal/sE;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/UJ;

    return-object p1
.end method
