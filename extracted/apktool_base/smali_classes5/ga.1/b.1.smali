.class public final Lga/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lga/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lga/b;


# instance fields
.field public final b:Ljava/math/BigDecimal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lga/b;

    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Lga/b;-><init>(Ljava/math/BigDecimal;)V

    sput-object v0, Lga/b;->c:Lga/b;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigDecimal;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    :goto_0
    iput-object p1, p0, Lga/b;->b:Ljava/math/BigDecimal;

    return-void
.end method

.method public static b(Ljava/lang/String;)Lga/b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-nez p0, :cond_0

    sget-object p0, Lga/b;->c:Lga/b;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lga/b;->c:Lga/b;

    return-object p0

    :cond_1
    :try_start_0
    new-instance v0, Lga/b;

    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lga/b;-><init>(Ljava/math/BigDecimal;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    sget-object p0, Lga/b;->c:Lga/b;

    return-object p0
.end method

.method public static i(D)Lga/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    new-instance v0, Lga/b;

    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-direct {v0, p0}, Lga/b;-><init>(Ljava/math/BigDecimal;)V

    return-object v0
.end method

.method public static j(J)Lga/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    new-instance v0, Lga/b;

    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-direct {v0, p0}, Lga/b;-><init>(Ljava/math/BigDecimal;)V

    return-object v0
.end method

.method public static k(Ljava/math/BigDecimal;)Lga/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    new-instance v0, Lga/b;

    invoke-direct {v0, p0}, Lga/b;-><init>(Ljava/math/BigDecimal;)V

    return-object v0
.end method


# virtual methods
.method public a(Lga/b;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object p1, p0, Lga/b;->b:Ljava/math/BigDecimal;

    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lga/b;->b:Ljava/math/BigDecimal;

    iget-object p1, p1, Lga/b;->b:Ljava/math/BigDecimal;

    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    return p1
.end method

.method public c()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lga/b;->b:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "other"
        }
    .end annotation

    check-cast p1, Lga/b;

    invoke-virtual {p0, p1}, Lga/b;->a(Lga/b;)I

    move-result p1

    return p1
.end method

.method public d()D
    .locals 2

    iget-object v0, p0, Lga/b;->b:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public e()F
    .locals 1

    iget-object v0, p0, Lga/b;->b:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lga/b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lga/b;

    invoke-virtual {p0, p1}, Lga/b;->a(Lga/b;)I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public g()J
    .locals 2

    iget-object v0, p0, Lga/b;->b:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lga/b;->b:Ljava/math/BigDecimal;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/i;->a(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lga/b;->b:Ljava/math/BigDecimal;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/i;->a(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lga/b;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
