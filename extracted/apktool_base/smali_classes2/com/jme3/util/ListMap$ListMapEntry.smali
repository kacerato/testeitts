.class final Lcom/jme3/util/ListMap$ListMapEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/util/ListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ListMapEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jme3/util/ListMap$ListMapEntry;->key:Ljava/lang/Object;

    iput-object p2, p0, Lcom/jme3/util/ListMap$ListMapEntry;->value:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic access$000(Lcom/jme3/util/ListMap$ListMapEntry;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/jme3/util/ListMap$ListMapEntry;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/jme3/util/ListMap$ListMapEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/jme3/util/ListMap$ListMapEntry;->value:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/jme3/util/ListMap$ListMapEntry;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/jme3/util/ListMap$ListMapEntry;->key:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public clone()Lcom/jme3/util/ListMap$ListMapEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/jme3/util/ListMap$ListMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/jme3/util/ListMap$ListMapEntry;

    iget-object v1, p0, Lcom/jme3/util/ListMap$ListMapEntry;->key:Ljava/lang/Object;

    iget-object v2, p0, Lcom/jme3/util/ListMap$ListMapEntry;->value:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/jme3/util/ListMap$ListMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/jme3/util/ListMap$ListMapEntry;->clone()Lcom/jme3/util/ListMap$ListMapEntry;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/jme3/util/ListMap$ListMapEntry;

    if-eq v2, v1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/jme3/util/ListMap$ListMapEntry;

    iget-object v1, p0, Lcom/jme3/util/ListMap$ListMapEntry;->key:Ljava/lang/Object;

    iget-object v2, p1, Lcom/jme3/util/ListMap$ListMapEntry;->key:Ljava/lang/Object;

    if-eq v1, v2, :cond_3

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    return v0

    :cond_3
    iget-object v1, p0, Lcom/jme3/util/ListMap$ListMapEntry;->value:Ljava/lang/Object;

    iget-object p1, p1, Lcom/jme3/util/ListMap$ListMapEntry;->value:Ljava/lang/Object;

    if-eq v1, p1, :cond_5

    if-eqz v1, :cond_4

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    return v0

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/util/ListMap$ListMapEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/util/ListMap$ListMapEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/jme3/util/ListMap$ListMapEntry;->key:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/jme3/util/ListMap$ListMapEntry;->value:Ljava/lang/Object;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
