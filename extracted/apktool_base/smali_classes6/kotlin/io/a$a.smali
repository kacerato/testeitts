.class public final Lkotlin/io/a$a;
.super Lpf/D;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/io/a;->o(Ljava/io/BufferedInputStream;)Lpf/D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public b:I

.field public c:Z

.field public d:Z

.field public final synthetic e:Ljava/io/BufferedInputStream;


# direct methods
.method public constructor <init>(Ljava/io/BufferedInputStream;)V
    .locals 0

    iput-object p1, p0, Lkotlin/io/a$a;->e:Ljava/io/BufferedInputStream;

    invoke-direct {p0}, Lpf/D;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lkotlin/io/a$a;->b:I

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lkotlin/io/a$a;->d:Z

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lkotlin/io/a$a;->b:I

    return v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lkotlin/io/a$a;->c:Z

    return v0
.end method

.method public final f()V
    .locals 3

    iget-boolean v0, p0, Lkotlin/io/a$a;->c:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lkotlin/io/a$a;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lkotlin/io/a$a;->e:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    iput v0, p0, Lkotlin/io/a$a;->b:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lkotlin/io/a$a;->c:Z

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lkotlin/io/a$a;->d:Z

    :cond_1
    return-void
.end method

.method public final g(Z)V
    .locals 0

    iput-boolean p1, p0, Lkotlin/io/a$a;->d:Z

    return-void
.end method

.method public final h(I)V
    .locals 0

    iput p1, p0, Lkotlin/io/a$a;->b:I

    return-void
.end method

.method public hasNext()Z
    .locals 1

    invoke-virtual {p0}, Lkotlin/io/a$a;->f()V

    iget-boolean v0, p0, Lkotlin/io/a$a;->d:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final i(Z)V
    .locals 0

    iput-boolean p1, p0, Lkotlin/io/a$a;->c:Z

    return-void
.end method

.method public y()B
    .locals 2

    invoke-virtual {p0}, Lkotlin/io/a$a;->f()V

    iget-boolean v0, p0, Lkotlin/io/a$a;->d:Z

    if-nez v0, :cond_0

    iget v0, p0, Lkotlin/io/a$a;->b:I

    int-to-byte v0, v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lkotlin/io/a$a;->c:Z

    return v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Input stream is over."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
