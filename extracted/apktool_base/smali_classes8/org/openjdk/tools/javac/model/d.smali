.class public final synthetic Lorg/openjdk/tools/javac/model/d;
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

    check-cast p1, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->stripMetadataIfNeeded()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method
