.class public Lcom/android/tools/r8/shaking/c3$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/shaking/c3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Y10;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/Y10;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Y10;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/c3$a;->a:Lcom/android/tools/r8/internal/Y10;

    return-void
.end method


# virtual methods
.method public a(ZLcom/android/tools/r8/shaking/i4;)Lcom/android/tools/r8/shaking/c3$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/c3$a;->a:Lcom/android/tools/r8/internal/Y10;

    invoke-virtual {v0, p2, p1}, Lcom/android/tools/r8/internal/Y10;->a(Ljava/lang/Object;Z)Z

    return-object p0
.end method

.method public a()Lcom/android/tools/r8/shaking/c3;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/c3$a;->a:Lcom/android/tools/r8/internal/Y10;

    .line 3
    iget v1, v0, Lcom/android/tools/r8/internal/Y10;->d:I

    :goto_0
    add-int/lit8 v2, v1, -0x1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/tools/r8/internal/Y10;->c:[Z

    aget-boolean v1, v1, v2

    if-ne v1, v3, :cond_0

    .line 4
    new-instance v0, Lcom/android/tools/r8/shaking/d3;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/c3$a;->a:Lcom/android/tools/r8/internal/Y10;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/shaking/d3;-><init>(Lcom/android/tools/r8/internal/Y10;)V

    return-object v0

    :cond_0
    move v1, v2

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/c3$a;->a:Lcom/android/tools/r8/internal/Y10;

    .line 6
    iget v1, v0, Lcom/android/tools/r8/internal/Y10;->d:I

    if-ne v1, v3, :cond_2

    .line 7
    new-instance v1, Lcom/android/tools/r8/shaking/c3$b;

    .line 8
    new-instance v2, Lcom/android/tools/r8/internal/s30;

    iget-object v3, v0, Lcom/android/tools/r8/internal/Y10;->b:[Ljava/lang/Object;

    iget v0, v0, Lcom/android/tools/r8/internal/Y10;->d:I

    invoke-direct {v2, v0, v3}, Lcom/android/tools/r8/internal/s30;-><init>(I[Ljava/lang/Object;)V

    .line 9
    invoke-static {v2}, Lcom/android/tools/r8/internal/vK;->a(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i4;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/shaking/c3$b;-><init>(Lcom/android/tools/r8/shaking/i4;)V

    return-object v1

    .line 10
    :cond_2
    new-instance v0, Lcom/android/tools/r8/shaking/e3;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/c3$a;->a:Lcom/android/tools/r8/internal/Y10;

    .line 11
    new-instance v2, Lcom/android/tools/r8/internal/s30;

    iget-object v3, v1, Lcom/android/tools/r8/internal/Y10;->b:[Ljava/lang/Object;

    iget v1, v1, Lcom/android/tools/r8/internal/Y10;->d:I

    invoke-direct {v2, v1, v3}, Lcom/android/tools/r8/internal/s30;-><init>(I[Ljava/lang/Object;)V

    .line 12
    invoke-direct {v0, v2}, Lcom/android/tools/r8/shaking/e3;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
