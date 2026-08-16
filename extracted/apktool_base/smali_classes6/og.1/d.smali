.class public final Log/d;
.super Log/i;
.source "SourceFile"


# static fields
.field public static final h:Log/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Log/d;

    invoke-direct {v0}, Log/d;-><init>()V

    sput-object v0, Log/d;->h:Log/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    sget v1, Log/o;->c:I

    sget v2, Log/o;->d:I

    sget-wide v3, Log/o;->e:J

    sget-object v5, Log/o;->a:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Log/i;-><init>(IIJLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final B()V
    .locals 0

    invoke-super {p0}, Log/i;->close()V

    return-void
.end method

.method public close()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Dispatchers.Default cannot be closed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public limitedParallelism(I)Leg/M;
    .locals 1
    .annotation build Leg/z0;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1}, Lmg/t;->a(I)V

    sget v0, Log/o;->c:I

    if-lt p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Leg/M;->limitedParallelism(I)Leg/M;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "Dispatchers.Default"

    return-object v0
.end method
