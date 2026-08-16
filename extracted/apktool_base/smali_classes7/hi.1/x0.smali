.class public Lhi/x0;
.super Lhi/C0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lhi/C0;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Loh/x;Ljava/lang/String;)Loh/B;
    .locals 4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x23

    if-ne v0, v3, :cond_0

    :try_start_0
    invoke-virtual {p0, p2, v1}, Lhi/C0;->b(Ljava/lang/String;I)Loh/B;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can\'t recode value for oid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Loh/x;->J()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x5c

    if-ne v0, v2, :cond_1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    sget-object v0, Lgi/c;->I:Loh/x;

    invoke-virtual {p1, v0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lgi/c;->M:Loh/x;

    invoke-virtual {p1, v0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Lgi/c;->x:Loh/x;

    invoke-virtual {p1, v0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p1, Loh/w0;

    invoke-direct {p1, p2}, Loh/w0;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_3
    sget-object v0, Lgi/c;->c:Loh/x;

    invoke-virtual {p1, v0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lgi/c;->j:Loh/x;

    invoke-virtual {p1, v0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lgi/c;->u:Loh/x;

    invoke-virtual {p1, v0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lgi/c;->F:Loh/x;

    invoke-virtual {p1, v0}, Loh/B;->A(Loh/B;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    new-instance p1, Loh/M0;

    invoke-direct {p1, p2}, Loh/M0;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_5
    :goto_0
    new-instance p1, Loh/F0;

    invoke-direct {p1, p2}, Loh/F0;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_6
    :goto_1
    new-instance p1, Loh/z0;

    invoke-direct {p1, p2}, Loh/z0;-><init>(Ljava/lang/String;)V

    return-object p1
.end method
