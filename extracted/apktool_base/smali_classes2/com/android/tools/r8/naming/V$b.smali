.class public Lcom/android/tools/r8/naming/V$b;
.super Lcom/android/tools/r8/naming/V$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/naming/V;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1}, Lcom/android/tools/r8/naming/V$c;-><init>(Ljava/lang/String;)V

    .line 5
    iput-object p2, p0, Lcom/android/tools/r8/naming/V$b;->c:Ljava/lang/String;

    .line 6
    sget-object p1, Lcom/android/tools/r8/internal/zq0;->b:[Ljava/lang/String;

    invoke-interface {p3, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/tools/r8/naming/V$b;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/naming/V$c;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p2, p0, Lcom/android/tools/r8/naming/V$b;->c:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/android/tools/r8/naming/V$b;->d:[Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/naming/V$b;
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-static {p0, v0}, Lcom/android/tools/r8/naming/V$b;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/naming/V$b;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/naming/V$b;
    .locals 4

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 10
    iget-object v1, p0, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    const/4 v2, 0x0

    .line 11
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 12
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 13
    :cond_0
    new-instance v1, Lcom/android/tools/r8/naming/V$b;

    if-eqz p1, :cond_1

    .line 14
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/A2;->A0()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/tools/r8/graph/v2;->g:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/n1;->j0()Ljava/lang/String;

    move-result-object p1

    :goto_1
    iget-object p0, p0, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object p0, p0, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    .line 15
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p1, p0, v0}, Lcom/android/tools/r8/naming/V$b;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v1
.end method

.method public static a(Lcom/android/tools/r8/references/MethodReference;)Lcom/android/tools/r8/naming/V$b;
    .locals 4

    .line 17
    invoke-virtual {p0}, Lcom/android/tools/r8/references/MethodReference;->getReturnType()Lcom/android/tools/r8/references/TypeReference;

    move-result-object v0

    .line 18
    new-instance v1, Lcom/android/tools/r8/naming/V$b;

    .line 19
    invoke-virtual {p0}, Lcom/android/tools/r8/references/MethodReference;->getMethodName()Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_0

    .line 20
    const-string v0, "void"

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/android/tools/r8/references/TypeReference;->getTypeName()Ljava/lang/String;

    move-result-object v0

    .line 21
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/references/MethodReference;->getFormalTypes()Ljava/util/List;

    move-result-object p0

    new-instance v3, Lcom/android/tools/r8/internal/hs1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/hs1;-><init>()V

    invoke-static {p0, v3}, Lcom/android/tools/r8/internal/Ye;->a(Ljava/util/List;Ljava/util/function/Function;)[Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, v0, p0}, Lcom/android/tools/r8/naming/V$b;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/naming/V$b;
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/android/tools/r8/internal/tt0;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 2
    invoke-static {p1, v0, v1}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;II)Lcom/android/tools/r8/internal/tt0;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/android/tools/r8/naming/V$b;

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/tt0;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/Bl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {p1}, Lcom/android/tools/r8/internal/tt0;->b(Ljava/lang/String;)[Lcom/android/tools/r8/internal/tt0;

    move-result-object p1

    new-instance v2, Lcom/android/tools/r8/naming/t2;

    invoke-direct {v2}, Lcom/android/tools/r8/naming/t2;-><init>()V

    .line 6
    invoke-static {p1, v2}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;Ljava/util/function/Function;)[Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, v0, p1}, Lcom/android/tools/r8/naming/V$b;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v1
.end method

.method public static a([Ljava/lang/String;)Lcom/android/tools/r8/naming/V$b;
    .locals 3

    .line 29
    new-instance v0, Lcom/android/tools/r8/naming/V$b;

    const-string v1, "<init>"

    const-string v2, "void"

    invoke-direct {v0, v1, v2, p0}, Lcom/android/tools/r8/naming/V$b;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/tt0;)Ljava/lang/String;
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/tt0;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/internal/Bl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/util/function/Function;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/Bl;->a(Ljava/util/function/Function;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/A2;
    .locals 4

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/naming/V$b;->d:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Lcom/android/tools/r8/graph/M2;

    const/4 v1, 0x0

    .line 23
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/naming/V$b;->d:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 24
    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 25
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/naming/V$b;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 26
    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/naming/V$c;->a:Ljava/lang/String;

    .line 27
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    .line 28
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;)Lcom/android/tools/r8/naming/V$c;
    .locals 3

    .line 30
    new-instance v0, Lcom/android/tools/r8/naming/V$b;

    iget-object v1, p0, Lcom/android/tools/r8/naming/V$b;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/tools/r8/naming/V$b;->d:[Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/tools/r8/naming/V$b;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/util/function/Function;Ljava/lang/String;)Lcom/android/tools/r8/naming/V$c;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/naming/V$b;->b(Ljava/util/function/Function;Ljava/lang/String;)Lcom/android/tools/r8/naming/V$b;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/io/StringWriter;)V
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/android/tools/r8/naming/V$b;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    const/16 v1, 0x20

    .line 32
    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/naming/V$c;->a:Ljava/lang/String;

    .line 33
    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    const/16 v1, 0x28

    .line 34
    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    const/4 v0, 0x0

    .line 35
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/naming/V$b;->d:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 36
    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 37
    iget-object v1, p0, Lcom/android/tools/r8/naming/V$b;->d:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    const/16 v1, 0x2c

    .line 38
    invoke-virtual {p1, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x29

    .line 39
    invoke-virtual {p1, v0}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    return-void
.end method

.method public b()Lcom/android/tools/r8/naming/V$b;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final b(Ljava/util/function/Function;Ljava/lang/String;)Lcom/android/tools/r8/naming/V$b;
    .locals 4

    .line 2
    new-instance v0, Lcom/android/tools/r8/naming/V$b;

    iget-object v1, p0, Lcom/android/tools/r8/naming/V$b;->c:Ljava/lang/String;

    .line 3
    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/Bl;->a(Ljava/util/function/Function;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/naming/V$b;->d:[Ljava/lang/String;

    new-instance v3, Lcom/android/tools/r8/naming/u2;

    invoke-direct {v3, p1}, Lcom/android/tools/r8/naming/u2;-><init>(Ljava/util/function/Function;)V

    .line 4
    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;Ljava/util/function/Function;)[Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, v1, p1}, Lcom/android/tools/r8/naming/V$b;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/android/tools/r8/naming/V$c;
    .locals 3

    .line 5
    new-instance v0, Lcom/android/tools/r8/naming/V$b;

    iget-object v1, p0, Lcom/android/tools/r8/naming/V$c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/tools/r8/naming/V$b;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/tools/r8/naming/V$b;->d:[Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/tools/r8/naming/V$b;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public final e()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/naming/V$b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/naming/V$b;

    iget-object v1, p0, Lcom/android/tools/r8/naming/V$b;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/tools/r8/naming/V$b;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/naming/V$c;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/tools/r8/naming/V$c;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/naming/V$b;->d:[Ljava/lang/String;

    iget-object p1, p1, Lcom/android/tools/r8/naming/V$b;->d:[Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public h()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/tools/r8/naming/V$b;->d:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-static {v4}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/naming/V$b;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/naming/V$b;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x11

    iget-object v1, p0, Lcom/android/tools/r8/naming/V$c;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/android/tools/r8/naming/V$b;->d:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public i()Lcom/android/tools/r8/naming/V$b;
    .locals 4

    sget-boolean v0, Lcom/android/tools/r8/naming/V$b;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/naming/V$c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/naming/V$b;

    invoke-virtual {p0}, Lcom/android/tools/r8/naming/V$c;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/naming/V$b;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/tools/r8/naming/V$b;->d:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/naming/V$b;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/naming/V$b;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/tools/r8/naming/V$c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/tools/r8/naming/V$b;->d:[Ljava/lang/String;

    const-string v3, ","

    invoke-static {v3, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
