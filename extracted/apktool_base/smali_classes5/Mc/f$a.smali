.class public LMc/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LMc/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:[Ljava/lang/Object;

.field public b:I

.field public final synthetic c:LMc/f;


# direct methods
.method public constructor <init>(LMc/f;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "chunkSize"
        }
    .end annotation

    iput-object p1, p0, LMc/f$a;->c:LMc/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, LMc/f$a;->b:I

    new-array p1, p2, [Ljava/lang/Object;

    iput-object p1, p0, LMc/f$a;->a:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    iget-object v0, p0, LMc/f$a;->a:[Ljava/lang/Object;

    iget v1, p0, LMc/f$a;->b:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LMc/f$a;->b:I

    return-void
.end method

.method public b(LMc/f$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "next"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMc/f<",
            "TT;>.a;)V"
        }
    .end annotation

    iget v0, p0, LMc/f$a;->b:I

    iget-object v1, p0, LMc/f$a;->a:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    if-eqz p1, :cond_0

    array-length v1, v1

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p1, v0}, LMc/f$a;->i(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, LMc/f$a;->a(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 2

    iget v0, p0, LMc/f$a;->b:I

    iget-object v1, p0, LMc/f$a;->a:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LMc/f$a;->b:I

    return-void
.end method

.method public e(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, LMc/f$a;->b:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, LMc/f$a;->a:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public f(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, LMc/f$a;->a:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public g(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, LMc/f$a;->b:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, LMc/f$a;->a:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public h()Z
    .locals 1

    iget v0, p0, LMc/f$a;->b:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, LMc/f$a;->a:[Ljava/lang/Object;

    aget-object v0, v0, p1

    :goto_0
    iget v1, p0, LMc/f$a;->b:I

    add-int/lit8 v2, v1, -0x1

    if-ge p1, v2, :cond_0

    iget-object v1, p0, LMc/f$a;->a:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    aget-object v3, v1, v2

    aput-object v3, v1, p1

    move p1, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, LMc/f$a;->b:I

    return-object v0
.end method

.method public j(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "o"
        }
    .end annotation

    iget-object v0, p0, LMc/f$a;->a:[Ljava/lang/Object;

    aput-object p2, v0, p1

    return-object p2
.end method
