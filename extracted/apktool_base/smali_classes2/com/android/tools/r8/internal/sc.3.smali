.class public final Lcom/android/tools/r8/internal/sc;
.super Lcom/android/tools/r8/internal/DX;
.source "SourceFile"


# static fields
.field public static final q:[I


# instance fields
.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:I

.field public final k:Ljava/util/HashMap;

.field public final l:Ljava/util/HashSet;

.field public m:I

.field public n:I

.field public o:I

.field public final p:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/tools/r8/internal/sc;->q:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x2
        0x0
        0x0
        0x0
        0x3
        0x3
        0x3
        0x3
        0x3
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
        0x3
        0x3
        0x3
        0x3
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x0
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x3
        0x0
        0x0
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x5
        0x5
        0x5
        0x5
        0x6
        0x6
        0x6
        0x6
        0x0
        0x4
        0x2
        0x4
        0x1
        0x1
        0x4
        0x4
        0x1
        0x1
        0x0
        0x0
        0x7
        0x7
    .end array-data
.end method

.method public constructor <init>(ILcom/android/tools/r8/internal/DX;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/DX;-><init>(ILcom/android/tools/r8/internal/DX;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/tools/r8/internal/sc;->m:I

    iput-object p3, p0, Lcom/android/tools/r8/internal/sc;->k:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/sc;->l:Ljava/util/HashSet;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/sc;->p:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(ILjava/lang/String;IZ)I
    .locals 3

    if-eqz p1, :cond_8

    .line 236
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_8

    .line 237
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x46

    if-eq v0, v1, :cond_7

    const/16 v1, 0x4c

    const-string v2, "Invalid descriptor: "

    if-eq v0, v1, :cond_5

    const/16 v1, 0x53

    if-eq v0, v1, :cond_7

    const/16 v1, 0x56

    if-eq v0, v1, :cond_3

    const/16 p3, 0x49

    if-eq v0, p3, :cond_7

    const/16 p3, 0x4a

    if-eq v0, p3, :cond_7

    const/16 p3, 0x5a

    if-eq v0, p3, :cond_7

    const/16 p3, 0x5b

    if-eq v0, p3, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 238
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 239
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 240
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    :goto_0
    add-int/lit8 p2, p2, 0x1

    .line 241
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p3, :cond_1

    goto :goto_0

    .line 242
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-ge p2, p3, :cond_2

    const/4 p3, 0x0

    .line 243
    invoke-static {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/sc;->a(ILjava/lang/String;IZ)I

    move-result p0

    return p0

    .line 244
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 245
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 246
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    if-eqz p3, :cond_4

    add-int/lit8 p2, p2, 0x1

    return p2

    .line 247
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 248
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 249
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    const/16 p3, 0x3b

    .line 250
    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p3

    const/4 v0, -0x1

    if-eq p2, v0, :cond_6

    sub-int v0, p3, p2

    const/4 v1, 0x2

    if-lt v0, v1, :cond_6

    add-int/lit8 p2, p2, 0x1

    .line 251
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Lcom/android/tools/r8/internal/sc;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p3, p3, 0x1

    return p3

    :catch_0
    move-exception p0

    .line 252
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 253
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 254
    invoke-direct {p2, p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 255
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 256
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 257
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :pswitch_0
    add-int/lit8 p2, p2, 0x1

    return p2

    .line 258
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid type descriptor (must not be null or empty)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static a(ILjava/lang/String;IILjava/lang/String;)V
    .locals 4

    const-string v0, "Invalid "

    if-eqz p1, :cond_7

    const/4 v1, -0x1

    if-ne p3, v1, :cond_0

    .line 214
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, p2, :cond_7

    goto :goto_0

    :cond_0
    if-le p3, p2, :cond_7

    :goto_0
    if-ne p3, v1, :cond_1

    .line 215
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    :cond_1
    const v2, 0xffff

    and-int/2addr p0, v2

    const/16 v2, 0x31

    const/4 v3, 0x1

    if-lt p0, v2, :cond_3

    :goto_1
    if-ge p2, p3, :cond_6

    .line 216
    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result p0

    const-string v2, ".;[/"

    invoke-virtual {v2, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ne p0, v1, :cond_2

    .line 217
    invoke-virtual {p1, p2, v3}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result p2

    goto :goto_1

    .line 218
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 219
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " (must not contain . ; [ or /): "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 220
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    move p0, p2

    :goto_2
    if-ge p0, p3, :cond_6

    if-ne p0, p2, :cond_4

    .line 221
    invoke-virtual {p1, p0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierStart(I)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    .line 222
    :cond_4
    invoke-virtual {p1, p0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 223
    :goto_3
    invoke-virtual {p1, p0, v3}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result p0

    goto :goto_2

    .line 224
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 225
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " (must be a valid Java identifier): "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 226
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    return-void

    .line 227
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 228
    const-string p1, " (must not be null or empty)"

    invoke-static {v0, p4, p1}, Lcom/android/tools/r8/internal/Be0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 229
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x2f

    .line 230
    :try_start_0
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 231
    invoke-static {p0, p1, v0, v1, v3}, Lcom/android/tools/r8/internal/sc;->a(ILjava/lang/String;IILjava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 232
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, p1, v0, v1, v3}, Lcom/android/tools/r8/internal/sc;->a(ILjava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 233
    :goto_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " (must be an internal class name): "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 235
    invoke-direct {v0, p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static b(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_0

    .line 49
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/sc;->d(ILjava/lang/String;)V

    return-void

    .line 50
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/internal/sc;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 51
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 52
    const-string p1, "Invalid "

    const-string v0, " (must not be null or empty)"

    invoke-static {p1, p2, v0}, Lcom/android/tools/r8/internal/Be0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "Invalid "

    if-eqz p1, :cond_5

    .line 83
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0xffff

    and-int/2addr p0, v1

    const/16 v1, 0x31

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt p0, v1, :cond_1

    .line 84
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-ge v3, p0, :cond_4

    .line 85
    invoke-virtual {p1, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result p0

    const-string v1, ".;[/<>"

    invoke-virtual {v1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    .line 86
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v3

    goto :goto_0

    .line 87
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " (must be a valid unqualified name): "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 89
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 90
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-ge v3, p0, :cond_4

    if-nez v3, :cond_2

    .line 91
    invoke-virtual {p1, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierStart(I)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    .line 92
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierPart(I)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 93
    :goto_2
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v3

    goto :goto_1

    .line 94
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " (must be a \'<init>\', \'<clinit>\' or a valid Java identifier): "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 96
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-void

    .line 97
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 98
    const-string p1, " (must not be null or empty)"

    invoke-static {v0, p2, p1}, Lcom/android/tools/r8/internal/Be0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-static {p0, p1, v0, v0}, Lcom/android/tools/r8/internal/sc;->a(ILjava/lang/String;IZ)I

    move-result p0

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne p0, v0, :cond_0

    return-void

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 13
    const-string v0, "Invalid descriptor: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(II)V
    .locals 3

    if-ltz p0, :cond_1

    const/16 v0, 0xc7

    if-gt p0, v0, :cond_1

    .line 3
    sget-object v0, Lcom/android/tools/r8/internal/sc;->q:[I

    aget v0, v0, p0

    if-ne v0, p1, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 5
    const-string v1, "Invalid combination of opcode and method: "

    const-string v2, ", "

    invoke-static {p0, v1, v2}, Lcom/android/tools/r8/internal/Jt0;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    packed-switch p1, :pswitch_data_0

    .line 6
    const-string p1, "null"

    goto :goto_0

    :pswitch_0
    const-string p1, "VISIT_JUMP_INSN"

    goto :goto_0

    :pswitch_1
    const-string p1, "VISIT_METHOD_INSN"

    goto :goto_0

    :pswitch_2
    const-string p1, "VISIT_FIELD_INSN"

    goto :goto_0

    :pswitch_3
    const-string p1, "VISIT_TYPE_INSN"

    goto :goto_0

    :pswitch_4
    const-string p1, "VISIT_VAR_INSN"

    goto :goto_0

    :pswitch_5
    const-string p1, "VISIT_INT_INSN"

    goto :goto_0

    :pswitch_6
    const-string p1, "VISIT_INSN"

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 9
    const-string v0, "Invalid opcode: "

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/T60;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static e(ILjava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_6

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x28

    const-string v3, "Invalid descriptor: "

    if-ne v1, v2, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_5

    const/4 v1, 0x1

    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x29

    if-eq v2, v4, :cond_2

    move v2, v1

    .line 14
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x56

    if-eq v5, v6, :cond_1

    .line 15
    invoke-static {p0, p1, v2, v0}, Lcom/android/tools/r8/internal/sc;->a(ILjava/lang/String;IZ)I

    move-result v2

    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_0

    goto :goto_0

    .line 17
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 18
    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    move v2, v1

    :cond_3
    :goto_0
    add-int/2addr v2, v1

    .line 20
    invoke-static {p0, p1, v2, v1}, Lcom/android/tools/r8/internal/sc;->a(ILjava/lang/String;IZ)I

    move-result p0

    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne p0, v0, :cond_4

    return-void

    .line 22
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 23
    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 25
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 26
    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 28
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid method descriptor (must not be null or empty)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f(ILjava/lang/String;)V
    .locals 2

    if-ltz p0, :cond_0

    const v0, 0xffff

    if-gt p0, v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (must be an unsigned short): "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/Q2;
    .locals 3

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sc;->e()V

    .line 5
    new-instance v0, Lcom/android/tools/r8/internal/hc;

    invoke-super {p0}, Lcom/android/tools/r8/internal/DX;->a()Lcom/android/tools/r8/internal/Q2;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/hc;-><init>(Lcom/android/tools/r8/internal/Q2;I)V

    return-object v0
.end method

.method public final a(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 2

    .line 160
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sc;->d()V

    .line 161
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sc;->f()V

    ushr-int/lit8 v0, p1, 0x18

    const/16 v1, 0x43

    if-eq v0, v1, :cond_1

    const/16 v1, 0x44

    if-eq v0, v1, :cond_1

    const/16 v1, 0x45

    if-eq v0, v1, :cond_1

    const/16 v1, 0x46

    if-eq v0, v1, :cond_1

    const/16 v1, 0x47

    if-eq v0, v1, :cond_1

    const/16 v1, 0x48

    if-eq v0, v1, :cond_1

    const/16 v1, 0x49

    if-eq v0, v1, :cond_1

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x4b

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    .line 163
    const-string p3, "Invalid type reference sort 0x"

    invoke-static {p3, p2}, Lcom/android/tools/r8/internal/Ee0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 164
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 165
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/tools/r8/internal/mc;->a(I)V

    .line 166
    iget v0, p0, Lcom/android/tools/r8/internal/sc;->c:I

    invoke-static {v0, p3}, Lcom/android/tools/r8/internal/sc;->d(ILjava/lang/String;)V

    .line 167
    new-instance v0, Lcom/android/tools/r8/internal/hc;

    .line 168
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/DX;->a(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/hc;-><init>(Lcom/android/tools/r8/internal/Q2;)V

    return-object v0
.end method

.method public final a(ILcom/android/tools/r8/internal/tu0;[Lcom/android/tools/r8/internal/XQ;[Lcom/android/tools/r8/internal/XQ;[ILjava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 4

    .line 197
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sc;->d()V

    .line 198
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sc;->f()V

    ushr-int/lit8 v0, p1, 0x18

    const/16 v1, 0x40

    if-eq v0, v1, :cond_1

    const/16 v1, 0x41

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    .line 200
    const-string p3, "Invalid type reference sort 0x"

    invoke-static {p3, p2}, Lcom/android/tools/r8/internal/Ee0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 201
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 202
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/tools/r8/internal/mc;->a(I)V

    .line 203
    iget v0, p0, Lcom/android/tools/r8/internal/sc;->c:I

    invoke-static {v0, p6}, Lcom/android/tools/r8/internal/sc;->d(ILjava/lang/String;)V

    if-eqz p3, :cond_4

    if-eqz p4, :cond_4

    if-eqz p5, :cond_4

    .line 204
    array-length v0, p4

    array-length v1, p3

    if-ne v0, v1, :cond_4

    array-length v0, p5

    array-length v1, p3

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    .line 205
    :goto_1
    array-length v1, p3

    if-ge v0, v1, :cond_3

    .line 206
    aget-object v1, p3, v0

    const-string v2, "start label"

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3, v2}, Lcom/android/tools/r8/internal/sc;->a(Lcom/android/tools/r8/internal/XQ;ZLjava/lang/String;)V

    .line 207
    aget-object v1, p4, v0

    const-string v2, "end label"

    invoke-virtual {p0, v1, v3, v2}, Lcom/android/tools/r8/internal/sc;->a(Lcom/android/tools/r8/internal/XQ;ZLjava/lang/String;)V

    .line 208
    aget v1, p5, v0

    const-string v2, "Invalid local variable index"

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/sc;->f(ILjava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/android/tools/r8/internal/sc;->k:Ljava/util/HashMap;

    aget-object v2, p3, v0

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 210
    iget-object v2, p0, Lcom/android/tools/r8/internal/sc;->k:Ljava/util/HashMap;

    aget-object v3, p4, v0

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v2, v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 211
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid start and end labels (end must be greater than start)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 212
    :cond_3
    invoke-super/range {p0 .. p7}, Lcom/android/tools/r8/internal/DX;->a(ILcom/android/tools/r8/internal/tu0;[Lcom/android/tools/r8/internal/XQ;[Lcom/android/tools/r8/internal/XQ;[ILjava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object p1

    return-object p1

    .line 213
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid start, end and index arrays (must be non null and of identical length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(ILjava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sc;->e()V

    if-eqz p3, :cond_0

    .line 12
    iget v0, p0, Lcom/android/tools/r8/internal/sc;->e:I

    if-lez v0, :cond_0

    if-ge p1, v0, :cond_1

    :cond_0
    if-nez p3, :cond_2

    iget v0, p0, Lcom/android/tools/r8/internal/sc;->f:I

    if-lez v0, :cond_2

    if-ge p1, v0, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid parameter index"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_2
    :goto_0
    iget v0, p0, Lcom/android/tools/r8/internal/sc;->c:I

    invoke-static {v0, p2}, Lcom/android/tools/r8/internal/sc;->d(ILjava/lang/String;)V

    .line 15
    new-instance v0, Lcom/android/tools/r8/internal/hc;

    .line 16
    invoke-super {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/DX;->a(ILjava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/hc;-><init>(Lcom/android/tools/r8/internal/Q2;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sc;->e()V

    .line 2
    iget v0, p0, Lcom/android/tools/r8/internal/sc;->c:I

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/sc;->d(ILjava/lang/String;)V

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/hc;

    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/DX;->a(Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/hc;-><init>(Lcom/android/tools/r8/internal/Q2;)V

    return-object v0
.end method

.method public final a(I)V
    .locals 2

    .line 43
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sc;->d()V

    .line 44
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sc;->f()V

    const/4 v0, 0x1

    .line 45
    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/sc;->e(II)V

    .line 46
    iget-object v1, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/DX;->a(I)V

    .line 48
    :cond_0
    iget p1, p0, Lcom/android/tools/r8/internal/sc;->j:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/tools/r8/internal/sc;->j:I

    return-void
.end method

.method public final a(II)V
    .locals 1

    .line 107
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sc;->d()V

    .line 108
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sc;->f()V

    .line 109
    const-string v0, "Invalid local variable index"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/sc;->f(ILjava/lang/String;)V

    const/16 v0, -0x8000

    if-lt p2, v0, :cond_1

    const/16 v0, 0x7fff

    if-gt p2, v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/DX;->a(II)V

    .line 112
    :cond_0
    iget p1, p0, Lcom/android/tools/r8/internal/sc;->j:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/tools/r8/internal/sc;->j:I

    return-void

    .line 113
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 114
    const-string v0, "Invalid increment (must be a signed short): "

    invoke-static {p2, v0}, Lcom/android/tools/r8/internal/T60;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 115
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final varargs a(IILcom/android/tools/r8/internal/XQ;[Lcom/android/tools/r8/internal/XQ;)V
    .locals 5

    .line 116
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sc;->d()V

    .line 117
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sc;->f()V

    if-lt p2, p1, :cond_3

    .line 118
    const-string v0, "default label"

    const/4 v1, 0x0

    invoke-virtual {p0, p3, v1, v0}, Lcom/android/tools/r8/internal/sc;->a(Lcom/android/tools/r8/internal/XQ;ZLjava/lang/String;)V

    .line 119
    array-length v0, p4

    sub-int v2, p2, p1

    add-int/lit8 v2, v2, 0x1

    if-ne v0, v2, :cond_2

    move v0, v1

    .line 120
    :goto_0
    array-length v2, p4

    if-ge v0, v2, :cond_0

    .line 121
    aget-object v2, p4, v0

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "label at index "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 123
    invoke-virtual {p0, v2, v1, v3}, Lcom/android/tools/r8/internal/sc;->a(Lcom/android/tools/r8/internal/XQ;ZLjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/DX;->a(IILcom/android/tools/r8/internal/XQ;[Lcom/android/tools/r8/internal/XQ;)V

    .line 126
    :cond_1
    iget p1, p0, Lcom/android/tools/r8/internal/sc;->j:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/tools/r8/internal/sc;->j:I

    return-void

    .line 127
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "There must be max - min + 1 labels"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 128
    :cond_3
    new-instance p3, Ljava/lang/IllegalArgumentException;

    .line 129
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Max = "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " must be greater than or equal to min = "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 130
    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public final a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 7

    .line 20
    iget v0, p0, Lcom/android/tools/r8/internal/sc;->j:I

    iget v1, p0, Lcom/android/tools/r8/internal/sc;->m:I

    if-eq v0, v1, :cond_f

    .line 21
    iput v0, p0, Lcom/android/tools/r8/internal/sc;->m:I

    const/4 v0, 0x2

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v1, :cond_3

    if-eqz p1, :cond_3

    const/4 v4, 0x3

    if-eq p1, v3, :cond_2

    if-eq p1, v0, :cond_2

    if-eq p1, v4, :cond_1

    const/4 v4, 0x4

    if-ne p1, v4, :cond_0

    move v4, v2

    move v5, v3

    goto :goto_1

    .line 22
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 23
    const-string p3, "Invalid frame type "

    invoke-static {p1, p3}, Lcom/android/tools/r8/internal/T60;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    move v4, v2

    :goto_0
    move v5, v4

    goto :goto_1

    :cond_2
    move v5, v2

    goto :goto_1

    :cond_3
    const v4, 0x7fffffff

    goto :goto_0

    :goto_1
    const-string v6, " for frame type "

    if-gt p2, v4, :cond_e

    if-gt p4, v5, :cond_d

    if-eq p1, v0, :cond_6

    if-lez p2, :cond_5

    if-eqz p3, :cond_4

    .line 25
    array-length v0, p3

    if-lt v0, p2, :cond_4

    goto :goto_2

    .line 26
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array local[] is shorter than numLocal"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    move v0, v2

    :goto_3
    if-ge v0, p2, :cond_6

    .line 27
    aget-object v4, p3, v0

    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/sc;->b(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    if-lez p4, :cond_8

    if-eqz p5, :cond_7

    .line 28
    array-length v0, p5

    if-lt v0, p4, :cond_7

    goto :goto_4

    .line 29
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array stack[] is shorter than numStack"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_4
    if-ge v2, p4, :cond_9

    .line 30
    aget-object v0, p5, v2

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/sc;->b(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_9
    if-ne p1, v1, :cond_a

    .line 31
    iget v0, p0, Lcom/android/tools/r8/internal/sc;->n:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/tools/r8/internal/sc;->n:I

    goto :goto_5

    .line 32
    :cond_a
    iget v0, p0, Lcom/android/tools/r8/internal/sc;->o:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/tools/r8/internal/sc;->o:I

    .line 33
    :goto_5
    iget v0, p0, Lcom/android/tools/r8/internal/sc;->n:I

    if-lez v0, :cond_c

    iget v0, p0, Lcom/android/tools/r8/internal/sc;->o:I

    if-gtz v0, :cond_b

    goto :goto_6

    .line 34
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Expanded and compressed frames must not be mixed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_c
    :goto_6
    invoke-super/range {p0 .. p5}, Lcom/android/tools/r8/internal/DX;->a(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    return-void

    .line 36
    :cond_d
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 37
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p5, "Invalid numStack="

    invoke-direct {p3, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 38
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 39
    :cond_e
    new-instance p3, Ljava/lang/IllegalArgumentException;

    .line 40
    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "Invalid numLocal="

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 41
    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 42
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "At most one frame can be visited at a given code location."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(ILcom/android/tools/r8/internal/XQ;)V
    .locals 2

    .line 87
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sc;->d()V

    .line 88
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sc;->f()V

    const/4 v0, 0x7

    .line 89
    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/sc;->e(II)V

    const/4 v0, 0x0

    .line 90
    const-string v1, "label"

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/tools/r8/internal/sc;->a(Lcom/android/tools/r8/internal/XQ;ZLjava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/DX;->a(ILcom/android/tools/r8/internal/XQ;)V

    .line 93
    :cond_0
    iget p1, p0, Lcom/android/tools/r8/internal/sc;->j:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/tools/r8/internal/sc;->j:I

    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 2

    .line 143
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sc;->d()V

    .line 144
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sc;->f()V

    .line 145
    iget v0, p0, Lcom/android/tools/r8/internal/sc;->c:I

    invoke-static {v0, p2}, Lcom/android/tools/r8/internal/sc;->d(ILjava/lang/String;)V

    const/4 v0, 0x0

    .line 146
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    .line 147
    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/2addr v1, v0

    if-gt p1, v1, :cond_1

    .line 148
    iget-object v1, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {v1, p1, p2}, Lcom/android/tools/r8/internal/DX;->a(ILjava/lang/String;)V

    .line 150
    :cond_0
    iget p1, p0, Lcom/android/tools/r8/internal/sc;->j:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/tools/r8/internal/sc;->j:I

    return-void

    .line 151
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 152
    const-string v0, "Invalid dimensions (must not be greater than numDimensions(descriptor)): "

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/T60;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 153
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 154
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 155
    const-string v0, "Invalid dimensions (must be greater than 0): "

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/T60;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 156
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 157
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 158
    const-string v0, "Invalid descriptor (must be an array type descriptor): "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 159
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 49
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sc;->d()V

    .line 50
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sc;->f()V

    const/4 v0, 0x5

    .line 51
    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/sc;->e(II)V

    .line 52
    iget v0, p0, Lcom/android/tools/r8/internal/sc;->c:I

    const-string v1, "owner"

    invoke-static {v0, p2, v1}, Lcom/android/tools/r8/internal/sc;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 53
    iget v0, p0, Lcom/android/tools/r8/internal/sc;->c:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 54
    const-string v3, "name"

    invoke-static {v0, p3, v1, v2, v3}, Lcom/android/tools/r8/internal/sc;->a(ILjava/lang/String;IILjava/lang/String;)V

    .line 55
    iget v0, p0, Lcom/android/tools/r8/internal/sc;->c:I

    invoke-static {v0, p4}, Lcom/android/tools/r8/internal/sc;->d(ILjava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/DX;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_0
    iget p1, p0, Lcom/android/tools/r8/internal/sc;->j:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/tools/r8/internal/sc;->j:I

    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .line 59
    iget v0, p0, Lcom/android/tools/r8/internal/DX;->a:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_0

    and-int/lit16 v0, p1, 0x100

    if-nez v0, :cond_0

    .line 60
    invoke-super/range {p0 .. p5}, Lcom/android/tools/r8/internal/DX;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_0
    and-int/lit16 v0, p1, -0x101

    .line 61
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sc;->d()V

    .line 62
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sc;->f()V

    const/4 v1, 0x6

    .line 63
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/sc;->e(II)V

    const/16 v1, 0xb7

    if-ne v0, v1, :cond_1

    .line 64
    const-string v2, "<init>"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 65
    :cond_1
    iget v2, p0, Lcom/android/tools/r8/internal/sc;->c:I

    const-string v3, "name"

    invoke-static {v2, p3, v3}, Lcom/android/tools/r8/internal/sc;->c(ILjava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_2
    iget v2, p0, Lcom/android/tools/r8/internal/sc;->c:I

    const-string v3, "owner"

    invoke-static {v2, p2, v3}, Lcom/android/tools/r8/internal/sc;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 67
    iget v2, p0, Lcom/android/tools/r8/internal/sc;->c:I

    invoke-static {v2, p4}, Lcom/android/tools/r8/internal/sc;->e(ILjava/lang/String;)V

    const/16 v2, 0xb6

    if-ne v0, v2, :cond_4

    if-nez p5, :cond_3

    goto :goto_0

    .line 68
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "INVOKEVIRTUAL can\'t be used with interfaces"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    const/16 v2, 0xb9

    if-ne v0, v2, :cond_6

    if-eqz p5, :cond_5

    goto :goto_1

    .line 69
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "INVOKEINTERFACE can\'t be used with classes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_1
    if-ne v0, v1, :cond_8

    if-eqz p5, :cond_8

    .line 70
    iget v0, p0, Lcom/android/tools/r8/internal/sc;->c:I

    const v1, 0xffff

    and-int/2addr v0, v1

    const/16 v1, 0x34

    if-lt v0, v1, :cond_7

    goto :goto_2

    .line 71
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "INVOKESPECIAL can\'t be used with interfaces prior to Java 8"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_8
    :goto_2
    invoke-super/range {p0 .. p5}, Lcom/android/tools/r8/internal/DX;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 73
    iget p1, p0, Lcom/android/tools/r8/internal/sc;->j:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/tools/r8/internal/sc;->j:I

    return-void
.end method

.method public final a(IZ)V
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sc;->e()V

    if-eqz p2, :cond_0

    .line 7
    iput p1, p0, Lcom/android/tools/r8/internal/sc;->e:I

    goto :goto_0

    .line 8
    :cond_0
    iput p1, p0, Lcom/android/tools/r8/internal/sc;->f:I

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/DX;->a(IZ)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/K4;)V
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sc;->e()V

    if-eqz p1, :cond_0

    .line 18
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/DX;->a(Lcom/android/tools/r8/internal/K4;)V

    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid attribute (must not be null)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/XQ;)V
    .locals 2

    .line 94
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sc;->d()V

    .line 95
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sc;->f()V

    const/4 v0, 0x0

    .line 96
    const-string v1, "label"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/tools/r8/internal/sc;->a(Lcom/android/tools/r8/internal/XQ;ZLjava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/android/tools/r8/internal/sc;->k:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/android/tools/r8/internal/sc;->k:Ljava/util/HashMap;

    iget v1, p0, Lcom/android/tools/r8/internal/sc;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/DX;->a(Lcom/android/tools/r8/internal/XQ;)V

    :cond_0
    return-void

    .line 101
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already visited label"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/XQ;Lcom/android/tools/r8/internal/XQ;Lcom/android/tools/r8/internal/XQ;Ljava/lang/String;)V
    .locals 2

    .line 169
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sc;->d()V

    .line 170
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sc;->f()V

    .line 171
    const-string v0, "start label"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/tools/r8/internal/sc;->a(Lcom/android/tools/r8/internal/XQ;ZLjava/lang/String;)V

    .line 172
    const-string v0, "end label"

    invoke-virtual {p0, p2, v1, v0}, Lcom/android/tools/r8/internal/sc;->a(Lcom/android/tools/r8/internal/XQ;ZLjava/lang/String;)V

    .line 173
    const-string v0, "handler label"

    invoke-virtual {p0, p3, v1, v0}, Lcom/android/tools/r8/internal/sc;->a(Lcom/android/tools/r8/internal/XQ;ZLjava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/android/tools/r8/internal/sc;->k:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/sc;->k:Ljava/util/HashMap;

    .line 175
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/sc;->k:Ljava/util/HashMap;

    .line 176
    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    if-eqz p4, :cond_0

    .line 177
    iget v0, p0, Lcom/android/tools/r8/internal/sc;->c:I

    const-string v1, "type"

    invoke-static {v0, p4, v1}, Lcom/android/tools/r8/internal/sc;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/DX;->a(Lcom/android/tools/r8/internal/XQ;Lcom/android/tools/r8/internal/XQ;Lcom/android/tools/r8/internal/XQ;Ljava/lang/String;)V

    .line 180
    :cond_1
    iget-object p3, p0, Lcom/android/tools/r8/internal/sc;->p:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object p1, p0, Lcom/android/tools/r8/internal/sc;->p:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 182
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Try catch blocks must be visited before their labels"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/XQ;ZLjava/lang/String;)V
    .locals 1

    const-string v0, "Invalid "

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 259
    iget-object p2, p0, Lcom/android/tools/r8/internal/sc;->k:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 260
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 261
    const-string p2, " (must be visited first)"

    invoke-static {v0, p3, p2}, Lcom/android/tools/r8/internal/Be0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 262
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 263
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/sc;->l:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    .line 264
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 265
    const-string p2, " (must not be null)"

    invoke-static {v0, p3, p2}, Lcom/android/tools/r8/internal/Be0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 266
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/XQ;[I[Lcom/android/tools/r8/internal/XQ;)V
    .locals 5

    .line 131
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sc;->f()V

    .line 132
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sc;->d()V

    .line 133
    const-string v0, "default label"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/tools/r8/internal/sc;->a(Lcom/android/tools/r8/internal/XQ;ZLjava/lang/String;)V

    if-eqz p2, :cond_2

    .line 134
    array-length v0, p2

    array-length v2, p3

    if-ne v0, v2, :cond_2

    move v0, v1

    .line 135
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_0

    .line 136
    aget-object v2, p3, v0

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "label at index "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 138
    invoke-virtual {p0, v2, v1, v3}, Lcom/android/tools/r8/internal/sc;->a(Lcom/android/tools/r8/internal/XQ;ZLjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_1

    .line 140
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/DX;->a(Lcom/android/tools/r8/internal/XQ;[I[Lcom/android/tools/r8/internal/XQ;)V

    .line 141
    :cond_1
    iget p1, p0, Lcom/android/tools/r8/internal/sc;->j:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/tools/r8/internal/sc;->j:I

    return-void

    .line 142
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "There must be the same number of keys and labels"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    .line 102
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sc;->d()V

    .line 103
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sc;->f()V

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/sc;->c(Ljava/lang/Object;)V

    .line 105
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/DX;->a(Ljava/lang/Object;)V

    .line 106
    iget p1, p0, Lcom/android/tools/r8/internal/sc;->j:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/tools/r8/internal/sc;->j:I

    return-void
.end method

.method public final varargs a(Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/Qz;[Ljava/lang/Object;)V
    .locals 3

    .line 74
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sc;->d()V

    .line 75
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sc;->f()V

    .line 76
    iget v0, p0, Lcom/android/tools/r8/internal/sc;->c:I

    const-string v1, "name"

    invoke-static {v0, p1, v1}, Lcom/android/tools/r8/internal/sc;->c(ILjava/lang/String;Ljava/lang/String;)V

    .line 77
    iget v0, p0, Lcom/android/tools/r8/internal/sc;->c:I

    invoke-static {v0, p2}, Lcom/android/tools/r8/internal/sc;->e(ILjava/lang/String;)V

    .line 78
    iget v0, p3, Lcom/android/tools/r8/internal/Qz;->a:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 80
    iget p2, p3, Lcom/android/tools/r8/internal/Qz;->a:I

    .line 81
    const-string p3, "invalid handle tag "

    invoke-static {p2, p3}, Lcom/android/tools/r8/internal/T60;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 82
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    :cond_1
    :goto_0
    array-length v0, p4

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    aget-object v2, p4, v1

    .line 84
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/sc;->c(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 85
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/DX;->a(Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/Qz;[Ljava/lang/Object;)V

    .line 86
    iget p1, p0, Lcom/android/tools/r8/internal/sc;->j:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/tools/r8/internal/sc;->j:I

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/XQ;Lcom/android/tools/r8/internal/XQ;I)V
    .locals 9

    .line 183
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sc;->d()V

    .line 184
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sc;->f()V

    .line 185
    iget v0, p0, Lcom/android/tools/r8/internal/sc;->c:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 186
    const-string v3, "name"

    invoke-static {v0, p1, v1, v2, v3}, Lcom/android/tools/r8/internal/sc;->a(ILjava/lang/String;IILjava/lang/String;)V

    .line 187
    iget v0, p0, Lcom/android/tools/r8/internal/sc;->c:I

    invoke-static {v0, p2}, Lcom/android/tools/r8/internal/sc;->d(ILjava/lang/String;)V

    if-eqz p3, :cond_0

    .line 188
    invoke-static {p3}, Lcom/android/tools/r8/internal/mc;->d(Ljava/lang/String;)V

    .line 189
    :cond_0
    const-string v0, "start label"

    const/4 v1, 0x1

    invoke-virtual {p0, p4, v1, v0}, Lcom/android/tools/r8/internal/sc;->a(Lcom/android/tools/r8/internal/XQ;ZLjava/lang/String;)V

    .line 190
    const-string v0, "end label"

    invoke-virtual {p0, p5, v1, v0}, Lcom/android/tools/r8/internal/sc;->a(Lcom/android/tools/r8/internal/XQ;ZLjava/lang/String;)V

    .line 191
    const-string v0, "Invalid local variable index"

    invoke-static {p6, v0}, Lcom/android/tools/r8/internal/sc;->f(ILjava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/android/tools/r8/internal/sc;->k:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 193
    iget-object v1, p0, Lcom/android/tools/r8/internal/sc;->k:Ljava/util/HashMap;

    invoke-virtual {v1, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v1, v0, :cond_2

    .line 194
    iget-object v2, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v2, :cond_1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move v8, p6

    .line 195
    invoke-virtual/range {v2 .. v8}, Lcom/android/tools/r8/internal/DX;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/XQ;Lcom/android/tools/r8/internal/XQ;I)V

    :cond_1
    return-void

    .line 196
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid start and end labels (end must be greater than start)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 2

    .line 25
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sc;->d()V

    .line 26
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sc;->f()V

    ushr-int/lit8 v0, p1, 0x18

    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    .line 27
    invoke-static {p1}, Lcom/android/tools/r8/internal/mc;->a(I)V

    .line 28
    iget v0, p0, Lcom/android/tools/r8/internal/sc;->c:I

    invoke-static {v0, p3}, Lcom/android/tools/r8/internal/sc;->d(ILjava/lang/String;)V

    .line 29
    new-instance v0, Lcom/android/tools/r8/internal/hc;

    .line 30
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/DX;->b(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/hc;-><init>(Lcom/android/tools/r8/internal/Q2;)V

    return-object v0

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    .line 32
    const-string p3, "Invalid type reference sort 0x"

    invoke-static {p3, p2}, Lcom/android/tools/r8/internal/Ee0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 33
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()V
    .locals 2

    .line 5
    iget v0, p0, Lcom/android/tools/r8/internal/sc;->d:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/sc;->g:Z

    .line 7
    invoke-super {p0}, Lcom/android/tools/r8/internal/DX;->b()V

    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Abstract methods cannot have code"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(II)V
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sc;->d()V

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sc;->f()V

    const/4 v0, 0x2

    .line 11
    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/sc;->e(II)V

    const/16 v0, 0x10

    if-eq p1, v0, :cond_4

    const/16 v0, 0x11

    if-eq p1, v0, :cond_2

    const/16 v0, 0xbc

    if-ne p1, v0, :cond_1

    const/4 v0, 0x4

    if-lt p2, v0, :cond_0

    const/16 v0, 0xb

    if-gt p2, v0, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 13
    const-string v0, "Invalid operand (must be an array type code T_...): "

    invoke-static {p2, v0}, Lcom/android/tools/r8/internal/T60;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 14
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    const/16 v0, -0x8000

    if-lt p2, v0, :cond_3

    const/16 v0, 0x7fff

    if-gt p2, v0, :cond_3

    goto :goto_0

    .line 16
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 17
    const-string v0, "Invalid operand (must be a signed short): "

    invoke-static {p2, v0}, Lcom/android/tools/r8/internal/T60;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 18
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const/16 v0, -0x80

    if-lt p2, v0, :cond_6

    const/16 v0, 0x7f

    if-gt p2, v0, :cond_6

    .line 19
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_5

    .line 20
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/DX;->b(II)V

    .line 21
    :cond_5
    iget p1, p0, Lcom/android/tools/r8/internal/sc;->j:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/tools/r8/internal/sc;->j:I

    return-void

    .line 22
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 23
    const-string v0, "Invalid operand (must be a signed byte): "

    invoke-static {p2, v0}, Lcom/android/tools/r8/internal/T60;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 24
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(ILcom/android/tools/r8/internal/XQ;)V
    .locals 2

    .line 34
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sc;->d()V

    .line 35
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sc;->f()V

    .line 36
    const-string v0, "Invalid line number"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/sc;->f(ILjava/lang/String;)V

    const/4 v0, 0x1

    .line 37
    const-string v1, "start label"

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/tools/r8/internal/sc;->a(Lcom/android/tools/r8/internal/XQ;ZLjava/lang/String;)V

    .line 38
    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/DX;->b(ILcom/android/tools/r8/internal/XQ;)V

    return-void
.end method

.method public final b(ILjava/lang/String;)V
    .locals 4

    if-eqz p2, :cond_0

    .line 1
    iget v0, p0, Lcom/android/tools/r8/internal/sc;->c:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 2
    const-string v3, "name"

    invoke-static {v0, p2, v1, v2, v3}, Lcom/android/tools/r8/internal/sc;->a(ILjava/lang/String;IILjava/lang/String;)V

    :cond_0
    const v0, 0x9010

    .line 3
    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/mc;->a(II)V

    .line 4
    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/DX;->b(ILjava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 41
    iget v0, p0, Lcom/android/tools/r8/internal/sc;->c:I

    check-cast p1, Ljava/lang/String;

    const-string v1, "Invalid stack frame value"

    invoke-static {v0, p1, v1}, Lcom/android/tools/r8/internal/sc;->b(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 42
    :cond_1
    instance-of v1, p1, Lcom/android/tools/r8/internal/XQ;

    if-eqz v1, :cond_2

    .line 43
    check-cast p1, Lcom/android/tools/r8/internal/XQ;

    const-string v1, "label"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/tools/r8/internal/sc;->a(Lcom/android/tools/r8/internal/XQ;ZLjava/lang/String;)V

    return-void

    .line 44
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid stack frame value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    return-void
.end method

.method public final c(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sc;->e()V

    ushr-int/lit8 v0, p1, 0x18

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    const/16 v1, 0x14

    if-eq v0, v1, :cond_1

    const/16 v1, 0x15

    if-eq v0, v1, :cond_1

    const/16 v1, 0x16

    if-eq v0, v1, :cond_1

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    .line 3
    const-string p3, "Invalid type reference sort 0x"

    invoke-static {p3, p2}, Lcom/android/tools/r8/internal/Ee0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/tools/r8/internal/mc;->a(I)V

    .line 6
    iget v0, p0, Lcom/android/tools/r8/internal/sc;->c:I

    invoke-static {v0, p3}, Lcom/android/tools/r8/internal/sc;->d(ILjava/lang/String;)V

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/hc;

    .line 8
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/DX;->c(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/hc;-><init>(Lcom/android/tools/r8/internal/Q2;)V

    return-object v0
.end method

.method public final c()V
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sc;->e()V

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/sc;->i:Z

    .line 37
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/DX;->c()V

    :cond_0
    return-void
.end method

.method public final c(II)V
    .locals 5

    .line 20
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sc;->d()V

    .line 21
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sc;->f()V

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/sc;->h:Z

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/internal/sc;->l:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/XQ;

    .line 24
    iget-object v2, p0, Lcom/android/tools/r8/internal/sc;->k:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Undefined label used"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v0, 0x0

    .line 26
    :goto_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/sc;->p:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 27
    iget-object v1, p0, Lcom/android/tools/r8/internal/sc;->k:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/tools/r8/internal/sc;->p:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 28
    iget-object v2, p0, Lcom/android/tools/r8/internal/sc;->k:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/tools/r8/internal/sc;->p:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 29
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v2, v1, :cond_2

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 30
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Empty try catch block handler range"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_3
    const-string v0, "Invalid max stack"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/sc;->f(ILjava/lang/String;)V

    .line 32
    const-string v0, "Invalid max locals"

    invoke-static {p2, v0}, Lcom/android/tools/r8/internal/sc;->f(ILjava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_4

    .line 34
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/DX;->c(II)V

    :cond_4
    return-void
.end method

.method public final c(ILjava/lang/String;)V
    .locals 2

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sc;->d()V

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sc;->f()V

    const/4 v0, 0x4

    .line 11
    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/sc;->e(II)V

    .line 12
    iget v0, p0, Lcom/android/tools/r8/internal/sc;->c:I

    const-string v1, "type"

    invoke-static {v0, p2, v1}, Lcom/android/tools/r8/internal/sc;->b(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xbb

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    .line 13
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 15
    const-string v0, "NEW cannot be used to create arrays: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 16
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_2

    .line 18
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/DX;->c(ILjava/lang/String;)V

    .line 19
    :cond_2
    iget p1, p0, Lcom/android/tools/r8/internal/sc;->j:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/tools/r8/internal/sc;->j:I

    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 5

    .line 39
    instance-of v0, p1, Lcom/android/tools/r8/internal/tt0;

    const/16 v1, 0x33

    const/16 v2, 0x9

    const v3, 0xffff

    if-eqz v0, :cond_5

    .line 40
    check-cast p1, Lcom/android/tools/r8/internal/tt0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/tt0;->c()I

    move-result p1

    const/16 v0, 0xa

    const/16 v4, 0xb

    if-eq p1, v0, :cond_1

    if-eq p1, v2, :cond_1

    if-ne p1, v4, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal LDC constant value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eq p1, v4, :cond_3

    .line 42
    iget v0, p0, Lcom/android/tools/r8/internal/sc;->c:I

    and-int/2addr v0, v3

    const/16 v2, 0x31

    if-lt v0, v2, :cond_2

    goto :goto_1

    .line 43
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ldc of a constant class requires at least version 1.5"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    if-ne p1, v4, :cond_b

    .line 44
    iget p1, p0, Lcom/android/tools/r8/internal/sc;->c:I

    and-int/2addr p1, v3

    if-lt p1, v1, :cond_4

    goto/16 :goto_4

    .line 45
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ldc of a method type requires at least version 1.7"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_5
    instance-of v0, p1, Lcom/android/tools/r8/internal/Qz;

    if-eqz v0, :cond_a

    .line 47
    iget v0, p0, Lcom/android/tools/r8/internal/sc;->c:I

    and-int/2addr v3, v0

    if-lt v3, v1, :cond_9

    .line 48
    check-cast p1, Lcom/android/tools/r8/internal/Qz;

    .line 49
    iget v1, p1, Lcom/android/tools/r8/internal/Qz;->a:I

    const/4 v3, 0x1

    if-lt v1, v3, :cond_8

    if-gt v1, v2, :cond_8

    .line 50
    iget-object v2, p1, Lcom/android/tools/r8/internal/Qz;->b:Ljava/lang/String;

    .line 51
    const-string v3, "handle owner"

    invoke-static {v0, v2, v3}, Lcom/android/tools/r8/internal/sc;->b(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    if-gt v1, v0, :cond_6

    .line 52
    iget v0, p0, Lcom/android/tools/r8/internal/sc;->c:I

    .line 53
    iget-object v2, p1, Lcom/android/tools/r8/internal/Qz;->d:Ljava/lang/String;

    .line 54
    invoke-static {v0, v2}, Lcom/android/tools/r8/internal/sc;->d(ILjava/lang/String;)V

    goto :goto_2

    .line 55
    :cond_6
    iget v0, p0, Lcom/android/tools/r8/internal/sc;->c:I

    .line 56
    iget-object v2, p1, Lcom/android/tools/r8/internal/Qz;->d:Ljava/lang/String;

    .line 57
    invoke-static {v0, v2}, Lcom/android/tools/r8/internal/sc;->e(ILjava/lang/String;)V

    .line 58
    :goto_2
    iget-object p1, p1, Lcom/android/tools/r8/internal/Qz;->c:Ljava/lang/String;

    .line 59
    const-string v0, "<init>"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    if-eq v1, v0, :cond_b

    .line 60
    :cond_7
    iget v0, p0, Lcom/android/tools/r8/internal/sc;->c:I

    const-string v1, "handle name"

    invoke-static {v0, p1, v1}, Lcom/android/tools/r8/internal/sc;->c(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 61
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 62
    const-string v0, "invalid handle tag "

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/T60;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ldc of a Handle requires at least version 1.7"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_a
    instance-of v0, p1, Lcom/android/tools/r8/internal/wh;

    if-eqz v0, :cond_d

    .line 66
    iget v0, p0, Lcom/android/tools/r8/internal/sc;->c:I

    and-int v1, v0, v3

    const/16 v2, 0x37

    if-lt v1, v2, :cond_c

    .line 67
    check-cast p1, Lcom/android/tools/r8/internal/wh;

    .line 68
    iget-object v1, p1, Lcom/android/tools/r8/internal/wh;->a:Ljava/lang/String;

    .line 69
    const-string v2, "constant dynamic name"

    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/internal/sc;->c(ILjava/lang/String;Ljava/lang/String;)V

    .line 70
    iget v0, p0, Lcom/android/tools/r8/internal/sc;->c:I

    .line 71
    iget-object v1, p1, Lcom/android/tools/r8/internal/wh;->b:Ljava/lang/String;

    .line 72
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/sc;->d(ILjava/lang/String;)V

    .line 73
    iget-object v0, p1, Lcom/android/tools/r8/internal/wh;->c:Lcom/android/tools/r8/internal/Qz;

    .line 74
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/sc;->c(Ljava/lang/Object;)V

    .line 75
    iget-object v0, p1, Lcom/android/tools/r8/internal/wh;->d:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_b

    .line 76
    iget-object v2, p1, Lcom/android/tools/r8/internal/wh;->d:[Ljava/lang/Object;

    aget-object v2, v2, v1

    .line 77
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/sc;->c(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_b
    :goto_4
    return-void

    .line 78
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ldc of a ConstantDynamic requires at least version 11"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_d
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_f

    instance-of v0, p1, Ljava/lang/Float;

    if-nez v0, :cond_f

    instance-of v0, p1, Ljava/lang/Long;

    if-nez v0, :cond_f

    instance-of v0, p1, Ljava/lang/Double;

    if-nez v0, :cond_f

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_e

    return-void

    .line 80
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid constant: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    return-void
.end method

.method public final d()V
    .locals 2

    .line 8
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/sc;->g:Z

    if-eqz v0, :cond_0

    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot visit instructions before visitCode has been called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d(II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sc;->d()V

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/sc;->f()V

    const/4 v0, 0x3

    .line 3
    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/sc;->e(II)V

    .line 4
    const-string v0, "Invalid local variable index"

    invoke-static {p2, v0}, Lcom/android/tools/r8/internal/sc;->f(ILjava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/DX;->d(II)V

    .line 7
    :cond_0
    iget p1, p0, Lcom/android/tools/r8/internal/sc;->j:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/tools/r8/internal/sc;->j:I

    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/sc;->i:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot visit elements after visitEnd has been called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final f()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/sc;->h:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot visit instructions after visitMaxs has been called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
