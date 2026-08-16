.class public final Lcom/android/tools/r8/internal/RO;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/android/tools/r8/internal/RO;

.field public static final c:Lcom/android/tools/r8/internal/RO;

.field public static final d:Lcom/android/tools/r8/internal/RO;

.field public static final synthetic e:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/vP;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/RO;

    sget-object v1, Lcom/android/tools/r8/internal/vP;->d:Lcom/android/tools/r8/internal/vP;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/RO;-><init>(Lcom/android/tools/r8/internal/vP;)V

    sput-object v0, Lcom/android/tools/r8/internal/RO;->b:Lcom/android/tools/r8/internal/RO;

    new-instance v0, Lcom/android/tools/r8/internal/RO;

    const-string v1, "<init>"

    invoke-static {v1}, Lcom/android/tools/r8/internal/vP;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/vP;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/RO;-><init>(Lcom/android/tools/r8/internal/vP;)V

    sput-object v0, Lcom/android/tools/r8/internal/RO;->c:Lcom/android/tools/r8/internal/RO;

    new-instance v0, Lcom/android/tools/r8/internal/RO;

    const-string v1, "<clinit>"

    invoke-static {v1}, Lcom/android/tools/r8/internal/vP;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/vP;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/RO;-><init>(Lcom/android/tools/r8/internal/vP;)V

    sput-object v0, Lcom/android/tools/r8/internal/RO;->d:Lcom/android/tools/r8/internal/RO;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/vP;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/RO;->e:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/RO;->a:Lcom/android/tools/r8/internal/vP;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/vP;)Lcom/android/tools/r8/internal/RO;
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/vP;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/android/tools/r8/internal/RO;->b:Lcom/android/tools/r8/internal/RO;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/vP;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/vP;->a:Ljava/lang/String;

    const-string v1, "<init>"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p0, Lcom/android/tools/r8/internal/RO;->c:Lcom/android/tools/r8/internal/RO;

    return-object p0

    :cond_1
    const-string v1, "<clinit>"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/android/tools/r8/internal/RO;->d:Lcom/android/tools/r8/internal/RO;

    return-object p0

    :cond_2
    new-instance v0, Lcom/android/tools/r8/internal/RO;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/RO;-><init>(Lcom/android/tools/r8/internal/vP;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/android/tools/r8/internal/RO;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/RO;

    iget-object v0, p0, Lcom/android/tools/r8/internal/RO;->a:Lcom/android/tools/r8/internal/vP;

    iget-object p1, p1, Lcom/android/tools/r8/internal/RO;->a:Lcom/android/tools/r8/internal/vP;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/vP;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/RO;->a:Lcom/android/tools/r8/internal/vP;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/vP;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/RO;->a:Lcom/android/tools/r8/internal/vP;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/vP;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
