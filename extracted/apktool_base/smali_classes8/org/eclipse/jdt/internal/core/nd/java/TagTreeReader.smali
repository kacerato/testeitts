.class public abstract Lorg/eclipse/jdt/internal/core/nd/java/TagTreeReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/nd/java/TagTreeReader$FixedSizeTagHandler;,
        Lorg/eclipse/jdt/internal/core/nd/java/TagTreeReader$TagHandler;
    }
.end annotation


# static fields
.field public static final UNUSED_RESULT:[I


# instance fields
.field private readers:[Lorg/eclipse/jdt/internal/core/nd/java/TagTreeReader$TagHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/eclipse/jdt/internal/core/nd/java/TagTreeReader$TagHandler<",
            "*>;"
        }
    .end annotation
.end field

.field private values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/eclipse/jdt/internal/core/nd/java/TagTreeReader$TagHandler<",
            "*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/java/TagTreeReader;->UNUSED_RESULT:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [Lorg/eclipse/jdt/internal/core/nd/java/TagTreeReader$TagHandler;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/TagTreeReader;->readers:[Lorg/eclipse/jdt/internal/core/nd/java/TagTreeReader$TagHandler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/TagTreeReader;->values:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final add(BLorg/eclipse/jdt/internal/core/nd/java/TagTreeReader$TagHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Lorg/eclipse/jdt/internal/core/nd/java/TagTreeReader$TagHandler<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/TagTreeReader;->readers:[Lorg/eclipse/jdt/internal/core/nd/java/TagTreeReader$TagHandler;

    aput-object p2, v0, p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/java/TagTreeReader;->values:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final destruct(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V
    .locals 4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getByte(J)B

    move-result v0

    const-wide/16 v1, 0x1

    add-long/2addr v1, p2

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/nd/java/TagTreeReader;->readers:[Lorg/eclipse/jdt/internal/core/nd/java/TagTreeReader$TagHandler;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1, v1, v2, p0}, Lorg/eclipse/jdt/internal/core/nd/java/TagTreeReader$TagHandler;->destruct(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/java/TagTreeReader;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->describeProblem()Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object p1

    const-string v1, "tag"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, p2, p3, v2}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->addProblemAddress(Ljava/lang/String;JI)Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Found unknown tag with value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " at address "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->build(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/db/IndexException;

    move-result-object p1

    throw p1
.end method

.method public abstract getKeyFor(Ljava/lang/Object;)B
.end method

.method public final getSize(Lorg/eclipse/jdt/internal/core/nd/Nd;Ljava/lang/Object;)I
    .locals 3

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/nd/java/TagTreeReader;->getKeyFor(Ljava/lang/Object;)B

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/java/TagTreeReader;->readers:[Lorg/eclipse/jdt/internal/core/nd/java/TagTreeReader$TagHandler;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2, p0}, Lorg/eclipse/jdt/internal/core/nd/java/TagTreeReader$TagHandler;->getSize(Lorg/eclipse/jdt/internal/core/nd/Nd;Ljava/lang/Object;Lorg/eclipse/jdt/internal/core/nd/java/TagTreeReader;)I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Lorg/eclipse/jdt/internal/core/nd/db/IndexException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempted to get size of object "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " with unknown key "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/IndexException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final read(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/java/TagTreeReader;->UNUSED_RESULT:[I

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/eclipse/jdt/internal/core/nd/java/TagTreeReader;->read(Lorg/eclipse/jdt/internal/core/nd/Nd;J[I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final read(Lorg/eclipse/jdt/internal/core/nd/Nd;J[I)Ljava/lang/Object;
    .locals 9

    .line 2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getByte(J)B

    move-result v0

    const-wide/16 v1, 0x1

    add-long v5, p2, v1

    .line 4
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/java/TagTreeReader;->readers:[Lorg/eclipse/jdt/internal/core/nd/java/TagTreeReader$TagHandler;

    aget-object v3, v1, v0

    if-eqz v3, :cond_0

    move-object v4, p1

    move-object v7, p0

    move-object v8, p4

    .line 5
    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/nd/java/TagTreeReader$TagHandler;->read(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/java/TagTreeReader;[I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->describeProblem()Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object p1

    .line 7
    const-string p4, "tag"

    const/4 v1, 0x1

    invoke-virtual {p1, p4, p2, p3, v1}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->addProblemAddress(Ljava/lang/String;JI)Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object p1

    .line 8
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v1, "Found unknown tag with value "

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " at address "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->build(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/db/IndexException;

    move-result-object p1

    .line 9
    throw p1
.end method

.method public final write(Lorg/eclipse/jdt/internal/core/nd/Nd;JLjava/lang/Object;)V
    .locals 6

    .line 1
    sget-object v5, Lorg/eclipse/jdt/internal/core/nd/java/TagTreeReader;->UNUSED_RESULT:[I

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/nd/java/TagTreeReader;->write(Lorg/eclipse/jdt/internal/core/nd/Nd;JLjava/lang/Object;[I)V

    return-void
.end method

.method public final write(Lorg/eclipse/jdt/internal/core/nd/Nd;JLjava/lang/Object;[I)V
    .locals 9

    .line 2
    invoke-virtual {p0, p4}, Lorg/eclipse/jdt/internal/core/nd/java/TagTreeReader;->getKeyFor(Ljava/lang/Object;)B

    move-result v0

    .line 3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/java/TagTreeReader;->readers:[Lorg/eclipse/jdt/internal/core/nd/java/TagTreeReader$TagHandler;

    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p0

    move-object v7, p4

    move-object v8, p5

    .line 4
    invoke-virtual/range {v2 .. v8}, Lorg/eclipse/jdt/internal/core/nd/java/TagTreeReader$TagHandler;->write(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/java/TagTreeReader;Ljava/lang/Object;[I)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->describeProblem()Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invalid key "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " returned from getKeyFor(...)"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->build(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/db/IndexException;

    move-result-object p1

    throw p1
.end method
