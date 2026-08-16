.class public Lorg/eclipse/jdt/internal/core/nd/db/EmptyString;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/nd/db/IString;


# static fields
.field private static theEmptyString:Lorg/eclipse/jdt/internal/core/nd/db/EmptyString;


# instance fields
.field private compareResult:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/db/EmptyString;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/nd/db/EmptyString;-><init>()V

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/db/EmptyString;->theEmptyString:Lorg/eclipse/jdt/internal/core/nd/db/EmptyString;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/EmptyString;->compareResult:I

    return-void
.end method

.method public static create()Lorg/eclipse/jdt/internal/core/nd/db/EmptyString;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/db/EmptyString;->theEmptyString:Lorg/eclipse/jdt/internal/core/nd/db/EmptyString;

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/String;Z)I
    .locals 0

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    iget p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/EmptyString;->compareResult:I

    return p1
.end method

.method public compare(Lorg/eclipse/jdt/internal/core/nd/db/IString;Z)I
    .locals 0

    .line 1
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->length()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/EmptyString;->compareResult:I

    return p1
.end method

.method public compare([CZ)I
    .locals 0

    .line 5
    array-length p1, p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 6
    :cond_0
    iget p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/EmptyString;->compareResult:I

    return p1
.end method

.method public compareCompatibleWithIgnoreCase(Lorg/eclipse/jdt/internal/core/nd/db/IString;)I
    .locals 0

    .line 1
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->length()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/EmptyString;->compareResult:I

    return p1
.end method

.method public compareCompatibleWithIgnoreCase([C)I
    .locals 0

    .line 3
    array-length p1, p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    iget p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/EmptyString;->compareResult:I

    return p1
.end method

.method public comparePrefix([CZ)I
    .locals 0

    array-length p1, p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/EmptyString;->compareResult:I

    return p1
.end method

.method public delete()V
    .locals 0

    return-void
.end method

.method public getChars()[C
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [C

    return-object v0
.end method

.method public getRecord()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public length()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
