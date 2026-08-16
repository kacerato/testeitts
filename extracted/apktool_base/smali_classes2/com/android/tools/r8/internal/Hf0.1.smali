.class public final Lcom/android/tools/r8/internal/Hf0;
.super Lcom/android/tools/r8/internal/Jf0;
.source "SourceFile"


# static fields
.field public static final c:Lcom/android/tools/r8/internal/Hf0;

.field public static final synthetic d:Z = true


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/Hf0;

    const-string v1, "LINVALID;"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Hf0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/Hf0;->c:Lcom/android/tools/r8/internal/Hf0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Jf0;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/Hf0;->d:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/tools/r8/internal/Bl;->z(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/Hf0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/naming/mappinginformation/e;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/android/tools/r8/internal/Hf0;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Hf0;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/tools/r8/naming/mappinginformation/e;->g()Lcom/android/tools/r8/internal/Hf0;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/Hf0;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/naming/mappinginformation/e;)Lcom/android/tools/r8/naming/mappinginformation/e;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/Hf0;->d:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p1, p1, Lcom/android/tools/r8/internal/Hf0;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-object p0
.end method

.method public final g()Lcom/android/tools/r8/internal/Hf0;
    .locals 0

    return-object p0
.end method

.method public final s()Z
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/Hf0;->c:Lcom/android/tools/r8/internal/Hf0;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Hf0;->b:Ljava/lang/String;

    return-object v0
.end method
