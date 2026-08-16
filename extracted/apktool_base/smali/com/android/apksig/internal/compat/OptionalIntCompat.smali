.class public final Lcom/android/apksig/internal/compat/OptionalIntCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EMPTY:Lcom/android/apksig/internal/compat/OptionalIntCompat;


# instance fields
.field private final isPresent:Z

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/apksig/internal/compat/OptionalIntCompat;

    invoke-direct {v0}, Lcom/android/apksig/internal/compat/OptionalIntCompat;-><init>()V

    sput-object v0, Lcom/android/apksig/internal/compat/OptionalIntCompat;->EMPTY:Lcom/android/apksig/internal/compat/OptionalIntCompat;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/apksig/internal/compat/OptionalIntCompat;->isPresent:Z

    .line 3
    iput v0, p0, Lcom/android/apksig/internal/compat/OptionalIntCompat;->value:I

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/apksig/internal/compat/OptionalIntCompat;->isPresent:Z

    .line 6
    iput p1, p0, Lcom/android/apksig/internal/compat/OptionalIntCompat;->value:I

    return-void
.end method

.method public static empty()Lcom/android/apksig/internal/compat/OptionalIntCompat;
    .locals 1

    sget-object v0, Lcom/android/apksig/internal/compat/OptionalIntCompat;->EMPTY:Lcom/android/apksig/internal/compat/OptionalIntCompat;

    return-object v0
.end method

.method public static of(I)Lcom/android/apksig/internal/compat/OptionalIntCompat;
    .locals 1

    new-instance v0, Lcom/android/apksig/internal/compat/OptionalIntCompat;

    invoke-direct {v0, p0}, Lcom/android/apksig/internal/compat/OptionalIntCompat;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/apksig/internal/compat/OptionalIntCompat;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/apksig/internal/compat/OptionalIntCompat;

    iget-boolean v1, p0, Lcom/android/apksig/internal/compat/OptionalIntCompat;->isPresent:Z

    if-eqz v1, :cond_3

    iget-boolean v3, p1, Lcom/android/apksig/internal/compat/OptionalIntCompat;->isPresent:Z

    if-eqz v3, :cond_3

    iget v1, p0, Lcom/android/apksig/internal/compat/OptionalIntCompat;->value:I

    iget p1, p1, Lcom/android/apksig/internal/compat/OptionalIntCompat;->value:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-boolean p1, p1, Lcom/android/apksig/internal/compat/OptionalIntCompat;->isPresent:Z

    if-ne v1, p1, :cond_2

    :goto_0
    return v0
.end method

.method public getAsInt()I
    .locals 2

    iget-boolean v0, p0, Lcom/android/apksig/internal/compat/OptionalIntCompat;->isPresent:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/apksig/internal/compat/OptionalIntCompat;->value:I

    return v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/apksig/internal/compat/OptionalIntCompat;->isPresent:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/apksig/internal/compat/OptionalIntCompat;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ifPresent(Lcom/android/apksig/internal/compat/IntConsumerCompat;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/apksig/internal/compat/OptionalIntCompat;->isPresent:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/apksig/internal/compat/OptionalIntCompat;->value:I

    invoke-interface {p1, v0}, Lcom/android/apksig/internal/compat/IntConsumerCompat;->accept(I)V

    :cond_0
    return-void
.end method

.method public isPresent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/apksig/internal/compat/OptionalIntCompat;->isPresent:Z

    return v0
.end method

.method public orElse(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/android/apksig/internal/compat/OptionalIntCompat;->isPresent:Z

    if-eqz v0, :cond_0

    iget p1, p0, Lcom/android/apksig/internal/compat/OptionalIntCompat;->value:I

    :cond_0
    return p1
.end method

.method public orElseGet(Lcom/android/apksig/internal/compat/IntSupplierCompat;)I
    .locals 1

    iget-boolean v0, p0, Lcom/android/apksig/internal/compat/OptionalIntCompat;->isPresent:Z

    if-eqz v0, :cond_0

    iget p1, p0, Lcom/android/apksig/internal/compat/OptionalIntCompat;->value:I

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/android/apksig/internal/compat/IntSupplierCompat;->getAsInt()I

    move-result p1

    :goto_0
    return p1
.end method

.method public orElseThrow(Lcom/android/apksig/internal/compat/SupplierCompat;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcom/android/apksig/internal/compat/SupplierCompat<",
            "TX;>;)I^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/apksig/internal/compat/OptionalIntCompat;->isPresent:Z

    if-eqz v0, :cond_0

    iget p1, p0, Lcom/android/apksig/internal/compat/OptionalIntCompat;->value:I

    return p1

    :cond_0
    invoke-interface {p1}, Lcom/android/apksig/internal/compat/SupplierCompat;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/android/apksig/internal/compat/OptionalIntCompat;->isPresent:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/apksig/internal/compat/OptionalIntCompat;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "OptionalIntCompat[%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "OptionalIntCompat.empty"

    :goto_0
    return-object v0
.end method
