.class public final Lcom/android/tools/r8/internal/L6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Z

.field public final b:Lcom/android/tools/r8/internal/K6;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/I6;Lcom/android/tools/r8/internal/K6;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/L6;->c:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/tools/r8/internal/I6;->b:Lcom/android/tools/r8/internal/I6;

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/tools/r8/internal/I6;->c:Lcom/android/tools/r8/internal/I6;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/L6;->a:Z

    .line 4
    iput-object p2, p0, Lcom/android/tools/r8/internal/L6;->b:Lcom/android/tools/r8/internal/K6;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3a

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "good"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/tools/r8/internal/L6;->a:Z

    add-int/lit8 v0, v0, 0x1

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 9
    new-instance v0, Lcom/android/tools/r8/internal/K6;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/K6;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/L6;->b:Lcom/android/tools/r8/internal/K6;

    return-void
.end method
