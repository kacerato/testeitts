.class final Lorg/openjdk/tools/javac/code/Printer$1;
.super Lorg/openjdk/tools/javac/code/Printer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/code/Printer;->createStandardPrinter(Lorg/openjdk/tools/javac/api/Messages;)Lorg/openjdk/tools/javac/code/Printer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$messages:Lorg/openjdk/tools/javac/api/Messages;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/api/Messages;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Printer$1;->val$messages:Lorg/openjdk/tools/javac/api/Messages;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/code/Printer;-><init>()V

    return-void
.end method


# virtual methods
.method public capturedVarId(Lorg/openjdk/tools/javac/code/Type$CapturedType;Ljava/util/Locale;)Ljava/lang/String;
    .locals 4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->hashCode()I

    move-result p1

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v2, 0x3e5

    rem-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs localize(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Printer$1;->val$messages:Lorg/openjdk/tools/javac/api/Messages;

    invoke-interface {v0, p1, p2, p3}, Lorg/openjdk/tools/javac/api/Messages;->getLocalizedString(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitArrayType(Lorg/openjdk/tools/javac/code/Type$ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/util/Locale;

    invoke-super {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Printer;->visitArrayType(Lorg/openjdk/tools/javac/code/Type$ArrayType;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitCapturedType(Lorg/openjdk/tools/javac/code/Type$CapturedType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/util/Locale;

    invoke-super {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Printer;->visitCapturedType(Lorg/openjdk/tools/javac/code/Type$CapturedType;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitClassSymbol(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/util/Locale;

    invoke-super {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Printer;->visitClassSymbol(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitClassType(Lorg/openjdk/tools/javac/code/Type$ClassType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/util/Locale;

    invoke-super {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Printer;->visitClassType(Lorg/openjdk/tools/javac/code/Type$ClassType;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitErrorType(Lorg/openjdk/tools/javac/code/Type$ErrorType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/util/Locale;

    invoke-super {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Printer;->visitErrorType(Lorg/openjdk/tools/javac/code/Type$ErrorType;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitForAll(Lorg/openjdk/tools/javac/code/Type$ForAll;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/util/Locale;

    invoke-super {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Printer;->visitForAll(Lorg/openjdk/tools/javac/code/Type$ForAll;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitMethodSymbol(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/util/Locale;

    invoke-super {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Printer;->visitMethodSymbol(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitMethodType(Lorg/openjdk/tools/javac/code/Type$MethodType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/util/Locale;

    invoke-super {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Printer;->visitMethodType(Lorg/openjdk/tools/javac/code/Type$MethodType;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitModuleType(Lorg/openjdk/tools/javac/code/Type$ModuleType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/util/Locale;

    invoke-super {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Printer;->visitModuleType(Lorg/openjdk/tools/javac/code/Type$ModuleType;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitOperatorSymbol(Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/util/Locale;

    invoke-super {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Printer;->visitOperatorSymbol(Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitPackageSymbol(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/util/Locale;

    invoke-super {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Printer;->visitPackageSymbol(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitPackageType(Lorg/openjdk/tools/javac/code/Type$PackageType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/util/Locale;

    invoke-super {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Printer;->visitPackageType(Lorg/openjdk/tools/javac/code/Type$PackageType;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitSymbol(Lorg/openjdk/tools/javac/code/Symbol;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/util/Locale;

    invoke-super {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Printer;->visitSymbol(Lorg/openjdk/tools/javac/code/Symbol;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/util/Locale;

    invoke-super {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Printer;->visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitTypeSymbol(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/util/Locale;

    invoke-super {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Printer;->visitTypeSymbol(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitTypeVar(Lorg/openjdk/tools/javac/code/Type$TypeVar;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/util/Locale;

    invoke-super {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Printer;->visitTypeVar(Lorg/openjdk/tools/javac/code/Type$TypeVar;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitUndetVar(Lorg/openjdk/tools/javac/code/Type$UndetVar;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/util/Locale;

    invoke-super {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Printer;->visitUndetVar(Lorg/openjdk/tools/javac/code/Type$UndetVar;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitVarSymbol(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/util/Locale;

    invoke-super {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Printer;->visitVarSymbol(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitWildcardType(Lorg/openjdk/tools/javac/code/Type$WildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/util/Locale;

    invoke-super {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Printer;->visitWildcardType(Lorg/openjdk/tools/javac/code/Type$WildcardType;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
