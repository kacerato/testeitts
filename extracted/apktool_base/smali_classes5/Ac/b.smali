.class public LAc/b;
.super Lvc/i;
.source "SourceFile"


# static fields
.field public static final e:I


# instance fields
.field public c:I

.field public d:LJAVARuntime/OHString;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lvc/i;-><init>(I)V

    .line 2
    sget v0, LAc/b;->e:I

    iput v0, p0, LAc/b;->c:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capacity"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lvc/i;-><init>(I)V

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, LAc/b;->c:I

    return-void
.end method

.method public constructor <init>(LAc/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .line 11
    invoke-virtual {p1}, Lvc/i;->capacity()I

    move-result v0

    invoke-direct {p0, v0}, Lvc/i;-><init>(I)V

    .line 12
    invoke-virtual {p1}, LAc/b;->g0()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 13
    invoke-super {p0, v0}, Lvc/i;->position(I)V

    .line 14
    invoke-super {p0, p1}, Lvc/i;->u(Lvc/i;)V

    .line 15
    :cond_0
    invoke-virtual {p1}, LAc/b;->hashCode()I

    move-result p1

    iput p1, p0, LAc/b;->c:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lvc/i;-><init>(I)V

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 7
    invoke-super {p0, v0}, Lvc/i;->position(I)V

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 9
    invoke-super {p0, v0}, Lvc/i;->put([C)V

    .line 10
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, LAc/b;->c:I

    return-void
.end method

.method public constructor <init>([C)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cbuf"
        }
    .end annotation

    .line 20
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, LAc/b;-><init>([CII)V

    return-void
.end method

.method public constructor <init>([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cbuf",
            "off",
            "len"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p3}, Lvc/i;-><init>(I)V

    if-lez p3, :cond_0

    const/4 v0, 0x0

    .line 17
    invoke-super {p0, v0}, Lvc/i;->position(I)V

    .line 18
    invoke-super {p0, v0, p1, p2, p3}, Lvc/i;->set(I[CII)V

    .line 19
    :cond_0
    invoke-static {p1, p2, p3}, LAc/b;->c0([CII)I

    move-result p1

    iput p1, p0, LAc/b;->c:I

    return-void
.end method

.method public static F(Ljava/lang/String;)[I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pattern"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_1
    if-lez v1, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_0

    add-int/lit8 v1, v1, -0x1

    aget v1, v0, v1

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static H(CC)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "c1",
            "c2"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p0

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p0

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static J(LAc/b;)LAc/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ohString"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LAc/b;->I()LAc/b;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static K(III)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "prefixHash",
            "suffixHash",
            "suffixLength"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    mul-int/2addr p0, v0

    add-int/2addr p0, p1

    return p0
.end method

.method public static K0(LAc/b;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "string"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, LAc/b;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static V(Lcom/google/gson/JsonElement;)LAc/b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance v0, LAc/b;

    invoke-direct {v0, p0}, LAc/b;-><init>(Ljava/lang/String;)V

    :cond_1
    return-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, LAc/b;

    invoke-direct {v0, p0}, LAc/b;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static c0([CII)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "chars",
            "off",
            "len"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p2, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    add-int v2, p1, v0

    aget-char v2, p0, v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static n0(LAc/b;)Lcom/google/gson/JsonElement;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ohString"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/gson/JsonPrimitive;

    invoke-virtual {p0}, LAc/b;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public B0(Ljava/lang/String;)[LAc/b;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    invoke-virtual {p0}, LAc/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    new-array v0, v0, [LAc/b;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    new-instance v2, LAc/b;

    aget-object v3, p1, v1

    invoke-direct {v2, v3}, LAc/b;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public C0(LAc/b;)[LJAVARuntime/OHString;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    invoke-virtual {p0}, LAc/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, LAc/b;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    new-array v0, v0, [LJAVARuntime/OHString;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    new-instance v2, LJAVARuntime/OHString;

    aget-object v3, p1, v1

    invoke-direct {v2, v3}, LJAVARuntime/OHString;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public D(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startIdx"
        }
    .end annotation

    invoke-super {p0, p1}, Lvc/i;->D(I)V

    invoke-virtual {p0}, LAc/b;->i0()V

    return-void
.end method

.method public D0(Ljava/lang/String;)[LJAVARuntime/OHString;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    invoke-virtual {p0}, LAc/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    new-array v0, v0, [LJAVARuntime/OHString;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    new-instance v2, LJAVARuntime/OHString;

    aget-object v3, p1, v1

    invoke-direct {v2, v3}, LJAVARuntime/OHString;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public E(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startIdx",
            "endIndex"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lvc/i;->E(II)V

    invoke-virtual {p0}, LAc/b;->i0()V

    return-void
.end method

.method public E0(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    invoke-virtual {p0}, LAc/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public F0(LAc/b;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Lvc/i;->q()Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lvc/i;->q()Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    :cond_3
    invoke-virtual {p0}, Lvc/i;->capacity()I

    move-result v1

    invoke-virtual {p1}, Lvc/i;->capacity()I

    move-result v2

    if-ge v1, v2, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0, p1}, Lvc/i;->C(Lvc/i;)Z

    move-result p1

    return p1
.end method

.method public G(I)C
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lvc/i;->get(I)C

    move-result p1

    return p1
.end method

.method public G0(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lvc/i;->q()Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Lvc/i;->capacity()I

    move-result v3

    if-ge v3, v1, :cond_3

    return v0

    :cond_3
    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_5

    invoke-virtual {p0, v3}, LAc/b;->G(I)C

    move-result v4

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_4

    return v0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return v2
.end method

.method public H0(I)LAc/b;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startIdx"
        }
    .end annotation

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lvc/i;->capacity()I

    move-result v0

    if-gt p1, v0, :cond_1

    invoke-virtual {p0}, Lvc/i;->capacity()I

    move-result v0

    sub-int/2addr v0, p1

    if-nez v0, :cond_0

    new-instance p1, LAc/b;

    invoke-direct {p1}, LAc/b;-><init>()V

    return-object p1

    :cond_0
    new-instance v1, LAc/b;

    invoke-direct {v1, v0}, LAc/b;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0, p1, v0}, Lvc/i;->y(ILvc/i;II)V

    invoke-virtual {p0}, Lvc/i;->capacity()I

    move-result v0

    invoke-virtual {p0, p1, v0}, LAc/b;->d0(II)I

    move-result p1

    iput p1, v1, LAc/b;->c:I

    return-object v1

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "startIdx out of bounds"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public I()LAc/b;
    .locals 1

    new-instance v0, LAc/b;

    invoke-direct {v0, p0}, LAc/b;-><init>(LAc/b;)V

    return-object v0
.end method

.method public I0(II)LAc/b;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startIdx",
            "endIndex"
        }
    .end annotation

    if-ltz p1, :cond_1

    if-lt p2, p1, :cond_1

    invoke-virtual {p0}, Lvc/i;->capacity()I

    move-result v0

    if-gt p2, v0, :cond_1

    sub-int v0, p2, p1

    if-nez v0, :cond_0

    new-instance p1, LAc/b;

    invoke-direct {p1}, LAc/b;-><init>()V

    return-object p1

    :cond_0
    new-instance v1, LAc/b;

    invoke-direct {v1, v0}, LAc/b;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0, p1, v0}, Lvc/i;->y(ILvc/i;II)V

    invoke-virtual {p0, p1, p2}, LAc/b;->d0(II)I

    move-result p1

    iput p1, v1, LAc/b;->c:I

    return-object v1

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "substring range out of bounds"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public J0()LJAVARuntime/OHString;
    .locals 1

    iget-object v0, p0, LAc/b;->d:LJAVARuntime/OHString;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/OHString;

    invoke-direct {v0, p0}, LJAVARuntime/OHString;-><init>(LAc/b;)V

    iput-object v0, p0, LAc/b;->d:LJAVARuntime/OHString;

    :cond_0
    return-object v0
.end method

.method public L(LAc/b;)LAc/b;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lvc/i;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, LAc/b;

    invoke-direct {v0, p1}, LAc/b;-><init>(LAc/b;)V

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lvc/i;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, LAc/b;

    invoke-direct {p1, p0}, LAc/b;-><init>(LAc/b;)V

    return-object p1

    :cond_1
    new-instance v0, LAc/b;

    invoke-virtual {p0}, Lvc/i;->capacity()I

    move-result v1

    invoke-virtual {p1}, LAc/b;->h0()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, LAc/b;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lvc/i;->position(I)V

    invoke-virtual {v0, p0}, Lvc/i;->u(Lvc/i;)V

    invoke-virtual {v0, p1}, Lvc/i;->u(Lvc/i;)V

    iget v1, p0, LAc/b;->c:I

    invoke-virtual {p1}, LAc/b;->hashCode()I

    move-result v2

    invoke-virtual {p1}, LAc/b;->h0()I

    move-result p1

    invoke-static {v1, v2, p1}, LAc/b;->K(III)I

    move-result p1

    iput p1, v0, LAc/b;->c:I

    return-object v0

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "str can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public L0()LAc/b;
    .locals 4

    invoke-virtual {p0}, LAc/b;->h0()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x20

    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, LAc/b;->G(I)C

    move-result v3

    if-gt v3, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, v0, :cond_1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, LAc/b;->G(I)C

    move-result v3

    if-gt v3, v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    if-gtz v1, :cond_3

    invoke-virtual {p0}, LAc/b;->h0()I

    move-result v2

    if-ge v0, v2, :cond_2

    goto :goto_2

    :cond_2
    move-object v0, p0

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {p0, v1, v0}, LAc/b;->I0(II)LAc/b;

    move-result-object v0

    :goto_3
    return-object v0
.end method

.method public M(Ljava/lang/String;)LAc/b;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lvc/i;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, LAc/b;

    invoke-direct {v0, p1}, LAc/b;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, LAc/b;

    invoke-direct {p1, p0}, LAc/b;-><init>(LAc/b;)V

    return-object p1

    :cond_1
    new-instance v0, LAc/b;

    invoke-virtual {p0}, Lvc/i;->capacity()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, LAc/b;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lvc/i;->position(I)V

    invoke-virtual {v0, p0}, Lvc/i;->u(Lvc/i;)V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Lvc/i;->put([C)V

    iget v1, p0, LAc/b;->c:I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {v1, v2, p1}, LAc/b;->K(III)I

    move-result p1

    iput p1, v0, LAc/b;->c:I

    return-object v0

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "str can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public N(LAc/b;)LAc/b;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lvc/i;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, LAc/b;

    invoke-direct {v0, p1}, LAc/b;-><init>(LAc/b;)V

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lvc/i;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, LAc/b;

    invoke-direct {p1, p0}, LAc/b;-><init>(LAc/b;)V

    return-object p1

    :cond_1
    new-instance v0, LAc/b;

    invoke-virtual {p0}, Lvc/i;->capacity()I

    move-result v1

    invoke-virtual {p1}, LAc/b;->h0()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, LAc/b;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lvc/i;->position(I)V

    invoke-virtual {v0, p1}, Lvc/i;->u(Lvc/i;)V

    invoke-virtual {v0, p0}, Lvc/i;->u(Lvc/i;)V

    invoke-virtual {p1}, LAc/b;->hashCode()I

    move-result p1

    iget v1, p0, LAc/b;->c:I

    invoke-virtual {p0}, LAc/b;->h0()I

    move-result v2

    invoke-static {p1, v1, v2}, LAc/b;->K(III)I

    move-result p1

    iput p1, v0, LAc/b;->c:I

    return-object v0

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "str can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public O(Ljava/lang/String;)LAc/b;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lvc/i;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, LAc/b;

    invoke-direct {v0, p1}, LAc/b;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, LAc/b;

    invoke-direct {p1, p0}, LAc/b;-><init>(LAc/b;)V

    return-object p1

    :cond_1
    new-instance v0, LAc/b;

    invoke-virtual {p0}, Lvc/i;->capacity()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, LAc/b;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lvc/i;->position(I)V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Lvc/i;->put([C)V

    invoke-virtual {v0, p0}, Lvc/i;->u(Lvc/i;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iget v1, p0, LAc/b;->c:I

    invoke-virtual {p0}, LAc/b;->h0()I

    move-result v2

    invoke-static {p1, v1, v2}, LAc/b;->K(III)I

    move-result p1

    iput p1, v0, LAc/b;->c:I

    return-object v0

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "str can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public P(LAc/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lvc/i;->q()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, LAc/b;->c:I

    invoke-super {p0, p1}, Lvc/i;->e(Lvc/i;)V

    invoke-virtual {p1}, LAc/b;->hashCode()I

    move-result v1

    invoke-virtual {p1}, LAc/b;->h0()I

    move-result p1

    invoke-static {v0, v1, p1}, LAc/b;->K(III)I

    move-result p1

    iput p1, p0, LAc/b;->c:I

    :cond_0
    return-void
.end method

.method public Q(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-super {p0, v0}, Lvc/i;->f([C)V

    iget v0, p0, LAc/b;->c:I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {v0, v1, p1}, LAc/b;->K(III)I

    move-result p1

    iput p1, p0, LAc/b;->c:I

    :cond_0
    return-void
.end method

.method public S(LAc/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lvc/i;->q()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, LAc/b;->h0()I

    move-result v0

    iget v1, p0, LAc/b;->c:I

    invoke-super {p0, p1}, Lvc/i;->h(Lvc/i;)V

    invoke-virtual {p1}, LAc/b;->hashCode()I

    move-result p1

    invoke-static {p1, v1, v0}, LAc/b;->K(III)I

    move-result p1

    iput p1, p0, LAc/b;->c:I

    :cond_0
    return-void
.end method

.method public T(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0}, LAc/b;->h0()I

    move-result v1

    iget v2, p0, LAc/b;->c:I

    invoke-super {p0, v0}, Lvc/i;->i([C)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1, v2, v1}, LAc/b;->K(III)I

    move-result p1

    iput p1, p0, LAc/b;->c:I

    :cond_0
    return-void
.end method

.method public U(LAc/b;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, LAc/b;->g0()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, LAc/b;->g0()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lvc/i;->p(Lvc/i;)I

    move-result p1

    if-ltz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public W(LAc/b;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lvc/i;->q()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lvc/i;->q()Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0, p1}, Lvc/i;->k(Lvc/i;)Z

    move-result p1

    return p1
.end method

.method public X(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lvc/i;->q()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-super {p0}, Lvc/i;->capacity()I

    move-result v3

    if-eq v3, v1, :cond_2

    return v0

    :cond_2
    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_4

    invoke-virtual {p0, v3}, LAc/b;->G(I)C

    move-result v4

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_3

    return v0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method public Y(LAc/b;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lvc/i;->q()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lvc/i;->q()Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0, p1}, Lvc/i;->l(Lvc/i;)Z

    move-result p1

    return p1
.end method

.method public Z(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lvc/i;->q()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-super {p0}, Lvc/i;->capacity()I

    move-result v3

    if-eq v3, v1, :cond_2

    return v0

    :cond_2
    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_4

    invoke-virtual {p0, v3}, LAc/b;->G(I)C

    move-result v4

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v4, v5}, LAc/b;->H(CC)Z

    move-result v4

    if-nez v4, :cond_3

    return v0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method public a0(LAc/b;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    invoke-virtual {p0, p1}, LAc/b;->W(LAc/b;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public b0(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    invoke-virtual {p0, p1}, LAc/b;->X(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, LAc/b;->I()LAc/b;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, LAc/b;->g0()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, LAc/b;->f0(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public final d0(II)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startIdx",
            "endIdx"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge p1, p2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0, p1}, LAc/b;->G(I)C

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public e0(LAc/b;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p0}, LAc/b;->g0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, LAc/b;->g0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lvc/i;->p(Lvc/i;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "str can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    instance-of v0, p1, LAc/b;

    if-eqz v0, :cond_0

    check-cast p1, LAc/b;

    invoke-virtual {p0, p1}, LAc/b;->W(LAc/b;)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f0(Ljava/lang/String;)I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, LAc/b;->g0()Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_4

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lvc/i;->capacity()I

    move-result v1

    if-ge v1, v0, :cond_1

    return v2

    :cond_1
    invoke-static {p1}, LAc/b;->F(Ljava/lang/String;)[I

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v4, v1, :cond_4

    invoke-virtual {p0, v4}, LAc/b;->G(I)C

    move-result v6

    :goto_1
    if-lez v5, :cond_2

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_2

    add-int/lit8 v5, v5, -0x1

    aget v5, v3, v5

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v6, v7, :cond_3

    add-int/lit8 v5, v5, 0x1

    if-ne v5, v0, :cond_3

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    return v4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return v2

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "str can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g0()Z
    .locals 1

    invoke-virtual {p0}, Lvc/i;->capacity()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h0()I
    .locals 1

    invoke-virtual {p0}, Lvc/i;->capacity()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, LAc/b;->c:I

    return v0
.end method

.method public final i0()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, LAc/b;->h0()I

    move-result v1

    invoke-virtual {p0, v0, v1}, LAc/b;->d0(II)I

    move-result v0

    iput v0, p0, LAc/b;->c:I

    return-void
.end method

.method public j0(LAc/b;LAc/b;)LAc/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "str",
            "replacement"
        }
    .end annotation

    invoke-virtual {p0}, LAc/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, LAc/b;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, LAc/b;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, LAc/b;

    invoke-direct {p2, p1}, LAc/b;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method public k0(Ljava/lang/String;Ljava/lang/String;)LAc/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "str",
            "replacement"
        }
    .end annotation

    invoke-virtual {p0}, LAc/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, LAc/b;

    invoke-direct {p2, p1}, LAc/b;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method public l0(LAc/b;LAc/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "str",
            "replacement"
        }
    .end annotation

    invoke-virtual {p0}, LAc/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, LAc/b;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, LAc/b;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, LAc/b;->u0(Ljava/lang/String;)V

    return-void
.end method

.method public m0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "str",
            "replacement"
        }
    .end annotation

    invoke-virtual {p0}, LAc/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, LAc/b;->u0(Ljava/lang/String;)V

    return-void
.end method

.method public o0(C)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, LAc/b;->u0(Ljava/lang/String;)V

    return-void
.end method

.method public p0(D)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, LAc/b;->u0(Ljava/lang/String;)V

    return-void
.end method

.method public q0(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, LAc/b;->u0(Ljava/lang/String;)V

    return-void
.end method

.method public r0(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, LAc/b;->u0(Ljava/lang/String;)V

    return-void
.end method

.method public s0(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, LAc/b;->u0(Ljava/lang/String;)V

    return-void
.end method

.method public t0(LAc/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    invoke-virtual {p1}, LAc/b;->g0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lvc/i;->capacity()I

    move-result v0

    const/4 v1, 0x0

    invoke-super {p0, v0, v1}, Lvc/i;->w(IZ)V

    invoke-super {p0, v1}, Lvc/i;->position(I)V

    invoke-super {p0, p1}, Lvc/i;->u(Lvc/i;)V

    invoke-super {p0, v1}, Lvc/i;->position(I)V

    invoke-virtual {p1}, LAc/b;->hashCode()I

    move-result p1

    iput p1, p0, LAc/b;->c:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lvc/i;->z()V

    sget p1, LAc/b;->e:I

    iput p1, p0, LAc/b;->c:I

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lvc/i;->capacity()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-super {p0}, Lvc/i;->capacity()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Lvc/i;->get(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u0(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-super {p0, v0, v1}, Lvc/i;->w(IZ)V

    invoke-super {p0, v1}, Lvc/i;->position(I)V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-super {p0, v0}, Lvc/i;->put([C)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, LAc/b;->c:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lvc/i;->z()V

    sget p1, LAc/b;->e:I

    iput p1, p0, LAc/b;->c:I

    :goto_0
    return-void
.end method

.method public v0(S)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, LAc/b;->u0(Ljava/lang/String;)V

    return-void
.end method

.method public w0(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    :goto_0
    invoke-virtual {p0, p1}, LAc/b;->u0(Ljava/lang/String;)V

    return-void
.end method

.method public x0([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cbuf",
            "off",
            "len"
        }
    .end annotation

    if-lez p3, :cond_0

    const/4 v0, 0x0

    invoke-super {p0, p3, v0}, Lvc/i;->w(IZ)V

    invoke-super {p0, v0}, Lvc/i;->position(I)V

    invoke-super {p0, v0, p1, p2, p3}, Lvc/i;->set(I[CII)V

    invoke-static {p1, p2, p3}, LAc/b;->c0([CII)I

    move-result p1

    iput p1, p0, LAc/b;->c:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lvc/i;->z()V

    sget p1, LAc/b;->e:I

    iput p1, p0, LAc/b;->c:I

    :goto_0
    return-void
.end method

.method public y0(LJAVARuntime/OHString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    iput-object p1, p0, LAc/b;->d:LJAVARuntime/OHString;

    return-void
.end method

.method public z0(LAc/b;)[LAc/b;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    invoke-virtual {p0}, LAc/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, LAc/b;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    new-array v0, v0, [LAc/b;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    new-instance v2, LAc/b;

    aget-object v3, p1, v1

    invoke-direct {v2, v3}, LAc/b;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
