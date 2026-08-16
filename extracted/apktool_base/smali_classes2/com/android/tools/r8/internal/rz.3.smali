.class public Lcom/android/tools/r8/internal/rz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/jz;


# instance fields
.field public final a:Ljava/lang/Class;

.field public final b:Lcom/android/tools/r8/internal/Ol;

.field public final c:Z

.field public final d:Z

.field public final e:Lcom/android/tools/r8/internal/qz;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Ol;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/tools/r8/internal/Ol;->k:Lcom/android/tools/r8/internal/Sl;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/tools/r8/internal/Sl;->h:[Lcom/android/tools/r8/internal/Ol;

    array-length v3, v0

    if-ne v3, v2, :cond_0

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/Ol;->g:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v8, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v8, v1

    :goto_1
    iput-boolean v8, p0, Lcom/android/tools/r8/internal/rz;->c:Z

    iget-object v0, p1, Lcom/android/tools/r8/internal/Ol;->e:Lcom/android/tools/r8/internal/Pl;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Pl;->e()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    iget-boolean v0, p1, Lcom/android/tools/r8/internal/Ol;->g:Z

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/android/tools/r8/internal/Ol;->e:Lcom/android/tools/r8/internal/Pl;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Pl;->e()I

    move-result v0

    if-ne v0, v3, :cond_3

    iget-object v0, p1, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    iget v0, v0, Lcom/android/tools/r8/internal/Ek;->e:I

    invoke-static {v0}, Lcom/android/tools/r8/internal/Ck;->a(I)Lcom/android/tools/r8/internal/Ck;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/tools/r8/internal/Ck;->c:Lcom/android/tools/r8/internal/Ck;

    :cond_2
    sget-object v3, Lcom/android/tools/r8/internal/Ck;->c:Lcom/android/tools/r8/internal/Ck;

    if-ne v0, v3, :cond_3

    iget-object v0, p1, Lcom/android/tools/r8/internal/Ol;->k:Lcom/android/tools/r8/internal/Sl;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    if-nez v8, :cond_4

    iget-object v0, p1, Lcom/android/tools/r8/internal/Ol;->h:Lcom/android/tools/r8/internal/Nl;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Nl;->b:Lcom/android/tools/r8/internal/Ml;

    sget-object v3, Lcom/android/tools/r8/internal/Ml;->k:Lcom/android/tools/r8/internal/Ml;

    if-ne v0, v3, :cond_4

    goto :goto_2

    :cond_4
    move v9, v1

    goto :goto_3

    :cond_5
    :goto_2
    move v9, v2

    :goto_3
    iput-boolean v9, p0, Lcom/android/tools/r8/internal/rz;->d:Z

    new-instance v0, Lcom/android/tools/r8/internal/qz;

    move-object v3, v0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v3 .. v9}, Lcom/android/tools/r8/internal/qz;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;ZZ)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/rz;->b:Lcom/android/tools/r8/internal/Ol;

    iget-object p1, v0, Lcom/android/tools/r8/internal/qz;->a:Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/rz;->a:Ljava/lang/Class;

    iput-object v0, p0, Lcom/android/tools/r8/internal/rz;->e:Lcom/android/tools/r8/internal/qz;

    return-void
.end method


# virtual methods
.method public a()Lcom/android/tools/r8/internal/eW;
    .locals 2

    .line 19
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "newBuilderForField() called on a non-Message type."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/android/tools/r8/internal/fz;I)Lcom/android/tools/r8/internal/eW;
    .locals 0

    .line 20
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "getRepeatedFieldBuilder() called on a non-Message type."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(ILcom/android/tools/r8/internal/wz;)Ljava/lang/Object;
    .locals 0

    .line 5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "getRepeatedField() called on a singular field."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/android/tools/r8/internal/wz;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/rz;->d(Lcom/android/tools/r8/internal/wz;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/fz;ILjava/lang/Object;)V
    .locals 0

    .line 6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "setRepeatedField() called on a singular field."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/android/tools/r8/internal/fz;Ljava/lang/Object;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/rz;->e:Lcom/android/tools/r8/internal/qz;

    .line 3
    iget-object v0, v0, Lcom/android/tools/r8/internal/qz;->c:Ljava/lang/reflect/Method;

    .line 4
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/wz;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/fz;)Z
    .locals 4

    .line 7
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/rz;->d:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 8
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/rz;->c:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/rz;->e:Lcom/android/tools/r8/internal/qz;

    .line 10
    iget-object v0, v0, Lcom/android/tools/r8/internal/qz;->h:Ljava/lang/reflect/Method;

    .line 11
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v3}, Lcom/android/tools/r8/internal/wz;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/QI;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/QI;->getNumber()I

    move-result p1

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/rz;->b:Lcom/android/tools/r8/internal/Ol;

    .line 13
    iget-object v0, v0, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    .line 14
    iget v0, v0, Lcom/android/tools/r8/internal/Ek;->d:I

    if-ne p1, v0, :cond_0

    return v2

    :cond_0
    return v1

    .line 15
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/rz;->c(Lcom/android/tools/r8/internal/fz;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/rz;->b:Lcom/android/tools/r8/internal/Ol;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ol;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/rz;->e:Lcom/android/tools/r8/internal/qz;

    .line 17
    iget-object v0, v0, Lcom/android/tools/r8/internal/qz;->e:Ljava/lang/reflect/Method;

    .line 18
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/android/tools/r8/internal/wz;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/fz;)I
    .locals 1

    .line 15
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getRepeatedFieldSize() called on a singular field."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Lcom/android/tools/r8/internal/fz;I)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "getRepeatedField() called on a singular field."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Lcom/android/tools/r8/internal/fz;Ljava/lang/Object;)V
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "addRepeatedField() called on a singular field."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Lcom/android/tools/r8/internal/wz;)Z
    .locals 4

    .line 3
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/rz;->d:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 4
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/rz;->c:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/rz;->e:Lcom/android/tools/r8/internal/qz;

    .line 6
    iget-object v0, v0, Lcom/android/tools/r8/internal/qz;->g:Ljava/lang/reflect/Method;

    .line 7
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v3}, Lcom/android/tools/r8/internal/wz;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/QI;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/QI;->getNumber()I

    move-result p1

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/rz;->b:Lcom/android/tools/r8/internal/Ol;

    .line 9
    iget-object v0, v0, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    .line 10
    iget v0, v0, Lcom/android/tools/r8/internal/Ek;->d:I

    if-ne p1, v0, :cond_0

    return v2

    :cond_0
    return v1

    .line 11
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/rz;->d(Lcom/android/tools/r8/internal/wz;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/rz;->b:Lcom/android/tools/r8/internal/Ol;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ol;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/rz;->e:Lcom/android/tools/r8/internal/qz;

    .line 13
    iget-object v0, v0, Lcom/android/tools/r8/internal/qz;->d:Ljava/lang/reflect/Method;

    .line 14
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/android/tools/r8/internal/wz;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final c(Lcom/android/tools/r8/internal/wz;)I
    .locals 1

    .line 4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getRepeatedFieldSize() called on a singular field."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Lcom/android/tools/r8/internal/fz;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/rz;->e:Lcom/android/tools/r8/internal/qz;

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/internal/qz;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    .line 3
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/android/tools/r8/internal/wz;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/android/tools/r8/internal/wz;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/rz;->e:Lcom/android/tools/r8/internal/qz;

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/internal/qz;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    .line 3
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/android/tools/r8/internal/wz;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lcom/android/tools/r8/internal/fz;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/rz;->e:Lcom/android/tools/r8/internal/qz;

    .line 5
    iget-object v0, v0, Lcom/android/tools/r8/internal/qz;->f:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/android/tools/r8/internal/wz;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public e(Lcom/android/tools/r8/internal/fz;)Lcom/android/tools/r8/internal/eW;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getFieldBuilder() called on a non-Message type."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
