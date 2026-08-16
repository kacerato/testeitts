.class public final Lcom/android/tools/r8/internal/tt0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Lcom/android/tools/r8/internal/tt0;

.field public static final f:Lcom/android/tools/r8/internal/tt0;

.field public static final g:Lcom/android/tools/r8/internal/tt0;

.field public static final h:Lcom/android/tools/r8/internal/tt0;

.field public static final i:Lcom/android/tools/r8/internal/tt0;

.field public static final j:Lcom/android/tools/r8/internal/tt0;

.field public static final k:Lcom/android/tools/r8/internal/tt0;

.field public static final l:Lcom/android/tools/r8/internal/tt0;

.field public static final m:Lcom/android/tools/r8/internal/tt0;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/tt0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "VZCBSIFJD"

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/android/tools/r8/internal/tt0;-><init>(IIILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/tt0;->e:Lcom/android/tools/r8/internal/tt0;

    new-instance v0, Lcom/android/tools/r8/internal/tt0;

    const/4 v1, 0x2

    invoke-direct {v0, v2, v2, v1, v3}, Lcom/android/tools/r8/internal/tt0;-><init>(IIILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/tt0;->f:Lcom/android/tools/r8/internal/tt0;

    new-instance v0, Lcom/android/tools/r8/internal/tt0;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/android/tools/r8/internal/tt0;-><init>(IIILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/tt0;->g:Lcom/android/tools/r8/internal/tt0;

    new-instance v0, Lcom/android/tools/r8/internal/tt0;

    const/4 v1, 0x4

    invoke-direct {v0, v2, v2, v1, v3}, Lcom/android/tools/r8/internal/tt0;-><init>(IIILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/tt0;->h:Lcom/android/tools/r8/internal/tt0;

    new-instance v0, Lcom/android/tools/r8/internal/tt0;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/android/tools/r8/internal/tt0;-><init>(IIILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/tt0;->i:Lcom/android/tools/r8/internal/tt0;

    new-instance v0, Lcom/android/tools/r8/internal/tt0;

    const/4 v1, 0x6

    invoke-direct {v0, v2, v2, v1, v3}, Lcom/android/tools/r8/internal/tt0;-><init>(IIILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/tt0;->j:Lcom/android/tools/r8/internal/tt0;

    new-instance v0, Lcom/android/tools/r8/internal/tt0;

    const/4 v2, 0x7

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/android/tools/r8/internal/tt0;-><init>(IIILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/tt0;->k:Lcom/android/tools/r8/internal/tt0;

    new-instance v0, Lcom/android/tools/r8/internal/tt0;

    const/16 v1, 0x8

    invoke-direct {v0, v2, v2, v1, v3}, Lcom/android/tools/r8/internal/tt0;-><init>(IIILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/tt0;->l:Lcom/android/tools/r8/internal/tt0;

    new-instance v0, Lcom/android/tools/r8/internal/tt0;

    const/16 v2, 0x9

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/android/tools/r8/internal/tt0;-><init>(IIILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/tt0;->m:Lcom/android/tools/r8/internal/tt0;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/internal/tt0;->a:I

    iput-object p4, p0, Lcom/android/tools/r8/internal/tt0;->b:Ljava/lang/String;

    iput p2, p0, Lcom/android/tools/r8/internal/tt0;->c:I

    iput p3, p0, Lcom/android/tools/r8/internal/tt0;->d:I

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v1

    .line 36
    :goto_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x29

    if-eq v3, v4, :cond_2

    .line 37
    :goto_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5b

    if-ne v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v2, 0x1

    .line 38
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x4c

    if-ne v2, v4, :cond_1

    const/16 v2, 0x3b

    .line 39
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    add-int/2addr v2, v1

    .line 40
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_2

    :cond_1
    move v2, v3

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static a(Ljava/lang/String;II)Lcom/android/tools/r8/internal/tt0;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_8

    const/16 v1, 0x46

    if-eq v0, v1, :cond_7

    const/16 v1, 0x4c

    if-eq v0, v1, :cond_6

    const/16 v1, 0x53

    if-eq v0, v1, :cond_5

    const/16 v1, 0x56

    if-eq v0, v1, :cond_4

    const/16 v1, 0x49

    if-eq v0, v1, :cond_3

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 3
    const-string p2, "Invalid descriptor: "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :pswitch_0
    sget-object p0, Lcom/android/tools/r8/internal/tt0;->m:Lcom/android/tools/r8/internal/tt0;

    return-object p0

    .line 6
    :pswitch_1
    sget-object p0, Lcom/android/tools/r8/internal/tt0;->g:Lcom/android/tools/r8/internal/tt0;

    return-object p0

    .line 7
    :pswitch_2
    sget-object p0, Lcom/android/tools/r8/internal/tt0;->h:Lcom/android/tools/r8/internal/tt0;

    return-object p0

    .line 8
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/tt0;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p1, p2, p0}, Lcom/android/tools/r8/internal/tt0;-><init>(IIILjava/lang/String;)V

    return-object v0

    .line 9
    :cond_1
    sget-object p0, Lcom/android/tools/r8/internal/tt0;->f:Lcom/android/tools/r8/internal/tt0;

    return-object p0

    .line 10
    :cond_2
    sget-object p0, Lcom/android/tools/r8/internal/tt0;->l:Lcom/android/tools/r8/internal/tt0;

    return-object p0

    .line 11
    :cond_3
    sget-object p0, Lcom/android/tools/r8/internal/tt0;->j:Lcom/android/tools/r8/internal/tt0;

    return-object p0

    .line 12
    :cond_4
    sget-object p0, Lcom/android/tools/r8/internal/tt0;->e:Lcom/android/tools/r8/internal/tt0;

    return-object p0

    .line 13
    :cond_5
    sget-object p0, Lcom/android/tools/r8/internal/tt0;->i:Lcom/android/tools/r8/internal/tt0;

    return-object p0

    .line 14
    :cond_6
    new-instance v0, Lcom/android/tools/r8/internal/tt0;

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, -0x1

    const/16 v1, 0xa

    invoke-direct {v0, v1, p1, p2, p0}, Lcom/android/tools/r8/internal/tt0;-><init>(IIILjava/lang/String;)V

    return-object v0

    .line 15
    :cond_7
    sget-object p0, Lcom/android/tools/r8/internal/tt0;->k:Lcom/android/tools/r8/internal/tt0;

    return-object p0

    .line 16
    :cond_8
    new-instance v0, Lcom/android/tools/r8/internal/tt0;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p1, p2, p0}, Lcom/android/tools/r8/internal/tt0;-><init>(IIILjava/lang/String;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Ljava/lang/String;)[Lcom/android/tools/r8/internal/tt0;
    .locals 7

    .line 1
    invoke-static {p0}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;)I

    move-result v0

    .line 2
    new-array v0, v0, [Lcom/android/tools/r8/internal/tt0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v1

    .line 3
    :goto_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x29

    if-eq v4, v5, :cond_2

    move v4, v3

    .line 4
    :goto_1
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5b

    if-ne v5, v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v4, 0x1

    .line 5
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x4c

    if-ne v4, v6, :cond_1

    const/16 v4, 0x3b

    .line 6
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    add-int/2addr v4, v1

    .line 7
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_1
    add-int/lit8 v4, v2, 0x1

    .line 8
    invoke-static {p0, v3, v5}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;II)Lcom/android/tools/r8/internal/tt0;

    move-result-object v3

    aput-object v3, v0, v2

    move v2, v4

    move v3, v5

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static c(Ljava/lang/String;)I
    .locals 7

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v2, v0

    move v3, v2

    :goto_0
    const/16 v4, 0x29

    const/16 v5, 0x44

    const/16 v6, 0x4a

    if-eq v1, v4, :cond_4

    if-eq v1, v6, :cond_3

    if-ne v1, v5, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    :goto_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x5b

    if-ne v1, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v2, 0x1

    .line 4
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x4c

    if-ne v2, v4, :cond_2

    const/16 v2, 0x3b

    .line 5
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    add-int/2addr v2, v0

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    goto :goto_3

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x2

    .line 7
    :goto_3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0

    :cond_4
    add-int/2addr v2, v0

    .line 8
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v1, 0x56

    const/4 v2, 0x2

    if-ne p0, v1, :cond_5

    shl-int/lit8 p0, v3, 0x2

    return p0

    :cond_5
    if-eq p0, v6, :cond_6

    if-ne p0, v5, :cond_7

    :cond_6
    move v0, v2

    :cond_7
    shl-int/lit8 p0, v3, 0x2

    or-int/2addr p0, v0

    return p0
.end method

.method public static d(Ljava/lang/String;)Lcom/android/tools/r8/internal/tt0;
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/tt0;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_0

    const/16 v2, 0x9

    goto :goto_0

    :cond_0
    const/16 v2, 0xc

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v0, v2, v1, v3, p0}, Lcom/android/tools/r8/internal/tt0;-><init>(IIILjava/lang/String;)V

    return-object v0
.end method

.method public static e(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x29

    if-eq v2, v3, :cond_2

    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x4c

    if-ne v1, v3, :cond_1

    const/16 v1, 0x3b

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    add-int/2addr v1, v0

    return v1
.end method

.method public static f(Ljava/lang/String;)Lcom/android/tools/r8/internal/tt0;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;II)Lcom/android/tools/r8/internal/tt0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 6

    .line 17
    iget v0, p0, Lcom/android/tools/r8/internal/tt0;->a:I

    packed-switch v0, :pswitch_data_0

    .line 18
    :pswitch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 19
    :pswitch_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/tt0;->b:Ljava/lang/String;

    iget v1, p0, Lcom/android/tools/r8/internal/tt0;->c:I

    iget v2, p0, Lcom/android/tools/r8/internal/tt0;->d:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 20
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    move v2, v1

    .line 21
    :goto_0
    iget-object v3, p0, Lcom/android/tools/r8/internal/tt0;->b:Ljava/lang/String;

    iget v4, p0, Lcom/android/tools/r8/internal/tt0;->c:I

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5b

    if-ne v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 22
    :cond_0
    iget-object v3, p0, Lcom/android/tools/r8/internal/tt0;->b:Ljava/lang/String;

    iget v5, p0, Lcom/android/tools/r8/internal/tt0;->c:I

    add-int/2addr v5, v2

    iget v2, p0, Lcom/android/tools/r8/internal/tt0;->d:I

    invoke-static {v3, v5, v2}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;II)Lcom/android/tools/r8/internal/tt0;

    move-result-object v2

    .line 23
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/tt0;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    :goto_1
    iget-object v2, p0, Lcom/android/tools/r8/internal/tt0;->b:Ljava/lang/String;

    iget v3, p0, Lcom/android/tools/r8/internal/tt0;->c:I

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-lez v1, :cond_2

    .line 25
    const-string v2, "[]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 26
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 27
    :pswitch_3
    const-string v0, "double"

    return-object v0

    .line 28
    :pswitch_4
    const-string v0, "long"

    return-object v0

    .line 29
    :pswitch_5
    const-string v0, "float"

    return-object v0

    .line 30
    :pswitch_6
    const-string v0, "int"

    return-object v0

    .line 31
    :pswitch_7
    const-string v0, "short"

    return-object v0

    .line 32
    :pswitch_8
    const-string v0, "byte"

    return-object v0

    .line 33
    :pswitch_9
    const-string v0, "char"

    return-object v0

    .line 34
    :pswitch_a
    const-string v0, "boolean"

    return-object v0

    .line 35
    :pswitch_b
    const-string v0, "void"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    .line 9
    iget v0, p0, Lcom/android/tools/r8/internal/tt0;->a:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/tt0;->b:Ljava/lang/String;

    iget v1, p0, Lcom/android/tools/r8/internal/tt0;->c:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/tools/r8/internal/tt0;->d:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/tt0;->b:Ljava/lang/String;

    iget v1, p0, Lcom/android/tools/r8/internal/tt0;->c:I

    iget v2, p0, Lcom/android/tools/r8/internal/tt0;->d:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 12
    const-string v1, "L"

    const-string v2, ";"

    invoke-static {v1, v0, v2}, Lcom/android/tools/r8/internal/Be0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/tt0;->b:Ljava/lang/String;

    iget v1, p0, Lcom/android/tools/r8/internal/tt0;->c:I

    iget v2, p0, Lcom/android/tools/r8/internal/tt0;->d:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/tools/r8/internal/tt0;->a:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/16 v0, 0xa

    :cond_0
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/tt0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/tt0;

    iget v1, p0, Lcom/android/tools/r8/internal/tt0;->a:I

    const/16 v3, 0xa

    const/16 v4, 0xc

    if-ne v1, v4, :cond_2

    move v1, v3

    :cond_2
    iget v5, p1, Lcom/android/tools/r8/internal/tt0;->a:I

    if-ne v5, v4, :cond_3

    goto :goto_0

    :cond_3
    move v3, v5

    :goto_0
    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/android/tools/r8/internal/tt0;->c:I

    iget v3, p0, Lcom/android/tools/r8/internal/tt0;->d:I

    iget v4, p1, Lcom/android/tools/r8/internal/tt0;->c:I

    iget v5, p1, Lcom/android/tools/r8/internal/tt0;->d:I

    sub-int v6, v3, v1

    sub-int/2addr v5, v4

    if-eq v6, v5, :cond_5

    return v2

    :cond_5
    :goto_1
    if-ge v1, v3, :cond_7

    iget-object v5, p0, Lcom/android/tools/r8/internal/tt0;->b:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iget-object v6, p1, Lcom/android/tools/r8/internal/tt0;->b:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_6

    return v2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lcom/android/tools/r8/internal/tt0;->a:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    mul-int/lit8 v1, v1, 0xd

    const/16 v2, 0x9

    if-lt v0, v2, :cond_1

    iget v0, p0, Lcom/android/tools/r8/internal/tt0;->c:I

    iget v2, p0, Lcom/android/tools/r8/internal/tt0;->d:I

    :goto_1
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/android/tools/r8/internal/tt0;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/2addr v3, v1

    mul-int/lit8 v1, v3, 0x11

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/tt0;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
