.class public Lorg/offlineApk/apksigner/OptionsParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/offlineApk/apksigner/OptionsParser$OptionsException;
    }
.end annotation


# instance fields
.field public final a:[Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/offlineApk/apksigner/OptionsParser;->a:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/offlineApk/apksigner/OptionsParser;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b(Z)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/offlineApk/apksigner/OptionsParser$OptionsException;
        }
    .end annotation

    iget-object v0, p0, Lorg/offlineApk/apksigner/OptionsParser;->d:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "false"

    const-string v3, "true"

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/offlineApk/apksigner/OptionsParser;->d:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v4

    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    new-instance p1, Lorg/offlineApk/apksigner/OptionsParser$OptionsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported value for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/offlineApk/apksigner/OptionsParser;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Only true or false supported."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/offlineApk/apksigner/OptionsParser$OptionsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget v0, p0, Lorg/offlineApk/apksigner/OptionsParser;->b:I

    iget-object v5, p0, Lorg/offlineApk/apksigner/OptionsParser;->a:[Ljava/lang/String;

    array-length v6, v5

    if-lt v0, v6, :cond_3

    return p1

    :cond_3
    aget-object v0, v5, v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget p1, p0, Lorg/offlineApk/apksigner/OptionsParser;->b:I

    add-int/2addr p1, v4

    iput p1, p0, Lorg/offlineApk/apksigner/OptionsParser;->b:I

    return v4

    :cond_4
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget p1, p0, Lorg/offlineApk/apksigner/OptionsParser;->b:I

    add-int/2addr p1, v4

    iput p1, p0, Lorg/offlineApk/apksigner/OptionsParser;->b:I

    return v1

    :cond_5
    return p1
.end method

.method public c()[Ljava/lang/String;
    .locals 3

    iget v0, p0, Lorg/offlineApk/apksigner/OptionsParser;->b:I

    iget-object v1, p0, Lorg/offlineApk/apksigner/OptionsParser;->a:[Ljava/lang/String;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    :cond_0
    aget-object v0, v1, v0

    const-string v1, "--"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/offlineApk/apksigner/OptionsParser;->a:[Ljava/lang/String;

    iget v1, p0, Lorg/offlineApk/apksigner/OptionsParser;->b:I

    add-int/lit8 v1, v1, 0x1

    array-length v2, v0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/offlineApk/apksigner/OptionsParser;->a:[Ljava/lang/String;

    iget v1, p0, Lorg/offlineApk/apksigner/OptionsParser;->b:I

    array-length v2, v0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "valueDescription"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/offlineApk/apksigner/OptionsParser$OptionsException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/offlineApk/apksigner/OptionsParser;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    new-instance v1, Lorg/offlineApk/apksigner/OptionsParser$OptionsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/offlineApk/apksigner/OptionsParser;->f:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") must be a decimal number: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/offlineApk/apksigner/OptionsParser$OptionsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "valueDescription"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/offlineApk/apksigner/OptionsParser$OptionsException;
        }
    .end annotation

    iget-object v0, p0, Lorg/offlineApk/apksigner/OptionsParser;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/offlineApk/apksigner/OptionsParser;->d:Ljava/lang/String;

    return-object v0

    :cond_0
    iget v0, p0, Lorg/offlineApk/apksigner/OptionsParser;->b:I

    iget-object v1, p0, Lorg/offlineApk/apksigner/OptionsParser;->a:[Ljava/lang/String;

    array-length v2, v1

    const-string v3, " missing after "

    if-ge v0, v2, :cond_2

    aget-object v0, v1, v0

    const-string v1, "--"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget p1, p0, Lorg/offlineApk/apksigner/OptionsParser;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/offlineApk/apksigner/OptionsParser;->b:I

    return-object v0

    :cond_1
    new-instance v0, Lorg/offlineApk/apksigner/OptionsParser$OptionsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/offlineApk/apksigner/OptionsParser;->f:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/offlineApk/apksigner/OptionsParser$OptionsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lorg/offlineApk/apksigner/OptionsParser$OptionsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/offlineApk/apksigner/OptionsParser;->f:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/offlineApk/apksigner/OptionsParser$OptionsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lorg/offlineApk/apksigner/OptionsParser;->b:I

    iget-object v1, p0, Lorg/offlineApk/apksigner/OptionsParser;->a:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    if-lt v0, v2, :cond_0

    return-object v3

    :cond_0
    aget-object v0, v1, v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v3

    :cond_1
    iget v1, p0, Lorg/offlineApk/apksigner/OptionsParser;->b:I

    iput v1, p0, Lorg/offlineApk/apksigner/OptionsParser;->c:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/offlineApk/apksigner/OptionsParser;->b:I

    iget-object v1, p0, Lorg/offlineApk/apksigner/OptionsParser;->f:Ljava/lang/String;

    iput-object v1, p0, Lorg/offlineApk/apksigner/OptionsParser;->g:Ljava/lang/String;

    iput-object v0, p0, Lorg/offlineApk/apksigner/OptionsParser;->f:Ljava/lang/String;

    iget-object v1, p0, Lorg/offlineApk/apksigner/OptionsParser;->d:Ljava/lang/String;

    iput-object v1, p0, Lorg/offlineApk/apksigner/OptionsParser;->e:Ljava/lang/String;

    iput-object v3, p0, Lorg/offlineApk/apksigner/OptionsParser;->d:Ljava/lang/String;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v3

    :cond_2
    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x2

    if-eq v1, v2, :cond_3

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/offlineApk/apksigner/OptionsParser;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/offlineApk/apksigner/OptionsParser;->f:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .locals 1

    iget v0, p0, Lorg/offlineApk/apksigner/OptionsParser;->c:I

    iput v0, p0, Lorg/offlineApk/apksigner/OptionsParser;->b:I

    iget-object v0, p0, Lorg/offlineApk/apksigner/OptionsParser;->g:Ljava/lang/String;

    iput-object v0, p0, Lorg/offlineApk/apksigner/OptionsParser;->f:Ljava/lang/String;

    iget-object v0, p0, Lorg/offlineApk/apksigner/OptionsParser;->e:Ljava/lang/String;

    iput-object v0, p0, Lorg/offlineApk/apksigner/OptionsParser;->d:Ljava/lang/String;

    return-void
.end method
