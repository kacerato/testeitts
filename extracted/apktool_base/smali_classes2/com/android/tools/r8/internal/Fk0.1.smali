.class public final Lcom/android/tools/r8/internal/Fk0;
.super Lcom/android/tools/r8/naming/mappinginformation/c;
.source "SourceFile"


# static fields
.field public static final c:Lcom/android/tools/r8/naming/MapVersion;


# instance fields
.field public final a:Ljava/util/AbstractCollection;

.field public final b:Ljava/util/AbstractCollection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/tools/r8/naming/MapVersion;->MAP_VERSION_2_0:Lcom/android/tools/r8/naming/MapVersion;

    sput-object v0, Lcom/android/tools/r8/internal/Fk0;->c:Lcom/android/tools/r8/naming/MapVersion;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/naming/mappinginformation/c;-><init>()V

    check-cast p1, Ljava/util/AbstractCollection;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Fk0;->a:Ljava/util/AbstractCollection;

    check-cast p2, Ljava/util/AbstractCollection;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Fk0;->b:Ljava/util/AbstractCollection;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/bL;Lcom/android/tools/r8/internal/Dk0;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Dk0;->a()Lcom/android/tools/r8/internal/jL;

    move-result-object p1

    .line 4
    iget-object p0, p0, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/bL;Lcom/android/tools/r8/internal/Ek0;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ek0;->a()Lcom/android/tools/r8/internal/jL;

    move-result-object p1

    .line 2
    iget-object p0, p0, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/eC;Lcom/android/tools/r8/internal/dL;)V
    .locals 0

    .line 22
    invoke-static {p1}, Lcom/android/tools/r8/internal/Ek0;->a(Lcom/android/tools/r8/internal/dL;)Lcom/android/tools/r8/internal/Ek0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/naming/MapVersion;Lcom/android/tools/r8/internal/gL;Ljava/util/function/Consumer;)V
    .locals 2

    .line 5
    sget-object v0, Lcom/android/tools/r8/internal/Fk0;->c:Lcom/android/tools/r8/naming/MapVersion;

    invoke-interface {p0, v0}, Lcom/android/tools/r8/internal/C40;->d(Lcom/android/tools/r8/internal/C40;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 6
    :cond_0
    sget p0, Lcom/android/tools/r8/internal/hC;->c:I

    .line 7
    new-instance p0, Lcom/android/tools/r8/internal/eC;

    .line 8
    invoke-direct {p0}, Lcom/android/tools/r8/internal/eC;-><init>()V

    .line 9
    iget-object v0, p1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    .line 10
    const-string v1, "conditions"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/dL;

    .line 11
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->c()Lcom/android/tools/r8/internal/bL;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/NE0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/NE0;-><init>(Lcom/android/tools/r8/internal/eC;)V

    .line 12
    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 13
    new-instance v0, Lcom/android/tools/r8/internal/eC;

    .line 14
    invoke-direct {v0}, Lcom/android/tools/r8/internal/eC;-><init>()V

    .line 15
    const-string v1, "actions"

    .line 16
    iget-object p1, p1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/dL;

    .line 17
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/dL;->c()Lcom/android/tools/r8/internal/bL;

    move-result-object p1

    new-instance v1, Lcom/android/tools/r8/internal/OE0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/OE0;-><init>(Lcom/android/tools/r8/internal/eC;)V

    .line 18
    invoke-interface {p1, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 19
    new-instance p1, Lcom/android/tools/r8/internal/Fk0;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object p0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/tools/r8/internal/Fk0;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/eC;Lcom/android/tools/r8/internal/dL;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/tools/r8/internal/Dk0;->a(Lcom/android/tools/r8/internal/dL;)Lcom/android/tools/r8/internal/Dk0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/naming/mappinginformation/e;)Z
    .locals 0

    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    instance-of p1, p1, Lcom/android/tools/r8/internal/Fk0;

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/naming/mappinginformation/e;)Lcom/android/tools/r8/naming/mappinginformation/e;
    .locals 1

    .line 2
    new-instance p1, Lcom/android/tools/r8/naming/MappingComposeException;

    const-string v0, "Unable to compose com.android.tools.r8.rewriteFrame"

    invoke-direct {p1, v0}, Lcom/android/tools/r8/naming/MappingComposeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j()Lcom/android/tools/r8/internal/Fk0;
    .locals 0

    return-object p0
.end method

.method public final r()Ljava/lang/String;
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/gL;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/gL;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/jL;

    const-string v2, "com.android.tools.r8.rewriteFrame"

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/jL;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v3, "id"

    invoke-virtual {v2, v3, v1}, Lcom/android/tools/r8/internal/FS;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/internal/bL;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/bL;-><init>()V

    iget-object v2, p0, Lcom/android/tools/r8/internal/Fk0;->a:Ljava/util/AbstractCollection;

    new-instance v3, Lcom/android/tools/r8/internal/LE0;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/internal/LE0;-><init>(Lcom/android/tools/r8/internal/bL;)V

    invoke-interface {v2, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    const-string v2, "conditions"

    iget-object v3, v0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v3, v2, v1}, Lcom/android/tools/r8/internal/FS;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/internal/bL;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/bL;-><init>()V

    iget-object v2, p0, Lcom/android/tools/r8/internal/Fk0;->b:Ljava/util/AbstractCollection;

    new-instance v3, Lcom/android/tools/r8/internal/ME0;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/internal/ME0;-><init>(Lcom/android/tools/r8/internal/bL;)V

    invoke-interface {v2, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    const-string v2, "actions"

    iget-object v3, v0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v3, v2, v1}, Lcom/android/tools/r8/internal/FS;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
