.class public final synthetic Lorg/openjdk/tools/javac/processing/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/openjdk/javax/lang/model/element/QualifiedNameable;

    invoke-interface {p1}, Lorg/openjdk/javax/lang/model/element/QualifiedNameable;->getQualifiedName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p1

    return-object p1
.end method
