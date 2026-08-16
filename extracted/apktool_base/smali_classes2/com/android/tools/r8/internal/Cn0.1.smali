.class public abstract Lcom/android/tools/r8/internal/Cn0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public b:I

.field public c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/android/tools/r8/internal/Sb;

.field public final f:Z

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/En0;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/tools/r8/internal/Cn0;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/Cn0;->g:I

    iget-object v0, p1, Lcom/android/tools/r8/internal/En0;->a:Lcom/android/tools/r8/internal/Sb;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Cn0;->e:Lcom/android/tools/r8/internal/Sb;

    iget-boolean v0, p1, Lcom/android/tools/r8/internal/En0;->b:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/Cn0;->f:Z

    iget p1, p1, Lcom/android/tools/r8/internal/En0;->d:I

    iput p1, p0, Lcom/android/tools/r8/internal/Cn0;->h:I

    iput-object p2, p0, Lcom/android/tools/r8/internal/Cn0;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract a(I)I
.end method

.method public abstract b(I)I
.end method

.method public final hasNext()Z
    .locals 9

    iget v0, p0, Lcom/android/tools/r8/internal/Cn0;->b:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_b

    invoke-static {v0}, Lcom/android/tools/r8/c;->b(I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v3, :cond_9

    iput v1, p0, Lcom/android/tools/r8/internal/Cn0;->b:I

    iget v0, p0, Lcom/android/tools/r8/internal/Cn0;->g:I

    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/tools/r8/internal/Cn0;->g:I

    const/4 v3, 0x3

    const/4 v5, -0x1

    if-eq v1, v5, :cond_8

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Cn0;->b(I)I

    move-result v1

    if-ne v1, v5, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/Cn0;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v5, p0, Lcom/android/tools/r8/internal/Cn0;->g:I

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Cn0;->a(I)I

    move-result v6

    iput v6, p0, Lcom/android/tools/r8/internal/Cn0;->g:I

    :goto_1
    iget v6, p0, Lcom/android/tools/r8/internal/Cn0;->g:I

    if-ne v6, v0, :cond_2

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/tools/r8/internal/Cn0;->g:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/Cn0;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v6, v1, :cond_0

    iput v5, p0, Lcom/android/tools/r8/internal/Cn0;->g:I

    goto :goto_0

    :cond_2
    :goto_2
    if-ge v0, v1, :cond_3

    iget-object v6, p0, Lcom/android/tools/r8/internal/Cn0;->e:Lcom/android/tools/r8/internal/Sb;

    iget-object v7, p0, Lcom/android/tools/r8/internal/Cn0;->d:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/tools/r8/internal/Wb;->b(C)Z

    move-result v6

    if-eqz v6, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-le v1, v0, :cond_4

    iget-object v6, p0, Lcom/android/tools/r8/internal/Cn0;->e:Lcom/android/tools/r8/internal/Sb;

    iget-object v7, p0, Lcom/android/tools/r8/internal/Cn0;->d:Ljava/lang/String;

    add-int/lit8 v8, v1, -0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/tools/r8/internal/Wb;->b(C)Z

    move-result v6

    if-eqz v6, :cond_4

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_4
    iget-boolean v6, p0, Lcom/android/tools/r8/internal/Cn0;->f:Z

    if-eqz v6, :cond_5

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/android/tools/r8/internal/Cn0;->g:I

    goto :goto_0

    :cond_5
    iget v6, p0, Lcom/android/tools/r8/internal/Cn0;->h:I

    if-ne v6, v2, :cond_6

    iget-object v1, p0, Lcom/android/tools/r8/internal/Cn0;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v5, p0, Lcom/android/tools/r8/internal/Cn0;->g:I

    :goto_4
    if-le v1, v0, :cond_7

    iget-object v5, p0, Lcom/android/tools/r8/internal/Cn0;->e:Lcom/android/tools/r8/internal/Sb;

    iget-object v6, p0, Lcom/android/tools/r8/internal/Cn0;->d:Ljava/lang/String;

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/tools/r8/internal/Wb;->b(C)Z

    move-result v5

    if-eqz v5, :cond_7

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_6
    sub-int/2addr v6, v2

    iput v6, p0, Lcom/android/tools/r8/internal/Cn0;->h:I

    :cond_7
    iget-object v5, p0, Lcom/android/tools/r8/internal/Cn0;->d:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_8
    iput v3, p0, Lcom/android/tools/r8/internal/Cn0;->b:I

    const/4 v0, 0x0

    :goto_5
    iput-object v0, p0, Lcom/android/tools/r8/internal/Cn0;->c:Ljava/lang/String;

    iget v0, p0, Lcom/android/tools/r8/internal/Cn0;->b:I

    if-eq v0, v3, :cond_9

    iput v2, p0, Lcom/android/tools/r8/internal/Cn0;->b:I

    return v2

    :cond_9
    return v4

    :cond_a
    return v2

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Cn0;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/tools/r8/internal/Cn0;->b:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cn0;->c:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/tools/r8/internal/Cn0;->c:Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
