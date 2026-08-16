.class public final synthetic Lorg/openjdk/tools/javac/util/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/c;->b:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/c;->b:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->a(Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
