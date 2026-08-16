.class public Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private accessRules:[Lorg/eclipse/jdt/internal/compiler/env/AccessRule;

.field public classpathEntryName:Ljava/lang/String;

.field public classpathEntryType:B


# direct methods
.method public constructor <init>([Lorg/eclipse/jdt/internal/compiler/env/AccessRule;BLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;->accessRules:[Lorg/eclipse/jdt/internal/compiler/env/AccessRule;

    iput-byte p2, p0, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;->classpathEntryType:B

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;->classpathEntryName:Ljava/lang/String;

    return-void
.end method

.method private hashCode([Lorg/eclipse/jdt/internal/compiler/env/AccessRule;)I
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 4
    :cond_0
    array-length v1, p1

    const/4 v2, 0x1

    move v3, v0

    :goto_0
    if-lt v3, v1, :cond_1

    return v2

    :cond_1
    mul-int/lit8 v2, v2, 0x1f

    .line 5
    aget-object v4, p1, v3

    if-nez v4, :cond_2

    move v4, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/env/AccessRule;->hashCode()I

    move-result v4

    :goto_1
    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;

    iget-byte v1, p0, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;->classpathEntryType:B

    iget-byte v3, p1, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;->classpathEntryType:B

    if-ne v1, v3, :cond_7

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;->classpathEntryName:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;->classpathEntryName:Ljava/lang/String;

    if-nez v3, :cond_7

    :cond_2
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;->classpathEntryName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;->accessRules:[Lorg/eclipse/jdt/internal/compiler/env/AccessRule;

    array-length v1, v1

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;->accessRules:[Lorg/eclipse/jdt/internal/compiler/env/AccessRule;

    array-length v3, v3

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_5

    return v0

    :cond_5
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;->accessRules:[Lorg/eclipse/jdt/internal/compiler/env/AccessRule;

    aget-object v4, v4, v3

    iget-object v5, p1, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;->accessRules:[Lorg/eclipse/jdt/internal/compiler/env/AccessRule;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Lorg/eclipse/jdt/internal/compiler/env/AccessRule;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    return v2

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    :goto_1
    return v2
.end method

.method public getAccessRules()[Lorg/eclipse/jdt/internal/compiler/env/AccessRule;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;->accessRules:[Lorg/eclipse/jdt/internal/compiler/env/AccessRule;

    return-object v0
.end method

.method public getViolatedRestriction([C)Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;->accessRules:[Lorg/eclipse/jdt/internal/compiler/env/AccessRule;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-lt v1, v0, :cond_0

    return-object v2

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;->accessRules:[Lorg/eclipse/jdt/internal/compiler/env/AccessRule;

    aget-object v3, v3, v1

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/env/AccessRule;->pattern:[C

    const/16 v5, 0x2f

    const/4 v6, 0x1

    invoke-static {v4, p1, v6, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->pathMatch([C[CZC)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/env/AccessRule;->getProblemId()I

    move-result p1

    const v0, 0x1000118

    if-eq p1, v0, :cond_1

    const v0, 0x1000133

    if-eq p1, v0, :cond_1

    return-object v2

    :cond_1
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;

    iget-byte v0, p0, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;->classpathEntryType:B

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;->classpathEntryName:Ljava/lang/String;

    invoke-direct {p1, v3, v0, v1}, Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;-><init>(Lorg/eclipse/jdt/internal/compiler/env/AccessRule;BLjava/lang/String;)V

    return-object p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;->accessRules:[Lorg/eclipse/jdt/internal/compiler/env/AccessRule;

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;->hashCode([Lorg/eclipse/jdt/internal/compiler/env/AccessRule;)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;->classpathEntryName:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 3
    iget-byte v1, p0, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;->classpathEntryType:B

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 5

    .line 2
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 3
    const-string v1, "AccessRuleSet {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 5
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;->accessRules:[Lorg/eclipse/jdt/internal/compiler/env/AccessRule;

    array-length v2, v2

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_1

    .line 6
    const-string p1, "} [classpath entry: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;->classpathEntryName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz p1, :cond_2

    const/16 v4, 0x9

    .line 10
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 11
    :cond_2
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/env/AccessRuleSet;->accessRules:[Lorg/eclipse/jdt/internal/compiler/env/AccessRule;

    aget-object v4, v4, v3

    .line 12
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    if-eqz p1, :cond_3

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v2, -0x1

    if-ge v3, v4, :cond_4

    .line 14
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
