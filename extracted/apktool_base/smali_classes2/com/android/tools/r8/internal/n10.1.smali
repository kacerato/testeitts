.class public final Lcom/android/tools/r8/internal/n10;
.super Lcom/android/tools/r8/internal/F1;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/internal/F1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/F1;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/F1;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/n10;->c:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/android/tools/r8/internal/Im0;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/n10;->b:Lcom/android/tools/r8/internal/F1;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/F1;)Lcom/android/tools/r8/internal/F1;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Lcom/android/tools/r8/internal/A7;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/F1;->isUnknown()Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/android/tools/r8/internal/Hm0;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/android/tools/r8/internal/n10;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/n10;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/n10;-><init>(Lcom/android/tools/r8/internal/F1;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final I()Lcom/android/tools/r8/internal/n10;
    .locals 0

    return-object p0
.end method

.method public final b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/F1;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/n10;->b:Lcom/android/tools/r8/internal/F1;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/F1;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/F1;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p2, p1, Lcom/android/tools/r8/internal/Im0;

    if-eqz p2, :cond_0

    sget-object p1, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    return-object p1

    :cond_0
    new-instance p2, Lcom/android/tools/r8/internal/n10;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/n10;-><init>(Lcom/android/tools/r8/internal/F1;)V

    return-object p2
.end method

.method public final b0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/android/tools/r8/internal/n10;

    if-ne v2, v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/n10;->b:Lcom/android/tools/r8/internal/F1;

    check-cast p1, Lcom/android/tools/r8/internal/n10;

    iget-object p1, p1, Lcom/android/tools/r8/internal/n10;->b:Lcom/android/tools/r8/internal/F1;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/F1;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/n10;->b:Lcom/android/tools/r8/internal/F1;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F1;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/n10;->b:Lcom/android/tools/r8/internal/F1;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/F1;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
