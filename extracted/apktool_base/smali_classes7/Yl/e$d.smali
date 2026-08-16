.class public LYl/e$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LYl/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LYl/e$d;->a:I

    return-void
.end method

.method public synthetic constructor <init>(LYl/e$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, LYl/e$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/math/BigInteger;
    .locals 3

    iget v0, p0, LYl/e$d;->a:I

    invoke-static {}, LYl/e;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-static {}, LYl/e;->g()Ljava/util/List;

    move-result-object v0

    iget v1, p0, LYl/e$d;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, LYl/e$d;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    :goto_0
    iput-object v0, p0, LYl/e$d;->b:Ljava/math/BigInteger;

    goto :goto_1

    :cond_0
    iget-object v0, p0, LYl/e$d;->b:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->nextProbablePrime()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v0, p0, LYl/e$d;->b:Ljava/math/BigInteger;

    return-object v0
.end method
