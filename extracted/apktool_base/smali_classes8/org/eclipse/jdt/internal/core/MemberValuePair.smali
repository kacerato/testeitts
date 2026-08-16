.class public Lorg/eclipse/jdt/internal/core/MemberValuePair;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/IMemberValuePair;


# instance fields
.field memberName:Ljava/lang/String;

.field public value:Ljava/lang/Object;

.field public valueKind:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xe

    .line 2
    iput v0, p0, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    .line 3
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/MemberValuePair;->memberName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/MemberValuePair;-><init>(Ljava/lang/String;)V

    .line 5
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/MemberValuePair;->value:Ljava/lang/Object;

    .line 6
    iput p3, p0, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/eclipse/jdt/internal/core/MemberValuePair;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/eclipse/jdt/internal/core/MemberValuePair;

    iget v0, p0, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    iget v2, p1, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/MemberValuePair;->memberName:Ljava/lang/String;

    iget-object v2, p1, Lorg/eclipse/jdt/internal/core/MemberValuePair;->memberName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/MemberValuePair;->value:Ljava/lang/Object;

    iget-object v2, p1, Lorg/eclipse/jdt/internal/core/MemberValuePair;->value:Ljava/lang/Object;

    if-eq v0, v2, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/MemberValuePair;->value:Ljava/lang/Object;

    instance-of v2, v0, [Ljava/lang/Object;

    if-eqz v2, :cond_3

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/MemberValuePair;->value:Ljava/lang/Object;

    instance-of v2, p1, [Ljava/lang/Object;

    if-eqz v2, :cond_3

    check-cast v0, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/core/util/Util;->equalArraysOrNull([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public getMemberName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/MemberValuePair;->memberName:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/MemberValuePair;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public getValueKind()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/MemberValuePair;->memberName:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/MemberValuePair;->value:Ljava/lang/Object;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget v1, p0, Lorg/eclipse/jdt/internal/core/MemberValuePair;->valueKind:I

    add-int/2addr v0, v1

    return v0
.end method
