.class public final Lcom/android/tools/r8/internal/Kf;
.super Lcom/android/tools/r8/naming/mappinginformation/d;
.source "SourceFile"


# static fields
.field public static final a:Lcom/android/tools/r8/internal/Kf;

.field public static final b:Lcom/android/tools/r8/naming/MapVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Kf;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Kf;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Kf;->a:Lcom/android/tools/r8/internal/Kf;

    sget-object v0, Lcom/android/tools/r8/naming/MapVersion;->MAP_VERSION_1_0:Lcom/android/tools/r8/naming/MapVersion;

    sput-object v0, Lcom/android/tools/r8/internal/Kf;->b:Lcom/android/tools/r8/naming/MapVersion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/naming/mappinginformation/d;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/naming/MapVersion;Ljava/util/function/Consumer;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/Kf;->b:Lcom/android/tools/r8/naming/MapVersion;

    invoke-interface {p0, v0}, Lcom/android/tools/r8/internal/C40;->d(Lcom/android/tools/r8/internal/C40;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    sget-object p0, Lcom/android/tools/r8/internal/Kf;->a:Lcom/android/tools/r8/internal/Kf;

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/naming/mappinginformation/e;)Z
    .locals 0

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/naming/mappinginformation/e;->l()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/naming/mappinginformation/e;)Lcom/android/tools/r8/naming/mappinginformation/e;
    .locals 0

    return-object p1
.end method

.method public final l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final r()Ljava/lang/String;
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/gL;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/gL;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/jL;

    const-string v2, "com.android.tools.r8.synthesized"

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/jL;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v3, "id"

    invoke-virtual {v2, v3, v1}, Lcom/android/tools/r8/internal/FS;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
