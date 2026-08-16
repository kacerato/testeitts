.class public Lcom/github/javaparser/TokenRange;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/github/javaparser/JavaToken;",
        ">;"
    }
.end annotation


# static fields
.field public static final INVALID:Lcom/github/javaparser/TokenRange;


# instance fields
.field private final begin:Lcom/github/javaparser/JavaToken;

.field private final end:Lcom/github/javaparser/JavaToken;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/github/javaparser/TokenRange;

    sget-object v1, Lcom/github/javaparser/JavaToken;->INVALID:Lcom/github/javaparser/JavaToken;

    invoke-direct {v0, v1, v1}, Lcom/github/javaparser/TokenRange;-><init>(Lcom/github/javaparser/JavaToken;Lcom/github/javaparser/JavaToken;)V

    sput-object v0, Lcom/github/javaparser/TokenRange;->INVALID:Lcom/github/javaparser/TokenRange;

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/JavaToken;Lcom/github/javaparser/JavaToken;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "begin",
            "end"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/JavaToken;

    iput-object p1, p0, Lcom/github/javaparser/TokenRange;->begin:Lcom/github/javaparser/JavaToken;

    invoke-static {p2}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/JavaToken;

    iput-object p1, p0, Lcom/github/javaparser/TokenRange;->end:Lcom/github/javaparser/JavaToken;

    return-void
.end method

.method public static synthetic access$000(Lcom/github/javaparser/TokenRange;)Lcom/github/javaparser/JavaToken;
    .locals 0

    iget-object p0, p0, Lcom/github/javaparser/TokenRange;->begin:Lcom/github/javaparser/JavaToken;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/github/javaparser/TokenRange;)Lcom/github/javaparser/JavaToken;
    .locals 0

    iget-object p0, p0, Lcom/github/javaparser/TokenRange;->end:Lcom/github/javaparser/JavaToken;

    return-object p0
.end method


# virtual methods
.method public getBegin()Lcom/github/javaparser/JavaToken;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/TokenRange;->begin:Lcom/github/javaparser/JavaToken;

    return-object v0
.end method

.method public getEnd()Lcom/github/javaparser/JavaToken;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/TokenRange;->end:Lcom/github/javaparser/JavaToken;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/github/javaparser/JavaToken;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/TokenRange$1;

    invoke-direct {v0, p0}, Lcom/github/javaparser/TokenRange$1;-><init>(Lcom/github/javaparser/TokenRange;)V

    return-object v0
.end method

.method public toRange()Ljava/util/Optional;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/Range;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/TokenRange;->begin:Lcom/github/javaparser/JavaToken;

    invoke-virtual {v0}, Lcom/github/javaparser/JavaToken;->hasRange()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/javaparser/TokenRange;->end:Lcom/github/javaparser/JavaToken;

    invoke-virtual {v0}, Lcom/github/javaparser/JavaToken;->hasRange()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/github/javaparser/Range;

    iget-object v1, p0, Lcom/github/javaparser/TokenRange;->begin:Lcom/github/javaparser/JavaToken;

    invoke-virtual {v1}, Lcom/github/javaparser/JavaToken;->getRange()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/Range;

    iget-object v1, v1, Lcom/github/javaparser/Range;->begin:Lcom/github/javaparser/Position;

    iget-object v2, p0, Lcom/github/javaparser/TokenRange;->end:Lcom/github/javaparser/JavaToken;

    invoke-virtual {v2}, Lcom/github/javaparser/JavaToken;->getRange()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/Range;

    iget-object v2, v2, Lcom/github/javaparser/Range;->end:Lcom/github/javaparser/Position;

    invoke-direct {v0, v1, v2}, Lcom/github/javaparser/Range;-><init>(Lcom/github/javaparser/Position;Lcom/github/javaparser/Position;)V

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/github/javaparser/TokenRange;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/JavaToken;

    invoke-virtual {v2}, Lcom/github/javaparser/JavaToken;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withBegin(Lcom/github/javaparser/JavaToken;)Lcom/github/javaparser/TokenRange;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "begin"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/TokenRange;

    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/JavaToken;

    iget-object v1, p0, Lcom/github/javaparser/TokenRange;->end:Lcom/github/javaparser/JavaToken;

    invoke-direct {v0, p1, v1}, Lcom/github/javaparser/TokenRange;-><init>(Lcom/github/javaparser/JavaToken;Lcom/github/javaparser/JavaToken;)V

    return-object v0
.end method

.method public withEnd(Lcom/github/javaparser/JavaToken;)Lcom/github/javaparser/TokenRange;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "end"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/TokenRange;

    iget-object v1, p0, Lcom/github/javaparser/TokenRange;->begin:Lcom/github/javaparser/JavaToken;

    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/JavaToken;

    invoke-direct {v0, v1, p1}, Lcom/github/javaparser/TokenRange;-><init>(Lcom/github/javaparser/JavaToken;Lcom/github/javaparser/JavaToken;)V

    return-object v0
.end method
