.class public Lorg/openjdk/tools/sjavac/pubapi/PubType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x67054590dbb63701L


# instance fields
.field public final fqName:Ljava/lang/String;

.field public final modifiers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/lang/model/element/Modifier;",
            ">;"
        }
    .end annotation
.end field

.field public final pubApi:Lorg/openjdk/tools/sjavac/pubapi/PubApi;


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/lang/String;Lorg/openjdk/tools/sjavac/pubapi/PubApi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/lang/model/element/Modifier;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/openjdk/tools/sjavac/pubapi/PubApi;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/pubapi/PubType;->modifiers:Ljava/util/Set;

    iput-object p2, p0, Lorg/openjdk/tools/sjavac/pubapi/PubType;->fqName:Ljava/lang/String;

    iput-object p3, p0, Lorg/openjdk/tools/sjavac/pubapi/PubType;->pubApi:Lorg/openjdk/tools/sjavac/pubapi/PubApi;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    check-cast p1, Lorg/openjdk/tools/sjavac/pubapi/PubType;

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/pubapi/PubType;->modifiers:Ljava/util/Set;

    iget-object v1, p1, Lorg/openjdk/tools/sjavac/pubapi/PubType;->modifiers:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/pubapi/PubType;->fqName:Ljava/lang/String;

    iget-object v1, p1, Lorg/openjdk/tools/sjavac/pubapi/PubType;->fqName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/pubapi/PubType;->pubApi:Lorg/openjdk/tools/sjavac/pubapi/PubApi;

    iget-object p1, p1, Lorg/openjdk/tools/sjavac/pubapi/PubType;->pubApi:Lorg/openjdk/tools/sjavac/pubapi/PubApi;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public getFqName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/pubapi/PubType;->fqName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/pubapi/PubType;->modifiers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/pubapi/PubType;->fqName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/pubapi/PubType;->pubApi:Lorg/openjdk/tools/sjavac/pubapi/PubApi;

    invoke-virtual {v1}, Lorg/openjdk/tools/sjavac/pubapi/PubApi;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/pubapi/PubType;->modifiers:Ljava/util/Set;

    iget-object v2, p0, Lorg/openjdk/tools/sjavac/pubapi/PubType;->fqName:Ljava/lang/String;

    iget-object v3, p0, Lorg/openjdk/tools/sjavac/pubapi/PubType;->pubApi:Lorg/openjdk/tools/sjavac/pubapi/PubApi;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s[modifiers: %s, fqName: %s, pubApi: %s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
