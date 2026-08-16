.class public Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypePathEntry"
.end annotation


# static fields
.field public static final ARRAY:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

.field public static final INNER_TYPE:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

.field public static final WILDCARD:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

.field public static final bytesPerEntry:I = 0x2


# instance fields
.field public final arg:I

.field public final tag:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->ARRAY:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    invoke-direct {v0, v1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;-><init>(Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;)V

    sput-object v0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->ARRAY:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    new-instance v0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->INNER_TYPE:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    invoke-direct {v0, v1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;-><init>(Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;)V

    sput-object v0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->INNER_TYPE:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    new-instance v0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->WILDCARD:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    invoke-direct {v0, v1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;-><init>(Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;)V

    sput-object v0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->WILDCARD:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    return-void
.end method

.method private constructor <init>(Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->ARRAY:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->INNER_TYPE:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    if-eq p1, v0, :cond_1

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->WILDCARD:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    .line 3
    iput-object p1, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->tag:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    .line 4
    iput v1, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->arg:I

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;I)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->TYPE_ARGUMENT:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    .line 7
    iput-object p1, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->tag:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    .line 8
    iput p2, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->arg:I

    return-void
.end method

.method public static fromBinary(II)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->TYPE_ARGUMENT:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    iget v1, v1, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->tag:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    invoke-static {v1}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    if-eqz p0, :cond_5

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid TypePathEntryKind tag: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/openjdk/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    new-instance p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->TYPE_ARGUMENT:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    invoke-direct {p0, v0, p1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;-><init>(Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;I)V

    return-object p0

    :cond_3
    sget-object p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->WILDCARD:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    return-object p0

    :cond_4
    sget-object p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->INNER_TYPE:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    return-object p0

    :cond_5
    sget-object p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->ARRAY:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->tag:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    iget-object v2, p1, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->tag:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    if-ne v0, v2, :cond_1

    iget v0, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->arg:I

    iget p1, p1, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->arg:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->tag:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x11

    iget v1, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->arg:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->tag:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->tag:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    sget-object v2, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->TYPE_ARGUMENT:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->arg:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
