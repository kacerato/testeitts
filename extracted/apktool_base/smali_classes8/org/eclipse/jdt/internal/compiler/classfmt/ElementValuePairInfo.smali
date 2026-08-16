.class public Lorg/eclipse/jdt/internal/compiler/classfmt/ElementValuePairInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/IBinaryElementValuePair;


# static fields
.field static final NoMembers:[Lorg/eclipse/jdt/internal/compiler/classfmt/ElementValuePairInfo;


# instance fields
.field private name:[C

.field private value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/classfmt/ElementValuePairInfo;

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/classfmt/ElementValuePairInfo;->NoMembers:[Lorg/eclipse/jdt/internal/compiler/classfmt/ElementValuePairInfo;

    return-void
.end method

.method public constructor <init>([CLjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ElementValuePairInfo;->name:[C

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ElementValuePairInfo;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lorg/eclipse/jdt/internal/compiler/classfmt/ElementValuePairInfo;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ElementValuePairInfo;->name:[C

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/classfmt/ElementValuePairInfo;->name:[C

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ElementValuePairInfo;->value:Ljava/lang/Object;

    if-nez v2, :cond_4

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/classfmt/ElementValuePairInfo;->value:Ljava/lang/Object;

    if-eqz p1, :cond_5

    return v1

    :cond_4
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/classfmt/ElementValuePairInfo;->value:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public getName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ElementValuePairInfo;->name:[C

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ElementValuePairInfo;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ElementValuePairInfo;->name:[C

    invoke-static {v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->hashCode([C)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ElementValuePairInfo;->value:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ElementValuePairInfo;->name:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ElementValuePairInfo;->value:Ljava/lang/Object;

    instance-of v2, v1, [Ljava/lang/Object;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, [Ljava/lang/Object;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    if-lez v1, :cond_1

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    aget-object v4, v2, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
