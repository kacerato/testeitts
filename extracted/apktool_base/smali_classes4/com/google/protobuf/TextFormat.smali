.class public final Lcom/google/protobuf/TextFormat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;,
        Lcom/google/protobuf/TextFormat$b;,
        Lcom/google/protobuf/TextFormat$UnknownFieldParseException;,
        Lcom/google/protobuf/TextFormat$ParseException;,
        Lcom/google/protobuf/TextFormat$e;,
        Lcom/google/protobuf/TextFormat$d;,
        Lcom/google/protobuf/TextFormat$c;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static final b:Ljava/lang/String; = "\t "

.field public static final c:Lcom/google/protobuf/TextFormat$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/protobuf/TextFormat;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/TextFormat;->a:Ljava/util/logging/Logger;

    invoke-static {}, Lcom/google/protobuf/TextFormat$b;->n()Lcom/google/protobuf/TextFormat$b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/TextFormat$b$a;->a()Lcom/google/protobuf/TextFormat$b;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/TextFormat;->c:Lcom/google/protobuf/TextFormat$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "field",
            "value"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/google/protobuf/TextFormat;->L()Lcom/google/protobuf/TextFormat$c;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/TextFormat$c;->j(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static B(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;Ljava/lang/Appendable;)V
    .locals 1
    .annotation build Lcom/google/protobuf/x0;
        imports = {
            "com.google.protobuf.TextFormat"
        }
        replacement = "TextFormat.printer().printFieldValue(field, value, output)"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "field",
            "value",
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/google/protobuf/TextFormat;->L()Lcom/google/protobuf/TextFormat$c;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/TextFormat$c;->l(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;Ljava/lang/Appendable;)V

    return-void
.end method

.method public static C(Lcom/google/protobuf/e1;)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/protobuf/x0;
        imports = {
            "com.google.protobuf.TextFormat"
        }
        replacement = "TextFormat.printer().printToString(message)"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/google/protobuf/TextFormat;->L()Lcom/google/protobuf/TextFormat$c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/TextFormat$c;->o(Lcom/google/protobuf/e1;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static D(Lcom/google/protobuf/r2;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "fields"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/google/protobuf/TextFormat;->L()Lcom/google/protobuf/TextFormat$c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/TextFormat$c;->p(Lcom/google/protobuf/r2;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static E(Lcom/google/protobuf/e1;)Ljava/lang/String;
    .locals 2
    .annotation build Lcom/google/protobuf/x0;
        imports = {
            "com.google.protobuf.TextFormat"
        }
        replacement = "TextFormat.printer().escapingNonAscii(false).printToString(message)"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/google/protobuf/TextFormat;->L()Lcom/google/protobuf/TextFormat$c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/protobuf/TextFormat$c;->c(Z)Lcom/google/protobuf/TextFormat$c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/TextFormat$c;->o(Lcom/google/protobuf/e1;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static F(Lcom/google/protobuf/r2;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "fields"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/google/protobuf/TextFormat;->L()Lcom/google/protobuf/TextFormat$c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/protobuf/TextFormat$c;->c(Z)Lcom/google/protobuf/TextFormat$c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/TextFormat$c;->p(Lcom/google/protobuf/r2;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static G(Lcom/google/protobuf/e1;Ljava/lang/Appendable;)V
    .locals 2
    .annotation build Lcom/google/protobuf/x0;
        imports = {
            "com.google.protobuf.TextFormat"
        }
        replacement = "TextFormat.printer().escapingNonAscii(false).print(message, output)"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/google/protobuf/TextFormat;->L()Lcom/google/protobuf/TextFormat$c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/protobuf/TextFormat$c;->c(Z)Lcom/google/protobuf/TextFormat$c;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/TextFormat$c;->e(Lcom/google/protobuf/e1;Ljava/lang/Appendable;)V

    return-void
.end method

.method public static H(Lcom/google/protobuf/r2;Ljava/lang/Appendable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "fields",
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/google/protobuf/TextFormat;->L()Lcom/google/protobuf/TextFormat$c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/protobuf/TextFormat$c;->c(Z)Lcom/google/protobuf/TextFormat$c;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/TextFormat$c;->f(Lcom/google/protobuf/r2;Ljava/lang/Appendable;)V

    return-void
.end method

.method public static I(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;Ljava/lang/Appendable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "field",
            "value",
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/google/protobuf/TextFormat;->L()Lcom/google/protobuf/TextFormat$c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/protobuf/TextFormat$c;->c(Z)Lcom/google/protobuf/TextFormat$c;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/TextFormat$c;->l(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;Ljava/lang/Appendable;)V

    return-void
.end method

.method public static J(ILjava/lang/Object;Lcom/google/protobuf/TextFormat$d;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "tag",
            "value",
            "generator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/A2;->b(I)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    check-cast p1, Ljava/lang/Integer;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "0x%08x"

    invoke-static {v2, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/protobuf/TextFormat$d;->d(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad tag: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast p1, Lcom/google/protobuf/r2;

    invoke-static {p1, p2}, Lcom/google/protobuf/TextFormat$c;->a(Lcom/google/protobuf/r2;Lcom/google/protobuf/TextFormat$d;)V

    goto :goto_0

    :cond_2
    :try_start_0
    move-object p0, p1

    check-cast p0, Lcom/google/protobuf/x;

    invoke-static {p0}, Lcom/google/protobuf/r2;->d3(Lcom/google/protobuf/x;)Lcom/google/protobuf/r2;

    move-result-object p0

    const-string v0, "{"

    invoke-virtual {p2, v0}, Lcom/google/protobuf/TextFormat$d;->d(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/google/protobuf/TextFormat$d;->a()V

    invoke-virtual {p2}, Lcom/google/protobuf/TextFormat$d;->b()V

    invoke-static {p0, p2}, Lcom/google/protobuf/TextFormat$c;->a(Lcom/google/protobuf/r2;Lcom/google/protobuf/TextFormat$d;)V

    invoke-virtual {p2}, Lcom/google/protobuf/TextFormat$d;->c()V

    const-string p0, "}"

    invoke-virtual {p2, p0}, Lcom/google/protobuf/TextFormat$d;->d(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "\""

    invoke-virtual {p2, p0}, Lcom/google/protobuf/TextFormat$d;->d(Ljava/lang/CharSequence;)V

    check-cast p1, Lcom/google/protobuf/x;

    invoke-static {p1}, Lcom/google/protobuf/TextFormat;->e(Lcom/google/protobuf/x;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/protobuf/TextFormat$d;->d(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/TextFormat$d;->d(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    check-cast p1, Ljava/lang/Long;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "0x%016x"

    invoke-static {v2, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/protobuf/TextFormat$d;->d(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/protobuf/TextFormat;->T(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/protobuf/TextFormat$d;->d(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public static K(ILjava/lang/Object;Ljava/lang/Appendable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "tag",
            "value",
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/google/protobuf/TextFormat;->p(Ljava/lang/Appendable;)Lcom/google/protobuf/TextFormat$d;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/TextFormat;->J(ILjava/lang/Object;Lcom/google/protobuf/TextFormat$d;)V

    return-void
.end method

.method public static L()Lcom/google/protobuf/TextFormat$c;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/TextFormat$c;->b()Lcom/google/protobuf/TextFormat$c;

    move-result-object v0

    return-object v0
.end method

.method public static M(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "field",
            "value"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/google/protobuf/TextFormat;->L()Lcom/google/protobuf/TextFormat$c;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/TextFormat$c;->t(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static N(Lcom/google/protobuf/e1;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/TextFormat;->L()Lcom/google/protobuf/TextFormat$c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/TextFormat$c;->u(Lcom/google/protobuf/e1;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static O(Lcom/google/protobuf/r2;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "fields"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/google/protobuf/TextFormat;->L()Lcom/google/protobuf/TextFormat$c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/TextFormat$c;->v(Lcom/google/protobuf/r2;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static P(Ljava/lang/Appendable;)Lcom/google/protobuf/TextFormat$d;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/TextFormat$d;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/protobuf/TextFormat$d;-><init>(Ljava/lang/Appendable;ZLcom/google/protobuf/TextFormat$a;)V

    return-object v0
.end method

.method public static Q(Ljava/lang/CharSequence;)Lcom/google/protobuf/x;
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "charString"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/x;->size()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/x;->size()I

    move-result v5

    if-ge v3, v5, :cond_1b

    invoke-virtual {p0, v3}, Lcom/google/protobuf/x;->j(I)B

    move-result v5

    const/16 v6, 0x5c

    const/4 v7, 0x1

    if-ne v5, v6, :cond_1a

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0}, Lcom/google/protobuf/x;->size()I

    move-result v8

    if-ge v5, v8, :cond_19

    invoke-virtual {p0, v5}, Lcom/google/protobuf/x;->j(I)B

    move-result v8

    invoke-static {v8}, Lcom/google/protobuf/TextFormat;->k(B)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {v8}, Lcom/google/protobuf/TextFormat;->d(B)I

    move-result v6

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Lcom/google/protobuf/x;->size()I

    move-result v8

    if-ge v3, v8, :cond_0

    invoke-virtual {p0, v3}, Lcom/google/protobuf/x;->j(I)B

    move-result v8

    invoke-static {v8}, Lcom/google/protobuf/TextFormat;->k(B)Z

    move-result v8

    if-eqz v8, :cond_0

    mul-int/lit8 v6, v6, 0x8

    invoke-virtual {p0, v3}, Lcom/google/protobuf/x;->j(I)B

    move-result v5

    invoke-static {v5}, Lcom/google/protobuf/TextFormat;->d(B)I

    move-result v5

    add-int/2addr v6, v5

    move v5, v3

    :cond_0
    add-int/lit8 v3, v5, 0x1

    invoke-virtual {p0}, Lcom/google/protobuf/x;->size()I

    move-result v8

    if-ge v3, v8, :cond_1

    invoke-virtual {p0, v3}, Lcom/google/protobuf/x;->j(I)B

    move-result v8

    invoke-static {v8}, Lcom/google/protobuf/TextFormat;->k(B)Z

    move-result v8

    if-eqz v8, :cond_1

    mul-int/lit8 v6, v6, 0x8

    invoke-virtual {p0, v3}, Lcom/google/protobuf/x;->j(I)B

    move-result v5

    invoke-static {v5}, Lcom/google/protobuf/TextFormat;->d(B)I

    move-result v5

    add-int/2addr v6, v5

    goto :goto_1

    :cond_1
    move v3, v5

    :goto_1
    add-int/lit8 v5, v4, 0x1

    int-to-byte v6, v6

    aput-byte v6, v1, v4

    :goto_2
    move v4, v5

    goto/16 :goto_9

    :cond_2
    const/16 v9, 0x22

    if-eq v8, v9, :cond_18

    const/16 v9, 0x27

    if-eq v8, v9, :cond_17

    const/16 v10, 0x3f

    if-eq v8, v10, :cond_16

    const/16 v10, 0x55

    if-eq v8, v10, :cond_f

    if-eq v8, v6, :cond_e

    const/16 v6, 0x66

    const/16 v10, 0xc

    if-eq v8, v6, :cond_d

    const/16 v6, 0x6e

    if-eq v8, v6, :cond_c

    const/16 v6, 0x72

    if-eq v8, v6, :cond_b

    const/16 v6, 0x78

    if-eq v8, v6, :cond_8

    const/16 v6, 0x61

    if-eq v8, v6, :cond_7

    const/16 v6, 0x62

    const/16 v11, 0x8

    if-eq v8, v6, :cond_6

    packed-switch v8, :pswitch_data_0

    new-instance p0, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid escape sequence: \'\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    add-int/lit8 v3, v4, 0x1

    const/16 v6, 0xb

    aput-byte v6, v1, v4

    :goto_3
    move v4, v3

    move v3, v5

    goto/16 :goto_9

    :pswitch_1
    add-int/lit8 v5, v3, 0x2

    add-int/lit8 v6, v3, 0x5

    invoke-virtual {p0}, Lcom/google/protobuf/x;->size()I

    move-result v8

    if-ge v6, v8, :cond_5

    invoke-virtual {p0, v5}, Lcom/google/protobuf/x;->j(I)B

    move-result v8

    invoke-static {v8}, Lcom/google/protobuf/TextFormat;->j(B)Z

    move-result v8

    if-eqz v8, :cond_5

    add-int/lit8 v8, v3, 0x3

    invoke-virtual {p0, v8}, Lcom/google/protobuf/x;->j(I)B

    move-result v9

    invoke-static {v9}, Lcom/google/protobuf/TextFormat;->j(B)Z

    move-result v9

    if-eqz v9, :cond_5

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {p0, v3}, Lcom/google/protobuf/x;->j(I)B

    move-result v9

    invoke-static {v9}, Lcom/google/protobuf/TextFormat;->j(B)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {p0, v6}, Lcom/google/protobuf/x;->j(I)B

    move-result v9

    invoke-static {v9}, Lcom/google/protobuf/TextFormat;->j(B)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {p0, v5}, Lcom/google/protobuf/x;->j(I)B

    move-result v5

    invoke-static {v5}, Lcom/google/protobuf/TextFormat;->d(B)I

    move-result v5

    shl-int/2addr v5, v10

    invoke-virtual {p0, v8}, Lcom/google/protobuf/x;->j(I)B

    move-result v8

    invoke-static {v8}, Lcom/google/protobuf/TextFormat;->d(B)I

    move-result v8

    shl-int/2addr v8, v11

    or-int/2addr v5, v8

    invoke-virtual {p0, v3}, Lcom/google/protobuf/x;->j(I)B

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/TextFormat;->d(B)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v3, v5

    invoke-virtual {p0, v6}, Lcom/google/protobuf/x;->j(I)B

    move-result v5

    invoke-static {v5}, Lcom/google/protobuf/TextFormat;->d(B)I

    move-result v5

    or-int/2addr v3, v5

    int-to-char v3, v3

    const v5, 0xd800

    if-lt v3, v5, :cond_4

    const v5, 0xdfff

    if-le v3, v5, :cond_3

    goto :goto_4

    :cond_3
    new-instance p0, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;

    const-string v0, "Invalid escape sequence: \'\\u\' refers to a surrogate"

    invoke-direct {p0, v0}, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_4
    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/google/protobuf/D0;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    array-length v5, v3

    invoke-static {v3, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v3

    :goto_5
    add-int/2addr v4, v3

    move v3, v6

    goto/16 :goto_9

    :cond_5
    new-instance p0, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;

    const-string v0, "Invalid escape sequence: \'\\u\' with too few hex chars"

    invoke-direct {p0, v0}, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    add-int/lit8 v3, v4, 0x1

    const/16 v6, 0x9

    aput-byte v6, v1, v4

    goto/16 :goto_3

    :cond_6
    add-int/lit8 v3, v4, 0x1

    aput-byte v11, v1, v4

    goto/16 :goto_3

    :cond_7
    add-int/lit8 v3, v4, 0x1

    const/4 v6, 0x7

    aput-byte v6, v1, v4

    goto/16 :goto_3

    :cond_8
    add-int/lit8 v5, v3, 0x2

    invoke-virtual {p0}, Lcom/google/protobuf/x;->size()I

    move-result v6

    if-ge v5, v6, :cond_a

    invoke-virtual {p0, v5}, Lcom/google/protobuf/x;->j(I)B

    move-result v6

    invoke-static {v6}, Lcom/google/protobuf/TextFormat;->j(B)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {p0, v5}, Lcom/google/protobuf/x;->j(I)B

    move-result v6

    invoke-static {v6}, Lcom/google/protobuf/TextFormat;->d(B)I

    move-result v6

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {p0}, Lcom/google/protobuf/x;->size()I

    move-result v8

    if-ge v3, v8, :cond_9

    invoke-virtual {p0, v3}, Lcom/google/protobuf/x;->j(I)B

    move-result v8

    invoke-static {v8}, Lcom/google/protobuf/TextFormat;->j(B)Z

    move-result v8

    if-eqz v8, :cond_9

    mul-int/lit8 v6, v6, 0x10

    invoke-virtual {p0, v3}, Lcom/google/protobuf/x;->j(I)B

    move-result v5

    invoke-static {v5}, Lcom/google/protobuf/TextFormat;->d(B)I

    move-result v5

    add-int/2addr v6, v5

    goto :goto_6

    :cond_9
    move v3, v5

    :goto_6
    add-int/lit8 v5, v4, 0x1

    int-to-byte v6, v6

    aput-byte v6, v1, v4

    goto/16 :goto_2

    :cond_a
    new-instance p0, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;

    const-string v0, "Invalid escape sequence: \'\\x\' with no digits"

    invoke-direct {p0, v0}, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    add-int/lit8 v3, v4, 0x1

    const/16 v6, 0xd

    aput-byte v6, v1, v4

    goto/16 :goto_3

    :cond_c
    add-int/lit8 v3, v4, 0x1

    const/16 v6, 0xa

    aput-byte v6, v1, v4

    goto/16 :goto_3

    :cond_d
    add-int/lit8 v3, v4, 0x1

    aput-byte v10, v1, v4

    goto/16 :goto_3

    :cond_e
    add-int/lit8 v3, v4, 0x1

    aput-byte v6, v1, v4

    goto/16 :goto_3

    :cond_f
    add-int/lit8 v5, v3, 0x2

    add-int/lit8 v6, v3, 0x9

    invoke-virtual {p0}, Lcom/google/protobuf/x;->size()I

    move-result v8

    const-string v9, "Invalid escape sequence: \'\\U\' with too few hex chars"

    if-ge v6, v8, :cond_15

    move v10, v2

    move v8, v5

    :goto_7
    add-int/lit8 v11, v3, 0xa

    if-ge v8, v11, :cond_11

    invoke-virtual {p0, v8}, Lcom/google/protobuf/x;->j(I)B

    move-result v11

    invoke-static {v11}, Lcom/google/protobuf/TextFormat;->j(B)Z

    move-result v12

    if-eqz v12, :cond_10

    shl-int/lit8 v10, v10, 0x4

    invoke-static {v11}, Lcom/google/protobuf/TextFormat;->d(B)I

    move-result v11

    or-int/2addr v10, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_10
    new-instance p0, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;

    invoke-direct {p0, v9}, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    invoke-static {v10}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v3

    const-string v8, "Invalid escape sequence: \'\\U"

    if-eqz v3, :cond_14

    invoke-static {v10}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v3

    if-eqz v3, :cond_13

    sget-object v9, Ljava/lang/Character$UnicodeBlock;->LOW_SURROGATES:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v3, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_12

    sget-object v9, Ljava/lang/Character$UnicodeBlock;->HIGH_SURROGATES:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v3, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_12

    sget-object v9, Ljava/lang/Character$UnicodeBlock;->HIGH_PRIVATE_USE_SURROGATES:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v3, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_8

    :cond_12
    new-instance v0, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5, v11}, Lcom/google/protobuf/x;->a0(II)Lcom/google/protobuf/x;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' refers to a surrogate code unit"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    :goto_8
    filled-new-array {v10}, [I

    move-result-object v3

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3, v2, v7}, Ljava/lang/String;-><init>([III)V

    sget-object v3, Lcom/google/protobuf/D0;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    array-length v5, v3

    invoke-static {v3, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v3

    goto/16 :goto_5

    :cond_14
    new-instance v0, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5, v11}, Lcom/google/protobuf/x;->a0(II)Lcom/google/protobuf/x;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' is not a valid code point value"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    new-instance p0, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;

    invoke-direct {p0, v9}, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    add-int/lit8 v3, v4, 0x1

    aput-byte v10, v1, v4

    goto/16 :goto_3

    :cond_17
    add-int/lit8 v3, v4, 0x1

    aput-byte v9, v1, v4

    goto/16 :goto_3

    :cond_18
    add-int/lit8 v3, v4, 0x1

    aput-byte v9, v1, v4

    goto/16 :goto_3

    :cond_19
    new-instance p0, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;

    const-string v0, "Invalid escape sequence: \'\\\' at end of string."

    invoke-direct {p0, v0}, Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1a
    add-int/lit8 v6, v4, 0x1

    aput-byte v5, v1, v4

    move v4, v6

    :goto_9
    add-int/2addr v3, v7

    goto/16 :goto_0

    :cond_1b
    if-ne v0, v4, :cond_1c

    invoke-static {v1}, Lcom/google/protobuf/x;->k0([B)Lcom/google/protobuf/x;

    move-result-object p0

    goto :goto_a

    :cond_1c
    invoke-static {v1, v2, v4}, Lcom/google/protobuf/x;->v([BII)Lcom/google/protobuf/x;

    move-result-object p0

    :goto_a
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x74
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static R(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$InvalidEscapeSequenceException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/TextFormat;->Q(Ljava/lang/CharSequence;)Lcom/google/protobuf/x;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static S(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    if-ltz p0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static T(J)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    and-long/2addr p0, v0

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    const/16 p1, 0x3f

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Ljava/lang/Appendable;)Lcom/google/protobuf/TextFormat$d;
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/TextFormat;->p(Ljava/lang/Appendable;)Lcom/google/protobuf/TextFormat$d;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lcom/google/protobuf/TextFormat;->a:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static synthetic c(Ljava/lang/Appendable;)Lcom/google/protobuf/TextFormat$d;
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/TextFormat;->P(Ljava/lang/Appendable;)Lcom/google/protobuf/TextFormat$d;

    move-result-object p0

    return-object p0
.end method

.method public static d(B)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "c"
        }
    .end annotation

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    return p0

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_1

    add-int/lit8 p0, p0, -0x57

    return p0

    :cond_1
    add-int/lit8 p0, p0, -0x37

    return p0
.end method

.method public static e(Lcom/google/protobuf/x;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/c2;->a(Lcom/google/protobuf/x;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f([B)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/c2;->c([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "input"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/c2;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "input"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/TextFormat;->e(Lcom/google/protobuf/x;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i()Lcom/google/protobuf/TextFormat$b;
    .locals 1

    sget-object v0, Lcom/google/protobuf/TextFormat;->c:Lcom/google/protobuf/TextFormat$b;

    return-object v0
.end method

.method public static j(B)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "c"
        }
    .end annotation

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x66

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x41

    if-gt v0, p0, :cond_3

    const/16 v0, 0x46

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static k(B)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "c"
        }
    .end annotation

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x37

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static l(Ljava/lang/CharSequence;Lcom/google/protobuf/b0;Lcom/google/protobuf/Y0$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "input",
            "extensionRegistry",
            "builder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/TextFormat;->c:Lcom/google/protobuf/TextFormat$b;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/TextFormat$b;->g(Ljava/lang/CharSequence;Lcom/google/protobuf/b0;Lcom/google/protobuf/Y0$a;)V

    return-void
.end method

.method public static m(Ljava/lang/CharSequence;Lcom/google/protobuf/Y0$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "input",
            "builder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/TextFormat;->c:Lcom/google/protobuf/TextFormat$b;

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/TextFormat$b;->h(Ljava/lang/CharSequence;Lcom/google/protobuf/Y0$a;)V

    return-void
.end method

.method public static n(Ljava/lang/Readable;Lcom/google/protobuf/b0;Lcom/google/protobuf/Y0$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "input",
            "extensionRegistry",
            "builder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/TextFormat;->c:Lcom/google/protobuf/TextFormat$b;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/TextFormat$b;->i(Ljava/lang/Readable;Lcom/google/protobuf/b0;Lcom/google/protobuf/Y0$a;)V

    return-void
.end method

.method public static o(Ljava/lang/Readable;Lcom/google/protobuf/Y0$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "input",
            "builder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/TextFormat;->c:Lcom/google/protobuf/TextFormat$b;

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/TextFormat$b;->j(Ljava/lang/Readable;Lcom/google/protobuf/Y0$a;)V

    return-void
.end method

.method public static p(Ljava/lang/Appendable;)Lcom/google/protobuf/TextFormat$d;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/TextFormat$d;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/protobuf/TextFormat$d;-><init>(Ljava/lang/Appendable;ZLcom/google/protobuf/TextFormat$a;)V

    return-object v0
.end method

.method public static q(Ljava/lang/CharSequence;Lcom/google/protobuf/b0;Ljava/lang/Class;)Lcom/google/protobuf/Y0;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "input",
            "extensionRegistry",
            "protoClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/Y0;",
            ">(",
            "Ljava/lang/CharSequence;",
            "Lcom/google/protobuf/b0;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    invoke-static {p2}, Lcom/google/protobuf/D0;->j(Ljava/lang/Class;)Lcom/google/protobuf/b1;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/Y0;

    invoke-interface {p2}, Lcom/google/protobuf/Y0;->newBuilderForType()Lcom/google/protobuf/Y0$a;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/TextFormat;->l(Ljava/lang/CharSequence;Lcom/google/protobuf/b0;Lcom/google/protobuf/Y0$a;)V

    invoke-interface {p2}, Lcom/google/protobuf/Y0$a;->build()Lcom/google/protobuf/Y0;

    move-result-object p0

    return-object p0
.end method

.method public static r(Ljava/lang/CharSequence;Ljava/lang/Class;)Lcom/google/protobuf/Y0;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "input",
            "protoClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/Y0;",
            ">(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/D0;->j(Ljava/lang/Class;)Lcom/google/protobuf/b1;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Y0;

    invoke-interface {p1}, Lcom/google/protobuf/Y0;->newBuilderForType()Lcom/google/protobuf/Y0$a;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/protobuf/TextFormat;->m(Ljava/lang/CharSequence;Lcom/google/protobuf/Y0$a;)V

    invoke-interface {p1}, Lcom/google/protobuf/Y0$a;->build()Lcom/google/protobuf/Y0;

    move-result-object p0

    return-object p0
.end method

.method public static s(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "text"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/protobuf/TextFormat;->u(Ljava/lang/String;ZZ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public static t(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "text"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0, v0}, Lcom/google/protobuf/TextFormat;->u(Ljava/lang/String;ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static u(Ljava/lang/String;ZZ)J
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "text",
            "isSigned",
            "isLong"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const-string v0, "-"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Number must be positive: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    const-string v2, "0x"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    const/16 v3, 0x10

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x2

    move v2, v3

    goto :goto_1

    :cond_2
    const-string v2, "0"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x8

    goto :goto_1

    :cond_3
    const/16 v2, 0xa

    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "Number out of range for 32-bit unsigned integer: "

    const-string v6, "Number out of range for 32-bit signed integer: "

    if-ge v4, v3, :cond_8

    invoke-static {v1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    if-eqz v0, :cond_4

    neg-long v1, v1

    :cond_4
    if-nez p2, :cond_10

    if-eqz p1, :cond_6

    const-wide/32 p1, 0x7fffffff

    cmp-long p1, v1, p1

    if-gtz p1, :cond_5

    const-wide/32 p1, -0x80000000

    cmp-long p1, v1, p1

    if-ltz p1, :cond_5

    goto/16 :goto_3

    :cond_5
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    const-wide p1, 0x100000000L

    cmp-long p1, v1, p1

    if-gez p1, :cond_7

    const-wide/16 p1, 0x0

    cmp-long p1, v1, p1

    if-ltz p1, :cond_7

    goto/16 :goto_3

    :cond_7
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    if-eqz v0, :cond_9

    invoke-virtual {v3}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v3

    :cond_9
    if-nez p2, :cond_d

    if-eqz p1, :cond_b

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    const/16 p2, 0x1f

    if-gt p1, p2, :cond_a

    goto :goto_2

    :cond_a
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    const/16 p2, 0x20

    if-gt p1, p2, :cond_c

    goto :goto_2

    :cond_c
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    if-eqz p1, :cond_f

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    const/16 p2, 0x3f

    if-gt p1, p2, :cond_e

    goto :goto_2

    :cond_e
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Number out of range for 64-bit signed integer: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    const/16 p2, 0x40

    if-gt p1, p2, :cond_11

    :goto_2
    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    :cond_10
    :goto_3
    return-wide v1

    :cond_11
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Number out of range for 64-bit unsigned integer: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static v(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "text"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/google/protobuf/TextFormat;->u(Ljava/lang/String;ZZ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public static w(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "text"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/protobuf/TextFormat;->u(Ljava/lang/String;ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static x(Lcom/google/protobuf/e1;Ljava/lang/Appendable;)V
    .locals 1
    .annotation build Lcom/google/protobuf/x0;
        imports = {
            "com.google.protobuf.TextFormat"
        }
        replacement = "TextFormat.printer().print(message, output)"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "message",
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/google/protobuf/TextFormat;->L()Lcom/google/protobuf/TextFormat$c;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/TextFormat$c;->e(Lcom/google/protobuf/e1;Ljava/lang/Appendable;)V

    return-void
.end method

.method public static y(Lcom/google/protobuf/r2;Ljava/lang/Appendable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "fields",
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/google/protobuf/TextFormat;->L()Lcom/google/protobuf/TextFormat$c;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/TextFormat$c;->f(Lcom/google/protobuf/r2;Ljava/lang/Appendable;)V

    return-void
.end method

.method public static z(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;Ljava/lang/Appendable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "field",
            "value",
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/google/protobuf/TextFormat;->L()Lcom/google/protobuf/TextFormat$c;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/TextFormat$c;->i(Lcom/google/protobuf/Descriptors$f;Ljava/lang/Object;Ljava/lang/Appendable;)V

    return-void
.end method
