.class Lorg/openjdk/tools/javac/code/Types$MethodFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/util/Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MethodFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/openjdk/tools/javac/util/Filter<",
        "Lorg/openjdk/tools/javac/code/Symbol;",
        ">;"
    }
.end annotation


# instance fields
.field msym:Lorg/openjdk/tools/javac/code/Symbol;

.field site:Lorg/openjdk/tools/javac/code/Type;

.field final synthetic this$0:Lorg/openjdk/tools/javac/code/Types;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Types;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Types$MethodFilter;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/openjdk/tools/javac/code/Types$MethodFilter;->msym:Lorg/openjdk/tools/javac/code/Symbol;

    iput-object p3, p0, Lorg/openjdk/tools/javac/code/Types$MethodFilter;->site:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method


# virtual methods
.method public bridge synthetic accepts(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/Types$MethodFilter;->accepts(Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result p1

    return p1
.end method

.method public accepts(Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 4

    .line 2
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Types$MethodFilter;->msym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x1000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$MethodFilter;->site:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Types$MethodFilter;->this$0:Lorg/openjdk/tools/javac/code/Types;

    .line 4
    invoke-virtual {p1, v0, v1}, Lorg/openjdk/tools/javac/code/Symbol;->isInheritedIn(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Types;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$MethodFilter;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Types$MethodFilter;->site:Lorg/openjdk/tools/javac/code/Type;

    .line 5
    invoke-virtual {v0, v1, p1}, Lorg/openjdk/tools/javac/code/Types;->memberType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Types$MethodFilter;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/Types$MethodFilter;->site:Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, p0, Lorg/openjdk/tools/javac/code/Types$MethodFilter;->msym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v1, v2, v3}, Lorg/openjdk/tools/javac/code/Types;->memberType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/openjdk/tools/javac/code/Types;->overrideEquivalent(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
