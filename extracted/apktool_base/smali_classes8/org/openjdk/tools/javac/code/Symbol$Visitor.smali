.class public interface abstract Lorg/openjdk/tools/javac/code/Symbol$Visitor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Visitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract visitClassSymbol(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            "TP;)TR;"
        }
    .end annotation
.end method

.method public abstract visitMethodSymbol(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;",
            "TP;)TR;"
        }
    .end annotation
.end method

.method public abstract visitOperatorSymbol(Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;",
            "TP;)TR;"
        }
    .end annotation
.end method

.method public abstract visitPackageSymbol(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;",
            "TP;)TR;"
        }
    .end annotation
.end method

.method public abstract visitSymbol(Lorg/openjdk/tools/javac/code/Symbol;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "TP;)TR;"
        }
    .end annotation
.end method

.method public abstract visitTypeSymbol(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;",
            "TP;)TR;"
        }
    .end annotation
.end method

.method public abstract visitVarSymbol(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;",
            "TP;)TR;"
        }
    .end annotation
.end method
