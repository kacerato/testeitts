.class public final enum Lcom/android/tools/r8/internal/Ms;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/C40;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/tools/r8/internal/Ms;",
        ">;",
        "Lcom/android/tools/r8/internal/C40<",
        "Lcom/android/tools/r8/internal/Ms;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lcom/android/tools/r8/internal/Ms;

.field public static final enum f:Lcom/android/tools/r8/internal/Ms;

.field public static final enum g:Lcom/android/tools/r8/internal/Ms;

.field public static final enum h:Lcom/android/tools/r8/internal/Ms;

.field public static final enum i:Lcom/android/tools/r8/internal/Ms;

.field public static final enum j:Lcom/android/tools/r8/internal/Ms;

.field public static final synthetic k:[Lcom/android/tools/r8/internal/Ms;

.field public static final synthetic l:Z = true


# instance fields
.field public final b:I

.field public final c:[B

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 20

    new-instance v6, Lcom/android/tools/r8/internal/Ms;

    const/4 v7, 0x3

    new-array v4, v7, [B

    fill-array-data v4, :array_0

    const/16 v3, 0x23

    const/4 v5, 0x1

    const-string v1, "V35"

    const/4 v2, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/Ms;-><init>(Ljava/lang/String;II[BI)V

    sput-object v6, Lcom/android/tools/r8/internal/Ms;->e:Lcom/android/tools/r8/internal/Ms;

    new-instance v1, Lcom/android/tools/r8/internal/Ms;

    new-array v12, v7, [B

    fill-array-data v12, :array_1

    const/16 v11, 0x25

    const/4 v13, 0x1

    const-string v9, "V37"

    const/4 v10, 0x1

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/android/tools/r8/internal/Ms;-><init>(Ljava/lang/String;II[BI)V

    sput-object v1, Lcom/android/tools/r8/internal/Ms;->f:Lcom/android/tools/r8/internal/Ms;

    new-instance v2, Lcom/android/tools/r8/internal/Ms;

    new-array v0, v7, [B

    fill-array-data v0, :array_2

    const/16 v17, 0x26

    const/16 v19, 0x1

    const-string v15, "V38"

    const/16 v16, 0x2

    move-object v14, v2

    move-object/from16 v18, v0

    invoke-direct/range {v14 .. v19}, Lcom/android/tools/r8/internal/Ms;-><init>(Ljava/lang/String;II[BI)V

    sput-object v2, Lcom/android/tools/r8/internal/Ms;->g:Lcom/android/tools/r8/internal/Ms;

    new-instance v3, Lcom/android/tools/r8/internal/Ms;

    new-array v12, v7, [B

    fill-array-data v12, :array_3

    const/16 v11, 0x27

    const-string v9, "V39"

    const/4 v10, 0x3

    move-object v8, v3

    invoke-direct/range {v8 .. v13}, Lcom/android/tools/r8/internal/Ms;-><init>(Ljava/lang/String;II[BI)V

    sput-object v3, Lcom/android/tools/r8/internal/Ms;->h:Lcom/android/tools/r8/internal/Ms;

    new-instance v4, Lcom/android/tools/r8/internal/Ms;

    new-array v0, v7, [B

    fill-array-data v0, :array_4

    const/16 v17, 0x28

    const-string v15, "V40"

    const/16 v16, 0x4

    move-object v14, v4

    move-object/from16 v18, v0

    invoke-direct/range {v14 .. v19}, Lcom/android/tools/r8/internal/Ms;-><init>(Ljava/lang/String;II[BI)V

    sput-object v4, Lcom/android/tools/r8/internal/Ms;->i:Lcom/android/tools/r8/internal/Ms;

    new-instance v5, Lcom/android/tools/r8/internal/Ms;

    new-array v12, v7, [B

    fill-array-data v12, :array_5

    const/16 v11, 0x29

    const/4 v13, 0x2

    const-string v9, "V41"

    const/4 v10, 0x5

    move-object v8, v5

    invoke-direct/range {v8 .. v13}, Lcom/android/tools/r8/internal/Ms;-><init>(Ljava/lang/String;II[BI)V

    sput-object v5, Lcom/android/tools/r8/internal/Ms;->j:Lcom/android/tools/r8/internal/Ms;

    move-object v0, v6

    filled-new-array/range {v0 .. v5}, [Lcom/android/tools/r8/internal/Ms;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/Ms;->k:[Lcom/android/tools/r8/internal/Ms;

    return-void

    :array_0
    .array-data 1
        0x30t
        0x33t
        0x35t
    .end array-data

    :array_1
    .array-data 1
        0x30t
        0x33t
        0x37t
    .end array-data

    :array_2
    .array-data 1
        0x30t
        0x33t
        0x38t
    .end array-data

    :array_3
    .array-data 1
        0x30t
        0x33t
        0x39t
    .end array-data

    :array_4
    .array-data 1
        0x30t
        0x34t
        0x30t
    .end array-data

    :array_5
    .array-data 1
        0x30t
        0x34t
        0x31t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;II[BI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/tools/r8/internal/Ms;->b:I

    iput-object p4, p0, Lcom/android/tools/r8/internal/Ms;->c:[B

    iput p5, p0, Lcom/android/tools/r8/internal/Ms;->d:I

    return-void
.end method

.method public static a(CCC)Ljava/util/Optional;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(CCC)",
            "Ljava/util/Optional<",
            "Lcom/android/tools/r8/internal/Ms;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x30

    if-eq p0, v0, :cond_0

    .line 9
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 10
    :cond_0
    sget-object p0, Lcom/android/tools/r8/internal/Ms;->k:[Lcom/android/tools/r8/internal/Ms;

    invoke-virtual {p0}, [Lcom/android/tools/r8/internal/Ms;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/tools/r8/internal/Ms;

    .line 11
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, p0, v3

    .line 12
    sget-boolean v5, Lcom/android/tools/r8/internal/Ms;->l:Z

    if-nez v5, :cond_2

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Ms;->a()[B

    move-result-object v5

    aget-byte v5, v5, v2

    if-ne v5, v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 13
    :cond_2
    :goto_1
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Ms;->a()[B

    move-result-object v5

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    if-ne v5, p2, :cond_3

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Ms;->a()[B

    move-result-object v5

    const/4 v6, 0x1

    aget-byte v5, v5, v6

    if-ne v5, p1, :cond_3

    .line 14
    invoke-static {v4}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 15
    :cond_4
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static a(I)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Optional<",
            "Lcom/android/tools/r8/internal/Ms;",
            ">;"
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    .line 2
    :pswitch_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 3
    :pswitch_1
    sget-object p0, Lcom/android/tools/r8/internal/Ms;->j:Lcom/android/tools/r8/internal/Ms;

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 4
    :pswitch_2
    sget-object p0, Lcom/android/tools/r8/internal/Ms;->i:Lcom/android/tools/r8/internal/Ms;

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 5
    :pswitch_3
    sget-object p0, Lcom/android/tools/r8/internal/Ms;->h:Lcom/android/tools/r8/internal/Ms;

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 6
    :pswitch_4
    sget-object p0, Lcom/android/tools/r8/internal/Ms;->g:Lcom/android/tools/r8/internal/Ms;

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 7
    :pswitch_5
    sget-object p0, Lcom/android/tools/r8/internal/Ms;->f:Lcom/android/tools/r8/internal/Ms;

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 8
    :pswitch_6
    sget-object p0, Lcom/android/tools/r8/internal/Ms;->e:Lcom/android/tools/r8/internal/Ms;

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static c(Lcom/android/tools/r8/internal/C2;)Lcom/android/tools/r8/internal/Ms;
    .locals 3

    sget-object v0, Lcom/android/tools/r8/internal/Ls;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported api level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object p0, Lcom/android/tools/r8/internal/Ms;->e:Lcom/android/tools/r8/internal/Ms;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/android/tools/r8/internal/Ms;->f:Lcom/android/tools/r8/internal/Ms;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/android/tools/r8/internal/Ms;->g:Lcom/android/tools/r8/internal/Ms;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/android/tools/r8/internal/Ms;->h:Lcom/android/tools/r8/internal/Ms;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ms;->c:[B

    return-object v0
.end method

.method public b()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/Ms;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic compareTo(Lcom/android/tools/r8/internal/C40;)I
    .locals 0

    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    return p1
.end method
