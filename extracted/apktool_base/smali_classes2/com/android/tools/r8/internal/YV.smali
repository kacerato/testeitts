.class public final enum Lcom/android/tools/r8/internal/YV;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lcom/android/tools/r8/internal/YV;

.field public static final enum c:Lcom/android/tools/r8/internal/YV;

.field public static final enum d:Lcom/android/tools/r8/internal/YV;

.field public static final enum e:Lcom/android/tools/r8/internal/YV;

.field public static final enum f:Lcom/android/tools/r8/internal/YV;

.field public static final enum g:Lcom/android/tools/r8/internal/YV;

.field public static final enum h:Lcom/android/tools/r8/internal/YV;

.field public static final enum i:Lcom/android/tools/r8/internal/YV;

.field public static final enum j:Lcom/android/tools/r8/internal/YV;

.field public static final enum k:Lcom/android/tools/r8/internal/YV;

.field public static final synthetic l:[Lcom/android/tools/r8/internal/YV;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/android/tools/r8/internal/YV;

    const/4 v1, 0x0

    const-string v2, "OBJECT"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/YV;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/YV;->b:Lcom/android/tools/r8/internal/YV;

    new-instance v1, Lcom/android/tools/r8/internal/YV;

    const/4 v2, 0x1

    const-string v3, "BOOLEAN_OR_BYTE"

    invoke-direct {v1, v2, v3}, Lcom/android/tools/r8/internal/YV;-><init>(ILjava/lang/String;)V

    sput-object v1, Lcom/android/tools/r8/internal/YV;->c:Lcom/android/tools/r8/internal/YV;

    new-instance v2, Lcom/android/tools/r8/internal/YV;

    const/4 v3, 0x2

    const-string v4, "CHAR"

    invoke-direct {v2, v3, v4}, Lcom/android/tools/r8/internal/YV;-><init>(ILjava/lang/String;)V

    sput-object v2, Lcom/android/tools/r8/internal/YV;->d:Lcom/android/tools/r8/internal/YV;

    new-instance v3, Lcom/android/tools/r8/internal/YV;

    const/4 v4, 0x3

    const-string v5, "SHORT"

    invoke-direct {v3, v4, v5}, Lcom/android/tools/r8/internal/YV;-><init>(ILjava/lang/String;)V

    sput-object v3, Lcom/android/tools/r8/internal/YV;->e:Lcom/android/tools/r8/internal/YV;

    new-instance v4, Lcom/android/tools/r8/internal/YV;

    const/4 v5, 0x4

    const-string v6, "INT"

    invoke-direct {v4, v5, v6}, Lcom/android/tools/r8/internal/YV;-><init>(ILjava/lang/String;)V

    sput-object v4, Lcom/android/tools/r8/internal/YV;->f:Lcom/android/tools/r8/internal/YV;

    new-instance v5, Lcom/android/tools/r8/internal/YV;

    const/4 v6, 0x5

    const-string v7, "FLOAT"

    invoke-direct {v5, v6, v7}, Lcom/android/tools/r8/internal/YV;-><init>(ILjava/lang/String;)V

    sput-object v5, Lcom/android/tools/r8/internal/YV;->g:Lcom/android/tools/r8/internal/YV;

    new-instance v6, Lcom/android/tools/r8/internal/YV;

    const/4 v7, 0x6

    const-string v8, "LONG"

    invoke-direct {v6, v7, v8}, Lcom/android/tools/r8/internal/YV;-><init>(ILjava/lang/String;)V

    sput-object v6, Lcom/android/tools/r8/internal/YV;->h:Lcom/android/tools/r8/internal/YV;

    new-instance v7, Lcom/android/tools/r8/internal/YV;

    const/4 v8, 0x7

    const-string v9, "DOUBLE"

    invoke-direct {v7, v8, v9}, Lcom/android/tools/r8/internal/YV;-><init>(ILjava/lang/String;)V

    sput-object v7, Lcom/android/tools/r8/internal/YV;->i:Lcom/android/tools/r8/internal/YV;

    new-instance v8, Lcom/android/tools/r8/internal/YV;

    const/16 v9, 0x8

    const-string v10, "INT_OR_FLOAT"

    invoke-direct {v8, v9, v10}, Lcom/android/tools/r8/internal/YV;-><init>(ILjava/lang/String;)V

    sput-object v8, Lcom/android/tools/r8/internal/YV;->j:Lcom/android/tools/r8/internal/YV;

    new-instance v9, Lcom/android/tools/r8/internal/YV;

    const/16 v10, 0x9

    const-string v11, "LONG_OR_DOUBLE"

    invoke-direct {v9, v10, v11}, Lcom/android/tools/r8/internal/YV;-><init>(ILjava/lang/String;)V

    sput-object v9, Lcom/android/tools/r8/internal/YV;->k:Lcom/android/tools/r8/internal/YV;

    filled-new-array/range {v0 .. v9}, [Lcom/android/tools/r8/internal/YV;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/YV;->l:[Lcom/android/tools/r8/internal/YV;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(C)Lcom/android/tools/r8/internal/YV;
    .locals 3

    const/16 v0, 0x46

    if-eq p0, v0, :cond_6

    const/16 v0, 0x4c

    if-eq p0, v0, :cond_5

    const/16 v0, 0x4e

    if-eq p0, v0, :cond_5

    const/16 v0, 0x53

    if-eq p0, v0, :cond_4

    const/16 v0, 0x56

    if-eq p0, v0, :cond_3

    const/16 v0, 0x49

    if-eq p0, v0, :cond_2

    const/16 v0, 0x4a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5b

    if-eq p0, v0, :cond_5

    packed-switch p0, :pswitch_data_0

    .line 12
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid descriptor char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :pswitch_0
    sget-object p0, Lcom/android/tools/r8/internal/YV;->i:Lcom/android/tools/r8/internal/YV;

    return-object p0

    .line 14
    :pswitch_1
    sget-object p0, Lcom/android/tools/r8/internal/YV;->d:Lcom/android/tools/r8/internal/YV;

    return-object p0

    .line 15
    :cond_0
    :pswitch_2
    sget-object p0, Lcom/android/tools/r8/internal/YV;->c:Lcom/android/tools/r8/internal/YV;

    return-object p0

    .line 16
    :cond_1
    sget-object p0, Lcom/android/tools/r8/internal/YV;->h:Lcom/android/tools/r8/internal/YV;

    return-object p0

    .line 17
    :cond_2
    sget-object p0, Lcom/android/tools/r8/internal/YV;->f:Lcom/android/tools/r8/internal/YV;

    return-object p0

    .line 18
    :cond_3
    new-instance p0, Lcom/android/tools/r8/internal/bJ;

    const-string v0, "No member type for void type."

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/bJ;-><init>(Ljava/lang/String;)V

    throw p0

    .line 19
    :cond_4
    sget-object p0, Lcom/android/tools/r8/internal/YV;->e:Lcom/android/tools/r8/internal/YV;

    return-object p0

    .line 20
    :cond_5
    sget-object p0, Lcom/android/tools/r8/internal/YV;->b:Lcom/android/tools/r8/internal/YV;

    return-object p0

    .line 21
    :cond_6
    sget-object p0, Lcom/android/tools/r8/internal/YV;->g:Lcom/android/tools/r8/internal/YV;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lcom/android/tools/r8/internal/YV;Lcom/android/tools/r8/internal/Mw0;)Lcom/android/tools/r8/internal/YV;
    .locals 2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3
    new-instance p0, Lcom/android/tools/r8/internal/Jv0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected type constraint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :pswitch_0
    sget-object p1, Lcom/android/tools/r8/internal/YV;->h:Lcom/android/tools/r8/internal/YV;

    if-eq p0, p1, :cond_2

    sget-object p1, Lcom/android/tools/r8/internal/YV;->i:Lcom/android/tools/r8/internal/YV;

    if-eq p0, p1, :cond_2

    sget-object p1, Lcom/android/tools/r8/internal/YV;->k:Lcom/android/tools/r8/internal/YV;

    if-ne p0, p1, :cond_5

    goto :goto_0

    .line 5
    :pswitch_1
    sget-object p1, Lcom/android/tools/r8/internal/YV;->i:Lcom/android/tools/r8/internal/YV;

    if-eq p0, p1, :cond_0

    sget-object v0, Lcom/android/tools/r8/internal/YV;->k:Lcom/android/tools/r8/internal/YV;

    if-ne p0, v0, :cond_5

    :cond_0
    return-object p1

    .line 6
    :pswitch_2
    sget-object p1, Lcom/android/tools/r8/internal/YV;->h:Lcom/android/tools/r8/internal/YV;

    if-eq p0, p1, :cond_1

    sget-object v0, Lcom/android/tools/r8/internal/YV;->k:Lcom/android/tools/r8/internal/YV;

    if-ne p0, v0, :cond_5

    :cond_1
    return-object p1

    .line 7
    :pswitch_3
    sget-object p1, Lcom/android/tools/r8/internal/YV;->f:Lcom/android/tools/r8/internal/YV;

    if-eq p0, p1, :cond_2

    sget-object p1, Lcom/android/tools/r8/internal/YV;->g:Lcom/android/tools/r8/internal/YV;

    if-eq p0, p1, :cond_2

    sget-object p1, Lcom/android/tools/r8/internal/YV;->b:Lcom/android/tools/r8/internal/YV;

    if-eq p0, p1, :cond_2

    sget-object p1, Lcom/android/tools/r8/internal/YV;->j:Lcom/android/tools/r8/internal/YV;

    if-ne p0, p1, :cond_5

    goto :goto_0

    .line 8
    :pswitch_4
    sget-object p1, Lcom/android/tools/r8/internal/YV;->f:Lcom/android/tools/r8/internal/YV;

    if-eq p0, p1, :cond_2

    sget-object p1, Lcom/android/tools/r8/internal/YV;->g:Lcom/android/tools/r8/internal/YV;

    if-eq p0, p1, :cond_2

    sget-object p1, Lcom/android/tools/r8/internal/YV;->j:Lcom/android/tools/r8/internal/YV;

    if-ne p0, p1, :cond_5

    :cond_2
    :goto_0
    return-object p0

    .line 9
    :pswitch_5
    sget-object p1, Lcom/android/tools/r8/internal/YV;->g:Lcom/android/tools/r8/internal/YV;

    if-eq p0, p1, :cond_3

    sget-object v0, Lcom/android/tools/r8/internal/YV;->j:Lcom/android/tools/r8/internal/YV;

    if-ne p0, v0, :cond_5

    :cond_3
    return-object p1

    .line 10
    :pswitch_6
    sget-object p1, Lcom/android/tools/r8/internal/YV;->f:Lcom/android/tools/r8/internal/YV;

    if-eq p0, p1, :cond_4

    sget-object v0, Lcom/android/tools/r8/internal/YV;->j:Lcom/android/tools/r8/internal/YV;

    if-ne p0, v0, :cond_5

    :cond_4
    return-object p1

    .line 11
    :pswitch_7
    sget-object p1, Lcom/android/tools/r8/internal/YV;->b:Lcom/android/tools/r8/internal/YV;

    if-ne p0, p1, :cond_5

    return-object p1

    :cond_5
    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/YV;->j:Lcom/android/tools/r8/internal/YV;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/tools/r8/internal/YV;->k:Lcom/android/tools/r8/internal/YV;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
