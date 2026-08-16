.class public final synthetic Lorg/openjdk/tools/javac/file/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/file/Locations;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/file/Locations;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/file/k;->b:Lorg/openjdk/tools/javac/file/Locations;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/file/k;->b:Lorg/openjdk/tools/javac/file/Locations;

    check-cast p1, Ljava/nio/file/Path;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/file/Locations$SearchPath;->a(Lorg/openjdk/tools/javac/file/Locations;Ljava/nio/file/Path;)Z

    move-result p1

    return p1
.end method
