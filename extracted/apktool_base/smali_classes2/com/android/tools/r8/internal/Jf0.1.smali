.class public abstract Lcom/android/tools/r8/internal/Jf0;
.super Lcom/android/tools/r8/naming/mappinginformation/d;
.source "SourceFile"


# static fields
.field public static final a:Lcom/android/tools/r8/naming/MapVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/tools/r8/naming/MapVersion;->MAP_VERSION_2_2:Lcom/android/tools/r8/naming/MapVersion;

    sput-object v0, Lcom/android/tools/r8/internal/Jf0;->a:Lcom/android/tools/r8/naming/MapVersion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/naming/mappinginformation/d;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/naming/MapVersion;Lcom/android/tools/r8/internal/gL;Ljava/util/function/Consumer;)V
    .locals 4

    .line 2
    invoke-static {p0}, Lcom/android/tools/r8/internal/Jf0;->a(Lcom/android/tools/r8/naming/MapVersion;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 3
    iget-object p0, p1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    .line 4
    const-string v0, "signature"

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/dL;

    if-eqz p0, :cond_6

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object p0

    .line 6
    const-string p1, "("

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 7
    sget-object p1, Lcom/android/tools/r8/internal/If0;->d:Lcom/android/tools/r8/internal/If0;

    .line 8
    invoke-static {p0}, Lcom/android/tools/r8/internal/Bl;->e(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {p0}, Lcom/android/tools/r8/internal/Bl;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-static {p0}, Lcom/android/tools/r8/internal/Bl;->z(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 11
    invoke-static {p0}, Lcom/android/tools/r8/internal/Bl;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 12
    :goto_1
    array-length v2, p1

    :goto_2
    if-ge v1, v2, :cond_2

    aget-object v3, p1, v1

    .line 13
    invoke-static {v3}, Lcom/android/tools/r8/internal/Bl;->z(Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    .line 14
    new-instance v0, Lcom/android/tools/r8/internal/If0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/If0;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_3

    .line 15
    :cond_3
    sget-object v0, Lcom/android/tools/r8/internal/If0;->d:Lcom/android/tools/r8/internal/If0;

    .line 16
    :goto_3
    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 17
    :cond_4
    sget-object p1, Lcom/android/tools/r8/internal/Hf0;->c:Lcom/android/tools/r8/internal/Hf0;

    .line 18
    invoke-static {p0}, Lcom/android/tools/r8/internal/Bl;->z(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 19
    new-instance p1, Lcom/android/tools/r8/internal/Hf0;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/Hf0;-><init>(Ljava/lang/String;)V

    .line 20
    :cond_5
    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 21
    :cond_6
    new-instance p0, Lcom/android/tools/r8/internal/If;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected \'signature\' to be present: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    return-void
.end method

.method public static a(Lcom/android/tools/r8/naming/MapVersion;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/Jf0;->a:Lcom/android/tools/r8/naming/MapVersion;

    invoke-interface {p0, v0}, Lcom/android/tools/r8/internal/C40;->d(Lcom/android/tools/r8/internal/C40;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final i()Lcom/android/tools/r8/internal/Jf0;
    .locals 0

    return-object p0
.end method

.method public final p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final r()Ljava/lang/String;
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/gL;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/gL;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/jL;

    const-string v2, "com.android.tools.r8.residualsignature"

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/jL;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v3, "id"

    invoke-virtual {v2, v3, v1}, Lcom/android/tools/r8/internal/FS;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/internal/jL;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Jf0;->t()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/jL;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v3, "signature"

    invoke-virtual {v2, v3, v1}, Lcom/android/tools/r8/internal/FS;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract s()Z
.end method

.method public abstract t()Ljava/lang/String;
.end method
