.class public final Lcom/android/tools/r8/Y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/ParseFlagInfo;


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/List;

.field public final c:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/Y;->d:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    if-eqz p3, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    iput-object p1, p0, Lcom/android/tools/r8/Y;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/tools/r8/Y;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/android/tools/r8/Y;->c:Ljava/util/List;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/android/tools/r8/Y;
    .locals 2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Print the version of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 5
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v1, "--version"

    invoke-static {v1, v0, p0}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;
    .locals 3

    .line 19
    new-instance v0, Lcom/android/tools/r8/Y;

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 22
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 24
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/Y;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public static a(Z)Lcom/android/tools/r8/Y;
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    const-string p0, " (default)"

    goto :goto_0

    :cond_0
    const-string p0, ""

    .line 2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Compile with debugging information"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 3
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v1, "--debug"

    invoke-static {v1, v0, p0}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object p0

    return-object p0
.end method

.method public static a()Lcom/android/tools/r8/internal/hC;
    .locals 13

    .line 6
    const-string v0, "Forcefully enable javac generated assertion code."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/android/tools/r8/Y;

    .line 8
    const-string v2, "--force-ea[:[<class name>|<package name>...]]"

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v3, "--force-enable-assertions[:[<class name>|<package name>...]]"

    invoke-direct {v1, v3, v2, v0}, Lcom/android/tools/r8/Y;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 9
    const-string v0, "This is the default handling of javac assertion code"

    const-string v2, "when generating DEX file format."

    const-string v3, "Forcefully disable javac generated assertion code."

    filled-new-array {v3, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 10
    new-instance v2, Lcom/android/tools/r8/Y;

    .line 11
    const-string v3, "--force-da[:[<class name>|<package name>...]]"

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v4, "--force-disable-assertions[:[<class name>|<package name>...]]"

    invoke-direct {v2, v4, v3, v0}, Lcom/android/tools/r8/Y;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 12
    const-string v0, "is the default handling of javac assertion code when"

    const-string v3, "generating class file format."

    const-string v4, "Don\'t change javac generated assertion code. This"

    filled-new-array {v4, v0, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 13
    new-instance v3, Lcom/android/tools/r8/Y;

    .line 14
    const-string v4, "--force-pa[:[<class name>|<package name>...]]"

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v5, "--force-passthrough-assertions[:[<class name>|<package name>...]]"

    invoke-direct {v3, v5, v4, v0}, Lcom/android/tools/r8/Y;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 15
    const-string v11, "The handler method must take a single argument of"

    const-string v12, "type java.lang.Throwable and have return type void."

    const-string v6, "Change javac and kotlinc generated assertion code"

    const-string v7, "to invoke the method <handler method> with each"

    const-string v8, "assertion error instead of throwing it."

    const-string v9, "The <handler method> is specified as a class name"

    const-string v10, "followed by a dot and the method name."

    filled-new-array/range {v6 .. v12}, [Ljava/lang/String;

    move-result-object v0

    .line 16
    new-instance v4, Lcom/android/tools/r8/Y;

    .line 17
    const-string v5, "--force-ah:<handler method>[:[<class name>|<package name>...]]"

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v6, "--force-assertions-handler:<handler method>[:[<class name>|<package name>...]]"

    invoke-direct {v4, v6, v5, v0}, Lcom/android/tools/r8/Y;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 18
    invoke-static {v1, v2, v3, v4}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lcom/android/tools/r8/Y;
    .locals 3

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Compile program to DEX file format"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (default)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 5
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v2, "--dex"

    invoke-static {v2, v1, v0}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v0

    return-object v0
.end method

.method public static b(Z)Lcom/android/tools/r8/Y;
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    const-string p0, " (default)"

    goto :goto_0

    :cond_0
    const-string p0, ""

    .line 2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Compile without debugging information"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 3
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v1, "--release"

    invoke-static {v1, v0, p0}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object p0

    return-object p0
.end method

.method public static c()Lcom/android/tools/r8/Y;
    .locals 3

    const-string v0, "Print this message."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v2, "--help"

    invoke-static {v2, v1, v0}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v0

    return-object v0
.end method

.method public static d()Lcom/android/tools/r8/Y;
    .locals 8

    const-string v6, "<from-level> will be mapped."

    const-string v7, "Note that fatal compiler errors cannot be mapped."

    const-string v0, "Map diagnostics of <type> (default any) reported as"

    const-string v1, "<from-level> to <to-level> where <from-level> and"

    const-string v2, "<to-level> are one of \'info\', \'warning\', or \'error\'"

    const-string v3, "and the optional <type> is either the simple or"

    const-string v4, "fully qualified Java type name of a diagnostic."

    const-string v5, "If <type> is unspecified, all diagnostics at "

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "<from-level>"

    const-string v2, "<to-level>"

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v2, "--map-diagnostics[:<type>]"

    invoke-static {v2, v1, v0}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v0

    return-object v0
.end method

.method public static e()Lcom/android/tools/r8/Y;
    .locals 3

    invoke-static {}, Lcom/android/tools/r8/internal/C2;->b()Lcom/android/tools/r8/internal/C2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/C2;->d()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Minimum Android API level compatibility (default: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "<number>"

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v2, "--min-api"

    invoke-static {v2, v1, v0}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getFlagFormat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/Y;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getFlagFormatAlternatives()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/Y;->b:Ljava/util/List;

    return-object v0
.end method

.method public final getFlagHelp()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/Y;->c:Ljava/util/List;

    return-object v0
.end method
