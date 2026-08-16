.class public Lhi/o0;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements Loh/f;


# instance fields
.field public b:Loh/B;


# direct methods
.method public constructor <init>(Ljava/util/Date;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Ljava/util/SimpleTimeZone;

    const/4 v1, 0x0

    const-string v2, "Z"

    invoke-direct {v0, v1, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMddHHmmss"

    sget-object v5, Loh/h1;->b:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x79e

    if-lt v0, v1, :cond_1

    const/16 v1, 0x801

    if-le v0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Loh/L0;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Loh/L0;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object v0, p0, Lhi/o0;->b:Loh/B;

    goto :goto_2

    :cond_1
    :goto_1
    new-instance v0, Loh/w0;

    invoke-direct {v0, p1}, Loh/w0;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :goto_2
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/Locale;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Ljava/util/SimpleTimeZone;

    const/4 v1, 0x0

    const-string v2, "Z"

    invoke-direct {v0, v1, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMddHHmmss"

    invoke-direct {v3, v4, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const/16 v0, 0x79e

    if-lt p2, v0, :cond_1

    const/16 v0, 0x801

    if-le p2, v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance p2, Loh/L0;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Loh/L0;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object p2, p0, Lhi/o0;->b:Loh/B;

    goto :goto_2

    :cond_1
    :goto_1
    new-instance p2, Loh/w0;

    invoke-direct {p2, p1}, Loh/w0;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :goto_2
    return-void
.end method

.method public constructor <init>(Loh/B;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    instance-of v0, p1, Loh/P;

    if-nez v0, :cond_1

    instance-of v0, p1, Loh/n;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown object passed to Time"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lhi/o0;->b:Loh/B;

    return-void
.end method

.method public static v(Ljava/lang/Object;)Lhi/o0;
    .locals 3

    if-eqz p0, :cond_3

    instance-of v0, p0, Lhi/o0;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Loh/P;

    if-eqz v0, :cond_1

    new-instance v0, Lhi/o0;

    check-cast p0, Loh/P;

    invoke-direct {v0, p0}, Lhi/o0;-><init>(Loh/B;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Loh/n;

    if-eqz v0, :cond_2

    new-instance v0, Lhi/o0;

    check-cast p0, Loh/n;

    invoke-direct {v0, p0}, Lhi/o0;-><init>(Loh/B;)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    check-cast p0, Lhi/o0;

    return-object p0
.end method

.method public static w(Loh/M;Z)Lhi/o0;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Loh/M;->O()Loh/v;

    move-result-object p0

    invoke-static {p0}, Lhi/o0;->v(Ljava/lang/Object;)Lhi/o0;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "choice item must be explicitly tagged"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, Lhi/o0;->b:Loh/B;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lhi/o0;->x()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/util/Date;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lhi/o0;->b:Loh/B;

    instance-of v1, v0, Loh/P;

    if-eqz v1, :cond_0

    check-cast v0, Loh/P;

    invoke-virtual {v0}, Loh/P;->F()Ljava/util/Date;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    check-cast v0, Loh/n;

    invoke-virtual {v0}, Loh/n;->I()Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid date string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public x()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lhi/o0;->b:Loh/B;

    instance-of v1, v0, Loh/P;

    if-eqz v1, :cond_0

    check-cast v0, Loh/P;

    invoke-virtual {v0}, Loh/P;->G()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    check-cast v0, Loh/n;

    invoke-virtual {v0}, Loh/n;->L()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
