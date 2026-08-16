.class public Lorg/eclipse/jdt/internal/core/search/matching/PackageDeclarationPattern;
.super Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;
.source "SourceFile"


# instance fields
.field protected pkgName:[C


# direct methods
.method public constructor <init>([CI)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;-><init>(II)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/PackageDeclarationPattern;->pkgName:[C

    return-void
.end method


# virtual methods
.method public print(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    const-string v0, "PackageDeclarationPattern: <"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/matching/PackageDeclarationPattern;->pkgName:[C

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/JavaSearchPattern;->print(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public queryIn(Lorg/eclipse/jdt/internal/core/index/Index;)[Lorg/eclipse/jdt/internal/core/index/EntryResult;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
