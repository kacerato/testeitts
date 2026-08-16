.class public final Lcom/android/tools/r8/internal/M40;
.super Lcom/android/tools/r8/naming/mappinginformation/c;
.source "SourceFile"


# static fields
.field public static final c:Lcom/android/tools/r8/naming/MapVersion;

.field public static final d:Lcom/android/tools/r8/naming/MapVersion;


# instance fields
.field public a:Lcom/android/tools/r8/internal/WE;

.field public b:Lcom/android/tools/r8/references/MethodReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/tools/r8/naming/MapVersion;->MAP_VERSION_2_0:Lcom/android/tools/r8/naming/MapVersion;

    sput-object v0, Lcom/android/tools/r8/internal/M40;->c:Lcom/android/tools/r8/naming/MapVersion;

    sget-object v0, Lcom/android/tools/r8/naming/MapVersion;->MAP_VERSION_2_1:Lcom/android/tools/r8/naming/MapVersion;

    sput-object v0, Lcom/android/tools/r8/internal/M40;->d:Lcom/android/tools/r8/naming/MapVersion;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/WE;Lcom/android/tools/r8/references/MethodReference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/naming/mappinginformation/c;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/M40;->a:Lcom/android/tools/r8/internal/WE;

    iput-object p2, p0, Lcom/android/tools/r8/internal/M40;->b:Lcom/android/tools/r8/references/MethodReference;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/WE;Ljava/util/Map$Entry;)V
    .locals 2

    .line 26
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 28
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/dL;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/dL;->b()I

    move-result v1

    .line 29
    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/WE;->b(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 30
    :catchall_0
    new-instance p0, Lcom/android/tools/r8/internal/If;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid position entry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/gL;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/jL;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/jL;-><init>(Ljava/lang/Number;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/gL;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/dL;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/naming/MapVersion;Lcom/android/tools/r8/internal/gL;Ljava/util/function/Consumer;)V
    .locals 3

    .line 4
    sget-object v0, Lcom/android/tools/r8/internal/M40;->c:Lcom/android/tools/r8/naming/MapVersion;

    invoke-interface {p0, v0}, Lcom/android/tools/r8/internal/C40;->d(Lcom/android/tools/r8/internal/C40;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    .line 6
    const-string v1, "positions"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/gL;

    if-eqz v0, :cond_2

    .line 7
    new-instance v1, Lcom/android/tools/r8/internal/WE;

    const/16 v2, 0x10

    .line 8
    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/WE;-><init>(I)V

    .line 9
    iget-object v0, v0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/FS;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 10
    new-instance v2, Lcom/android/tools/r8/internal/oM0;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/oM0;-><init>(Lcom/android/tools/r8/internal/WE;)V

    .line 11
    invoke-interface {v0, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 12
    const-string v0, "outline"

    .line 13
    iget-object v2, p1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/dL;

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/tools/r8/internal/hX;->a:Ljava/util/Comparator;

    .line 15
    const-string p1, ";"

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 16
    const-string v0, "("

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    .line 17
    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 20
    invoke-static {v2, p1, p0}, Lcom/android/tools/r8/references/Reference;->methodFromDescriptor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/references/MethodReference;

    move-result-object p0

    goto :goto_0

    .line 21
    :cond_0
    sget-object v0, Lcom/android/tools/r8/internal/M40;->d:Lcom/android/tools/r8/naming/MapVersion;

    invoke-interface {p0, v0}, Lcom/android/tools/r8/internal/C40;->d(Lcom/android/tools/r8/internal/C40;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 22
    :goto_0
    new-instance p1, Lcom/android/tools/r8/internal/M40;

    invoke-direct {p1, v1, p0}, Lcom/android/tools/r8/internal/M40;-><init>(Lcom/android/tools/r8/internal/WE;Lcom/android/tools/r8/references/MethodReference;)V

    .line 23
    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 24
    :cond_1
    new-instance p0, Lcom/android/tools/r8/internal/If;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected \'outline\' to be present: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw p0

    .line 25
    :cond_2
    new-instance p0, Lcom/android/tools/r8/internal/If;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected \'positions\' to be present: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/naming/mappinginformation/e;)Z
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    instance-of p1, p1, Lcom/android/tools/r8/internal/M40;

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/naming/mappinginformation/e;)Lcom/android/tools/r8/naming/mappinginformation/e;
    .locals 1

    new-instance p1, Lcom/android/tools/r8/naming/MappingComposeException;

    const-string v0, "Unable to compose com.android.tools.r8.outlineCallsite"

    invoke-direct {p1, v0}, Lcom/android/tools/r8/naming/MappingComposeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c()Lcom/android/tools/r8/internal/M40;
    .locals 0

    return-object p0
.end method

.method public final r()Ljava/lang/String;
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/gL;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/gL;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/jL;

    const-string v2, "com.android.tools.r8.outlineCallsite"

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/jL;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v3, "id"

    invoke-virtual {v2, v3, v1}, Lcom/android/tools/r8/internal/FS;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/internal/gL;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/gL;-><init>()V

    iget-object v2, p0, Lcom/android/tools/r8/internal/M40;->a:Lcom/android/tools/r8/internal/WE;

    new-instance v3, Lcom/android/tools/r8/internal/nM0;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/internal/nM0;-><init>(Lcom/android/tools/r8/internal/gL;)V

    invoke-interface {v2, v3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    const-string v2, "positions"

    iget-object v3, v0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v3, v2, v1}, Lcom/android/tools/r8/internal/FS;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/tools/r8/internal/M40;->b:Lcom/android/tools/r8/references/MethodReference;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/android/tools/r8/internal/jL;

    invoke-virtual {v1}, Lcom/android/tools/r8/references/MethodReference;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/jL;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v3, "outline"

    invoke-virtual {v1, v3, v2}, Lcom/android/tools/r8/internal/FS;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
