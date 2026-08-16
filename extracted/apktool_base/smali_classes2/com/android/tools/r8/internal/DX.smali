.class public abstract Lcom/android/tools/r8/internal/DX;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public b:Lcom/android/tools/r8/internal/DX;


# direct methods
.method public constructor <init>(ILcom/android/tools/r8/internal/DX;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x90000

    const/high16 v1, 0x10a0000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x80000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x70000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x60000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x50000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x40000

    if-eq p1, v0, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported api "

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/T60;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    if-ne p1, v1, :cond_2

    invoke-static {p0}, Lcom/android/tools/r8/internal/Dh;->a(Ljava/lang/Object;)V

    :cond_2
    iput p1, p0, Lcom/android/tools/r8/internal/DX;->a:I

    iput-object p2, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    return-void
.end method


# virtual methods
.method public a()Lcom/android/tools/r8/internal/Q2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/DX;->a()Lcom/android/tools/r8/internal/Q2;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 2

    .line 45
    iget v0, p0, Lcom/android/tools/r8/internal/DX;->a:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_1

    .line 46
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/DX;->a(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This feature requires ASM5"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(ILcom/android/tools/r8/internal/tu0;[Lcom/android/tools/r8/internal/XQ;[Lcom/android/tools/r8/internal/XQ;[ILjava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 11

    move-object v0, p0

    .line 53
    iget v1, v0, Lcom/android/tools/r8/internal/DX;->a:I

    const/high16 v2, 0x50000

    if-lt v1, v2, :cond_1

    .line 54
    iget-object v3, v0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v3, :cond_0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    .line 55
    invoke-virtual/range {v3 .. v10}, Lcom/android/tools/r8/internal/DX;->a(ILcom/android/tools/r8/internal/tu0;[Lcom/android/tools/r8/internal/XQ;[Lcom/android/tools/r8/internal/XQ;[ILjava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 56
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "This feature requires ASM5"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public a(ILjava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/DX;->a(ILjava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/DX;->a(Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(I)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/DX;->a(I)V

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/DX;->a(II)V

    :cond_0
    return-void
.end method

.method public varargs a(IILcom/android/tools/r8/internal/XQ;[Lcom/android/tools/r8/internal/XQ;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/DX;->a(IILcom/android/tools/r8/internal/XQ;[Lcom/android/tools/r8/internal/XQ;)V

    :cond_0
    return-void
.end method

.method public a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 6

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 12
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/DX;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(ILcom/android/tools/r8/internal/XQ;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/DX;->a(ILcom/android/tools/r8/internal/XQ;)V

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/DX;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/DX;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 13

    move-object v6, p0

    move v0, p1

    .line 17
    iget v1, v6, Lcom/android/tools/r8/internal/DX;->a:I

    const/high16 v2, 0x50000

    if-ge v1, v2, :cond_4

    and-int/lit16 v3, v0, 0x100

    if-nez v3, :cond_4

    const/4 v3, 0x1

    const/16 v4, 0xb9

    const/4 v5, 0x0

    move/from16 v12, p5

    if-ne v0, v4, :cond_0

    move v7, v3

    goto :goto_0

    :cond_0
    move v7, v5

    :goto_0
    if-ne v12, v7, :cond_3

    if-ge v1, v2, :cond_1

    const/16 v1, 0x100

    goto :goto_1

    :cond_1
    move v1, v5

    :goto_1
    or-int/2addr v1, v0

    if-ne v0, v4, :cond_2

    move v5, v3

    :cond_2
    move-object v0, p0

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 18
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/DX;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 19
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "INVOKESPECIAL/STATIC on interfaces requires ASM5"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move/from16 v12, p5

    .line 20
    iget-object v7, v6, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v7, :cond_5

    and-int/lit16 v8, v0, -0x101

    move-object v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    .line 21
    invoke-virtual/range {v7 .. v12}, Lcom/android/tools/r8/internal/DX;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_5
    return-void
.end method

.method public a(IZ)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/DX;->a(IZ)V

    :cond_0
    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/K4;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/DX;->a(Lcom/android/tools/r8/internal/K4;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/XQ;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/DX;->a(Lcom/android/tools/r8/internal/XQ;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/XQ;Lcom/android/tools/r8/internal/XQ;Lcom/android/tools/r8/internal/XQ;Ljava/lang/String;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/DX;->a(Lcom/android/tools/r8/internal/XQ;Lcom/android/tools/r8/internal/XQ;Lcom/android/tools/r8/internal/XQ;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/android/tools/r8/internal/XQ;[I[Lcom/android/tools/r8/internal/XQ;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/DX;->a(Lcom/android/tools/r8/internal/XQ;[I[Lcom/android/tools/r8/internal/XQ;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 30
    iget v0, p0, Lcom/android/tools/r8/internal/DX;->a:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_1

    instance-of v0, p1, Lcom/android/tools/r8/internal/Qz;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/android/tools/r8/internal/tt0;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/tools/r8/internal/tt0;

    .line 31
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/tt0;->c()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This feature requires ASM5"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/tools/r8/internal/DX;->a:I

    const/high16 v1, 0x70000

    if-ge v0, v1, :cond_3

    instance-of v0, p1, Lcom/android/tools/r8/internal/wh;

    if-nez v0, :cond_2

    goto :goto_1

    .line 34
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This feature requires ASM7"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_4

    .line 36
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/DX;->a(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public varargs a(Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/Qz;[Ljava/lang/Object;)V
    .locals 2

    .line 22
    iget v0, p0, Lcom/android/tools/r8/internal/DX;->a:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_1

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/DX;->a(Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/Qz;[Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 25
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This feature requires ASM5"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/XQ;Lcom/android/tools/r8/internal/XQ;I)V
    .locals 7

    .line 51
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 52
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/DX;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/XQ;Lcom/android/tools/r8/internal/XQ;I)V

    :cond_0
    return-void
.end method

.method public b(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 2

    .line 9
    iget v0, p0, Lcom/android/tools/r8/internal/DX;->a:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_1

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/DX;->b(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This feature requires ASM5"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/DX;->b()V

    :cond_0
    return-void
.end method

.method public b(II)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/DX;->b(II)V

    :cond_0
    return-void
.end method

.method public b(ILcom/android/tools/r8/internal/XQ;)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/DX;->b(ILcom/android/tools/r8/internal/XQ;)V

    :cond_0
    return-void
.end method

.method public b(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/tools/r8/internal/DX;->a:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/DX;->b(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This feature requires ASM5"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/tools/r8/internal/DX;->a:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/DX;->c(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This feature requires ASM5"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/DX;->c()V

    :cond_0
    return-void
.end method

.method public c(II)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/DX;->c(II)V

    :cond_0
    return-void
.end method

.method public c(ILjava/lang/String;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/DX;->c(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public d(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/DX;->d(II)V

    :cond_0
    return-void
.end method
