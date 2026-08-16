.class public abstract Lh1/N;
.super Lh1/A;
.source "SourceFile"


# instance fields
.field public final d:Ljava/lang/CharSequence;

.field public final e:Lh1/F;

.field public final f:Z

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(Lh1/b;Ljava/lang/CharSequence;)V
    .locals 1

    invoke-direct {p0}, Lh1/A;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lh1/N;->g:I

    invoke-static {p1}, Lh1/b;->a(Lh1/b;)Lh1/F;

    move-result-object v0

    iput-object v0, p0, Lh1/N;->e:Lh1/F;

    invoke-static {p1}, Lh1/b;->g(Lh1/b;)Z

    move-result p1

    iput-boolean p1, p0, Lh1/N;->f:Z

    const p1, 0x7fffffff

    iput p1, p0, Lh1/N;->h:I

    iput-object p2, p0, Lh1/N;->d:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 5
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget v0, p0, Lh1/N;->g:I

    :cond_0
    :goto_0
    iget v1, p0, Lh1/N;->g:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    invoke-virtual {p0, v1}, Lh1/N;->d(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lh1/N;->d:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v2, p0, Lh1/N;->g:I

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Lh1/N;->c(I)I

    move-result v3

    iput v3, p0, Lh1/N;->g:I

    :goto_1
    if-ne v3, v0, :cond_2

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lh1/N;->g:I

    iget-object v1, p0, Lh1/N;->d:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v3, v1, :cond_0

    iput v2, p0, Lh1/N;->g:I

    goto :goto_0

    :cond_2
    if-ge v0, v1, :cond_3

    iget-object v3, p0, Lh1/N;->d:Ljava/lang/CharSequence;

    invoke-interface {v3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    :cond_3
    if-ge v0, v1, :cond_4

    iget-object v3, p0, Lh1/N;->d:Ljava/lang/CharSequence;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    :cond_4
    iget-boolean v3, p0, Lh1/N;->f:Z

    if-eqz v3, :cond_5

    if-ne v0, v1, :cond_5

    iget v0, p0, Lh1/N;->g:I

    goto :goto_0

    :cond_5
    iget v3, p0, Lh1/N;->h:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    iget-object v1, p0, Lh1/N;->d:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v2, p0, Lh1/N;->g:I

    if-le v1, v0, :cond_7

    iget-object v2, p0, Lh1/N;->d:Ljava/lang/CharSequence;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    goto :goto_2

    :cond_6
    add-int/2addr v3, v2

    iput v3, p0, Lh1/N;->h:I

    :cond_7
    :goto_2
    iget-object v2, p0, Lh1/N;->d:Ljava/lang/CharSequence;

    invoke-interface {v2, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Lh1/A;->b()Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_3
    return-object v0
.end method

.method public abstract c(I)I
.end method

.method public abstract d(I)I
.end method
