.class public final enum Lom/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lom/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lom/a;

.field public static final enum CHAR:Lom/a;

.field public static final enum CHAR_AND_INT:Lom/a;

.field public static final enum FLOAT:Lom/a;

.field public static final enum GENERAL:Lom/a;

.field public static final enum INT:Lom/a;

.field public static final enum INT_AND_TIME:Lom/a;

.field public static final enum NULL:Lom/a;

.field public static final enum TIME:Lom/a;

.field public static final enum UNUSED:Lom/a;


# instance fields
.field public final chars:Ljava/lang/String;

.field public final types:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lom/a;

    const-string v1, "GENERAL"

    const/4 v2, 0x0

    const-string v3, "bBhHsS"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lom/a;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lom/a;->GENERAL:Lom/a;

    new-instance v1, Lom/a;

    const-class v3, Ljava/lang/Character;

    const-class v5, Ljava/lang/Byte;

    const-class v6, Ljava/lang/Short;

    const-class v7, Ljava/lang/Integer;

    filled-new-array {v3, v5, v6, v7}, [Ljava/lang/Class;

    move-result-object v3

    const-string v8, "CHAR"

    const/4 v9, 0x1

    const-string v10, "cC"

    invoke-direct {v1, v8, v9, v10, v3}, Lom/a;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v1, Lom/a;->CHAR:Lom/a;

    new-instance v3, Lom/a;

    const-class v8, Ljava/math/BigInteger;

    const-class v9, Ljava/lang/Long;

    filled-new-array {v5, v6, v7, v9, v8}, [Ljava/lang/Class;

    move-result-object v8

    const-string v10, "INT"

    const/4 v11, 0x2

    const-string v12, "doxX"

    invoke-direct {v3, v10, v11, v12, v8}, Lom/a;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v3, Lom/a;->INT:Lom/a;

    new-instance v8, Lom/a;

    const-class v10, Ljava/lang/Double;

    const-class v11, Ljava/math/BigDecimal;

    const-class v12, Ljava/lang/Float;

    filled-new-array {v12, v10, v11}, [Ljava/lang/Class;

    move-result-object v10

    const-string v11, "FLOAT"

    const/4 v12, 0x3

    const-string v13, "eEfgGaA"

    invoke-direct {v8, v11, v12, v13, v10}, Lom/a;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v8, Lom/a;->FLOAT:Lom/a;

    new-instance v10, Lom/a;

    const-class v11, Ljava/util/Calendar;

    const-class v12, Ljava/util/Date;

    filled-new-array {v9, v11, v12}, [Ljava/lang/Class;

    move-result-object v11

    const-string v12, "TIME"

    const/4 v13, 0x4

    const-string v14, "tT"

    invoke-direct {v10, v12, v13, v14, v11}, Lom/a;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v10, Lom/a;->TIME:Lom/a;

    new-instance v11, Lom/a;

    const/4 v12, 0x5

    filled-new-array {v5, v6, v7}, [Ljava/lang/Class;

    move-result-object v5

    const-string v6, "CHAR_AND_INT"

    invoke-direct {v11, v6, v12, v4, v5}, Lom/a;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v11, Lom/a;->CHAR_AND_INT:Lom/a;

    new-instance v6, Lom/a;

    const/4 v5, 0x6

    filled-new-array {v9}, [Ljava/lang/Class;

    move-result-object v7

    const-string v9, "INT_AND_TIME"

    invoke-direct {v6, v9, v5, v4, v7}, Lom/a;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v6, Lom/a;->INT_AND_TIME:Lom/a;

    new-instance v7, Lom/a;

    const/4 v5, 0x7

    new-array v2, v2, [Ljava/lang/Class;

    const-string v9, "NULL"

    invoke-direct {v7, v9, v5, v4, v2}, Lom/a;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v7, Lom/a;->NULL:Lom/a;

    new-instance v9, Lom/a;

    const-string v2, "UNUSED"

    const/16 v5, 0x8

    invoke-direct {v9, v2, v5, v4, v4}, Lom/a;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v9, Lom/a;->UNUSED:Lom/a;

    move-object v2, v3

    move-object v3, v8

    move-object v4, v10

    move-object v5, v11

    move-object v8, v9

    filled-new-array/range {v0 .. v8}, [Lom/a;

    move-result-object v0

    sput-object v0, Lom/a;->$VALUES:[Lom/a;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lom/a;->chars:Ljava/lang/String;

    if-nez p4, :cond_0

    iput-object p4, p0, Lom/a;->types:[Ljava/lang/Class;

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    array-length p2, p4

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    array-length p2, p4

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_2

    aget-object v0, p4, p3

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lom/a;->h(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/Class;

    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Class;

    iput-object p1, p0, Lom/a;->types:[Ljava/lang/Class;

    :goto_1
    return-void
.end method

.method public static a([Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static b(C)Lom/a;
    .locals 5

    sget-object v0, Lom/a;->GENERAL:Lom/a;

    sget-object v1, Lom/a;->CHAR:Lom/a;

    sget-object v2, Lom/a;->INT:Lom/a;

    sget-object v3, Lom/a;->FLOAT:Lom/a;

    sget-object v4, Lom/a;->TIME:Lom/a;

    filled-new-array {v0, v1, v2, v3, v4}, [Lom/a;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    iget-object v3, v2, Lom/a;->chars:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad conversion character "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Lom/a;Lom/a;)Lom/a;
    .locals 7

    sget-object v0, Lom/a;->UNUSED:Lom/a;

    if-ne p0, v0, :cond_0

    return-object p1

    :cond_0
    if-ne p1, v0, :cond_1

    return-object p0

    :cond_1
    sget-object v0, Lom/a;->GENERAL:Lom/a;

    if-ne p0, v0, :cond_2

    return-object p1

    :cond_2
    if-ne p1, v0, :cond_3

    return-object p0

    :cond_3
    iget-object p0, p0, Lom/a;->types:[Ljava/lang/Class;

    invoke-static {p0}, Lom/a;->a([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    iget-object p1, p1, Lom/a;->types:[Ljava/lang/Class;

    invoke-static {p1}, Lom/a;->a([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    sget-object v0, Lom/a;->CHAR:Lom/a;

    sget-object v1, Lom/a;->INT:Lom/a;

    sget-object v2, Lom/a;->FLOAT:Lom/a;

    sget-object v3, Lom/a;->TIME:Lom/a;

    sget-object v4, Lom/a;->CHAR_AND_INT:Lom/a;

    sget-object v5, Lom/a;->INT_AND_TIME:Lom/a;

    sget-object v6, Lom/a;->NULL:Lom/a;

    filled-new-array/range {v0 .. v6}, [Lom/a;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_5

    aget-object v1, p1, v0

    iget-object v2, v1, Lom/a;->types:[Ljava/lang/Class;

    invoke-static {v2}, Lom/a;->a([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public static e(Lom/a;Lom/a;)Z
    .locals 0

    invoke-static {p0, p1}, Lom/a;->c(Lom/a;Lom/a;)Lom/a;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static g(Lom/a;Lom/a;)Lom/a;
    .locals 8

    sget-object v0, Lom/a;->UNUSED:Lom/a;

    if-eq p0, v0, :cond_7

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lom/a;->GENERAL:Lom/a;

    if-eq p0, v0, :cond_7

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Lom/a;->CHAR_AND_INT:Lom/a;

    if-ne p0, v2, :cond_2

    sget-object v0, Lom/a;->INT_AND_TIME:Lom/a;

    if-eq p1, v0, :cond_3

    :cond_2
    sget-object v3, Lom/a;->INT_AND_TIME:Lom/a;

    if-ne p0, v3, :cond_4

    if-ne p1, v2, :cond_4

    :cond_3
    sget-object p0, Lom/a;->INT:Lom/a;

    return-object p0

    :cond_4
    iget-object p0, p0, Lom/a;->types:[Ljava/lang/Class;

    invoke-static {p0}, Lom/a;->a([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    iget-object p1, p1, Lom/a;->types:[Ljava/lang/Class;

    invoke-static {p1}, Lom/a;->a([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lom/a;->NULL:Lom/a;

    sget-object v4, Lom/a;->CHAR:Lom/a;

    sget-object v5, Lom/a;->INT:Lom/a;

    sget-object v6, Lom/a;->FLOAT:Lom/a;

    sget-object v7, Lom/a;->TIME:Lom/a;

    filled-new-array/range {v1 .. v7}, [Lom/a;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_6

    aget-object v1, p1, v0

    iget-object v2, v1, Lom/a;->types:[Ljava/lang/Class;

    invoke-static {v2}, Lom/a;->a([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    return-object v1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    sget-object p0, Lom/a;->GENERAL:Lom/a;

    return-object p0

    :cond_7
    :goto_1
    return-object v0
.end method

.method public static h(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/lang/Byte;

    if-ne p0, v0, :cond_0

    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_0
    const-class v0, Ljava/lang/Character;

    if-ne p0, v0, :cond_1

    sget-object p0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_1
    const-class v0, Ljava/lang/Short;

    if-ne p0, v0, :cond_2

    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_2
    const-class v0, Ljava/lang/Integer;

    if-ne p0, v0, :cond_3

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_3
    const-class v0, Ljava/lang/Long;

    if-ne p0, v0, :cond_4

    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_4
    const-class v0, Ljava/lang/Float;

    if-ne p0, v0, :cond_5

    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_5
    const-class v0, Ljava/lang/Double;

    if-ne p0, v0, :cond_6

    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_6
    const-class v0, Ljava/lang/Boolean;

    if-ne p0, v0, :cond_7

    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lom/a;
    .locals 1

    const-class v0, Lom/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lom/a;

    return-object p0
.end method

.method public static values()[Lom/a;
    .locals 1

    sget-object v0, Lom/a;->$VALUES:[Lom/a;

    invoke-virtual {v0}, [Lom/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lom/a;

    return-object v0
.end method


# virtual methods
.method public d(Ljava/lang/Class;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lom/a;->types:[Ljava/lang/Class;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_1

    return v1

    :cond_1
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v0, v4

    invoke-virtual {v5, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 6
    .annotation runtime LKm/b;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " conversion category"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lom/a;->types:[Ljava/lang/Class;

    if-eqz v1, :cond_2

    array-length v1, v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/util/StringJoiner;

    const-string v2, "(one of: "

    const-string v3, ")"

    const-string v4, ", "

    invoke-direct {v1, v4, v2, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lom/a;->types:[Ljava/lang/Class;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
