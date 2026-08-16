.class public final Lcom/android/tools/r8/internal/eA;
.super Lcom/android/tools/r8/internal/pV;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/f6;
.implements Ljava/io/Serializable;


# static fields
.field public static final synthetic j:I


# instance fields
.field public transient b:[Lcom/android/tools/r8/internal/Vz;

.field public transient c:[Lcom/android/tools/r8/internal/Vz;

.field public transient d:Lcom/android/tools/r8/internal/Vz;

.field public transient e:Lcom/android/tools/r8/internal/Vz;

.field public transient f:I

.field public transient g:I

.field public transient h:I

.field public transient i:Lcom/android/tools/r8/internal/aA;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Lcom/android/tools/r8/internal/pV;-><init>()V

    const-string v0, "expectedSize"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/Le;->a(ILjava/lang/String;)V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {p1, v0, v1}, Lcom/android/tools/r8/internal/qA;->a(ID)I

    move-result p1

    new-array v0, p1, [Lcom/android/tools/r8/internal/Vz;

    iput-object v0, p0, Lcom/android/tools/r8/internal/eA;->b:[Lcom/android/tools/r8/internal/Vz;

    new-array v0, p1, [Lcom/android/tools/r8/internal/Vz;

    iput-object v0, p0, Lcom/android/tools/r8/internal/eA;->c:[Lcom/android/tools/r8/internal/Vz;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/eA;->d:Lcom/android/tools/r8/internal/Vz;

    iput-object v0, p0, Lcom/android/tools/r8/internal/eA;->e:Lcom/android/tools/r8/internal/Vz;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/eA;->f:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/tools/r8/internal/eA;->g:I

    iput v0, p0, Lcom/android/tools/r8/internal/eA;->h:I

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/eA;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {p1}, Lcom/android/tools/r8/internal/qA;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3
    invoke-static {p2}, Lcom/android/tools/r8/internal/qA;->a(Ljava/lang/Object;)I

    move-result v1

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/eA;->b(ILjava/lang/Object;)Lcom/android/tools/r8/internal/Vz;

    move-result-object v2

    .line 5
    invoke-virtual {p0, v1, p2}, Lcom/android/tools/r8/internal/eA;->a(ILjava/lang/Object;)Lcom/android/tools/r8/internal/Vz;

    move-result-object v3

    if-eqz v2, :cond_0

    .line 6
    iget v4, v2, Lcom/android/tools/r8/internal/Vz;->d:I

    if-ne v1, v4, :cond_0

    iget-object v4, v2, Lcom/android/tools/r8/internal/ZB;->b:Ljava/lang/Object;

    .line 7
    invoke-static {p2, v4}, Lcom/android/tools/r8/internal/V30;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object p2

    :cond_0
    if-eqz v3, :cond_2

    if-eqz p3, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "key already present: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 9
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/eA;->a(Lcom/android/tools/r8/internal/Vz;)V

    :cond_3
    if-eqz v3, :cond_4

    .line 10
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/eA;->a(Lcom/android/tools/r8/internal/Vz;)V

    .line 11
    :cond_4
    new-instance p3, Lcom/android/tools/r8/internal/Vz;

    invoke-direct {p3, p2, v1, p1, v0}, Lcom/android/tools/r8/internal/Vz;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 12
    invoke-virtual {p0, p3, v3}, Lcom/android/tools/r8/internal/eA;->a(Lcom/android/tools/r8/internal/Vz;Lcom/android/tools/r8/internal/Vz;)V

    const/4 p1, 0x0

    if-eqz v3, :cond_5

    .line 13
    iput-object p1, v3, Lcom/android/tools/r8/internal/Vz;->i:Lcom/android/tools/r8/internal/Vz;

    .line 14
    iput-object p1, v3, Lcom/android/tools/r8/internal/Vz;->h:Lcom/android/tools/r8/internal/Vz;

    :cond_5
    if-eqz v2, :cond_6

    .line 15
    iput-object p1, v2, Lcom/android/tools/r8/internal/Vz;->i:Lcom/android/tools/r8/internal/Vz;

    .line 16
    iput-object p1, v2, Lcom/android/tools/r8/internal/Vz;->h:Lcom/android/tools/r8/internal/Vz;

    .line 17
    :cond_6
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/eA;->j()V

    if-nez v2, :cond_7

    return-object p1

    .line 18
    :cond_7
    iget-object p0, v2, Lcom/android/tools/r8/internal/ZB;->b:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)Lcom/android/tools/r8/internal/Vz;
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/android/tools/r8/internal/eA;->b:[Lcom/android/tools/r8/internal/Vz;

    iget v1, p0, Lcom/android/tools/r8/internal/eA;->g:I

    and-int/2addr v1, p1

    aget-object v0, v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 57
    iget v1, v0, Lcom/android/tools/r8/internal/Vz;->d:I

    if-ne p1, v1, :cond_0

    iget-object v1, v0, Lcom/android/tools/r8/internal/ZB;->b:Ljava/lang/Object;

    invoke-static {p2, v1}, Lcom/android/tools/r8/internal/V30;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 58
    :cond_0
    iget-object v0, v0, Lcom/android/tools/r8/internal/Vz;->f:Lcom/android/tools/r8/internal/Vz;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 4

    .line 59
    invoke-static {p1}, Lcom/android/tools/r8/internal/qA;->a(Ljava/lang/Object;)I

    move-result v0

    .line 60
    invoke-static {p2}, Lcom/android/tools/r8/internal/qA;->a(Ljava/lang/Object;)I

    move-result v1

    .line 61
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/eA;->a(ILjava/lang/Object;)Lcom/android/tools/r8/internal/Vz;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 62
    iget v3, v2, Lcom/android/tools/r8/internal/Vz;->e:I

    if-ne v1, v3, :cond_0

    iget-object v3, v2, Lcom/android/tools/r8/internal/ZB;->c:Ljava/lang/Object;

    .line 63
    invoke-static {p2, v3}, Lcom/android/tools/r8/internal/V30;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object p2

    .line 64
    :cond_0
    invoke-virtual {p0, v1, p2}, Lcom/android/tools/r8/internal/eA;->b(ILjava/lang/Object;)Lcom/android/tools/r8/internal/Vz;

    move-result-object v3

    if-eqz v3, :cond_2

    if-eqz p3, :cond_1

    .line 65
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/eA;->a(Lcom/android/tools/r8/internal/Vz;)V

    goto :goto_0

    .line 66
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "value already present: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_2
    :goto_0
    new-instance p3, Lcom/android/tools/r8/internal/Vz;

    invoke-direct {p3, p1, v0, p2, v1}, Lcom/android/tools/r8/internal/Vz;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    const/4 p1, 0x0

    if-eqz v2, :cond_3

    .line 68
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/eA;->a(Lcom/android/tools/r8/internal/Vz;)V

    .line 69
    invoke-virtual {p0, p3, v2}, Lcom/android/tools/r8/internal/eA;->a(Lcom/android/tools/r8/internal/Vz;Lcom/android/tools/r8/internal/Vz;)V

    .line 70
    iput-object p1, v2, Lcom/android/tools/r8/internal/Vz;->i:Lcom/android/tools/r8/internal/Vz;

    .line 71
    iput-object p1, v2, Lcom/android/tools/r8/internal/Vz;->h:Lcom/android/tools/r8/internal/Vz;

    .line 72
    iget-object p1, v2, Lcom/android/tools/r8/internal/ZB;->c:Ljava/lang/Object;

    return-object p1

    .line 73
    :cond_3
    invoke-virtual {p0, p3, p1}, Lcom/android/tools/r8/internal/eA;->a(Lcom/android/tools/r8/internal/Vz;Lcom/android/tools/r8/internal/Vz;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/eA;->j()V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Vz;)V
    .locals 5

    .line 19
    iget v0, p1, Lcom/android/tools/r8/internal/Vz;->d:I

    iget v1, p0, Lcom/android/tools/r8/internal/eA;->g:I

    and-int/2addr v0, v1

    .line 20
    iget-object v1, p0, Lcom/android/tools/r8/internal/eA;->b:[Lcom/android/tools/r8/internal/Vz;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    if-ne v1, p1, :cond_5

    if-nez v3, :cond_0

    .line 21
    iget-object v1, p0, Lcom/android/tools/r8/internal/eA;->b:[Lcom/android/tools/r8/internal/Vz;

    iget-object v3, p1, Lcom/android/tools/r8/internal/Vz;->f:Lcom/android/tools/r8/internal/Vz;

    aput-object v3, v1, v0

    goto :goto_1

    .line 22
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/Vz;->f:Lcom/android/tools/r8/internal/Vz;

    iput-object v0, v3, Lcom/android/tools/r8/internal/Vz;->f:Lcom/android/tools/r8/internal/Vz;

    .line 23
    :goto_1
    iget v0, p1, Lcom/android/tools/r8/internal/Vz;->e:I

    iget v1, p0, Lcom/android/tools/r8/internal/eA;->g:I

    and-int v3, v0, v1

    .line 24
    iget-object v0, p0, Lcom/android/tools/r8/internal/eA;->c:[Lcom/android/tools/r8/internal/Vz;

    aget-object v0, v0, v3

    :goto_2
    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    if-ne v2, p1, :cond_4

    if-nez v0, :cond_1

    .line 25
    iget-object v0, p0, Lcom/android/tools/r8/internal/eA;->c:[Lcom/android/tools/r8/internal/Vz;

    iget-object v1, p1, Lcom/android/tools/r8/internal/Vz;->g:Lcom/android/tools/r8/internal/Vz;

    aput-object v1, v0, v3

    goto :goto_3

    .line 26
    :cond_1
    iget-object v1, p1, Lcom/android/tools/r8/internal/Vz;->g:Lcom/android/tools/r8/internal/Vz;

    iput-object v1, v0, Lcom/android/tools/r8/internal/Vz;->g:Lcom/android/tools/r8/internal/Vz;

    .line 27
    :goto_3
    iget-object v0, p1, Lcom/android/tools/r8/internal/Vz;->i:Lcom/android/tools/r8/internal/Vz;

    if-nez v0, :cond_2

    .line 28
    iget-object v1, p1, Lcom/android/tools/r8/internal/Vz;->h:Lcom/android/tools/r8/internal/Vz;

    iput-object v1, p0, Lcom/android/tools/r8/internal/eA;->d:Lcom/android/tools/r8/internal/Vz;

    goto :goto_4

    .line 29
    :cond_2
    iget-object v1, p1, Lcom/android/tools/r8/internal/Vz;->h:Lcom/android/tools/r8/internal/Vz;

    iput-object v1, v0, Lcom/android/tools/r8/internal/Vz;->h:Lcom/android/tools/r8/internal/Vz;

    .line 30
    :goto_4
    iget-object p1, p1, Lcom/android/tools/r8/internal/Vz;->h:Lcom/android/tools/r8/internal/Vz;

    if-nez p1, :cond_3

    .line 31
    iput-object v0, p0, Lcom/android/tools/r8/internal/eA;->e:Lcom/android/tools/r8/internal/Vz;

    goto :goto_5

    .line 32
    :cond_3
    iput-object v0, p1, Lcom/android/tools/r8/internal/Vz;->i:Lcom/android/tools/r8/internal/Vz;

    .line 33
    :goto_5
    iget p1, p0, Lcom/android/tools/r8/internal/eA;->f:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/tools/r8/internal/eA;->f:I

    .line 34
    iget p1, p0, Lcom/android/tools/r8/internal/eA;->h:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/tools/r8/internal/eA;->h:I

    return-void

    .line 35
    :cond_4
    iget-object v0, v2, Lcom/android/tools/r8/internal/Vz;->g:Lcom/android/tools/r8/internal/Vz;

    goto :goto_2

    .line 36
    :cond_5
    iget-object v3, v1, Lcom/android/tools/r8/internal/Vz;->f:Lcom/android/tools/r8/internal/Vz;

    move-object v4, v3

    move-object v3, v1

    move-object v1, v4

    goto :goto_0
.end method

.method public final a(Lcom/android/tools/r8/internal/Vz;Lcom/android/tools/r8/internal/Vz;)V
    .locals 4

    .line 37
    iget v0, p1, Lcom/android/tools/r8/internal/Vz;->d:I

    iget v1, p0, Lcom/android/tools/r8/internal/eA;->g:I

    and-int/2addr v0, v1

    .line 38
    iget-object v2, p0, Lcom/android/tools/r8/internal/eA;->b:[Lcom/android/tools/r8/internal/Vz;

    aget-object v3, v2, v0

    iput-object v3, p1, Lcom/android/tools/r8/internal/Vz;->f:Lcom/android/tools/r8/internal/Vz;

    .line 39
    aput-object p1, v2, v0

    .line 40
    iget v0, p1, Lcom/android/tools/r8/internal/Vz;->e:I

    and-int/2addr v0, v1

    .line 41
    iget-object v1, p0, Lcom/android/tools/r8/internal/eA;->c:[Lcom/android/tools/r8/internal/Vz;

    aget-object v2, v1, v0

    iput-object v2, p1, Lcom/android/tools/r8/internal/Vz;->g:Lcom/android/tools/r8/internal/Vz;

    .line 42
    aput-object p1, v1, v0

    if-nez p2, :cond_1

    .line 43
    iget-object p2, p0, Lcom/android/tools/r8/internal/eA;->e:Lcom/android/tools/r8/internal/Vz;

    iput-object p2, p1, Lcom/android/tools/r8/internal/Vz;->i:Lcom/android/tools/r8/internal/Vz;

    const/4 v0, 0x0

    .line 44
    iput-object v0, p1, Lcom/android/tools/r8/internal/Vz;->h:Lcom/android/tools/r8/internal/Vz;

    if-nez p2, :cond_0

    .line 45
    iput-object p1, p0, Lcom/android/tools/r8/internal/eA;->d:Lcom/android/tools/r8/internal/Vz;

    goto :goto_0

    .line 46
    :cond_0
    iput-object p1, p2, Lcom/android/tools/r8/internal/Vz;->h:Lcom/android/tools/r8/internal/Vz;

    .line 47
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/eA;->e:Lcom/android/tools/r8/internal/Vz;

    goto :goto_2

    .line 48
    :cond_1
    iget-object v0, p2, Lcom/android/tools/r8/internal/Vz;->i:Lcom/android/tools/r8/internal/Vz;

    iput-object v0, p1, Lcom/android/tools/r8/internal/Vz;->i:Lcom/android/tools/r8/internal/Vz;

    if-nez v0, :cond_2

    .line 49
    iput-object p1, p0, Lcom/android/tools/r8/internal/eA;->d:Lcom/android/tools/r8/internal/Vz;

    goto :goto_1

    .line 50
    :cond_2
    iput-object p1, v0, Lcom/android/tools/r8/internal/Vz;->h:Lcom/android/tools/r8/internal/Vz;

    .line 51
    :goto_1
    iget-object p2, p2, Lcom/android/tools/r8/internal/Vz;->h:Lcom/android/tools/r8/internal/Vz;

    iput-object p2, p1, Lcom/android/tools/r8/internal/Vz;->h:Lcom/android/tools/r8/internal/Vz;

    if-nez p2, :cond_3

    .line 52
    iput-object p1, p0, Lcom/android/tools/r8/internal/eA;->e:Lcom/android/tools/r8/internal/Vz;

    goto :goto_2

    .line 53
    :cond_3
    iput-object p1, p2, Lcom/android/tools/r8/internal/Vz;->i:Lcom/android/tools/r8/internal/Vz;

    .line 54
    :goto_2
    iget p1, p0, Lcom/android/tools/r8/internal/eA;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/tools/r8/internal/eA;->f:I

    .line 55
    iget p1, p0, Lcom/android/tools/r8/internal/eA;->h:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/tools/r8/internal/eA;->h:I

    return-void
.end method

.method public final b(ILjava/lang/Object;)Lcom/android/tools/r8/internal/Vz;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/eA;->c:[Lcom/android/tools/r8/internal/Vz;

    iget v1, p0, Lcom/android/tools/r8/internal/eA;->g:I

    and-int/2addr v1, p1

    aget-object v0, v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/tools/r8/internal/Vz;->e:I

    if-ne p1, v1, :cond_0

    iget-object v1, v0, Lcom/android/tools/r8/internal/ZB;->c:Ljava/lang/Object;

    invoke-static {p2, v1}, Lcom/android/tools/r8/internal/V30;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/android/tools/r8/internal/Vz;->g:Lcom/android/tools/r8/internal/Vz;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final clear()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/eA;->f:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/eA;->b:[Lcom/android/tools/r8/internal/Vz;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/eA;->c:[Lcom/android/tools/r8/internal/Vz;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/tools/r8/internal/eA;->d:Lcom/android/tools/r8/internal/Vz;

    iput-object v1, p0, Lcom/android/tools/r8/internal/eA;->e:Lcom/android/tools/r8/internal/Vz;

    iget v0, p0, Lcom/android/tools/r8/internal/eA;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/eA;->h:I

    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p1}, Lcom/android/tools/r8/internal/qA;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/eA;->a(ILjava/lang/Object;)Lcom/android/tools/r8/internal/Vz;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p1}, Lcom/android/tools/r8/internal/qA;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/eA;->b(ILjava/lang/Object;)Lcom/android/tools/r8/internal/Vz;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final e()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Uz;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Uz;-><init>(Lcom/android/tools/r8/internal/eA;)V

    return-object v0
.end method

.method public final f()Lcom/android/tools/r8/internal/f6;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/eA;->i:Lcom/android/tools/r8/internal/aA;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/aA;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/aA;-><init>(Lcom/android/tools/r8/internal/eA;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/eA;->i:Lcom/android/tools/r8/internal/aA;

    :cond_0
    return-object v0
.end method

.method public final forEach(Ljava/util/function/BiConsumer;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/tools/r8/internal/eA;->d:Lcom/android/tools/r8/internal/Vz;

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/tools/r8/internal/ZB;->b:Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/tools/r8/internal/ZB;->c:Ljava/lang/Object;

    invoke-interface {p1, v1, v2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/tools/r8/internal/Vz;->h:Lcom/android/tools/r8/internal/Vz;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lcom/android/tools/r8/internal/qA;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/eA;->a(ILjava/lang/Object;)Lcom/android/tools/r8/internal/Vz;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ZB;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final j()V
    .locals 9

    iget-object v0, p0, Lcom/android/tools/r8/internal/eA;->b:[Lcom/android/tools/r8/internal/Vz;

    iget v1, p0, Lcom/android/tools/r8/internal/eA;->f:I

    array-length v2, v0

    int-to-double v3, v1

    int-to-double v5, v2

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v5, v7

    cmpl-double v1, v3, v5

    if-lez v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-ge v2, v1, :cond_1

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [Lcom/android/tools/r8/internal/Vz;

    iput-object v1, p0, Lcom/android/tools/r8/internal/eA;->b:[Lcom/android/tools/r8/internal/Vz;

    new-array v1, v0, [Lcom/android/tools/r8/internal/Vz;

    iput-object v1, p0, Lcom/android/tools/r8/internal/eA;->c:[Lcom/android/tools/r8/internal/Vz;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/internal/eA;->g:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/eA;->f:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/eA;->d:Lcom/android/tools/r8/internal/Vz;

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, v0}, Lcom/android/tools/r8/internal/eA;->a(Lcom/android/tools/r8/internal/Vz;Lcom/android/tools/r8/internal/Vz;)V

    iget-object v0, v0, Lcom/android/tools/r8/internal/Vz;->h:Lcom/android/tools/r8/internal/Vz;

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/eA;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/eA;->h:I

    :cond_1
    return-void
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/dA;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/dA;-><init>(Lcom/android/tools/r8/internal/eA;)V

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/tools/r8/internal/eA;->a(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lcom/android/tools/r8/internal/qA;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/eA;->a(ILjava/lang/Object;)Lcom/android/tools/r8/internal/Vz;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/eA;->a(Lcom/android/tools/r8/internal/Vz;)V

    iput-object v0, p1, Lcom/android/tools/r8/internal/Vz;->i:Lcom/android/tools/r8/internal/Vz;

    iput-object v0, p1, Lcom/android/tools/r8/internal/Vz;->h:Lcom/android/tools/r8/internal/Vz;

    iget-object p1, p1, Lcom/android/tools/r8/internal/ZB;->c:Ljava/lang/Object;

    return-object p1
.end method

.method public final replaceAll(Ljava/util/function/BiFunction;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/tools/r8/internal/eA;->d:Lcom/android/tools/r8/internal/Vz;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/eA;->clear()V

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/tools/r8/internal/ZB;->b:Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/tools/r8/internal/ZB;->c:Ljava/lang/Object;

    invoke-interface {p1, v1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/tools/r8/internal/eA;->a(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Vz;->h:Lcom/android/tools/r8/internal/Vz;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/eA;->f:I

    return v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/eA;->f()Lcom/android/tools/r8/internal/f6;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/aA;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/aA;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
