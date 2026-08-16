.class public Lcom/android/tools/r8/internal/qL;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# static fields
.field public static final i:Ljava/util/regex/Pattern;

.field public static final j:[Ljava/lang/String;

.field public static final k:[Ljava/lang/String;


# instance fields
.field public final a:Ljava/io/Writer;

.field public b:[I

.field public c:I

.field public final d:Ljava/lang/String;

.field public e:Z

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "-?(?:0|[1-9][0-9]*)(?:\\.[0-9]+)?(?:[eE][-+]?[0-9]+)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/qL;->i:Ljava/util/regex/Pattern;

    const/16 v0, 0x80

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/tools/r8/internal/qL;->j:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x1f

    if-gt v0, v1, :cond_0

    sget-object v1, Lcom/android/tools/r8/internal/qL;->j:[Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "\\u%04x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/tools/r8/internal/qL;->j:[Ljava/lang/String;

    const/16 v1, 0x22

    const-string v2, "\\\""

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "\\\\"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\\t"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\\b"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\\n"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\\r"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\\f"

    aput-object v2, v0, v1

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/tools/r8/internal/qL;->k:[Ljava/lang/String;

    const/16 v1, 0x3c

    const-string v2, "\\u003c"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "\\u003e"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\\u0026"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "\\u003d"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\\u0027"

    aput-object v2, v0, v1

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/tools/r8/internal/qL;->b:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/qL;->c:I

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/qL;->a(I)V

    const-string v0, ":"

    iput-object v0, p0, Lcom/android/tools/r8/internal/qL;->d:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/qL;->h:Z

    const-string v0, "out == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/tools/r8/internal/qL;->a:Ljava/io/Writer;

    return-void
.end method


# virtual methods
.method public final a(IIC)Lcom/android/tools/r8/internal/qL;
    .locals 2

    .line 4
    iget v0, p0, Lcom/android/tools/r8/internal/qL;->c:I

    if-eqz v0, :cond_4

    .line 5
    iget-object v1, p0, Lcom/android/tools/r8/internal/qL;->b:[I

    add-int/lit8 v0, v0, -0x1

    aget v1, v1, v0

    if-eq v1, p2, :cond_1

    if-ne v1, p1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Nesting problem."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/qL;->g:Ljava/lang/String;

    if-nez p1, :cond_3

    .line 8
    iput v0, p0, Lcom/android/tools/r8/internal/qL;->c:I

    if-ne v1, p2, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/qL;->h()V

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/android/tools/r8/internal/qL;->a:Ljava/io/Writer;

    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(I)V

    return-object p0

    .line 11
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Dangling name: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/tools/r8/internal/qL;->g:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "JsonWriter is closed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(D)V
    .locals 3

    .line 16
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/qL;->j()V

    .line 17
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/qL;->e:Z

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Numeric values must be finite, but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/qL;->c()V

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/internal/qL;->a:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    return-void
.end method

.method public final a(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/tools/r8/internal/qL;->c:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/qL;->b:[I

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v0, v0, 0x2

    .line 2
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/qL;->b:[I

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/qL;->b:[I

    iget v1, p0, Lcom/android/tools/r8/internal/qL;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/tools/r8/internal/qL;->c:I

    aput p1, v0, v1

    return-void
.end method

.method public a(J)V
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/qL;->j()V

    .line 22
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/qL;->c()V

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/internal/qL;->a:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/Number;)V
    .locals 4

    if-nez p1, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/qL;->i()Lcom/android/tools/r8/internal/qL;

    return-void

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/qL;->j()V

    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27
    const-string v1, "-Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "NaN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 29
    const-class v1, Ljava/lang/Integer;

    if-eq p1, v1, :cond_5

    const-class v1, Ljava/lang/Long;

    if-eq p1, v1, :cond_5

    const-class v1, Ljava/lang/Double;

    if-eq p1, v1, :cond_5

    const-class v1, Ljava/lang/Float;

    if-eq p1, v1, :cond_5

    const-class v1, Ljava/lang/Byte;

    if-eq p1, v1, :cond_5

    const-class v1, Ljava/lang/Short;

    if-eq p1, v1, :cond_5

    const-class v1, Ljava/math/BigDecimal;

    if-eq p1, v1, :cond_5

    const-class v1, Ljava/math/BigInteger;

    if-eq p1, v1, :cond_5

    const-class v1, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eq p1, v1, :cond_5

    const-class v1, Ljava/util/concurrent/atomic/AtomicLong;

    if-ne p1, v1, :cond_2

    goto :goto_1

    .line 30
    :cond_2
    sget-object v1, Lcom/android/tools/r8/internal/qL;->i:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 31
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "String created by "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid JSON number: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 32
    :cond_4
    :goto_0
    iget-boolean p1, p0, Lcom/android/tools/r8/internal/qL;->e:Z

    if-eqz p1, :cond_6

    .line 33
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/qL;->c()V

    .line 34
    iget-object p1, p0, Lcom/android/tools/r8/internal/qL;->a:Ljava/io/Writer;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    return-void

    .line 35
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "Numeric values must be finite, but was "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Z)V
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/qL;->j()V

    .line 14
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/qL;->c()V

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/internal/qL;->a:Ljava/io/Writer;

    if-eqz p1, :cond_0

    const-string p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "name == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/tools/r8/internal/qL;->g:Ljava/lang/String;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/tools/r8/internal/qL;->c:I

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/android/tools/r8/internal/qL;->g:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "JsonWriter is closed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final c()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/tools/r8/internal/qL;->c:I

    if-eqz v0, :cond_6

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/internal/qL;->b:[I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    aget v3, v1, v0

    const/4 v4, 0x2

    if-eq v3, v2, :cond_5

    if-eq v3, v4, :cond_4

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3

    const/4 v2, 0x6

    const/4 v4, 0x7

    if-eq v3, v2, :cond_2

    if-ne v3, v4, :cond_1

    .line 3
    iget-boolean v2, p0, Lcom/android/tools/r8/internal/qL;->e:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JSON must have only one top-level value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nesting problem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_2
    :goto_0
    aput v4, v1, v0

    return-void

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/qL;->a:Ljava/io/Writer;

    iget-object v1, p0, Lcom/android/tools/r8/internal/qL;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/qL;->b:[I

    iget v1, p0, Lcom/android/tools/r8/internal/qL;->c:I

    sub-int/2addr v1, v2

    const/4 v2, 0x5

    aput v2, v0, v1

    return-void

    .line 9
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/qL;->a:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/qL;->h()V

    return-void

    .line 11
    :cond_5
    aput v4, v1, v0

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/qL;->h()V

    return-void

    .line 13
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 8

    .line 14
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/qL;->f:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/tools/r8/internal/qL;->k:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/tools/r8/internal/qL;->j:[Ljava/lang/String;

    .line 15
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/qL;->a:Ljava/io/Writer;

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v3, v1, :cond_6

    .line 17
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x80

    if-ge v5, v6, :cond_1

    .line 18
    aget-object v5, v0, v5

    if-nez v5, :cond_3

    goto :goto_3

    :cond_1
    const/16 v6, 0x2028

    if-ne v5, v6, :cond_2

    .line 19
    const-string v5, "\\u2028"

    goto :goto_2

    :cond_2
    const/16 v6, 0x2029

    if-ne v5, v6, :cond_5

    .line 20
    const-string v5, "\\u2029"

    :cond_3
    :goto_2
    if-ge v4, v3, :cond_4

    .line 21
    iget-object v6, p0, Lcom/android/tools/r8/internal/qL;->a:Ljava/io/Writer;

    sub-int v7, v3, v4

    invoke-virtual {v6, p1, v4, v7}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 22
    :cond_4
    iget-object v4, p0, Lcom/android/tools/r8/internal/qL;->a:Ljava/io/Writer;

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v4, v3, 0x1

    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    if-ge v4, v1, :cond_7

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/internal/qL;->a:Ljava/io/Writer;

    sub-int/2addr v1, v4

    invoke-virtual {v0, p1, v4, v1}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 24
    :cond_7
    iget-object p1, p0, Lcom/android/tools/r8/internal/qL;->a:Ljava/io/Writer;

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    return-void
.end method

.method public close()V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/qL;->a:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    iget v0, p0, Lcom/android/tools/r8/internal/qL;->c:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/tools/r8/internal/qL;->b:[I

    sub-int/2addr v0, v1

    aget v0, v2, v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/qL;->c:I

    return-void

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/qL;->j()V

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/qL;->c()V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/qL;->a(I)V

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/qL;->a:Ljava/io/Writer;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/qL;->i()Lcom/android/tools/r8/internal/qL;

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/qL;->j()V

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/qL;->c()V

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/qL;->c(Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/qL;->j()V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/qL;->c()V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/qL;->a(I)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/qL;->a:Ljava/io/Writer;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    return-void
.end method

.method public f()V
    .locals 3

    const/4 v0, 0x2

    const/16 v1, 0x5d

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/tools/r8/internal/qL;->a(IIC)Lcom/android/tools/r8/internal/qL;

    return-void
.end method

.method public flush()V
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/qL;->c:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/qL;->a:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()V
    .locals 3

    const/4 v0, 0x5

    const/16 v1, 0x7d

    const/4 v2, 0x3

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/tools/r8/internal/qL;->a(IIC)Lcom/android/tools/r8/internal/qL;

    return-void
.end method

.method public final h()V
    .locals 0

    return-void
.end method

.method public i()Lcom/android/tools/r8/internal/qL;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/qL;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/qL;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/qL;->j()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/qL;->g:Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/qL;->c()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/qL;->a:Ljava/io/Writer;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public final j()V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/qL;->g:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/tools/r8/internal/qL;->c:I

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/qL;->b:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/qL;->a:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/qL;->h()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/qL;->b:[I

    iget v1, p0, Lcom/android/tools/r8/internal/qL;->c:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x4

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/tools/r8/internal/qL;->g:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/qL;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/qL;->g:Ljava/lang/String;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nesting problem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method
