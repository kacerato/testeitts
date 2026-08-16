.class public final Lcom/android/tools/r8/shaking/X3;
.super Lcom/android/tools/r8/shaking/Y3;
.source "SourceFile"


# instance fields
.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/shaking/Y3;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/X3;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/X3;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/tools/r8/shaking/X3;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/shaking/X3;->c:Ljava/lang/String;

    check-cast p1, Lcom/android/tools/r8/shaking/X3;

    iget-object p1, p1, Lcom/android/tools/r8/shaking/X3;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/X3;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/X3;->c:Ljava/lang/String;

    return-object v0
.end method
