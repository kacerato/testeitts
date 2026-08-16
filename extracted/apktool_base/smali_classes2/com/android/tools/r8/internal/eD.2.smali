.class public final Lcom/android/tools/r8/internal/eD;
.super Lcom/android/tools/r8/internal/Iv0;
.source "SourceFile"


# static fields
.field public static final synthetic l:Z = true


# instance fields
.field public final k:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/Iv0;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    sget-boolean p1, Lcom/android/tools/r8/internal/eD;->l:Z

    if-nez p1, :cond_1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object p1

    sget-object p2, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput p3, p0, Lcom/android/tools/r8/internal/eD;->k:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;)Lcom/android/tools/r8/internal/F1;
    .locals 0

    .line 4
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/yD;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Kn;)V
    .locals 1

    .line 3
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string v0, "The Inc instruction is not intended for Dex code."

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/NT;)V
    .locals 0

    .line 2
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/PS;)V
    .locals 0

    .line 5
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/h9;)V
    .locals 8

    const/4 v0, 0x0

    .line 6
    sget-boolean v1, Lcom/android/tools/r8/internal/eD;->l:Z

    if-nez v1, :cond_3

    .line 7
    sget-boolean v2, Lcom/android/tools/r8/internal/h9;->t:Z

    if-nez v2, :cond_2

    .line 8
    iget-object v2, p1, Lcom/android/tools/r8/internal/h9;->s:Lcom/android/tools/r8/internal/t8;

    .line 9
    sget-boolean v3, Lcom/android/tools/r8/internal/t8;->c:Z

    if-nez v3, :cond_1

    .line 10
    iget-object v2, v2, Lcom/android/tools/r8/internal/t8;->a:Lcom/android/tools/r8/internal/v8;

    .line 11
    iget-object v2, v2, Lcom/android/tools/r8/internal/v8;->a:Ljava/util/Map;

    .line 12
    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/s8;

    if-nez v2, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 14
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    .line 17
    iget-object v3, p1, Lcom/android/tools/r8/internal/h9;->g:Lcom/android/tools/r8/internal/Ya;

    .line 18
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/tools/r8/internal/Ya;->a(Lcom/android/tools/r8/internal/xw0;)I

    move-result v3

    .line 19
    iget-object v4, p0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    .line 20
    iget-object v5, p1, Lcom/android/tools/r8/internal/h9;->g:Lcom/android/tools/r8/internal/Ya;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/android/tools/r8/internal/Ya;->a(Lcom/android/tools/r8/internal/xw0;)I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 21
    new-instance v0, Lcom/android/tools/r8/internal/R9;

    iget v1, p0, Lcom/android/tools/r8/internal/eD;->k:I

    invoke-direct {v0, v3, v1}, Lcom/android/tools/r8/internal/R9;-><init>(II)V

    invoke-virtual {p1, v0, p0}, Lcom/android/tools/r8/internal/h9;->a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/zE;)V

    return-void

    :cond_4
    if-nez v1, :cond_6

    .line 22
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->Y()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v1

    sget-object v2, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    if-ne v1, v2, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 23
    :cond_6
    :goto_1
    new-instance v1, Lcom/android/tools/r8/internal/pa;

    sget-object v2, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v1, v2, v3}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v3, Lcom/android/tools/r8/internal/z9;

    iget v5, p0, Lcom/android/tools/r8/internal/eD;->k:I

    int-to-long v5, v5

    invoke-direct {v3, v5, v6, v2}, Lcom/android/tools/r8/internal/z9;-><init>(JLcom/android/tools/r8/internal/Kw0;)V

    new-instance v5, Lcom/android/tools/r8/internal/V8;

    sget-object v6, Lcom/android/tools/r8/internal/V8$a;->b:Lcom/android/tools/r8/internal/V8$a;

    sget-object v7, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    invoke-direct {v5, v6, v7}, Lcom/android/tools/r8/internal/V8;-><init>(Lcom/android/tools/r8/internal/V8$a;Lcom/android/tools/r8/internal/T10;)V

    new-instance v6, Lcom/android/tools/r8/internal/yb;

    invoke-direct {v6, v2, v4}, Lcom/android/tools/r8/internal/yb;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    const/4 v2, 0x4

    new-array v2, v2, [Lcom/android/tools/r8/internal/W9;

    aput-object v1, v2, v0

    const/4 v0, 0x1

    aput-object v3, v2, v0

    const/4 v0, 0x2

    aput-object v5, v2, v0

    const/4 v0, 0x3

    aput-object v6, v2, v0

    .line 24
    iget-object p1, p1, Lcom/android/tools/r8/internal/h9;->f:Ljava/util/ArrayList;

    invoke-static {p1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/xw0;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/eD;->l:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->F()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 0

    .line 3
    instance-of p1, p1, Lcom/android/tools/r8/internal/eD;

    return p1
.end method

.method public final p2()I
    .locals 1

    const v0, 0xffff

    return v0
.end method

.method public final q2()I
    .locals 1

    const v0, 0xffff

    return v0
.end method

.method public final r2()I
    .locals 1

    const/16 v0, 0x1a

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-super {p0}, Lcom/android/tools/r8/internal/zE;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/r8/internal/eD;->k:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
