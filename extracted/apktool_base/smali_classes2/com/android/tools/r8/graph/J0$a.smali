.class public Lcom/android/tools/r8/graph/J0$a;
.super Lcom/android/tools/r8/graph/n1;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Mq0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/graph/J0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/graph/n1;",
        "Lcom/android/tools/r8/internal/Mq0<",
        "Lcom/android/tools/r8/graph/J0$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:[Lcom/android/tools/r8/graph/J0$a;

.field public static final synthetic g:Z = true


# instance fields
.field public final b:I

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/tools/r8/graph/J0$a;

    sput-object v0, Lcom/android/tools/r8/graph/J0$a;->f:[Lcom/android/tools/r8/graph/J0$a;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/n1;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/graph/J0$a;->c:I

    iput p2, p0, Lcom/android/tools/r8/graph/J0$a;->d:I

    iput p3, p0, Lcom/android/tools/r8/graph/J0$a;->b:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/tools/r8/graph/J0$a;->e:I

    sget-boolean p1, Lcom/android/tools/r8/graph/J0$a;->g:Z

    if-nez p1, :cond_1

    invoke-static {p2}, Lcom/android/tools/r8/internal/o8;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/J0$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/tools/r8/graph/J0$a;->c:I

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/graph/V8;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/V8;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/W8;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/W8;-><init>()V

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/graph/X8;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/X8;-><init>()V

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/J0$a;)I
    .locals 0

    iget p0, p0, Lcom/android/tools/r8/graph/J0$a;->d:I

    return p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/graph/J0$a;)I
    .locals 0

    iget p0, p0, Lcom/android/tools/r8/graph/J0$a;->e:I

    return p0
.end method


# virtual methods
.method public final E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/dex/X;)V
    .locals 0

    .line 5
    sget-boolean p1, Lcom/android/tools/r8/graph/J0$a;->g:Z

    if-eqz p1, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/ev;->a(Lcom/android/tools/r8/internal/ev;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/graph/J0$a;->c:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/tools/r8/graph/J0$a;->d:I

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v0

    iget v0, p0, Lcom/android/tools/r8/graph/J0$a;->e:I

    mul-int/lit8 v0, v0, 0x5

    add-int/2addr v0, v1

    return v0
.end method

.method public final m()Lcom/android/tools/r8/internal/Nq0;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/graph/Y8;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/Y8;-><init>()V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/android/tools/r8/graph/J0$a;->c:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/zq0;->a(II)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/android/tools/r8/graph/J0$a;->c:I

    iget v3, p0, Lcom/android/tools/r8/graph/J0$a;->d:I

    add-int/2addr v2, v3

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/zq0;->a(II)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/tools/r8/graph/J0$a;->e:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " .. "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[ -> "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
