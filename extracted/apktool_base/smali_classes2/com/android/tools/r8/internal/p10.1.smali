.class public Lcom/android/tools/r8/internal/p10;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/android/tools/r8/internal/p10;

.field public static final b:Lcom/android/tools/r8/internal/p10;

.field public static final c:Lcom/android/tools/r8/internal/p10;

.field public static final d:Lcom/android/tools/r8/internal/p10;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/p10;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/p10;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/p10;->a:Lcom/android/tools/r8/internal/p10;

    new-instance v0, Lcom/android/tools/r8/internal/p10;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/p10;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/p10;->b:Lcom/android/tools/r8/internal/p10;

    new-instance v0, Lcom/android/tools/r8/internal/p10;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/p10;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/p10;->c:Lcom/android/tools/r8/internal/p10;

    new-instance v0, Lcom/android/tools/r8/internal/p10;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/p10;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/p10;->d:Lcom/android/tools/r8/internal/p10;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/android/tools/r8/internal/p10;
    .locals 1

    .line 3
    sget-object v0, Lcom/android/tools/r8/internal/p10;->d:Lcom/android/tools/r8/internal/p10;

    return-object v0
.end method

.method public static b()Lcom/android/tools/r8/internal/p10;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/p10;->b:Lcom/android/tools/r8/internal/p10;

    return-object v0
.end method

.method public static c()Lcom/android/tools/r8/internal/p10;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/p10;->a:Lcom/android/tools/r8/internal/p10;

    return-object v0
.end method

.method public static h()Lcom/android/tools/r8/internal/p10;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/p10;->c:Lcom/android/tools/r8/internal/p10;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/p10;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/p10;->d:Lcom/android/tools/r8/internal/p10;

    if-ne p0, v0, :cond_0

    return-object p1

    :cond_0
    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    if-ne p0, p1, :cond_2

    :goto_0
    return-object p0

    .line 2
    :cond_2
    sget-object p1, Lcom/android/tools/r8/internal/p10;->c:Lcom/android/tools/r8/internal/p10;

    return-object p1
.end method

.method public d()Z
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/p10;->b:Lcom/android/tools/r8/internal/p10;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/p10;->a:Lcom/android/tools/r8/internal/p10;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/p10;->c:Lcom/android/tools/r8/internal/p10;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final g()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/p10;->f()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/p10;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/android/tools/r8/internal/p10;->c:Lcom/android/tools/r8/internal/p10;

    if-ne p0, v0, :cond_0

    const-string v0, "@Nullable"

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/tools/r8/internal/p10;->a:Lcom/android/tools/r8/internal/p10;

    if-ne p0, v0, :cond_1

    const-string v0, "@Null"

    return-object v0

    :cond_1
    sget-object v0, Lcom/android/tools/r8/internal/p10;->b:Lcom/android/tools/r8/internal/p10;

    if-ne p0, v0, :cond_2

    const-string v0, "@NotNull"

    return-object v0

    :cond_2
    sget-object v0, Lcom/android/tools/r8/internal/p10;->d:Lcom/android/tools/r8/internal/p10;

    if-ne p0, v0, :cond_3

    const-string v0, "@Bottom"

    return-object v0

    :cond_3
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    const-string v1, "Unknown Nullability."

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0
.end method
