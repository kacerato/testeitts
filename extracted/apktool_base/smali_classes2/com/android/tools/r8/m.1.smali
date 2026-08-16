.class public abstract Lcom/android/tools/r8/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/BaseCompilerCommand$Builder;Ljava/lang/String;[Ljava/lang/String;ILcom/android/tools/r8/origin/Origin;)I
    .locals 4

    .line 49
    const-string v0, "--dumpinputtofile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "--dumpinputtodirectory"

    if-nez v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 50
    :cond_0
    array-length v1, p2

    add-int/lit8 v3, p3, 0x1

    if-gt v1, v3, :cond_1

    .line 51
    new-instance v0, Lcom/android/tools/r8/utils/StringDiagnostic;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing argument(s) for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p4}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/BaseCommand$Builder;->error(Lcom/android/tools/r8/Diagnostic;)V

    .line 52
    array-length p0, p2

    sub-int/2addr p0, p3

    return p0

    .line 53
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_2

    .line 54
    aget-object p1, p2, v3

    new-array p2, p4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->d(Ljava/nio/file/Path;)V

    goto :goto_1

    .line 55
    :cond_2
    sget-boolean p3, Lcom/android/tools/r8/m;->a:Z

    if-nez p3, :cond_4

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 56
    :cond_4
    :goto_0
    aget-object p1, p2, v3

    new-array p2, p4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->c(Ljava/nio/file/Path;)V

    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/Ef0;Ljava/lang/String;[Ljava/lang/String;ILcom/android/tools/r8/origin/Origin;)I
    .locals 7

    .line 35
    const-string v0, "--map-diagnostics"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 36
    :cond_0
    array-length v0, p3

    add-int/lit8 v1, p4, 0x2

    const-string v2, "."

    if-gt v0, v1, :cond_1

    .line 37
    new-instance p1, Lcom/android/tools/r8/utils/StringDiagnostic;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing argument(s) for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p5}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 38
    array-length p0, p3

    sub-int/2addr p0, p4

    return p0

    :cond_1
    const/16 v0, 0x11

    .line 39
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-lez v3, :cond_4

    .line 41
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x0

    if-eq v3, v4, :cond_3

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x3a

    if-eq v3, v6, :cond_2

    goto :goto_0

    .line 42
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 43
    :cond_3
    :goto_0
    new-instance p1, Lcom/android/tools/r8/utils/StringDiagnostic;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid diagnostics type specification "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p5}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return v5

    .line 44
    :cond_4
    const-string p2, ""

    :goto_1
    add-int/2addr p4, v4

    .line 45
    aget-object p4, p3, p4

    invoke-static {p0, p4, p5}, Lcom/android/tools/r8/m;->a(Ljava/util/function/Consumer;Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/DiagnosticsLevel;

    move-result-object p4

    .line 46
    aget-object p3, p3, v1

    invoke-static {p0, p3, p5}, Lcom/android/tools/r8/m;->a(Ljava/util/function/Consumer;Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/DiagnosticsLevel;

    move-result-object p0

    if-eqz p4, :cond_5

    if-eqz p0, :cond_5

    .line 47
    iget-object p1, p1, Lcom/android/tools/r8/internal/Ef0;->b:Ljava/util/ArrayList;

    .line 48
    new-instance p3, Lcom/android/tools/r8/internal/Df0;

    invoke-direct {p3, p4, p0, p2}, Lcom/android/tools/r8/internal/Df0;-><init>(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/DiagnosticsLevel;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const/4 p0, 0x2

    return p0
.end method

.method public static a(Ljava/util/function/Consumer;Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/DiagnosticsLevel;
    .locals 3

    .line 26
    const-string v0, "error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    sget-object p0, Lcom/android/tools/r8/DiagnosticsLevel;->ERROR:Lcom/android/tools/r8/DiagnosticsLevel;

    return-object p0

    .line 28
    :cond_0
    const-string v0, "warning"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    sget-object p0, Lcom/android/tools/r8/DiagnosticsLevel;->WARNING:Lcom/android/tools/r8/DiagnosticsLevel;

    return-object p0

    .line 30
    :cond_1
    const-string v0, "info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31
    sget-object p0, Lcom/android/tools/r8/DiagnosticsLevel;->INFO:Lcom/android/tools/r8/DiagnosticsLevel;

    return-object p0

    .line 32
    :cond_2
    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 33
    sget-object p0, Lcom/android/tools/r8/DiagnosticsLevel;->NONE:Lcom/android/tools/r8/DiagnosticsLevel;

    return-object p0

    .line 34
    :cond_3
    new-instance v0, Lcom/android/tools/r8/utils/StringDiagnostic;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid diagnostics level \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'. Valid levels are \'error\', \'warning\', \'info\' and \'none\'."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/BaseCompilerCommand$Builder;Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 57
    new-array v2, v1, [Ljava/lang/String;

    invoke-static {p2, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p2

    .line 58
    const-string v2, "lib"

    invoke-interface {p2, v2}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    const-string v4, "jrt-fs.jar"

    invoke-interface {v3, v4}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    .line 59
    new-array v4, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v3, v4}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    const-string v3, "jre"

    invoke-interface {p2, v3}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    const-string v4, "rt.jar"

    invoke-interface {v3, v4}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    .line 61
    new-array v5, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v3, v5}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    move v2, v0

    goto :goto_1

    .line 62
    :cond_1
    invoke-interface {p2, v2}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    .line 63
    new-array v3, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v2, v3}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    :goto_1
    if-eqz v2, :cond_2

    .line 64
    :try_start_0
    invoke-static {p2}, Lcom/android/tools/r8/JdkClassFileProvider;->fromJdkHome(Ljava/nio/file/Path;)Lcom/android/tools/r8/ClassFileResourceProvider;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/BaseCommand$Builder;->addLibraryResourceProvider(Lcom/android/tools/r8/ClassFileResourceProvider;)Lcom/android/tools/r8/BaseCommand$Builder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 65
    new-instance v0, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    invoke-direct {v0, p2, p1}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/BaseCommand$Builder;->error(Lcom/android/tools/r8/Diagnostic;)V

    return-void

    .line 66
    :cond_2
    new-array p1, v0, [Ljava/nio/file/Path;

    aput-object p2, p1, v1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/BaseCommand$Builder;->addLibraryFiles([Ljava/nio/file/Path;)Lcom/android/tools/r8/BaseCommand$Builder;

    return-void
.end method

.method public static a(Ljava/util/function/Consumer;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Ljava/util/function/Consumer;)V
    .locals 4

    const-string v0, ": "

    const-string v1, "Invalid argument to "

    .line 1
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 2
    new-instance p4, Lcom/android/tools/r8/utils/StringDiagnostic;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1, p3}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-interface {p0, p4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p4, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 4
    :catch_0
    new-instance p4, Lcom/android/tools/r8/utils/StringDiagnostic;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1, p3}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-interface {p0, p4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static b(Lcom/android/tools/r8/BaseCompilerCommand$Builder;Ljava/lang/String;[Ljava/lang/String;ILcom/android/tools/r8/origin/Origin;)I
    .locals 6

    .line 63
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/S3;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/S3;-><init>(Lcom/android/tools/r8/BaseCompilerCommand$Builder;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->b()Lcom/android/tools/r8/internal/Ef0;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .line 64
    invoke-static/range {v0 .. v5}, Lcom/android/tools/r8/m;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/Ef0;Ljava/lang/String;[Ljava/lang/String;ILcom/android/tools/r8/origin/Origin;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/l;Lcom/android/tools/r8/references/MethodReference;Lcom/android/tools/r8/AssertionsConfiguration$Builder;)Lcom/android/tools/r8/AssertionsConfiguration;
    .locals 1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 6
    invoke-virtual {p3, p2}, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->setAssertionHandler(Lcom/android/tools/r8/references/MethodReference;)Lcom/android/tools/r8/AssertionsConfiguration$Builder;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1

    .line 8
    :cond_1
    invoke-virtual {p3}, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->setPassthrough()Lcom/android/tools/r8/AssertionsConfiguration$Builder;

    move-result-object p1

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p3}, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->setCompileTimeDisable()Lcom/android/tools/r8/AssertionsConfiguration$Builder;

    move-result-object p1

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p3}, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->setCompileTimeEnable()Lcom/android/tools/r8/AssertionsConfiguration$Builder;

    move-result-object p1

    .line 11
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->setScopeAll()Lcom/android/tools/r8/AssertionsConfiguration$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->build()Lcom/android/tools/r8/AssertionsConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/l;Lcom/android/tools/r8/references/MethodReference;Ljava/lang/String;Lcom/android/tools/r8/AssertionsConfiguration$Builder;)Lcom/android/tools/r8/AssertionsConfiguration;
    .locals 2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x3

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    .line 13
    invoke-virtual {p4, p2}, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->setAssertionHandler(Lcom/android/tools/r8/references/MethodReference;)Lcom/android/tools/r8/AssertionsConfiguration$Builder;

    move-result-object p1

    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1

    .line 15
    :cond_1
    invoke-virtual {p4}, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->setPassthrough()Lcom/android/tools/r8/AssertionsConfiguration$Builder;

    move-result-object p1

    goto :goto_0

    .line 16
    :cond_2
    invoke-virtual {p4}, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->setCompileTimeDisable()Lcom/android/tools/r8/AssertionsConfiguration$Builder;

    move-result-object p1

    goto :goto_0

    .line 17
    :cond_3
    invoke-virtual {p4}, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->setCompileTimeEnable()Lcom/android/tools/r8/AssertionsConfiguration$Builder;

    move-result-object p1

    .line 18
    :goto_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, v0

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 19
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->setScopePackage(Ljava/lang/String;)Lcom/android/tools/r8/AssertionsConfiguration$Builder;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->build()Lcom/android/tools/r8/AssertionsConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/BaseCompilerCommand$Builder;Lcom/android/tools/r8/l;Lcom/android/tools/r8/references/MethodReference;Ljava/lang/String;)V
    .locals 1

    if-nez p4, :cond_0

    .line 21
    new-instance p4, Lcom/android/tools/r8/P3;

    invoke-direct {p4, p0, p2, p3}, Lcom/android/tools/r8/P3;-><init>(Lcom/android/tools/r8/m;Lcom/android/tools/r8/l;Lcom/android/tools/r8/references/MethodReference;)V

    invoke-virtual {p1, p4}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->addAssertionsConfiguration(Ljava/util/function/Function;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    return-void

    .line 22
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/m;->a:Z

    if-nez v0, :cond_2

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 23
    :cond_2
    :goto_0
    const-string v0, "..."

    invoke-virtual {p4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 24
    new-instance v0, Lcom/android/tools/r8/Q3;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/android/tools/r8/Q3;-><init>(Lcom/android/tools/r8/m;Lcom/android/tools/r8/l;Lcom/android/tools/r8/references/MethodReference;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->addAssertionsConfiguration(Ljava/util/function/Function;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    return-void

    .line 25
    :cond_3
    new-instance v0, Lcom/android/tools/r8/R3;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/android/tools/r8/R3;-><init>(Lcom/android/tools/r8/m;Lcom/android/tools/r8/l;Lcom/android/tools/r8/references/MethodReference;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->addAssertionsConfiguration(Ljava/util/function/Function;)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    return-void
.end method

.method public final b(Lcom/android/tools/r8/l;Lcom/android/tools/r8/references/MethodReference;Ljava/lang/String;Lcom/android/tools/r8/AssertionsConfiguration$Builder;)Lcom/android/tools/r8/AssertionsConfiguration;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p4, p2}, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->setAssertionHandler(Lcom/android/tools/r8/references/MethodReference;)Lcom/android/tools/r8/AssertionsConfiguration$Builder;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1

    .line 4
    :cond_1
    invoke-virtual {p4}, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->setPassthrough()Lcom/android/tools/r8/AssertionsConfiguration$Builder;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p4}, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->setCompileTimeDisable()Lcom/android/tools/r8/AssertionsConfiguration$Builder;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {p4}, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->setCompileTimeEnable()Lcom/android/tools/r8/AssertionsConfiguration$Builder;

    move-result-object p1

    .line 7
    :goto_0
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->setScopeClass(Ljava/lang/String;)Lcom/android/tools/r8/AssertionsConfiguration$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/AssertionsConfiguration$Builder;->build()Lcom/android/tools/r8/AssertionsConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/BaseCompilerCommand$Builder;Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;)Z
    .locals 9

    .line 9
    const-string v0, "--force-enable-assertions"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 10
    sget-object v0, Lcom/android/tools/r8/l;->b:Lcom/android/tools/r8/l;

    const/16 v2, 0x19

    .line 11
    invoke-virtual {p3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_0

    .line 12
    :cond_0
    const-string v0, "--force-ea"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v2, 0xa

    if-eqz v0, :cond_1

    .line 13
    sget-object v0, Lcom/android/tools/r8/l;->b:Lcom/android/tools/r8/l;

    .line 14
    invoke-virtual {p3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 15
    :cond_1
    const-string v0, "--force-disable-assertions"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v3, 0x1a

    if-eqz v0, :cond_2

    .line 16
    sget-object v0, Lcom/android/tools/r8/l;->c:Lcom/android/tools/r8/l;

    .line 17
    invoke-virtual {p3, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 18
    :cond_2
    const-string v0, "--force-da"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19
    sget-object v0, Lcom/android/tools/r8/l;->c:Lcom/android/tools/r8/l;

    .line 20
    invoke-virtual {p3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 21
    :cond_3
    const-string v0, "--force-passthrough-assertions"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 22
    sget-object v0, Lcom/android/tools/r8/l;->d:Lcom/android/tools/r8/l;

    const/16 v2, 0x1e

    .line 23
    invoke-virtual {p3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 24
    :cond_4
    const-string v0, "--force-pa"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 25
    sget-object v0, Lcom/android/tools/r8/l;->d:Lcom/android/tools/r8/l;

    .line 26
    invoke-virtual {p3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 27
    :cond_5
    const-string v0, "--force-assertions-handler"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 28
    sget-object v0, Lcom/android/tools/r8/l;->e:Lcom/android/tools/r8/l;

    .line 29
    invoke-virtual {p3, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 30
    :cond_6
    const-string v0, "--force-ah"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 31
    sget-object v0, Lcom/android/tools/r8/l;->e:Lcom/android/tools/r8/l;

    .line 32
    invoke-virtual {p3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_7
    move-object p3, v1

    move-object v0, p3

    .line 33
    :goto_0
    sget-object v2, Lcom/android/tools/r8/l;->e:Lcom/android/tools/r8/l;

    const/16 v3, 0x3a

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v0, v2, :cond_e

    .line 34
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    const-string v6, "Missing required argument <handler method>"

    if-eqz v2, :cond_d

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v4, :cond_8

    invoke-virtual {p3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v3, :cond_d

    .line 35
    :cond_8
    invoke-virtual {p3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v3, :cond_9

    return v5

    .line 36
    :cond_9
    invoke-virtual {p3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 37
    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eqz v2, :cond_c

    if-lez v2, :cond_a

    .line 38
    invoke-virtual {p3, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_a
    move-object v2, p3

    :goto_1
    const/16 v6, 0x2e

    .line 39
    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 40
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x3

    if-lt v7, v8, :cond_b

    if-lez v6, :cond_b

    .line 41
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v4

    if-eq v6, v7, :cond_b

    .line 42
    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/tools/r8/internal/Bl;->E(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 43
    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 44
    invoke-static {v7}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    add-int/2addr v6, v4

    .line 45
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 46
    const-string v8, "(Ljava/lang/Throwable;)V"

    invoke-static {v7, v6, v8}, Lcom/android/tools/r8/references/Reference;->methodFromDescriptor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/references/MethodReference;

    move-result-object v6

    .line 47
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    .line 48
    :cond_b
    new-instance p3, Lcom/android/tools/r8/utils/StringDiagnostic;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid argument <handler method>: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0, p2}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {p1, p3}, Lcom/android/tools/r8/BaseCommand$Builder;->fatalError(Lcom/android/tools/r8/Diagnostic;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 49
    :cond_c
    new-instance p3, Lcom/android/tools/r8/utils/StringDiagnostic;

    invoke-direct {p3, v6, p2}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {p1, p3}, Lcom/android/tools/r8/BaseCommand$Builder;->fatalError(Lcom/android/tools/r8/Diagnostic;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 50
    :cond_d
    new-instance p3, Lcom/android/tools/r8/utils/StringDiagnostic;

    invoke-direct {p3, v6, p2}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {p1, p3}, Lcom/android/tools/r8/BaseCommand$Builder;->fatalError(Lcom/android/tools/r8/Diagnostic;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_e
    move-object v6, v1

    :goto_2
    if-eqz v0, :cond_15

    .line 51
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_f

    .line 52
    invoke-virtual {p0, p1, v0, v6, v1}, Lcom/android/tools/r8/m;->a(Lcom/android/tools/r8/BaseCompilerCommand$Builder;Lcom/android/tools/r8/l;Lcom/android/tools/r8/references/MethodReference;Ljava/lang/String;)V

    return v4

    .line 53
    :cond_f
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v4, :cond_11

    invoke-virtual {p3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_10

    goto :goto_3

    .line 54
    :cond_10
    new-instance p3, Lcom/android/tools/r8/utils/StringDiagnostic;

    const-string v0, "Missing optional argument"

    invoke-direct {p3, v0, p2}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {p1, p3}, Lcom/android/tools/r8/BaseCommand$Builder;->fatalError(Lcom/android/tools/r8/Diagnostic;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 55
    :cond_11
    :goto_3
    invoke-virtual {p3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_12

    return v5

    .line 56
    :cond_12
    invoke-virtual {p3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 57
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 58
    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 59
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 60
    :cond_13
    new-instance v2, Lcom/android/tools/r8/utils/StringDiagnostic;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal assertion scope: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, p2}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/BaseCommand$Builder;->error(Lcom/android/tools/r8/Diagnostic;)V

    .line 61
    :cond_14
    invoke-virtual {p3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 62
    invoke-virtual {p0, p1, v0, v6, p2}, Lcom/android/tools/r8/m;->a(Lcom/android/tools/r8/BaseCompilerCommand$Builder;Lcom/android/tools/r8/l;Lcom/android/tools/r8/references/MethodReference;Ljava/lang/String;)V

    return v4

    :cond_15
    return v5
.end method
