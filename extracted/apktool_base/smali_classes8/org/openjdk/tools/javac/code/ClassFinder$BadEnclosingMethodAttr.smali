.class public Lorg/openjdk/tools/javac/code/ClassFinder$BadEnclosingMethodAttr;
.super Lorg/openjdk/tools/javac/code/ClassFinder$BadClassFile;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/ClassFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BadEnclosingMethodAttr"
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/javax/tools/JavaFileObject;Lorg/openjdk/tools/javac/util/JCDiagnostic;Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/code/ClassFinder$BadClassFile;-><init>(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/javax/tools/JavaFileObject;Lorg/openjdk/tools/javac/util/JCDiagnostic;Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;)V

    return-void
.end method
