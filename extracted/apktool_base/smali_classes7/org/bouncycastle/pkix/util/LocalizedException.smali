.class public Lorg/bouncycastle/pkix/util/LocalizedException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private cause:Ljava/lang/Throwable;

.field protected message:Lorg/bouncycastle/pkix/util/a;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pkix/util/a;)V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pkix/util/e;->n(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/bouncycastle/pkix/util/LocalizedException;->message:Lorg/bouncycastle/pkix/util/a;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pkix/util/a;Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pkix/util/e;->n(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/bouncycastle/pkix/util/LocalizedException;->message:Lorg/bouncycastle/pkix/util/a;

    iput-object p2, p0, Lorg/bouncycastle/pkix/util/LocalizedException;->cause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pkix/util/LocalizedException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getErrorMessage()Lorg/bouncycastle/pkix/util/a;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pkix/util/LocalizedException;->message:Lorg/bouncycastle/pkix/util/a;

    return-object v0
.end method
