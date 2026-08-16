.class public final Lcom/android/tools/r8/graph/K3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public a:C

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:[C

.field public e:I

.field public final f:Lcom/android/tools/r8/graph/u1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/u1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/K3;->f:Lcom/android/tools/r8/graph/u1;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/graph/H3$b;
    .locals 3

    .line 19
    sget-object v0, Lcom/android/tools/r8/graph/H3$b;->d:Lcom/android/tools/r8/graph/H3$b;

    .line 20
    new-instance v0, Lcom/android/tools/r8/graph/J3;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/J3;-><init>()V

    .line 21
    new-instance v1, Lcom/android/tools/r8/graph/f9;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/graph/f9;-><init>(Lcom/android/tools/r8/graph/J3;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/graph/K3;->a(Ljava/util/function/Consumer;)V

    .line 22
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/K3;->b()Lcom/android/tools/r8/graph/H3$c;

    move-result-object v1

    .line 23
    iput-object v1, v0, Lcom/android/tools/r8/graph/J3;->b:Lcom/android/tools/r8/graph/H3$c;

    .line 24
    :goto_0
    iget-char v1, p0, Lcom/android/tools/r8/graph/K3;->a:C

    if-lez v1, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/K3;->b()Lcom/android/tools/r8/graph/H3$c;

    move-result-object v1

    .line 26
    iget-object v2, v0, Lcom/android/tools/r8/graph/J3;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 27
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/graph/K3;->f:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/J3;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/H3$b;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/android/tools/r8/graph/H3$b;
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/graph/K3;->d:[C

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/android/tools/r8/graph/K3;->c:Z

    .line 3
    iput p1, p0, Lcom/android/tools/r8/graph/K3;->e:I

    .line 4
    iput-char p1, p0, Lcom/android/tools/r8/graph/K3;->a:C

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/graph/K3;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/K3;->f()V

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/K3;->a()Lcom/android/tools/r8/graph/H3$b;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/reflect/GenericSignatureFormatError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 8
    :goto_0
    new-instance v0, Ljava/lang/reflect/GenericSignatureFormatError;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown error parsing class signature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/reflect/GenericSignatureFormatError;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 11
    throw v0

    .line 12
    :goto_1
    throw p1
.end method

.method public final a(Ljava/lang/String;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 13
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/graph/K3;->g:Z

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 14
    :cond_2
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object p2

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/graph/K3;->f:Lcom/android/tools/r8/graph/u1;

    .line 16
    invoke-static {p2}, Lcom/android/tools/r8/internal/Bl;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "$"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-static {p1}, Lcom/android/tools/r8/internal/Bl;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    return-object p1
.end method

.method public final a(C)V
    .locals 3

    .line 47
    iget-boolean v0, p0, Lcom/android/tools/r8/graph/K3;->c:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 48
    iget-char v0, p0, Lcom/android/tools/r8/graph/K3;->a:C

    if-ne v0, p1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/K3;->f()V

    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/android/tools/r8/graph/K3;->e:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/graph/K3;->a(ILjava/lang/String;)V

    throw v1

    .line 51
    :cond_1
    iget p1, p0, Lcom/android/tools/r8/graph/K3;->e:I

    const-string v0, "Unexpected end of signature"

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/graph/K3;->a(ILjava/lang/String;)V

    throw v1
.end method

.method public final a(ILjava/lang/String;)V
    .locals 6

    .line 52
    invoke-static {p1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "^"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    new-instance v1, Ljava/lang/reflect/GenericSignatureFormatError;

    add-int/lit8 p1, p1, 0x1

    .line 54
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/graph/K3;->d:[C

    .line 55
    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " at position "

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/reflect/GenericSignatureFormatError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final a(Ljava/util/function/Consumer;)V
    .locals 5

    .line 28
    iget-char v0, p0, Lcom/android/tools/r8/graph/K3;->a:C

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_0

    return-void

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/K3;->f()V

    .line 30
    :goto_0
    iget-char v0, p0, Lcom/android/tools/r8/graph/K3;->a:C

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_8

    if-lez v0, :cond_8

    .line 31
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/K3;->e()V

    .line 32
    sget-boolean v0, Lcom/android/tools/r8/graph/K3;->g:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/graph/K3;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 33
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/graph/K3;->b:Ljava/lang/String;

    const/16 v1, 0x3a

    .line 34
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/graph/K3;->a(C)V

    .line 35
    sget-object v2, Lcom/android/tools/r8/graph/H3;->e:Lcom/android/tools/r8/graph/H3$c;

    .line 36
    iget-char v3, p0, Lcom/android/tools/r8/graph/K3;->a:C

    const/16 v4, 0x4c

    if-eq v3, v4, :cond_3

    const/16 v4, 0x5b

    if-eq v3, v4, :cond_3

    const/16 v4, 0x54

    if-ne v3, v4, :cond_4

    .line 37
    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/K3;->c()Lcom/android/tools/r8/graph/H3$e;

    move-result-object v2

    :cond_4
    const/4 v3, 0x0

    .line 38
    :goto_2
    iget-char v4, p0, Lcom/android/tools/r8/graph/K3;->a:C

    if-ne v4, v1, :cond_6

    if-nez v3, :cond_5

    .line 39
    new-instance v3, Lcom/android/tools/r8/internal/eC;

    .line 40
    invoke-direct {v3}, Lcom/android/tools/r8/internal/eC;-><init>()V

    .line 41
    :cond_5
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/K3;->f()V

    .line 42
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/K3;->c()Lcom/android/tools/r8/graph/H3$e;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    goto :goto_2

    :cond_6
    if-nez v3, :cond_7

    .line 43
    new-instance v1, Lcom/android/tools/r8/graph/H3$f;

    sget-object v3, Lcom/android/tools/r8/graph/H3;->b:Lcom/android/tools/r8/internal/Xe0;

    invoke-direct {v1, v0, v2, v3}, Lcom/android/tools/r8/graph/H3$f;-><init>(Ljava/lang/String;Lcom/android/tools/r8/graph/H3$e;Ljava/util/List;)V

    goto :goto_3

    .line 44
    :cond_7
    new-instance v1, Lcom/android/tools/r8/graph/H3$f;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/android/tools/r8/graph/H3$f;-><init>(Ljava/lang/String;Lcom/android/tools/r8/graph/H3$e;Ljava/util/List;)V

    .line 45
    :goto_3
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 46
    :cond_8
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/graph/K3;->a(C)V

    return-void
.end method

.method public final b()Lcom/android/tools/r8/graph/H3$c;
    .locals 5

    const/16 v0, 0x4c

    .line 13
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/K3;->a(C)V

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/K3;->e()V

    .line 16
    sget-boolean v1, Lcom/android/tools/r8/graph/K3;->g:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/graph/K3;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 17
    :cond_1
    :goto_0
    iget-char v1, p0, Lcom/android/tools/r8/graph/K3;->a:C

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_3

    .line 18
    iget-object v1, p0, Lcom/android/tools/r8/graph/K3;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v1, p0, Lcom/android/tools/r8/graph/K3;->a:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/K3;->f()V

    .line 20
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/K3;->e()V

    .line 21
    sget-boolean v1, Lcom/android/tools/r8/graph/K3;->g:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/graph/K3;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 22
    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/graph/K3;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-static {v0}, Lcom/android/tools/r8/internal/Bl;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/android/tools/r8/graph/K3;->f:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 26
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/K3;->g()Lcom/android/tools/r8/internal/hC;

    move-result-object v1

    .line 27
    new-instance v2, Lcom/android/tools/r8/graph/H3$c;

    .line 28
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v1, Lcom/android/tools/r8/graph/H3;->b:Lcom/android/tools/r8/internal/Xe0;

    .line 29
    :cond_4
    sget-object v3, Lcom/android/tools/r8/graph/H3$k;->b:Lcom/android/tools/r8/graph/H3$k;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v1, v4, v3}, Lcom/android/tools/r8/graph/H3$c;-><init>(Lcom/android/tools/r8/graph/M2;Ljava/util/List;Lcom/android/tools/r8/graph/H3$c;Lcom/android/tools/r8/graph/H3$k;)V

    .line 30
    :goto_1
    iget-char v1, p0, Lcom/android/tools/r8/graph/K3;->a:C

    const/16 v3, 0x2e

    if-ne v1, v3, :cond_8

    .line 31
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/K3;->f()V

    .line 32
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/K3;->e()V

    .line 33
    sget-boolean v1, Lcom/android/tools/r8/graph/K3;->g:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/tools/r8/graph/K3;->b:Ljava/lang/String;

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 34
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/android/tools/r8/graph/K3;->b:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/graph/K3;->a(Ljava/lang/String;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 35
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/K3;->g()Lcom/android/tools/r8/internal/hC;

    move-result-object v1

    .line 36
    new-instance v4, Lcom/android/tools/r8/graph/H3$c;

    .line 37
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v1, Lcom/android/tools/r8/graph/H3;->b:Lcom/android/tools/r8/internal/Xe0;

    .line 38
    :cond_7
    sget-object v3, Lcom/android/tools/r8/graph/H3$k;->b:Lcom/android/tools/r8/graph/H3$k;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/tools/r8/graph/H3$c;-><init>(Lcom/android/tools/r8/graph/M2;Ljava/util/List;Lcom/android/tools/r8/graph/H3$c;Lcom/android/tools/r8/graph/H3$k;)V

    move-object v2, v4

    goto :goto_1

    :cond_8
    const/16 v0, 0x3b

    .line 39
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/K3;->a(C)V

    if-eqz v4, :cond_9

    return-object v4

    :cond_9
    return-object v2
.end method

.method public final b(Ljava/lang/String;)Lcom/android/tools/r8/graph/H3$e;
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/graph/K3;->d:[C

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/android/tools/r8/graph/K3;->c:Z

    .line 3
    iput p1, p0, Lcom/android/tools/r8/graph/K3;->e:I

    .line 4
    iput-char p1, p0, Lcom/android/tools/r8/graph/K3;->a:C

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/graph/K3;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/K3;->f()V

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/K3;->c()Lcom/android/tools/r8/graph/H3$e;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/reflect/GenericSignatureFormatError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 8
    :goto_0
    new-instance v0, Ljava/lang/reflect/GenericSignatureFormatError;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown error parsing field signature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/reflect/GenericSignatureFormatError;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 11
    throw v0

    .line 12
    :goto_1
    throw p1
.end method

.method public final c()Lcom/android/tools/r8/graph/H3$e;
    .locals 3

    .line 13
    iget-char v0, p0, Lcom/android/tools/r8/graph/K3;->a:C

    const/16 v1, 0x4c

    if-eq v0, v1, :cond_5

    const/16 v1, 0x54

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_1

    .line 14
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/K3;->f()V

    .line 15
    iget-char v0, p0, Lcom/android/tools/r8/graph/K3;->a:C

    const/16 v1, 0x46

    if-eq v0, v1, :cond_0

    const/16 v1, 0x53

    if-eq v0, v1, :cond_0

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    const/16 v1, 0x49

    if-eq v0, v1, :cond_0

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 16
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/K3;->c()Lcom/android/tools/r8/graph/H3$e;

    move-result-object v0

    goto :goto_0

    .line 17
    :cond_0
    :pswitch_0
    iget-object v1, p0, Lcom/android/tools/r8/graph/K3;->f:Lcom/android/tools/r8/graph/u1;

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 18
    new-instance v1, Lcom/android/tools/r8/graph/I3;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/graph/I3;-><init>(Lcom/android/tools/r8/graph/M2;)V

    .line 19
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/K3;->f()V

    move-object v0, v1

    .line 20
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H3$i;->f()Lcom/android/tools/r8/graph/H3$a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    .line 21
    :cond_1
    iget v0, p0, Lcom/android/tools/r8/graph/K3;->e:I

    const-string v1, "Expected L, [ or T"

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/graph/K3;->a(ILjava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    .line 22
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/graph/K3;->a(C)V

    .line 23
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/K3;->e()V

    .line 24
    sget-boolean v0, Lcom/android/tools/r8/graph/K3;->g:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/graph/K3;->b:Ljava/lang/String;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    :goto_1
    const/16 v0, 0x3b

    .line 25
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/K3;->a(C)V

    .line 26
    new-instance v0, Lcom/android/tools/r8/graph/H3$j;

    iget-object v1, p0, Lcom/android/tools/r8/graph/K3;->b:Ljava/lang/String;

    .line 27
    sget-object v2, Lcom/android/tools/r8/graph/H3$k;->b:Lcom/android/tools/r8/graph/H3$k;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/graph/H3$j;-><init>(Ljava/lang/String;Lcom/android/tools/r8/graph/H3$k;)V

    return-object v0

    .line 28
    :cond_5
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/K3;->b()Lcom/android/tools/r8/graph/H3$c;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/String;)Lcom/android/tools/r8/graph/H3$g;
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/graph/K3;->d:[C

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/android/tools/r8/graph/K3;->c:Z

    .line 3
    iput p1, p0, Lcom/android/tools/r8/graph/K3;->e:I

    .line 4
    iput-char p1, p0, Lcom/android/tools/r8/graph/K3;->a:C

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/graph/K3;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/K3;->f()V

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/K3;->d()Lcom/android/tools/r8/graph/H3$g;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/reflect/GenericSignatureFormatError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 8
    :goto_0
    new-instance v0, Ljava/lang/reflect/GenericSignatureFormatError;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown error parsing method signature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/reflect/GenericSignatureFormatError;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 11
    throw v0

    .line 12
    :goto_1
    throw p1
.end method

.method public final d()Lcom/android/tools/r8/graph/H3$g;
    .locals 10

    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    new-instance v0, Lcom/android/tools/r8/internal/eC;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/eC;-><init>()V

    new-instance v1, Lcom/android/tools/r8/graph/g9;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/graph/g9;-><init>(Lcom/android/tools/r8/internal/eC;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/graph/K3;->a(Ljava/util/function/Consumer;)V

    const/16 v1, 0x28

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/graph/K3;->a(C)V

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    iget-char v3, p0, Lcom/android/tools/r8/graph/K3;->a:C

    const/16 v4, 0x4a

    const/16 v5, 0x49

    const/16 v6, 0x5a

    const/16 v7, 0x53

    const/16 v8, 0x46

    const/16 v9, 0x29

    if-eq v3, v9, :cond_2

    if-lez v3, :cond_2

    if-eq v3, v8, :cond_0

    if-eq v3, v7, :cond_0

    if-eq v3, v6, :cond_0

    if-eq v3, v5, :cond_0

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/K3;->c()Lcom/android/tools/r8/graph/H3$e;

    move-result-object v3

    goto :goto_1

    :cond_0
    :pswitch_0
    iget-object v4, p0, Lcom/android/tools/r8/graph/K3;->f:Lcom/android/tools/r8/graph/u1;

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    new-instance v4, Lcom/android/tools/r8/graph/I3;

    invoke-direct {v4, v3}, Lcom/android/tools/r8/graph/I3;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/K3;->f()V

    move-object v3, v4

    :goto_1
    add-int/lit8 v4, v2, 0x1

    array-length v5, v1

    if-ge v5, v4, :cond_1

    array-length v5, v1

    invoke-static {v5, v4}, Lcom/android/tools/r8/internal/WB;->a(II)I

    move-result v5

    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    :cond_1
    aput-object v3, v1, v2

    move v2, v4

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v9}, Lcom/android/tools/r8/graph/K3;->a(C)V

    iget-char v3, p0, Lcom/android/tools/r8/graph/K3;->a:C

    const/16 v9, 0x56

    if-eq v3, v9, :cond_4

    new-instance v9, Lcom/android/tools/r8/graph/H3$h;

    if-eq v3, v8, :cond_3

    if-eq v3, v7, :cond_3

    if-eq v3, v6, :cond_3

    if-eq v3, v5, :cond_3

    if-eq v3, v4, :cond_3

    packed-switch v3, :pswitch_data_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/K3;->c()Lcom/android/tools/r8/graph/H3$e;

    move-result-object v3

    goto :goto_2

    :cond_3
    :pswitch_1
    iget-object v4, p0, Lcom/android/tools/r8/graph/K3;->f:Lcom/android/tools/r8/graph/u1;

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    new-instance v4, Lcom/android/tools/r8/graph/I3;

    invoke-direct {v4, v3}, Lcom/android/tools/r8/graph/I3;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/K3;->f()V

    move-object v3, v4

    :goto_2
    invoke-direct {v9, v3}, Lcom/android/tools/r8/graph/H3$h;-><init>(Lcom/android/tools/r8/graph/H3$i;)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/K3;->f()V

    sget-object v9, Lcom/android/tools/r8/graph/H3$h;->b:Lcom/android/tools/r8/graph/H3$h;

    :goto_3
    new-instance v3, Lcom/android/tools/r8/internal/eC;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/eC;-><init>()V

    iget-char v4, p0, Lcom/android/tools/r8/graph/K3;->a:C

    const/16 v5, 0x5e

    if-ne v4, v5, :cond_9

    :cond_5
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/K3;->f()V

    iget-char v4, p0, Lcom/android/tools/r8/graph/K3;->a:C

    const/16 v6, 0x54

    if-ne v4, v6, :cond_8

    invoke-virtual {p0, v6}, Lcom/android/tools/r8/graph/K3;->a(C)V

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/K3;->e()V

    sget-boolean v4, Lcom/android/tools/r8/graph/K3;->g:Z

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/tools/r8/graph/K3;->b:Ljava/lang/String;

    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_7
    :goto_4
    const/16 v4, 0x3b

    invoke-virtual {p0, v4}, Lcom/android/tools/r8/graph/K3;->a(C)V

    new-instance v4, Lcom/android/tools/r8/graph/H3$j;

    iget-object v6, p0, Lcom/android/tools/r8/graph/K3;->b:Ljava/lang/String;

    sget-object v7, Lcom/android/tools/r8/graph/H3$k;->b:Lcom/android/tools/r8/graph/H3$k;

    invoke-direct {v4, v6, v7}, Lcom/android/tools/r8/graph/H3$j;-><init>(Ljava/lang/String;Lcom/android/tools/r8/graph/H3$k;)V

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    goto :goto_5

    :cond_8
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/K3;->b()Lcom/android/tools/r8/graph/H3$c;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    :goto_5
    iget-char v4, p0, Lcom/android/tools/r8/graph/K3;->a:C

    if-eq v4, v5, :cond_5

    :cond_9
    new-instance v4, Lcom/android/tools/r8/graph/H3$g;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v1

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v2

    invoke-direct {v4, v0, v1, v9, v2}, Lcom/android/tools/r8/graph/H3$g;-><init>(Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/graph/H3$h;Ljava/util/List;)V

    return-object v4

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x42
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final e()V
    .locals 8

    iget-boolean v0, p0, Lcom/android/tools/r8/graph/K3;->c:Z

    const/4 v1, 0x0

    if-nez v0, :cond_7

    iget v0, p0, Lcom/android/tools/r8/graph/K3;->e:I

    iget-object v2, p0, Lcom/android/tools/r8/graph/K3;->d:[C

    array-length v2, v2

    if-ge v0, v2, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-char v2, p0, Lcom/android/tools/r8/graph/K3;->a:C

    const/4 v3, 0x0

    const/16 v4, 0x2e

    const/4 v5, 0x1

    if-eq v2, v4, :cond_6

    const/16 v6, 0x2f

    if-eq v2, v6, :cond_6

    packed-switch v2, :pswitch_data_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/graph/K3;->d:[C

    sget-boolean v2, Lcom/android/tools/r8/graph/K3;->g:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget v2, p0, Lcom/android/tools/r8/graph/K3;->e:I

    aget-char v2, v1, v2

    const/16 v7, 0x61

    if-lt v2, v7, :cond_2

    const/16 v7, 0x7a

    if-le v2, v7, :cond_4

    :cond_2
    const/16 v7, 0x41

    if-lt v2, v7, :cond_3

    const/16 v7, 0x5a

    if-le v2, v7, :cond_4

    :cond_3
    if-eq v2, v4, :cond_5

    if-eq v2, v6, :cond_5

    packed-switch v2, :pswitch_data_1

    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/tools/r8/graph/K3;->e:I

    add-int/2addr v2, v5

    iput v2, p0, Lcom/android/tools/r8/graph/K3;->e:I

    array-length v7, v1

    if-ne v2, v7, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/K3;->b:Ljava/lang/String;

    iput-char v3, p0, Lcom/android/tools/r8/graph/K3;->a:C

    iput-boolean v5, p0, Lcom/android/tools/r8/graph/K3;->c:Z

    return-void

    :cond_5
    :pswitch_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/graph/K3;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/K3;->f()V

    return-void

    :cond_6
    :pswitch_1
    iput-char v3, p0, Lcom/android/tools/r8/graph/K3;->a:C

    iput-boolean v5, p0, Lcom/android/tools/r8/graph/K3;->c:Z

    iget v0, p0, Lcom/android/tools/r8/graph/K3;->e:I

    const-string v2, "Unexpected"

    invoke-virtual {p0, v0, v2}, Lcom/android/tools/r8/graph/K3;->a(ILjava/lang/String;)V

    throw v1

    :cond_7
    iget v0, p0, Lcom/android/tools/r8/graph/K3;->e:I

    const-string v2, "Unexpected end of signature"

    invoke-virtual {p0, v0, v2}, Lcom/android/tools/r8/graph/K3;->a(ILjava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3a
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final f()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/tools/r8/graph/K3;->c:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/tools/r8/graph/K3;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/graph/K3;->d:[C

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/tools/r8/graph/K3;->e:I

    iget-object v1, p0, Lcom/android/tools/r8/graph/K3;->d:[C

    array-length v2, v1

    const/4 v3, 0x1

    if-ge v0, v2, :cond_2

    aget-char v1, v1, v0

    iput-char v1, p0, Lcom/android/tools/r8/graph/K3;->a:C

    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/tools/r8/graph/K3;->e:I

    return-void

    :cond_2
    const/4 v0, 0x0

    iput-char v0, p0, Lcom/android/tools/r8/graph/K3;->a:C

    iput-boolean v3, p0, Lcom/android/tools/r8/graph/K3;->c:Z

    return-void

    :cond_3
    iget v0, p0, Lcom/android/tools/r8/graph/K3;->e:I

    const-string v1, "Unexpected end of signature"

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/graph/K3;->a(ILjava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final g()Lcom/android/tools/r8/internal/hC;
    .locals 6

    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    new-instance v0, Lcom/android/tools/r8/internal/eC;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/eC;-><init>()V

    iget-char v1, p0, Lcom/android/tools/r8/graph/K3;->a:C

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_7

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/K3;->f()V

    iget-char v1, p0, Lcom/android/tools/r8/graph/K3;->a:C

    const/16 v2, 0x2d

    const/16 v3, 0x2b

    const/16 v4, 0x2a

    if-ne v1, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/K3;->f()V

    sget-object v1, Lcom/android/tools/r8/graph/L3;->b:Lcom/android/tools/r8/graph/L3;

    goto :goto_0

    :cond_0
    if-ne v1, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/K3;->f()V

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/K3;->c()Lcom/android/tools/r8/graph/H3$e;

    move-result-object v1

    sget-object v5, Lcom/android/tools/r8/graph/H3$k;->e:Lcom/android/tools/r8/graph/H3$k;

    invoke-virtual {v1, v5}, Lcom/android/tools/r8/graph/H3$e;->a(Lcom/android/tools/r8/graph/H3$k;)Lcom/android/tools/r8/graph/H3$e;

    move-result-object v1

    goto :goto_0

    :cond_1
    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/K3;->f()V

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/K3;->c()Lcom/android/tools/r8/graph/H3$e;

    move-result-object v1

    sget-object v5, Lcom/android/tools/r8/graph/H3$k;->d:Lcom/android/tools/r8/graph/H3$k;

    invoke-virtual {v1, v5}, Lcom/android/tools/r8/graph/H3$e;->a(Lcom/android/tools/r8/graph/H3$k;)Lcom/android/tools/r8/graph/H3$e;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/K3;->c()Lcom/android/tools/r8/graph/H3$e;

    move-result-object v1

    sget-object v5, Lcom/android/tools/r8/graph/H3$k;->c:Lcom/android/tools/r8/graph/H3$k;

    invoke-virtual {v1, v5}, Lcom/android/tools/r8/graph/H3$e;->a(Lcom/android/tools/r8/graph/H3$k;)Lcom/android/tools/r8/graph/H3$e;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    :goto_1
    iget-char v1, p0, Lcom/android/tools/r8/graph/K3;->a:C

    const/16 v5, 0x3e

    if-eq v1, v5, :cond_6

    if-lez v1, :cond_6

    if-ne v1, v4, :cond_3

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/K3;->f()V

    sget-object v1, Lcom/android/tools/r8/graph/L3;->b:Lcom/android/tools/r8/graph/L3;

    goto :goto_2

    :cond_3
    if-ne v1, v3, :cond_4

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/K3;->f()V

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/K3;->c()Lcom/android/tools/r8/graph/H3$e;

    move-result-object v1

    sget-object v5, Lcom/android/tools/r8/graph/H3$k;->e:Lcom/android/tools/r8/graph/H3$k;

    invoke-virtual {v1, v5}, Lcom/android/tools/r8/graph/H3$e;->a(Lcom/android/tools/r8/graph/H3$k;)Lcom/android/tools/r8/graph/H3$e;

    move-result-object v1

    goto :goto_2

    :cond_4
    if-ne v1, v2, :cond_5

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/K3;->f()V

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/K3;->c()Lcom/android/tools/r8/graph/H3$e;

    move-result-object v1

    sget-object v5, Lcom/android/tools/r8/graph/H3$k;->d:Lcom/android/tools/r8/graph/H3$k;

    invoke-virtual {v1, v5}, Lcom/android/tools/r8/graph/H3$e;->a(Lcom/android/tools/r8/graph/H3$k;)Lcom/android/tools/r8/graph/H3$e;

    move-result-object v1

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/K3;->c()Lcom/android/tools/r8/graph/H3$e;

    move-result-object v1

    sget-object v5, Lcom/android/tools/r8/graph/H3$k;->c:Lcom/android/tools/r8/graph/H3$k;

    invoke-virtual {v1, v5}, Lcom/android/tools/r8/graph/H3$e;->a(Lcom/android/tools/r8/graph/H3$k;)Lcom/android/tools/r8/graph/H3$e;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v5}, Lcom/android/tools/r8/graph/K3;->a(C)V

    :cond_7
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    return-object v0
.end method
