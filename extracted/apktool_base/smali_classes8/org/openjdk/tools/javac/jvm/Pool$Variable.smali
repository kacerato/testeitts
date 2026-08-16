.class Lorg/openjdk/tools/javac/jvm/Pool$Variable;
.super Lorg/openjdk/tools/javac/code/Symbol$DelegatedSymbol;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/Pool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Variable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/tools/javac/code/Symbol$DelegatedSymbol<",
        "Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;",
        ">;"
    }
.end annotation


# instance fields
.field uniqueType:Lorg/openjdk/tools/javac/code/Types$UniqueType;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;Lorg/openjdk/tools/javac/code/Types;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/code/Symbol$DelegatedSymbol;-><init>(Lorg/openjdk/tools/javac/code/Symbol;)V

    new-instance v0, Lorg/openjdk/tools/javac/code/Types$UniqueType;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {v0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$UniqueType;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Types;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/Pool$Variable;->uniqueType:Lorg/openjdk/tools/javac/code/Types$UniqueType;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Lorg/openjdk/tools/javac/jvm/Pool$Variable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/openjdk/tools/javac/jvm/Pool$Variable;

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$DelegatedSymbol;->other:Lorg/openjdk/tools/javac/code/Symbol;

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/Symbol$DelegatedSymbol;->other:Lorg/openjdk/tools/javac/code/Symbol;

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v3, v0, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v4, v2, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    if-ne v3, v4, :cond_1

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    if-ne v0, v2, :cond_1

    iget-object p1, p1, Lorg/openjdk/tools/javac/jvm/Pool$Variable;->uniqueType:Lorg/openjdk/tools/javac/code/Types$UniqueType;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Pool$Variable;->uniqueType:Lorg/openjdk/tools/javac/code/Types$UniqueType;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Types$UniqueType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$DelegatedSymbol;->other:Lorg/openjdk/tools/javac/code/Symbol;

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x21

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x9

    add-int/2addr v1, v0

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Pool$Variable;->uniqueType:Lorg/openjdk/tools/javac/code/Types$UniqueType;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Types$UniqueType;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method
