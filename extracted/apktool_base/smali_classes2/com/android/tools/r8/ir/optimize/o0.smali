.class public final Lcom/android/tools/r8/ir/optimize/o0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/l1;

.field public final b:Lcom/android/tools/r8/internal/xw0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/internal/xw0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/ir/optimize/o0;->c:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/o0;->a:Lcom/android/tools/r8/graph/l1;

    iput-object p2, p0, Lcom/android/tools/r8/ir/optimize/o0;->b:Lcom/android/tools/r8/internal/xw0;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/ir/optimize/o0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/ir/optimize/o0;

    iget-object v1, p1, Lcom/android/tools/r8/ir/optimize/o0;->b:Lcom/android/tools/r8/internal/xw0;

    iget-object v3, p0, Lcom/android/tools/r8/ir/optimize/o0;->b:Lcom/android/tools/r8/internal/xw0;

    if-ne v1, v3, :cond_2

    iget-object p1, p1, Lcom/android/tools/r8/ir/optimize/o0;->a:Lcom/android/tools/r8/graph/l1;

    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/o0;->a:Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/l1;->a(Lcom/android/tools/r8/graph/l1;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/o0;->a:Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/o0;->b:Lcom/android/tools/r8/internal/xw0;

    iget v1, v1, Lcom/android/tools/r8/internal/xw0;->b:I

    add-int/2addr v0, v1

    return v0
.end method
