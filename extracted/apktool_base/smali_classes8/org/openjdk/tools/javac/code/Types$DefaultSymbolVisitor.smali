.class public abstract Lorg/openjdk/tools/javac/code/Types$DefaultSymbolVisitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/code/Symbol$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DefaultSymbolVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/openjdk/tools/javac/code/Symbol$Visitor<",
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
.method public final visit(Lorg/openjdk/tools/javac/code/Symbol;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "TS;)TR;"
        }
    .end annotation

    invoke-virtual {p1, p0, p2}, Lorg/openjdk/tools/javac/code/Symbol;->accept(Lorg/openjdk/tools/javac/code/Symbol$Visitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitClassSymbol(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            "TS;)TR;"
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Symbol$Visitor;->visitSymbol(Lorg/openjdk/tools/javac/code/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitMethodSymbol(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;",
            "TS;)TR;"
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Symbol$Visitor;->visitSymbol(Lorg/openjdk/tools/javac/code/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitOperatorSymbol(Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;",
            "TS;)TR;"
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Symbol$Visitor;->visitSymbol(Lorg/openjdk/tools/javac/code/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitPackageSymbol(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;",
            "TS;)TR;"
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Symbol$Visitor;->visitSymbol(Lorg/openjdk/tools/javac/code/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeSymbol(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;",
            "TS;)TR;"
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Symbol$Visitor;->visitSymbol(Lorg/openjdk/tools/javac/code/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitVarSymbol(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;",
            "TS;)TR;"
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Symbol$Visitor;->visitSymbol(Lorg/openjdk/tools/javac/code/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
