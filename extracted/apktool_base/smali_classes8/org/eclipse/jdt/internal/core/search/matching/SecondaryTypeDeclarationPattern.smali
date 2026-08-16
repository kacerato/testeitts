.class public Lorg/eclipse/jdt/internal/core/search/matching/SecondaryTypeDeclarationPattern;
.super Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;
.source "SourceFile"


# static fields
.field private static final SECONDARY_PATTERN_KEY:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "*/S"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/search/matching/SecondaryTypeDeclarationPattern;->SECONDARY_PATTERN_KEY:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/16 v4, 0x53

    const/16 v5, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;-><init>([C[[C[CCI)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getBlankPattern()Lorg/eclipse/jdt/core/search/SearchPattern;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/core/search/matching/SecondaryTypeDeclarationPattern;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/search/matching/SecondaryTypeDeclarationPattern;-><init>(I)V

    return-object v0
.end method

.method public print(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    const-string v0, "Secondary"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->print(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public queryIn(Lorg/eclipse/jdt/internal/core/index/Index;)[Lorg/eclipse/jdt/internal/core/index/EntryResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;->CATEGORIES:[[C

    sget-object v1, Lorg/eclipse/jdt/internal/core/search/matching/SecondaryTypeDeclarationPattern;->SECONDARY_PATTERN_KEY:[C

    const/16 v2, 0xa

    invoke-virtual {p1, v0, v1, v2}, Lorg/eclipse/jdt/internal/core/index/Index;->query([[C[CI)[Lorg/eclipse/jdt/internal/core/index/EntryResult;

    move-result-object p1

    return-object p1
.end method
