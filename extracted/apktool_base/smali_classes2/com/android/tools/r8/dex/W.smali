.class public Lcom/android/tools/r8/dex/W;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/dex/W$a;,
        Lcom/android/tools/r8/dex/W$b;
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;

.field public static final g:Ljava/lang/String;

.field public static final h:Ljava/lang/String;

.field public static final synthetic i:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/gL;

.field public final b:Lcom/android/tools/r8/dex/W$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/android/tools/r8/dex/W$b;->b:Lcom/android/tools/r8/dex/W$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "~~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "{"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/tools/r8/dex/W;->c:Ljava/lang/String;

    sget-object v1, Lcom/android/tools/r8/dex/W$b;->e:Lcom/android/tools/r8/dex/W$b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/tools/r8/dex/W;->d:Ljava/lang/String;

    sget-object v1, Lcom/android/tools/r8/dex/W$b;->f:Lcom/android/tools/r8/dex/W$b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/tools/r8/dex/W;->e:Ljava/lang/String;

    sget-object v1, Lcom/android/tools/r8/dex/W$b;->d:Lcom/android/tools/r8/dex/W$b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/tools/r8/dex/W;->f:Ljava/lang/String;

    sget-object v1, Lcom/android/tools/r8/dex/W$b;->g:Lcom/android/tools/r8/dex/W$b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/tools/r8/dex/W;->g:Ljava/lang/String;

    sget-object v1, Lcom/android/tools/r8/dex/W$b;->i:Lcom/android/tools/r8/dex/W$b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/dex/W;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/dex/W$b;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/gL;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/gL;-><init>()V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/dex/W;->b:Lcom/android/tools/r8/dex/W$b;

    .line 4
    iput-object v0, p0, Lcom/android/tools/r8/dex/W;->a:Lcom/android/tools/r8/internal/gL;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/dex/W$b;Lcom/android/tools/r8/internal/gL;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/android/tools/r8/dex/W;->b:Lcom/android/tools/r8/dex/W$b;

    .line 7
    iput-object p2, p0, Lcom/android/tools/r8/dex/W;->a:Lcom/android/tools/r8/internal/gL;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/dex/W$b;Ljava/lang/String;)Lcom/android/tools/r8/dex/W;
    .locals 1

    .line 40
    :try_start_0
    invoke-static {p1}, Lcom/android/tools/r8/internal/iL;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/dL;

    move-result-object p1

    .line 41
    instance-of v0, p1, Lcom/android/tools/r8/internal/gL;

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Lcom/android/tools/r8/dex/W;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/dL;->d()Lcom/android/tools/r8/internal/gL;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/dex/W;-><init>(Lcom/android/tools/r8/dex/W$b;Lcom/android/tools/r8/internal/gL;)V
    :try_end_0
    .catch Lcom/android/tools/r8/internal/mL; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/dex/W;
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/android/tools/r8/graph/L2;->f:[B

    invoke-static {v0}, Lcom/android/tools/r8/dex/W;->a([B)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 26
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p0

    .line 27
    sget-object v0, Lcom/android/tools/r8/dex/W;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    sget-object v1, Lcom/android/tools/r8/dex/W$b;->b:Lcom/android/tools/r8/dex/W$b;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/tools/r8/dex/W;->a(Lcom/android/tools/r8/dex/W$b;Ljava/lang/String;)Lcom/android/tools/r8/dex/W;

    move-result-object p0

    return-object p0

    .line 29
    :cond_0
    sget-object v0, Lcom/android/tools/r8/dex/W;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30
    sget-object v1, Lcom/android/tools/r8/dex/W$b;->e:Lcom/android/tools/r8/dex/W$b;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/tools/r8/dex/W;->a(Lcom/android/tools/r8/dex/W$b;Ljava/lang/String;)Lcom/android/tools/r8/dex/W;

    move-result-object p0

    return-object p0

    .line 31
    :cond_1
    sget-object v0, Lcom/android/tools/r8/dex/W;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 32
    sget-object v1, Lcom/android/tools/r8/dex/W$b;->f:Lcom/android/tools/r8/dex/W$b;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/tools/r8/dex/W;->a(Lcom/android/tools/r8/dex/W$b;Ljava/lang/String;)Lcom/android/tools/r8/dex/W;

    move-result-object p0

    return-object p0

    .line 33
    :cond_2
    sget-object v0, Lcom/android/tools/r8/dex/W;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 34
    sget-object v1, Lcom/android/tools/r8/dex/W$b;->d:Lcom/android/tools/r8/dex/W$b;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/tools/r8/dex/W;->a(Lcom/android/tools/r8/dex/W$b;Ljava/lang/String;)Lcom/android/tools/r8/dex/W;

    move-result-object p0

    return-object p0

    .line 35
    :cond_3
    sget-object v0, Lcom/android/tools/r8/dex/W;->g:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 36
    sget-object v1, Lcom/android/tools/r8/dex/W$b;->g:Lcom/android/tools/r8/dex/W$b;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/tools/r8/dex/W;->a(Lcom/android/tools/r8/dex/W$b;Ljava/lang/String;)Lcom/android/tools/r8/dex/W;

    move-result-object p0

    return-object p0

    .line 37
    :cond_4
    sget-object v0, Lcom/android/tools/r8/dex/W;->h:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 38
    sget-object v1, Lcom/android/tools/r8/dex/W$b;->i:Lcom/android/tools/r8/dex/W$b;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/tools/r8/dex/W;->a(Lcom/android/tools/r8/dex/W$b;Ljava/lang/String;)Lcom/android/tools/r8/dex/W;

    move-result-object p0

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/gL;Ljava/util/Map$Entry;)V
    .locals 1

    .line 24
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/dL;

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/gL;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/dL;)V

    return-void
.end method

.method public static a([B)Z
    .locals 3

    .line 39
    array-length v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    aget-byte v0, p0, v2

    const/16 v1, 0x7e

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    aget-byte p0, p0, v0

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    return v2
.end method


# virtual methods
.method public a(J)Lcom/android/tools/r8/dex/W;
    .locals 2

    .line 6
    sget-boolean v0, Lcom/android/tools/r8/dex/W;->i:Z

    const-string v1, "min-api"

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/dex/W;->a:Lcom/android/tools/r8/internal/gL;

    .line 7
    iget-object v0, v0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 10
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/dex/W;->a:Lcom/android/tools/r8/internal/gL;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    new-instance p2, Lcom/android/tools/r8/internal/jL;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/jL;-><init>(Ljava/lang/Number;)V

    .line 12
    invoke-virtual {v0, v1, p2}, Lcom/android/tools/r8/internal/gL;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/dL;)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/android/tools/r8/dex/W;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/dex/W;->i:Z

    const-string v1, "version"

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/dex/W;->a:Lcom/android/tools/r8/internal/gL;

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/dex/W;->a:Lcom/android/tools/r8/internal/gL;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/gL;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/dex/W;->a:Lcom/android/tools/r8/internal/gL;

    .line 14
    iget-object v0, v0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    .line 15
    const-string v1, "backend"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/dex/W;->a:Lcom/android/tools/r8/internal/gL;

    .line 17
    iget-object v0, v0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    .line 18
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/dL;

    .line 19
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 20
    :cond_0
    sget-object v0, Lcom/android/tools/r8/dex/V;->a:[I

    iget-object v1, p0, Lcom/android/tools/r8/dex/W;->b:Lcom/android/tools/r8/dex/W$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 21
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/dex/W;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22
    sget-object v0, Lcom/android/tools/r8/dex/W$a;->c:Lcom/android/tools/r8/dex/W$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/zq0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 23
    :cond_2
    const-string v0, "CF"

    invoke-static {v0}, Lcom/android/tools/r8/internal/zq0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/dex/W;->a:Lcom/android/tools/r8/internal/gL;

    iget-object v0, v0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v1, "compilation-mode"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/dex/W;->a:Lcom/android/tools/r8/internal/gL;

    iget-object v0, v0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/dL;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()[Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/dex/W;->a:Lcom/android/tools/r8/internal/gL;

    iget-object v0, v0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v1, "desugared-library-identifiers"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/dex/W;->a:Lcom/android/tools/r8/internal/gL;

    iget-object v0, v0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/dL;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->c()Lcom/android/tools/r8/internal/bL;

    move-result-object v0

    iget-object v1, v0, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    :goto_0
    iget-object v3, v0, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, v0, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/dL;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    new-array v0, v2, [Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/dex/W;->a:Lcom/android/tools/r8/internal/gL;

    const-string v1, "has-checksums"

    iget-object v0, v0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/dL;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->a()Z

    move-result v0

    return v0
.end method

.method public e()Ljava/lang/Long;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/dex/W;->a:Lcom/android/tools/r8/internal/gL;

    const-string v1, "min-api"

    iget-object v0, v0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/dL;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/tools/r8/dex/W;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/tools/r8/dex/W;

    iget-object v0, p0, Lcom/android/tools/r8/dex/W;->b:Lcom/android/tools/r8/dex/W$b;

    iget-object v2, p1, Lcom/android/tools/r8/dex/W;->b:Lcom/android/tools/r8/dex/W$b;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/dex/W;->a:Lcom/android/tools/r8/internal/gL;

    iget-object p1, p1, Lcom/android/tools/r8/dex/W;->a:Lcom/android/tools/r8/internal/gL;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/gL;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public f()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/dex/W;->a:Lcom/android/tools/r8/internal/gL;

    const-string v1, "pg-map-id"

    iget-object v0, v0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/dL;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/dex/W;->a:Lcom/android/tools/r8/internal/gL;

    const-string v1, "r8-mode"

    iget-object v0, v0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/dL;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/android/tools/r8/dex/W$b;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/dex/W;->b:Lcom/android/tools/r8/dex/W$b;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/dex/W;->b:Lcom/android/tools/r8/dex/W$b;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/dex/W;->a:Lcom/android/tools/r8/internal/gL;

    iget-object v1, v1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v0

    return v1
.end method

.method public i()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/dex/W;->a:Lcom/android/tools/r8/internal/gL;

    const-string v1, "version"

    iget-object v0, v0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/dL;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/dex/W;->a:Lcom/android/tools/r8/internal/gL;

    const-string v1, "desugared-library-identifiers"

    iget-object v0, v0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/dex/W;->a:Lcom/android/tools/r8/internal/gL;

    const-string v1, "min-api"

    iget-object v0, v0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/dex/W;->a:Lcom/android/tools/r8/internal/gL;

    iget-object v0, v0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v1, "platform"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/dex/W;->a:Lcom/android/tools/r8/internal/gL;

    iget-object v0, v0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/dL;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public m()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/dex/W;->k()Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/gL;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/gL;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/dex/W;->a:Lcom/android/tools/r8/internal/gL;

    iget-object v1, v1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/FS;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lu/e0;

    invoke-direct {v2}, Lu/e0;-><init>()V

    invoke-static {v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lu/f0;

    invoke-direct {v2, v0}, Lu/f0;-><init>(Lcom/android/tools/r8/internal/gL;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/android/tools/r8/dex/W;->b:Lcom/android/tools/r8/dex/W$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "~~"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
