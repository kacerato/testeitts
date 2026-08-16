.class public abstract Lorg/openjdk/tools/javac/code/Types$DefaultTypeVisitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/code/Type$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DefaultTypeVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/openjdk/tools/javac/code/Type$Visitor<",
        "TR;TS;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final visit(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type;",
            "TS;)TR;"
        }
    .end annotation

    invoke-virtual {p1, p0, p2}, Lorg/openjdk/tools/javac/code/Type;->accept(Lorg/openjdk/tools/javac/code/Type$Visitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitArrayType(Lorg/openjdk/tools/javac/code/Type$ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type$ArrayType;",
            "TS;)TR;"
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Type$Visitor;->visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitCapturedType(Lorg/openjdk/tools/javac/code/Type$CapturedType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type$CapturedType;",
            "TS;)TR;"
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Type$Visitor;->visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitClassType(Lorg/openjdk/tools/javac/code/Type$ClassType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type$ClassType;",
            "TS;)TR;"
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Type$Visitor;->visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitErrorType(Lorg/openjdk/tools/javac/code/Type$ErrorType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type$ErrorType;",
            "TS;)TR;"
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Type$Visitor;->visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitForAll(Lorg/openjdk/tools/javac/code/Type$ForAll;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type$ForAll;",
            "TS;)TR;"
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Type$Visitor;->visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitMethodType(Lorg/openjdk/tools/javac/code/Type$MethodType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type$MethodType;",
            "TS;)TR;"
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Type$Visitor;->visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitModuleType(Lorg/openjdk/tools/javac/code/Type$ModuleType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type$ModuleType;",
            "TS;)TR;"
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Type$Visitor;->visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitPackageType(Lorg/openjdk/tools/javac/code/Type$PackageType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type$PackageType;",
            "TS;)TR;"
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Type$Visitor;->visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeVar(Lorg/openjdk/tools/javac/code/Type$TypeVar;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type$TypeVar;",
            "TS;)TR;"
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Type$Visitor;->visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitUndetVar(Lorg/openjdk/tools/javac/code/Type$UndetVar;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type$UndetVar;",
            "TS;)TR;"
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Type$Visitor;->visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcardType(Lorg/openjdk/tools/javac/code/Type$WildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type$WildcardType;",
            "TS;)TR;"
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Type$Visitor;->visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
