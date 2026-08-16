.class public final Lcom/android/tools/r8/internal/E60;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/F60;


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:I

.field public b:Lcom/android/tools/r8/graph/A2;

.field public c:I

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/nJ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/E60;->b:Lcom/android/tools/r8/graph/A2;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/internal/E60;->c:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/E60;->d:I

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    instance-of p1, p1, Lcom/android/tools/r8/ClassFileConsumer;

    if-eqz p1, :cond_0

    const v0, 0x7fffffff

    :cond_0
    iput v0, p0, Lcom/android/tools/r8/internal/E60;->a:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/o50;
    .locals 3

    sget-boolean v0, Lcom/android/tools/r8/internal/E60;->e:Z

    if-nez v0, :cond_1

    iget-object v1, p1, Lcom/android/tools/r8/internal/B60;->c:Lcom/android/tools/r8/graph/A2;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v1, p1, Lcom/android/tools/r8/internal/B60;->c:Lcom/android/tools/r8/graph/A2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/E60;->b:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/tools/r8/internal/E60;->c:I

    if-ltz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/B60;->f()I

    move-result v0

    iget v1, p0, Lcom/android/tools/r8/internal/E60;->c:I

    if-le v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/B60;->f()I

    move-result v0

    iget v1, p0, Lcom/android/tools/r8/internal/E60;->c:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/tools/r8/internal/E60;->a:I

    if-gt v0, v1, :cond_4

    iget v0, p0, Lcom/android/tools/r8/internal/E60;->d:I

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/B60;->f()I

    move-result v1

    iget v2, p0, Lcom/android/tools/r8/internal/E60;->c:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/tools/r8/internal/E60;->d:I

    :cond_4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/B60;->b()Lcom/android/tools/r8/internal/B60$a;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/r8/internal/E60;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/tools/r8/internal/E60;->d:I

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/B60$a;->a(I)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/tools/r8/internal/B60$a;->c:Lcom/android/tools/r8/internal/B60;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/B60$a;->c()Lcom/android/tools/r8/internal/B60$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/B60$a;->a()Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/B60;->f()I

    move-result v1

    iput v1, p0, Lcom/android/tools/r8/internal/E60;->c:I

    iget-object v1, p1, Lcom/android/tools/r8/internal/B60;->c:Lcom/android/tools/r8/graph/A2;

    iput-object v1, p0, Lcom/android/tools/r8/internal/E60;->b:Lcom/android/tools/r8/graph/A2;

    new-instance v1, Lcom/android/tools/r8/internal/o50;

    invoke-direct {v1, p1, v0}, Lcom/android/tools/r8/internal/o50;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method
