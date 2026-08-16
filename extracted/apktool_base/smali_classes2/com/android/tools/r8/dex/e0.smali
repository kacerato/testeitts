.class public abstract Lcom/android/tools/r8/dex/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic h:Z = true


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/StringBuilder;

.field public c:Z

.field public d:I

.field public e:I

.field public final f:Lcom/android/tools/r8/internal/CH;

.field public final synthetic g:Lcom/android/tools/r8/dex/f0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/dex/f0;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/dex/e0;->g:Lcom/android/tools/r8/dex/f0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/dex/e0;->b:Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/tools/r8/dex/e0;->c:Z

    iput p1, p0, Lcom/android/tools/r8/dex/e0;->d:I

    iput p1, p0, Lcom/android/tools/r8/dex/e0;->e:I

    iput-object p2, p0, Lcom/android/tools/r8/dex/e0;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/tools/r8/dex/e0;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/tools/r8/internal/CH;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/CH;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/dex/e0;->f:Lcom/android/tools/r8/internal/CH;

    return-void
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public abstract a(C)Z
.end method

.method public final a(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/dex/e0;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public abstract a(II)Z
.end method

.method public abstract b()C
.end method

.method public abstract b(II)Z
.end method

.method public final c()Z
    .locals 5

    .line 24
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/tools/r8/dex/e0;->e:I

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/dex/e0;->a(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 25
    iget-object v0, p0, Lcom/android/tools/r8/dex/e0;->a:Ljava/lang/String;

    iget v2, p0, Lcom/android/tools/r8/dex/e0;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 26
    iget v0, p0, Lcom/android/tools/r8/dex/e0;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/dex/e0;->e:I

    goto :goto_0

    .line 27
    :cond_1
    iget v0, p0, Lcom/android/tools/r8/dex/e0;->e:I

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/dex/e0;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_8

    .line 28
    :cond_2
    sget-boolean v0, Lcom/android/tools/r8/dex/e0;->h:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/tools/r8/dex/e0;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/tools/r8/dex/e0;->f:Lcom/android/tools/r8/internal/CH;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/CH;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    :goto_1
    if-nez v0, :cond_6

    .line 29
    iget-object v0, p0, Lcom/android/tools/r8/dex/e0;->a:Ljava/lang/String;

    iget v2, p0, Lcom/android/tools/r8/dex/e0;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 30
    :cond_6
    :goto_2
    iget v0, p0, Lcom/android/tools/r8/dex/e0;->e:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/android/tools/r8/dex/e0;->e:I

    .line 31
    :goto_3
    iget v2, p0, Lcom/android/tools/r8/dex/e0;->e:I

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/dex/e0;->a(I)Z

    move-result v2

    if-nez v2, :cond_a

    .line 32
    iget-object v2, p0, Lcom/android/tools/r8/dex/e0;->a:Ljava/lang/String;

    iget v3, p0, Lcom/android/tools/r8/dex/e0;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 33
    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 34
    invoke-virtual {p0}, Lcom/android/tools/r8/dex/e0;->a()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 35
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/dex/e0;->a(C)Z

    move-result v2

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/android/tools/r8/dex/e0;->e:I

    .line 36
    invoke-virtual {p0, v0, v2}, Lcom/android/tools/r8/dex/e0;->b(II)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 37
    iget-object v2, p0, Lcom/android/tools/r8/dex/e0;->f:Lcom/android/tools/r8/internal/CH;

    iget v3, p0, Lcom/android/tools/r8/dex/e0;->e:I

    .line 38
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/a0;->add(I)Z

    .line 39
    :cond_7
    iget v2, p0, Lcom/android/tools/r8/dex/e0;->e:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/tools/r8/dex/e0;->e:I

    goto :goto_3

    .line 40
    :cond_8
    invoke-virtual {p0}, Lcom/android/tools/r8/dex/e0;->b()C

    move-result v3

    if-ne v2, v3, :cond_a

    iget v3, p0, Lcom/android/tools/r8/dex/e0;->e:I

    add-int/2addr v3, v1

    .line 41
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/dex/e0;->a(I)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/android/tools/r8/dex/e0;->a:Ljava/lang/String;

    iget v4, p0, Lcom/android/tools/r8/dex/e0;->e:I

    add-int/2addr v4, v1

    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 43
    invoke-virtual {p0}, Lcom/android/tools/r8/dex/e0;->a()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 44
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/dex/e0;->a(C)Z

    move-result v2

    if-eqz v2, :cond_9

    iget v2, p0, Lcom/android/tools/r8/dex/e0;->e:I

    .line 45
    invoke-virtual {p0, v0, v2}, Lcom/android/tools/r8/dex/e0;->b(II)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 46
    iget-object v2, p0, Lcom/android/tools/r8/dex/e0;->f:Lcom/android/tools/r8/internal/CH;

    iget v3, p0, Lcom/android/tools/r8/dex/e0;->e:I

    .line 47
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/a0;->add(I)Z

    .line 48
    :cond_9
    iget v2, p0, Lcom/android/tools/r8/dex/e0;->e:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/tools/r8/dex/e0;->e:I

    goto :goto_3

    .line 49
    :cond_a
    invoke-virtual {p0}, Lcom/android/tools/r8/dex/e0;->a()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 50
    iget v2, p0, Lcom/android/tools/r8/dex/e0;->e:I

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/dex/e0;->a(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 51
    iget v2, p0, Lcom/android/tools/r8/dex/e0;->e:I

    invoke-virtual {p0, v0, v2}, Lcom/android/tools/r8/dex/e0;->b(II)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 52
    iget-object v2, p0, Lcom/android/tools/r8/dex/e0;->f:Lcom/android/tools/r8/internal/CH;

    iget v3, p0, Lcom/android/tools/r8/dex/e0;->e:I

    .line 53
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/a0;->add(I)Z

    .line 54
    :cond_b
    iget v2, p0, Lcom/android/tools/r8/dex/e0;->e:I

    .line 55
    invoke-virtual {p0, v0, v2}, Lcom/android/tools/r8/dex/e0;->b(II)Z

    move-result v2

    if-eqz v2, :cond_c

    iget v2, p0, Lcom/android/tools/r8/dex/e0;->e:I

    invoke-virtual {p0, v0, v2}, Lcom/android/tools/r8/dex/e0;->c(II)Z

    move-result v2

    if-eqz v2, :cond_c

    move v2, v1

    goto :goto_4

    :cond_c
    const/4 v2, 0x0

    :goto_4
    if-nez v2, :cond_10

    .line 56
    invoke-virtual {p0}, Lcom/android/tools/r8/dex/e0;->a()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 57
    :goto_5
    iget-object v3, p0, Lcom/android/tools/r8/dex/e0;->f:Lcom/android/tools/r8/internal/CH;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/CH;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10

    if-nez v2, :cond_10

    .line 58
    iget-object v2, p0, Lcom/android/tools/r8/dex/e0;->f:Lcom/android/tools/r8/internal/CH;

    .line 59
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f

    .line 60
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {v2, v3}, Lcom/android/tools/r8/internal/TH;->i(I)I

    move-result v2

    .line 61
    sget-boolean v3, Lcom/android/tools/r8/dex/e0;->h:Z

    if-nez v3, :cond_e

    invoke-virtual {p0, v0, v2}, Lcom/android/tools/r8/dex/e0;->b(II)Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_6

    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 62
    :cond_e
    :goto_6
    invoke-virtual {p0, v0, v2}, Lcom/android/tools/r8/dex/e0;->a(II)Z

    move-result v2

    goto :goto_5

    .line 63
    :cond_f
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 64
    :cond_10
    invoke-virtual {p0}, Lcom/android/tools/r8/dex/e0;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 65
    :goto_7
    iget-object v0, p0, Lcom/android/tools/r8/dex/e0;->f:Lcom/android/tools/r8/internal/CH;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CH;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 66
    iget-object v0, p0, Lcom/android/tools/r8/dex/e0;->f:Lcom/android/tools/r8/internal/CH;

    .line 67
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    .line 68
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Lcom/android/tools/r8/internal/TH;->i(I)I

    goto :goto_7

    .line 69
    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 70
    :cond_12
    :goto_8
    iget v0, p0, Lcom/android/tools/r8/dex/e0;->e:I

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/dex/e0;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-boolean v0, p0, Lcom/android/tools/r8/dex/e0;->c:Z

    if-eqz v0, :cond_13

    .line 72
    iget v0, p0, Lcom/android/tools/r8/dex/e0;->d:I

    iget-object v1, p0, Lcom/android/tools/r8/dex/e0;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 73
    iget-object v2, p0, Lcom/android/tools/r8/dex/e0;->b:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/tools/r8/dex/e0;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 74
    :cond_13
    sget-boolean v0, Lcom/android/tools/r8/dex/e0;->h:Z

    if-nez v0, :cond_15

    iget v1, p0, Lcom/android/tools/r8/dex/e0;->d:I

    if-nez v1, :cond_14

    goto :goto_9

    :cond_14
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_15
    :goto_9
    if-nez v0, :cond_17

    .line 75
    iget-object v0, p0, Lcom/android/tools/r8/dex/e0;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_a

    :cond_16
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 76
    :cond_17
    :goto_a
    iget-boolean v0, p0, Lcom/android/tools/r8/dex/e0;->c:Z

    return v0
.end method

.method public final c(II)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/dex/e0;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/dex/e0;->b()C

    move-result v1

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/dex/e0;->b()C

    move-result v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/dex/e0;->g:Lcom/android/tools/r8/dex/f0;

    iget-object v1, v1, Lcom/android/tools/r8/dex/f0;->b:Lcom/android/tools/r8/graph/u1;

    .line 5
    invoke-static {v0}, Lcom/android/tools/r8/internal/Bl;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    new-instance v3, Lcom/android/tools/r8/graph/L2;

    invoke-direct {v3, v0}, Lcom/android/tools/r8/graph/L2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/L2;

    if-eqz v0, :cond_1

    .line 8
    iget-object v1, p0, Lcom/android/tools/r8/dex/e0;->g:Lcom/android/tools/r8/dex/f0;

    iget-object v1, v1, Lcom/android/tools/r8/dex/f0;->b:Lcom/android/tools/r8/graph/u1;

    .line 9
    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    .line 11
    iget-object v3, p0, Lcom/android/tools/r8/dex/e0;->g:Lcom/android/tools/r8/dex/f0;

    iget-object v4, v3, Lcom/android/tools/r8/dex/f0;->d:Lcom/android/tools/r8/naming/r0;

    iget-object v3, v3, Lcom/android/tools/r8/dex/f0;->c:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v5

    .line 13
    invoke-virtual {v3, v5, v1}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 14
    invoke-virtual {v4, v1}, Lcom/android/tools/r8/naming/r0;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/E;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 16
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/n1;->j0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/Bl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    iget v1, p0, Lcom/android/tools/r8/dex/e0;->d:I

    if-ge v1, p1, :cond_2

    .line 18
    iget-object v3, p0, Lcom/android/tools/r8/dex/e0;->b:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/tools/r8/dex/e0;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 19
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/dex/e0;->b()C

    move-result p1

    if-eq p1, v2, :cond_3

    .line 20
    invoke-virtual {p0}, Lcom/android/tools/r8/dex/e0;->b()C

    move-result p1

    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 21
    :cond_3
    iget-object p1, p0, Lcom/android/tools/r8/dex/e0;->b:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iput p2, p0, Lcom/android/tools/r8/dex/e0;->d:I

    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/android/tools/r8/dex/e0;->c:Z

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method
