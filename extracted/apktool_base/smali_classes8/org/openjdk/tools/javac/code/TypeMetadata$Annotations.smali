.class public Lorg/openjdk/tools/javac/code/TypeMetadata$Annotations;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/code/TypeMetadata$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/TypeMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Annotations"
.end annotation


# static fields
.field public static final TO_BE_SET:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private annos:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/code/TypeMetadata$Annotations;->TO_BE_SET:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/TypeMetadata$Annotations;->annos:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method


# virtual methods
.method public combine(Lorg/openjdk/tools/javac/code/TypeMetadata$Entry;)Lorg/openjdk/tools/javac/code/TypeMetadata$Annotations;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/TypeMetadata$Annotations;->annos:Lorg/openjdk/tools/javac/util/List;

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeMetadata$Annotations;->TO_BE_SET:Lorg/openjdk/tools/javac/util/List;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    .line 3
    check-cast p1, Lorg/openjdk/tools/javac/code/TypeMetadata$Annotations;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/TypeMetadata$Annotations;->annos:Lorg/openjdk/tools/javac/util/List;

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/TypeMetadata$Annotations;->annos:Lorg/openjdk/tools/javac/util/List;

    return-object p0
.end method

.method public bridge synthetic combine(Lorg/openjdk/tools/javac/code/TypeMetadata$Entry;)Lorg/openjdk/tools/javac/code/TypeMetadata$Entry;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/TypeMetadata$Annotations;->combine(Lorg/openjdk/tools/javac/code/TypeMetadata$Entry;)Lorg/openjdk/tools/javac/code/TypeMetadata$Annotations;

    move-result-object p1

    return-object p1
.end method

.method public getAnnotations()Lorg/openjdk/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/TypeMetadata$Annotations;->annos:Lorg/openjdk/tools/javac/util/List;

    return-object v0
.end method

.method public kind()Lorg/openjdk/tools/javac/code/TypeMetadata$Entry$Kind;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeMetadata$Entry$Kind;->ANNOTATIONS:Lorg/openjdk/tools/javac/code/TypeMetadata$Entry$Kind;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ANNOTATIONS [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/TypeMetadata$Annotations;->annos:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
