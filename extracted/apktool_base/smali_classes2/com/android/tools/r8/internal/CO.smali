.class public final Lcom/android/tools/r8/internal/CO;
.super Lcom/android/tools/r8/internal/DO;
.source "SourceFile"


# static fields
.field public static final c:Lcom/android/tools/r8/internal/CO;

.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/mP;

.field public final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/CO;

    invoke-static {}, Lcom/android/tools/r8/internal/mP;->a()Lcom/android/tools/r8/internal/mP;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/CO;-><init>(Lcom/android/tools/r8/internal/mP;Z)V

    sput-object v0, Lcom/android/tools/r8/internal/CO;->c:Lcom/android/tools/r8/internal/CO;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/mP;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/DO;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/CO;->d:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/CO;->a:Lcom/android/tools/r8/internal/mP;

    iput-boolean p2, p0, Lcom/android/tools/r8/internal/CO;->b:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/android/tools/r8/internal/CO;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/CO;

    iget-object v0, p0, Lcom/android/tools/r8/internal/CO;->a:Lcom/android/tools/r8/internal/mP;

    iget-object p1, p1, Lcom/android/tools/r8/internal/CO;->a:Lcom/android/tools/r8/internal/mP;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/mP;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/CO;->a:Lcom/android/tools/r8/internal/mP;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/mP;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/CO;->a:Lcom/android/tools/r8/internal/mP;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/mP;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/CO;->b:Z

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "excl("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
