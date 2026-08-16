.class public Lcom/android/tools/r8/internal/z10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/zw0;


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/z10;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/tools/r8/internal/z10;->a:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/tools/r8/internal/z10;->a:I

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/z10;->a()I

    move-result v1

    invoke-direct {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/xw0;-><init>(ILcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)V

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/z10;->a:I

    return v0
.end method
