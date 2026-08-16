.class public Lorg/openjdk/tools/javac/code/Kinds$KindSelector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Kinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KindSelector"
.end annotation


# static fields
.field public static final ASG:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

.field public static final ERR:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

.field public static final MDL:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

.field public static final MTH:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

.field public static final NIL:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

.field public static final PCK:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

.field public static final POLY:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

.field public static final TYP:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

.field public static final TYP_PCK:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

.field public static final VAL:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

.field public static final VAL_MTH:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

.field public static final VAL_POLY:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

.field public static final VAL_TYP:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

.field public static final VAL_TYP_PCK:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

.field public static final VAR:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;


# instance fields
.field private final data:B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;-><init>(I)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->NIL:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    new-instance v0, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;-><init>(I)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->PCK:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    new-instance v1, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;-><init>(I)V

    sput-object v1, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->TYP:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    new-instance v2, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;-><init>(I)V

    sput-object v2, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAR:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    new-instance v2, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;-><init>(I)V

    sput-object v2, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAL:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    new-instance v3, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;-><init>(I)V

    sput-object v3, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->MTH:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    new-instance v4, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    const/16 v5, 0x20

    invoke-direct {v4, v5}, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;-><init>(I)V

    sput-object v4, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->POLY:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    new-instance v5, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    const/16 v6, 0x40

    invoke-direct {v5, v6}, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;-><init>(I)V

    sput-object v5, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->MDL:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    new-instance v5, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    const/16 v6, 0x7f

    invoke-direct {v5, v6}, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;-><init>(I)V

    sput-object v5, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->ERR:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    new-instance v5, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    const/16 v6, 0x84

    invoke-direct {v5, v6}, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;-><init>(I)V

    sput-object v5, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->ASG:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    filled-new-array {v1, v0}, [Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    move-result-object v5

    invoke-static {v5}, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->of([Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    move-result-object v5

    sput-object v5, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->TYP_PCK:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    filled-new-array {v2, v3}, [Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    move-result-object v3

    invoke-static {v3}, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->of([Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    move-result-object v3

    sput-object v3, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAL_MTH:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    filled-new-array {v2, v4}, [Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    move-result-object v3

    invoke-static {v3}, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->of([Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    move-result-object v3

    sput-object v3, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAL_POLY:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    filled-new-array {v2, v1}, [Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    move-result-object v3

    invoke-static {v3}, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->of([Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    move-result-object v3

    sput-object v3, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAL_TYP:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    filled-new-array {v2, v1, v0}, [Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->of([Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAL_TYP_PCK:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-byte p1, p1

    iput-byte p1, p0, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->data:B

    return-void
.end method

.method public static varargs of([Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Lorg/openjdk/tools/javac/code/Kinds$KindSelector;
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p0, v1

    iget-byte v3, v3, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->data:B

    or-int/2addr v2, v3

    int-to-byte v2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    invoke-direct {p0, v2}, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;-><init>(I)V

    return-object p0
.end method


# virtual methods
.method public contains(Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Z
    .locals 1

    iget-byte v0, p0, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->data:B

    iget-byte p1, p1, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->data:B

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public kindNames()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Kinds$KindName;",
            ">;"
        }
    .end annotation

    const-class v0, Lorg/openjdk/tools/javac/code/Kinds$KindName;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iget-byte v1, p0, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->data:B

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAL:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    iget-byte v2, v2, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->data:B

    and-int v3, v1, v2

    if-eqz v3, :cond_1

    and-int/2addr v1, v2

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAR:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    iget-byte v2, v2, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->data:B

    if-ne v1, v2, :cond_0

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$KindName;->VAR:Lorg/openjdk/tools/javac/code/Kinds$KindName;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$KindName;->VAL:Lorg/openjdk/tools/javac/code/Kinds$KindName;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-byte v1, p0, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->data:B

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->MTH:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    iget-byte v2, v2, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->data:B

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$KindName;->METHOD:Lorg/openjdk/tools/javac/code/Kinds$KindName;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-byte v1, p0, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->data:B

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->TYP:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    iget-byte v2, v2, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->data:B

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$KindName;->CLASS:Lorg/openjdk/tools/javac/code/Kinds$KindName;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-byte v1, p0, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->data:B

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->PCK:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    iget-byte v2, v2, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->data:B

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$KindName;->PACKAGE:Lorg/openjdk/tools/javac/code/Kinds$KindName;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-byte v1, p0, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->data:B

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->MDL:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    iget-byte v2, v2, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->data:B

    and-int/2addr v1, v2

    if-eqz v1, :cond_5

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$KindName;->MODULE:Lorg/openjdk/tools/javac/code/Kinds$KindName;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v0
.end method

.method public subset(Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Z
    .locals 1

    iget-byte v0, p0, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->data:B

    iget-byte p1, p1, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->data:B

    not-int p1, p1

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
