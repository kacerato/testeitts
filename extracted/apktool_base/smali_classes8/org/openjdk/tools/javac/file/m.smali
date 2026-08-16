.class public final synthetic Lorg/openjdk/tools/javac/file/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/nio/file/DirectoryStream$Filter;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/nio/file/Path;

    invoke-static {p1}, Lorg/openjdk/tools/javac/file/Locations$SystemModulesLocationHandler;->a(Ljava/nio/file/Path;)Z

    move-result p1

    return p1
.end method
