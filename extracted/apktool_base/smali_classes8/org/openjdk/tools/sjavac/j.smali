.class public final synthetic Lorg/openjdk/tools/sjavac/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Ljava/nio/file/Path;


# direct methods
.method public synthetic constructor <init>(Ljava/nio/file/Path;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/j;->b:Ljava/nio/file/Path;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/j;->b:Ljava/nio/file/Path;

    check-cast p1, Ljava/nio/file/PathMatcher;

    invoke-static {v0, p1}, Lorg/openjdk/tools/sjavac/Source$1;->a(Ljava/nio/file/Path;Ljava/nio/file/PathMatcher;)Z

    move-result p1

    return p1
.end method
