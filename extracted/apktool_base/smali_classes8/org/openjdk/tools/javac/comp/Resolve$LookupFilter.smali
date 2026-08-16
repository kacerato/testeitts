.class Lorg/openjdk/tools/javac/comp/Resolve$LookupFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/util/Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Resolve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LookupFilter"
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
.field abstractOk:Z

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Resolve;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Resolve;Z)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$LookupFilter;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lorg/openjdk/tools/javac/comp/Resolve$LookupFilter;->abstractOk:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic accepts(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Resolve$LookupFilter;->accepts(Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result p1

    return p1
.end method

.method public accepts(Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 6

    .line 2
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    .line 3
    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne p1, v2, :cond_1

    const-wide/16 v2, 0x1000

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$LookupFilter;->abstractOk:Z

    if-nez p1, :cond_0

    const-wide v2, 0x80000000000L

    and-long/2addr v2, v0

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    const-wide/16 v2, 0x400

    and-long/2addr v0, v2

    cmp-long p1, v0, v4

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
