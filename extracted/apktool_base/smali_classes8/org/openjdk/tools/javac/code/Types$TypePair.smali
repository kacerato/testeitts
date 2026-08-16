.class Lorg/openjdk/tools/javac/code/Types$TypePair;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TypePair"
.end annotation


# instance fields
.field strict:Z

.field final t1:Lorg/openjdk/tools/javac/code/Type;

.field final t2:Lorg/openjdk/tools/javac/code/Type;

.field final synthetic this$0:Lorg/openjdk/tools/javac/code/Types;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Types;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/openjdk/tools/javac/code/Types$TypePair;-><init>(Lorg/openjdk/tools/javac/code/Types;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/code/Types;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Z)V
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Types$TypePair;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lorg/openjdk/tools/javac/code/Types$TypePair;->t1:Lorg/openjdk/tools/javac/code/Type;

    .line 4
    iput-object p3, p0, Lorg/openjdk/tools/javac/code/Types$TypePair;->t2:Lorg/openjdk/tools/javac/code/Type;

    .line 5
    iput-boolean p4, p0, Lorg/openjdk/tools/javac/code/Types$TypePair;->strict:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Lorg/openjdk/tools/javac/code/Types$TypePair;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/openjdk/tools/javac/code/Types$TypePair;

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$TypePair;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/Types$TypePair;->t1:Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, p1, Lorg/openjdk/tools/javac/code/Types$TypePair;->t1:Lorg/openjdk/tools/javac/code/Type;

    iget-boolean v4, p0, Lorg/openjdk/tools/javac/code/Types$TypePair;->strict:Z

    invoke-virtual {v0, v2, v3, v4}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$TypePair;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/Types$TypePair;->t2:Lorg/openjdk/tools/javac/code/Type;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Types$TypePair;->t2:Lorg/openjdk/tools/javac/code/Type;

    iget-boolean v3, p0, Lorg/openjdk/tools/javac/code/Types$TypePair;->strict:Z

    invoke-virtual {v0, v2, p1, v3}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$TypePair;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Types$TypePair;->t1:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Types;->hashCode(Lorg/openjdk/tools/javac/code/Type;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x7f

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Types$TypePair;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/Types$TypePair;->t2:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Types;->hashCode(Lorg/openjdk/tools/javac/code/Type;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
