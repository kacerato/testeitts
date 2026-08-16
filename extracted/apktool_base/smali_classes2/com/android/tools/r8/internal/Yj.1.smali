.class public final Lcom/android/tools/r8/internal/Yj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/tn0;


# instance fields
.field public final a:Lcom/android/tools/r8/graph/A2;

.field public final b:I


# direct methods
.method public constructor <init>(ILcom/android/tools/r8/graph/A2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/tools/r8/internal/Yj;->b:I

    .line 3
    iput-object p2, p0, Lcom/android/tools/r8/internal/Yj;->a:Lcom/android/tools/r8/graph/A2;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/A2;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/tools/r8/internal/Yj;->b:I

    .line 6
    iput-object p1, p0, Lcom/android/tools/r8/internal/Yj;->a:Lcom/android/tools/r8/graph/A2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 3

    .line 2
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object p1

    .line 4
    iget-object p1, p1, Lcom/android/tools/r8/synthesis/J;->b:Lcom/android/tools/r8/synthesis/S;

    .line 5
    iget v0, p0, Lcom/android/tools/r8/internal/Yj;->b:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 6
    :cond_0
    invoke-static {v0}, Lcom/android/tools/r8/c;->b(I)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    return-object v1

    .line 7
    :cond_1
    iget-object p1, p1, Lcom/android/tools/r8/synthesis/S;->k:Lcom/android/tools/r8/synthesis/S$b;

    return-object p1

    .line 8
    :cond_2
    iget-object p1, p1, Lcom/android/tools/r8/synthesis/S;->j:Lcom/android/tools/r8/synthesis/S$b;

    return-object p1

    .line 9
    :cond_3
    iget-object p1, p1, Lcom/android/tools/r8/synthesis/S;->l:Lcom/android/tools/r8/synthesis/S$b;

    return-object p1

    .line 10
    :cond_4
    iget-object p1, p1, Lcom/android/tools/r8/synthesis/S;->m:Lcom/android/tools/r8/synthesis/S$b;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/rY;)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/rY;->a(Lcom/android/tools/r8/internal/Yj;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/Yj;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/Yj;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Yj;->a:Lcom/android/tools/r8/graph/A2;

    iget-object v3, p1, Lcom/android/tools/r8/internal/Yj;->a:Lcom/android/tools/r8/graph/A2;

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/android/tools/r8/internal/Yj;->b:I

    iget p1, p1, Lcom/android/tools/r8/internal/Yj;->b:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Yj;->a:Lcom/android/tools/r8/graph/A2;

    iget v1, p0, Lcom/android/tools/r8/internal/Yj;->b:I

    invoke-static {v1}, Lcom/android/tools/r8/c;->a(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
