.class public final Lcom/android/tools/r8/internal/dP;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/android/tools/r8/internal/dP;

.field public static final c:Lcom/android/tools/r8/internal/dP;

.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/vP;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/dP;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/dP;-><init>(Lcom/android/tools/r8/internal/vP;)V

    sput-object v0, Lcom/android/tools/r8/internal/dP;->b:Lcom/android/tools/r8/internal/dP;

    sget-object v0, Lcom/android/tools/r8/internal/vP;->d:Lcom/android/tools/r8/internal/vP;

    invoke-static {v0}, Lcom/android/tools/r8/internal/dP;->a(Lcom/android/tools/r8/internal/vP;)Lcom/android/tools/r8/internal/dP;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/dP;->c:Lcom/android/tools/r8/internal/dP;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/vP;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/dP;->a:Lcom/android/tools/r8/internal/vP;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/vP;)Lcom/android/tools/r8/internal/dP;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/vP;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/android/tools/r8/internal/dP;->c:Lcom/android/tools/r8/internal/dP;

    return-object p0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/dP;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/dP;-><init>(Lcom/android/tools/r8/internal/vP;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/vP;
    .locals 1

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/dP;->d:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/dP;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/dP;->a:Lcom/android/tools/r8/internal/vP;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/dP;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/dP;->a:Lcom/android/tools/r8/internal/vP;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/vP;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/dP;->a:Lcom/android/tools/r8/internal/vP;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/android/tools/r8/internal/dP;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/dP;

    iget-object v0, p0, Lcom/android/tools/r8/internal/dP;->a:Lcom/android/tools/r8/internal/vP;

    iget-object p1, p1, Lcom/android/tools/r8/internal/dP;->a:Lcom/android/tools/r8/internal/vP;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
