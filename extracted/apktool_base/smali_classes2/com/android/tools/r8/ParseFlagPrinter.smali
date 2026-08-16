.class public Lcom/android/tools/r8/ParseFlagPrinter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic g:Z = true


# instance fields
.field private final a:Ljava/util/ArrayList;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/StringBuilder;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/ParseFlagPrinter;->a:Ljava/util/ArrayList;

    const-string v0, "  "

    iput-object v0, p0, Lcom/android/tools/r8/ParseFlagPrinter;->b:Ljava/lang/String;

    const/16 v0, 0x19

    iput v0, p0, Lcom/android/tools/r8/ParseFlagPrinter;->c:I

    const-string v0, " # "

    iput-object v0, p0, Lcom/android/tools/r8/ParseFlagPrinter;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/ParseFlagPrinter;->e:Ljava/lang/StringBuilder;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/ParseFlagPrinter;->f:I

    return-void
.end method

.method private a()V
    .locals 6

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/ParseFlagPrinter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/tools/r8/ParseFlagInfo;

    .line 11
    invoke-interface {v3}, Lcom/android/tools/r8/ParseFlagInfo;->getFlagFormat()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/tools/r8/ParseFlagPrinter;->a(Ljava/lang/String;)V

    .line 12
    invoke-interface {v3}, Lcom/android/tools/r8/ParseFlagInfo;->getFlagFormatAlternatives()Ljava/util/List;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/A2;

    invoke-direct {v5, p0}, Lcom/android/tools/r8/A2;-><init>(Lcom/android/tools/r8/ParseFlagPrinter;)V

    invoke-interface {v4, v5}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 13
    invoke-interface {v3}, Lcom/android/tools/r8/ParseFlagInfo;->getFlagHelp()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/android/tools/r8/B2;

    invoke-direct {v4, p0}, Lcom/android/tools/r8/B2;-><init>(Lcom/android/tools/r8/ParseFlagPrinter;)V

    invoke-interface {v3, v4}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/ParseFlagPrinter;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/ParseFlagPrinter;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/android/tools/r8/ParseFlagPrinter;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    sget-boolean v0, Lcom/android/tools/r8/ParseFlagPrinter;->g:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/tools/r8/ParseFlagPrinter;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/ParseFlagPrinter;->e:Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/tools/r8/internal/zq0;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/tools/r8/ParseFlagPrinter;->f:I

    .line 6
    :cond_2
    sget-boolean v0, Lcom/android/tools/r8/ParseFlagPrinter;->g:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/tools/r8/ParseFlagPrinter;->b()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/android/tools/r8/ParseFlagPrinter;->f:I

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/ParseFlagPrinter;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/ParseFlagPrinter;->c(Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, p1}, Lcom/android/tools/r8/ParseFlagPrinter;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/ParseFlagPrinter;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/ParseFlagPrinter;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    .line 3
    iget v0, p0, Lcom/android/tools/r8/ParseFlagPrinter;->f:I

    iget v1, p0, Lcom/android/tools/r8/ParseFlagPrinter;->c:I

    const/4 v2, -0x1

    if-le v0, v1, :cond_2

    .line 4
    sget-boolean v0, Lcom/android/tools/r8/ParseFlagPrinter;->g:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/tools/r8/ParseFlagPrinter;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/ParseFlagPrinter;->e:Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/tools/r8/internal/zq0;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iput v2, p0, Lcom/android/tools/r8/ParseFlagPrinter;->f:I

    .line 7
    :cond_2
    invoke-direct {p0}, Lcom/android/tools/r8/ParseFlagPrinter;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 8
    sget-boolean v0, Lcom/android/tools/r8/ParseFlagPrinter;->g:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/tools/r8/ParseFlagPrinter;->b()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_4
    :goto_1
    iput v1, p0, Lcom/android/tools/r8/ParseFlagPrinter;->f:I

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/ParseFlagPrinter;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/ParseFlagPrinter;->c(Ljava/lang/String;)V

    .line 11
    :cond_5
    iget v0, p0, Lcom/android/tools/r8/ParseFlagPrinter;->c:I

    iget v3, p0, Lcom/android/tools/r8/ParseFlagPrinter;->f:I

    sub-int/2addr v0, v3

    .line 12
    sget-boolean v3, Lcom/android/tools/r8/ParseFlagPrinter;->g:Z

    if-nez v3, :cond_7

    invoke-direct {p0}, Lcom/android/tools/r8/ParseFlagPrinter;->b()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_2
    if-ge v1, v0, :cond_8

    .line 13
    iget-object v3, p0, Lcom/android/tools/r8/ParseFlagPrinter;->e:Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 14
    :cond_8
    iget v1, p0, Lcom/android/tools/r8/ParseFlagPrinter;->f:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/tools/r8/ParseFlagPrinter;->f:I

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/ParseFlagPrinter;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/ParseFlagPrinter;->c(Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1}, Lcom/android/tools/r8/ParseFlagPrinter;->c(Ljava/lang/String;)V

    .line 17
    sget-boolean p1, Lcom/android/tools/r8/ParseFlagPrinter;->g:Z

    if-nez p1, :cond_a

    invoke-direct {p0}, Lcom/android/tools/r8/ParseFlagPrinter;->b()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_3

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 18
    :cond_a
    :goto_3
    iget-object p1, p0, Lcom/android/tools/r8/ParseFlagPrinter;->e:Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/tools/r8/internal/zq0;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iput v2, p0, Lcom/android/tools/r8/ParseFlagPrinter;->f:I

    return-void
.end method

.method private b()Z
    .locals 1

    .line 2
    iget v0, p0, Lcom/android/tools/r8/ParseFlagPrinter;->f:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/ParseFlagPrinter;->g:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/tools/r8/ParseFlagPrinter;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/ParseFlagPrinter;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/tools/r8/ParseFlagPrinter;->f:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/tools/r8/ParseFlagPrinter;->f:I

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0

    const-string p0, "--help"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/D8;->main([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addFlags(Ljava/util/List;)Lcom/android/tools/r8/ParseFlagPrinter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/ParseFlagInfo;",
            ">;)",
            "Lcom/android/tools/r8/ParseFlagPrinter;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/ParseFlagPrinter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public appendLinesToBuilder(Ljava/lang/StringBuilder;)V
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/ParseFlagPrinter;->g:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/ParseFlagPrinter;->e:Ljava/lang/StringBuilder;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 v1, -0x1

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/tools/r8/ParseFlagPrinter;->f:I

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/android/tools/r8/ParseFlagPrinter;->e:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/tools/r8/ParseFlagPrinter;->a()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/tools/r8/ParseFlagPrinter;->e:Ljava/lang/StringBuilder;

    iput v1, p0, Lcom/android/tools/r8/ParseFlagPrinter;->f:I

    return-void
.end method

.method public setHelpColumn(I)Lcom/android/tools/r8/ParseFlagPrinter;
    .locals 0

    iput p1, p0, Lcom/android/tools/r8/ParseFlagPrinter;->c:I

    return-object p0
.end method

.method public setHelpSeparator(Ljava/lang/String;)Lcom/android/tools/r8/ParseFlagPrinter;
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/ParseFlagPrinter;->d:Ljava/lang/String;

    return-object p0
.end method

.method public setIndent(I)Lcom/android/tools/r8/ParseFlagPrinter;
    .locals 1

    const-string v0, " "

    invoke-static {v0, p1}, Lcom/android/tools/r8/z2;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/ParseFlagPrinter;->setPrefix(Ljava/lang/String;)Lcom/android/tools/r8/ParseFlagPrinter;

    move-result-object p1

    return-object p1
.end method

.method public setPrefix(Ljava/lang/String;)Lcom/android/tools/r8/ParseFlagPrinter;
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/ParseFlagPrinter;->b:Ljava/lang/String;

    return-object p0
.end method
