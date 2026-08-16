.class public abstract Lcom/google/common/io/BaseEncoding;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LD2/p;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/io/BaseEncoding$i;,
        Lcom/google/common/io/BaseEncoding$h;,
        Lcom/google/common/io/BaseEncoding$g;,
        Lcom/google/common/io/BaseEncoding$j;,
        Lcom/google/common/io/BaseEncoding$f;,
        Lcom/google/common/io/BaseEncoding$DecodingException;
    }
.end annotation

.annotation build Lv2/b;
    emulated = true
.end annotation


# static fields
.field public static final a:Lcom/google/common/io/BaseEncoding;

.field public static final b:Lcom/google/common/io/BaseEncoding;

.field public static final c:Lcom/google/common/io/BaseEncoding;

.field public static final d:Lcom/google/common/io/BaseEncoding;

.field public static final e:Lcom/google/common/io/BaseEncoding;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/common/io/BaseEncoding$h;

    const/16 v1, 0x3d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "base64()"

    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-direct {v0, v2, v3, v1}, Lcom/google/common/io/BaseEncoding$h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lcom/google/common/io/BaseEncoding;->a:Lcom/google/common/io/BaseEncoding;

    new-instance v0, Lcom/google/common/io/BaseEncoding$h;

    const-string v2, "base64Url()"

    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-direct {v0, v2, v3, v1}, Lcom/google/common/io/BaseEncoding$h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lcom/google/common/io/BaseEncoding;->b:Lcom/google/common/io/BaseEncoding;

    new-instance v0, Lcom/google/common/io/BaseEncoding$j;

    const-string v2, "base32()"

    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    invoke-direct {v0, v2, v3, v1}, Lcom/google/common/io/BaseEncoding$j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lcom/google/common/io/BaseEncoding;->c:Lcom/google/common/io/BaseEncoding;

    new-instance v0, Lcom/google/common/io/BaseEncoding$j;

    const-string v2, "base32Hex()"

    const-string v3, "0123456789ABCDEFGHIJKLMNOPQRSTUV"

    invoke-direct {v0, v2, v3, v1}, Lcom/google/common/io/BaseEncoding$j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lcom/google/common/io/BaseEncoding;->d:Lcom/google/common/io/BaseEncoding;

    new-instance v0, Lcom/google/common/io/BaseEncoding$g;

    const-string v1, "base16()"

    const-string v2, "0123456789ABCDEF"

    invoke-direct {v0, v1, v2}, Lcom/google/common/io/BaseEncoding$g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/io/BaseEncoding;->e:Lcom/google/common/io/BaseEncoding;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/common/io/BaseEncoding;
    .locals 1

    sget-object v0, Lcom/google/common/io/BaseEncoding;->e:Lcom/google/common/io/BaseEncoding;

    return-object v0
.end method

.method public static b()Lcom/google/common/io/BaseEncoding;
    .locals 1

    sget-object v0, Lcom/google/common/io/BaseEncoding;->c:Lcom/google/common/io/BaseEncoding;

    return-object v0
.end method

.method public static c()Lcom/google/common/io/BaseEncoding;
    .locals 1

    sget-object v0, Lcom/google/common/io/BaseEncoding;->d:Lcom/google/common/io/BaseEncoding;

    return-object v0
.end method

.method public static d()Lcom/google/common/io/BaseEncoding;
    .locals 1

    sget-object v0, Lcom/google/common/io/BaseEncoding;->a:Lcom/google/common/io/BaseEncoding;

    return-object v0
.end method

.method public static e()Lcom/google/common/io/BaseEncoding;
    .locals 1

    sget-object v0, Lcom/google/common/io/BaseEncoding;->b:Lcom/google/common/io/BaseEncoding;

    return-object v0
.end method

.method public static q([BI)[B
    .locals 2

    array-length v0, p0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-array v0, p1, [B

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static r(Ljava/io/Reader;Ljava/lang/String;)Ljava/io/Reader;
    .locals 1
    .annotation build Lv2/c;
    .end annotation

    invoke-static {p0}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/io/BaseEncoding$c;

    invoke-direct {v0, p0, p1}, Lcom/google/common/io/BaseEncoding$c;-><init>(Ljava/io/Reader;Ljava/lang/String;)V

    return-object v0
.end method

.method public static w(Ljava/lang/Appendable;Ljava/lang/String;I)Ljava/lang/Appendable;
    .locals 1

    invoke-static {p0}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    if-lez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lw2/H;->d(Z)V

    new-instance v0, Lcom/google/common/io/BaseEncoding$d;

    invoke-direct {v0, p2, p0, p1}, Lcom/google/common/io/BaseEncoding$d;-><init>(ILjava/lang/Appendable;Ljava/lang/String;)V

    return-object v0
.end method

.method public static x(Ljava/io/Writer;Ljava/lang/String;I)Ljava/io/Writer;
    .locals 0
    .annotation build Lv2/c;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/common/io/BaseEncoding;->w(Ljava/lang/Appendable;Ljava/lang/String;I)Ljava/lang/Appendable;

    move-result-object p1

    new-instance p2, Lcom/google/common/io/BaseEncoding$e;

    invoke-direct {p2, p1, p0}, Lcom/google/common/io/BaseEncoding$e;-><init>(Ljava/lang/Appendable;Ljava/io/Writer;)V

    return-object p2
.end method


# virtual methods
.method public abstract A(C)Lcom/google/common/io/BaseEncoding;
.end method

.method public abstract B(Ljava/lang/String;I)Lcom/google/common/io/BaseEncoding;
.end method

.method public abstract f(Ljava/lang/CharSequence;)Z
.end method

.method public final g(Ljava/lang/CharSequence;)[B
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/common/io/BaseEncoding;->h(Ljava/lang/CharSequence;)[B

    move-result-object p1
    :try_end_0
    .catch Lcom/google/common/io/BaseEncoding$DecodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final h(Ljava/lang/CharSequence;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/io/BaseEncoding$DecodingException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/io/BaseEncoding;->y(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/io/BaseEncoding;->t(I)I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p0, v0, p1}, Lcom/google/common/io/BaseEncoding;->i([BLjava/lang/CharSequence;)I

    move-result p1

    invoke-static {v0, p1}, Lcom/google/common/io/BaseEncoding;->q([BI)[B

    move-result-object p1

    return-object p1
.end method

.method public abstract i([BLjava/lang/CharSequence;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/io/BaseEncoding$DecodingException;
        }
    .end annotation
.end method

.method public final j(LD2/j;)LD2/f;
    .locals 1
    .annotation build Lv2/c;
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/io/BaseEncoding$b;

    invoke-direct {v0, p0, p1}, Lcom/google/common/io/BaseEncoding$b;-><init>(Lcom/google/common/io/BaseEncoding;LD2/j;)V

    return-object v0
.end method

.method public abstract k(Ljava/io/Reader;)Ljava/io/InputStream;
    .annotation build Lv2/c;
    .end annotation
.end method

.method public l([B)Ljava/lang/String;
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/common/io/BaseEncoding;->m([BII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final m([BII)Ljava/lang/String;
    .locals 2

    add-int v0, p2, p3

    array-length v1, p1

    invoke-static {p2, v0, v1}, Lw2/H;->f0(III)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Lcom/google/common/io/BaseEncoding;->u(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    :try_start_0
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/common/io/BaseEncoding;->n(Ljava/lang/Appendable;[BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public abstract n(Ljava/lang/Appendable;[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final o(LD2/i;)LD2/e;
    .locals 1
    .annotation build Lv2/c;
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/io/BaseEncoding$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/io/BaseEncoding$a;-><init>(Lcom/google/common/io/BaseEncoding;LD2/i;)V

    return-object v0
.end method

.method public abstract p(Ljava/io/Writer;)Ljava/io/OutputStream;
    .annotation build Lv2/c;
    .end annotation
.end method

.method public abstract s()Lcom/google/common/io/BaseEncoding;
.end method

.method public abstract t(I)I
.end method

.method public abstract u(I)I
.end method

.method public abstract v()Lcom/google/common/io/BaseEncoding;
.end method

.method public y(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    return-object p1
.end method

.method public abstract z()Lcom/google/common/io/BaseEncoding;
.end method
