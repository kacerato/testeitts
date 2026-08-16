.class public Lorg/openjdk/tools/javac/jvm/ClassFile$NameAndType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/ClassFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NameAndType"
.end annotation


# instance fields
.field name:Lorg/openjdk/tools/javac/util/Name;

.field types:Lorg/openjdk/tools/javac/code/Types;

.field uniqueType:Lorg/openjdk/tools/javac/code/Types$UniqueType;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Types;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassFile$NameAndType;->name:Lorg/openjdk/tools/javac/util/Name;

    new-instance p1, Lorg/openjdk/tools/javac/code/Types$UniqueType;

    invoke-direct {p1, p2, p3}, Lorg/openjdk/tools/javac/code/Types$UniqueType;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Types;)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/ClassFile$NameAndType;->uniqueType:Lorg/openjdk/tools/javac/code/Types$UniqueType;

    iput-object p3, p0, Lorg/openjdk/tools/javac/jvm/ClassFile$NameAndType;->types:Lorg/openjdk/tools/javac/code/Types;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lorg/openjdk/tools/javac/jvm/ClassFile$NameAndType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassFile$NameAndType;->name:Lorg/openjdk/tools/javac/util/Name;

    check-cast p1, Lorg/openjdk/tools/javac/jvm/ClassFile$NameAndType;

    iget-object v1, p1, Lorg/openjdk/tools/javac/jvm/ClassFile$NameAndType;->name:Lorg/openjdk/tools/javac/util/Name;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassFile$NameAndType;->uniqueType:Lorg/openjdk/tools/javac/code/Types$UniqueType;

    iget-object p1, p1, Lorg/openjdk/tools/javac/jvm/ClassFile$NameAndType;->uniqueType:Lorg/openjdk/tools/javac/code/Types$UniqueType;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types$UniqueType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassFile$NameAndType;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassFile$NameAndType;->uniqueType:Lorg/openjdk/tools/javac/code/Types$UniqueType;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Types$UniqueType;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public setType(Lorg/openjdk/tools/javac/code/Type;)V
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/code/Types$UniqueType;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/ClassFile$NameAndType;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-direct {v0, p1, v1}, Lorg/openjdk/tools/javac/code/Types$UniqueType;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Types;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/ClassFile$NameAndType;->uniqueType:Lorg/openjdk/tools/javac/code/Types$UniqueType;

    return-void
.end method
