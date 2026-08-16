.class public final synthetic Lorg/google/googlejavaformat/java/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lorg/openjdk/tools/javac/util/JCDiagnostic;

    invoke-static {p1}, Lorg/google/googlejavaformat/java/JavaInput;->a(Lorg/openjdk/tools/javac/util/JCDiagnostic;)Z

    move-result p1

    return p1
.end method
