.class Lorg/openjdk/tools/javac/code/Types$CandidatesCache$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Types$CandidatesCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Entry"
.end annotation


# instance fields
.field msym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

.field site:Lorg/openjdk/tools/javac/code/Type;

.field final synthetic this$1:Lorg/openjdk/tools/javac/code/Types$CandidatesCache;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Types$CandidatesCache;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Types$CandidatesCache$Entry;->this$1:Lorg/openjdk/tools/javac/code/Types$CandidatesCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/openjdk/tools/javac/code/Types$CandidatesCache$Entry;->site:Lorg/openjdk/tools/javac/code/Type;

    iput-object p3, p0, Lorg/openjdk/tools/javac/code/Types$CandidatesCache$Entry;->msym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/openjdk/tools/javac/code/Types$CandidatesCache$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/openjdk/tools/javac/code/Types$CandidatesCache$Entry;

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Types$CandidatesCache$Entry;->msym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/Types$CandidatesCache$Entry;->msym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$CandidatesCache$Entry;->this$1:Lorg/openjdk/tools/javac/code/Types$CandidatesCache;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Types$CandidatesCache;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/Types$CandidatesCache$Entry;->site:Lorg/openjdk/tools/javac/code/Type;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Types$CandidatesCache$Entry;->site:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v2, p1}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$CandidatesCache$Entry;->this$1:Lorg/openjdk/tools/javac/code/Types$CandidatesCache;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Types$CandidatesCache;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Types$CandidatesCache$Entry;->site:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Types;->hashCode(Lorg/openjdk/tools/javac/code/Type;)I

    move-result v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Types$CandidatesCache$Entry;->msym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    return v0
.end method
