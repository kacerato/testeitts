.class public Lcom/android/tools/r8/internal/HA;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/internal/HA$a;
    }
.end annotation


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Ljava/util/function/Consumer;

.field public final b:Lcom/android/tools/r8/profile/art/ArtProfileBuilder;

.field public final c:Lcom/android/tools/r8/profile/art/ArtProfileRulePredicate;

.field public final d:Lcom/android/tools/r8/internal/Ef0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Consumer;Lcom/android/tools/r8/profile/art/ArtProfileBuilder;Lcom/android/tools/r8/profile/art/ArtProfileRulePredicate;Lcom/android/tools/r8/internal/Ef0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/HA;->a:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/android/tools/r8/internal/HA;->b:Lcom/android/tools/r8/profile/art/ArtProfileBuilder;

    iput-object p3, p0, Lcom/android/tools/r8/internal/HA;->c:Lcom/android/tools/r8/profile/art/ArtProfileRulePredicate;

    iput-object p4, p0, Lcom/android/tools/r8/internal/HA;->d:Lcom/android/tools/r8/internal/Ef0;

    return-void
.end method

.method public static a()Lcom/android/tools/r8/internal/HA$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/HA$a;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/HA$a;-><init>()V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/android/tools/r8/internal/r4$a;)Ljava/lang/String;
    .locals 7

    .line 19
    new-instance v0, Lcom/android/tools/r8/internal/Mb;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Mb;-><init>()V

    .line 20
    :goto_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/internal/IG0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/IG0;-><init>(Lcom/android/tools/r8/internal/r4$a;)V

    .line 21
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x48

    if-ne v2, v5, :cond_0

    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/Mb;->a(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 22
    invoke-interface {v1}, Lcom/android/tools/r8/internal/b2;->a()V

    .line 23
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    move-object v1, p0

    .line 24
    :goto_1
    new-instance v2, Lcom/android/tools/r8/internal/JG0;

    invoke-direct {v2, p1}, Lcom/android/tools/r8/internal/JG0;-><init>(Lcom/android/tools/r8/internal/r4$a;)V

    .line 25
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x53

    if-ne v5, v6, :cond_1

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/internal/Mb;->a(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 26
    invoke-interface {v2}, Lcom/android/tools/r8/internal/b2;->a()V

    .line 27
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 28
    :cond_1
    new-instance v2, Lcom/android/tools/r8/internal/KG0;

    invoke-direct {v2, p1}, Lcom/android/tools/r8/internal/KG0;-><init>(Lcom/android/tools/r8/internal/r4$a;)V

    .line 29
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x50

    if-ne v4, v5, :cond_2

    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/Mb;->a(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 30
    invoke-interface {v2}, Lcom/android/tools/r8/internal/b2;->a()V

    .line 31
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 32
    :cond_2
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v1

    :cond_3
    move-object p0, v1

    goto :goto_0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/r4;Lcom/android/tools/r8/profile/art/ArtProfileMethodRuleInfoBuilder;)V
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/r4;->isHot()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/tools/r8/profile/art/ArtProfileMethodRuleInfoBuilder;->setIsHot(Z)Lcom/android/tools/r8/profile/art/ArtProfileMethodRuleInfoBuilder;

    move-result-object p1

    .line 57
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/r4;->isStartup()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/tools/r8/profile/art/ArtProfileMethodRuleInfoBuilder;->setIsStartup(Z)Lcom/android/tools/r8/profile/art/ArtProfileMethodRuleInfoBuilder;

    move-result-object p1

    .line 58
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/r4;->isPostStartup()Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/tools/r8/profile/art/ArtProfileMethodRuleInfoBuilder;->setIsPostStartup(Z)Lcom/android/tools/r8/profile/art/ArtProfileMethodRuleInfoBuilder;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/references/ClassReference;Lcom/android/tools/r8/profile/art/ArtProfileClassRuleBuilder;)V
    .locals 0

    .line 43
    invoke-interface {p1, p0}, Lcom/android/tools/r8/profile/art/ArtProfileClassRuleBuilder;->setClassReference(Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/profile/art/ArtProfileClassRuleBuilder;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/references/MethodReference;Lcom/android/tools/r8/internal/r4;Lcom/android/tools/r8/profile/art/ArtProfileMethodRuleBuilder;)V
    .locals 0

    .line 54
    invoke-interface {p2, p0}, Lcom/android/tools/r8/profile/art/ArtProfileMethodRuleBuilder;->setMethodReference(Lcom/android/tools/r8/references/MethodReference;)Lcom/android/tools/r8/profile/art/ArtProfileMethodRuleBuilder;

    move-result-object p0

    new-instance p2, Lcom/android/tools/r8/internal/LG0;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/LG0;-><init>(Lcom/android/tools/r8/internal/r4;)V

    .line 55
    invoke-interface {p0, p2}, Lcom/android/tools/r8/profile/art/ArtProfileMethodRuleBuilder;->setMethodRuleInfo(Ljava/util/function/Consumer;)Lcom/android/tools/r8/profile/art/ArtProfileMethodRuleBuilder;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/TextInputStream;Lcom/android/tools/r8/origin/Origin;)V
    .locals 6

    .line 2
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    .line 3
    invoke-interface {p1}, Lcom/android/tools/r8/TextInputStream;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/tools/r8/TextInputStream;->getCharset()Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x1

    .line 5
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->ready()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x23

    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, 0x0

    if-ltz v3, :cond_0

    .line 8
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/tools/r8/internal/GG0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_3

    :cond_0
    move-object v3, v2

    .line 9
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 10
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_1

    .line 11
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/HA;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 12
    iget-object v3, p0, Lcom/android/tools/r8/internal/HA;->a:Ljava/util/function/Consumer;

    if-eqz v3, :cond_2

    .line 13
    new-instance v4, Lcom/android/tools/r8/profile/art/diagnostic/HumanReadableArtProfileParserErrorDiagnostic;

    invoke-direct {v4, v2, v1, p2}, Lcom/android/tools/r8/profile/art/diagnostic/HumanReadableArtProfileParserErrorDiagnostic;-><init>(Ljava/lang/String;ILcom/android/tools/r8/origin/Origin;)V

    invoke-interface {v3, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 14
    :cond_3
    :try_start_3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    .line 15
    iget-object p1, p0, Lcom/android/tools/r8/internal/HA;->d:Lcom/android/tools/r8/internal/Ef0;

    if-eqz p1, :cond_4

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ef0;->a()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_7

    :cond_4
    return-void

    :catchall_1
    move-exception p1

    goto :goto_5

    .line 17
    :goto_3
    :try_start_5
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p1

    :try_start_6
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_5
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception p2

    :try_start_8
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 18
    :goto_7
    new-instance p2, Ljava/io/UncheckedIOException;

    invoke-direct {p2, p1}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 4

    .line 33
    sget-object v0, Lcom/android/tools/r8/internal/Bl;->a:Lcom/android/tools/r8/internal/nC;

    const/4 v0, -0x1

    :goto_0
    add-int/lit8 v1, v0, 0x1

    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    :goto_1
    if-ltz v0, :cond_2

    .line 35
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 36
    :cond_2
    invoke-static {p1}, Lcom/android/tools/r8/internal/Bl;->B(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 p1, 0x0

    return p1

    .line 37
    :cond_3
    invoke-static {p1}, Lcom/android/tools/r8/references/Reference;->typeFromDescriptor(Ljava/lang/String;)Lcom/android/tools/r8/references/TypeReference;

    move-result-object p1

    .line 38
    sget-boolean v0, Lcom/android/tools/r8/internal/HA;->e:Z

    if-nez v0, :cond_5

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    .line 39
    invoke-interface {p1}, Lcom/android/tools/r8/references/TypeReference;->isClass()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 40
    :cond_7
    :goto_3
    invoke-interface {p1}, Lcom/android/tools/r8/references/TypeReference;->asClass()Lcom/android/tools/r8/references/ClassReference;

    move-result-object p1

    .line 41
    iget-object v0, p0, Lcom/android/tools/r8/internal/HA;->c:Lcom/android/tools/r8/profile/art/ArtProfileRulePredicate;

    sget-object v1, Lcom/android/tools/r8/internal/k4;->a:Lcom/android/tools/r8/internal/k4;

    invoke-interface {v0, p1, v1}, Lcom/android/tools/r8/profile/art/ArtProfileRulePredicate;->testClassRule(Lcom/android/tools/r8/references/ClassReference;Lcom/android/tools/r8/profile/art/ArtProfileClassRuleInfo;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 42
    iget-object v0, p0, Lcom/android/tools/r8/internal/HA;->b:Lcom/android/tools/r8/profile/art/ArtProfileBuilder;

    new-instance v1, Lcom/android/tools/r8/internal/HG0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/HG0;-><init>(Lcom/android/tools/r8/references/ClassReference;)V

    invoke-interface {v0, v1}, Lcom/android/tools/r8/profile/art/ArtProfileBuilder;->addClassRule(Ljava/util/function/Consumer;)Lcom/android/tools/r8/profile/art/ArtProfileBuilder;

    :cond_8
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Ljava/lang/String;Lcom/android/tools/r8/internal/r4;I)Z
    .locals 2

    add-int/lit8 v0, p3, 0x2

    const/16 v1, 0x2b

    .line 44
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 45
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 46
    :cond_0
    invoke-static {p3, p1}, Lcom/android/tools/r8/internal/hX;->a(ILjava/lang/String;)Lcom/android/tools/r8/references/MethodReference;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    .line 47
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/references/MethodReference;->getHolderClass()Lcom/android/tools/r8/references/ClassReference;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/references/ClassReference;->getDescriptor()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/tools/r8/internal/Bl;->B(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_2

    return v1

    .line 48
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/references/MethodReference;->getFormalTypes()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/references/TypeReference;

    .line 49
    invoke-interface {v0}, Lcom/android/tools/r8/references/TypeReference;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/Bl;->C(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 50
    :cond_4
    invoke-virtual {p1}, Lcom/android/tools/r8/references/MethodReference;->getReturnType()Lcom/android/tools/r8/references/TypeReference;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 51
    invoke-virtual {p1}, Lcom/android/tools/r8/references/MethodReference;->getReturnType()Lcom/android/tools/r8/references/TypeReference;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/tools/r8/references/TypeReference;->getDescriptor()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/tools/r8/internal/Bl;->C(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_5

    return v1

    .line 52
    :cond_5
    iget-object p3, p0, Lcom/android/tools/r8/internal/HA;->c:Lcom/android/tools/r8/profile/art/ArtProfileRulePredicate;

    invoke-interface {p3, p1, p2}, Lcom/android/tools/r8/profile/art/ArtProfileRulePredicate;->testMethodRule(Lcom/android/tools/r8/references/MethodReference;Lcom/android/tools/r8/profile/art/ArtProfileMethodRuleInfo;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 53
    iget-object p3, p0, Lcom/android/tools/r8/internal/HA;->b:Lcom/android/tools/r8/profile/art/ArtProfileBuilder;

    new-instance v0, Lcom/android/tools/r8/internal/MG0;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/MG0;-><init>(Lcom/android/tools/r8/references/MethodReference;Lcom/android/tools/r8/internal/r4;)V

    invoke-interface {p3, v0}, Lcom/android/tools/r8/profile/art/ArtProfileBuilder;->addMethodRule(Ljava/util/function/Consumer;)Lcom/android/tools/r8/profile/art/ArtProfileBuilder;

    :cond_6
    const/4 p1, 0x1

    return p1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/tools/r8/internal/r4;->a()Lcom/android/tools/r8/internal/r4$a;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/HA;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/r4$a;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/r4$a;->a()Lcom/android/tools/r8/internal/r4;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/tools/r8/internal/HA;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/r4;I)Z

    move-result p1

    return p1

    :cond_0
    iget v1, v1, Lcom/android/tools/r8/internal/r4;->a:I

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/HA;->a(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    :cond_1
    return v0
.end method
