.class public final enum Lcom/android/tools/r8/internal/Mw0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lcom/android/tools/r8/internal/Mw0;

.field public static final enum c:Lcom/android/tools/r8/internal/Mw0;

.field public static final enum d:Lcom/android/tools/r8/internal/Mw0;

.field public static final enum e:Lcom/android/tools/r8/internal/Mw0;

.field public static final enum f:Lcom/android/tools/r8/internal/Mw0;

.field public static final enum g:Lcom/android/tools/r8/internal/Mw0;

.field public static final enum h:Lcom/android/tools/r8/internal/Mw0;

.field public static final enum i:Lcom/android/tools/r8/internal/Mw0;

.field public static final synthetic j:[Lcom/android/tools/r8/internal/Mw0;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/android/tools/r8/internal/Mw0;

    const/4 v1, 0x0

    const-string v2, "OBJECT"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/Mw0;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/Mw0;->b:Lcom/android/tools/r8/internal/Mw0;

    new-instance v1, Lcom/android/tools/r8/internal/Mw0;

    const/4 v2, 0x1

    const-string v3, "INT"

    invoke-direct {v1, v2, v3}, Lcom/android/tools/r8/internal/Mw0;-><init>(ILjava/lang/String;)V

    sput-object v1, Lcom/android/tools/r8/internal/Mw0;->c:Lcom/android/tools/r8/internal/Mw0;

    new-instance v2, Lcom/android/tools/r8/internal/Mw0;

    const/4 v3, 0x2

    const-string v4, "FLOAT"

    invoke-direct {v2, v3, v4}, Lcom/android/tools/r8/internal/Mw0;-><init>(ILjava/lang/String;)V

    sput-object v2, Lcom/android/tools/r8/internal/Mw0;->d:Lcom/android/tools/r8/internal/Mw0;

    new-instance v3, Lcom/android/tools/r8/internal/Mw0;

    const/4 v4, 0x3

    const-string v5, "INT_OR_FLOAT"

    invoke-direct {v3, v4, v5}, Lcom/android/tools/r8/internal/Mw0;-><init>(ILjava/lang/String;)V

    sput-object v3, Lcom/android/tools/r8/internal/Mw0;->e:Lcom/android/tools/r8/internal/Mw0;

    new-instance v4, Lcom/android/tools/r8/internal/Mw0;

    const/4 v5, 0x4

    const-string v6, "INT_OR_FLOAT_OR_OBJECT"

    invoke-direct {v4, v5, v6}, Lcom/android/tools/r8/internal/Mw0;-><init>(ILjava/lang/String;)V

    sput-object v4, Lcom/android/tools/r8/internal/Mw0;->f:Lcom/android/tools/r8/internal/Mw0;

    new-instance v5, Lcom/android/tools/r8/internal/Mw0;

    const/4 v6, 0x5

    const-string v7, "LONG"

    invoke-direct {v5, v6, v7}, Lcom/android/tools/r8/internal/Mw0;-><init>(ILjava/lang/String;)V

    sput-object v5, Lcom/android/tools/r8/internal/Mw0;->g:Lcom/android/tools/r8/internal/Mw0;

    new-instance v6, Lcom/android/tools/r8/internal/Mw0;

    const/4 v7, 0x6

    const-string v8, "DOUBLE"

    invoke-direct {v6, v7, v8}, Lcom/android/tools/r8/internal/Mw0;-><init>(ILjava/lang/String;)V

    sput-object v6, Lcom/android/tools/r8/internal/Mw0;->h:Lcom/android/tools/r8/internal/Mw0;

    new-instance v7, Lcom/android/tools/r8/internal/Mw0;

    const/4 v8, 0x7

    const-string v9, "LONG_OR_DOUBLE"

    invoke-direct {v7, v8, v9}, Lcom/android/tools/r8/internal/Mw0;-><init>(ILjava/lang/String;)V

    sput-object v7, Lcom/android/tools/r8/internal/Mw0;->i:Lcom/android/tools/r8/internal/Mw0;

    filled-new-array/range {v0 .. v7}, [Lcom/android/tools/r8/internal/Mw0;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/Mw0;->j:[Lcom/android/tools/r8/internal/Mw0;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(C)Lcom/android/tools/r8/internal/Mw0;
    .locals 3

    const/16 v0, 0x46

    if-eq p0, v0, :cond_4

    const/16 v0, 0x4c

    if-eq p0, v0, :cond_3

    const/16 v0, 0x53

    if-eq p0, v0, :cond_2

    const/16 v0, 0x56

    if-eq p0, v0, :cond_1

    const/16 v0, 0x49

    if-eq p0, v0, :cond_2

    const/16 v0, 0x4a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_2

    const/16 v0, 0x5b

    if-eq p0, v0, :cond_3

    packed-switch p0, :pswitch_data_0

    .line 18
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

    .line 19
    :pswitch_0
    sget-object p0, Lcom/android/tools/r8/internal/Mw0;->h:Lcom/android/tools/r8/internal/Mw0;

    return-object p0

    .line 20
    :cond_0
    sget-object p0, Lcom/android/tools/r8/internal/Mw0;->g:Lcom/android/tools/r8/internal/Mw0;

    return-object p0

    .line 21
    :cond_1
    new-instance p0, Lcom/android/tools/r8/internal/bJ;

    const-string v0, "No value type for void type."

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/bJ;-><init>(Ljava/lang/String;)V

    throw p0

    .line 22
    :cond_2
    :pswitch_1
    sget-object p0, Lcom/android/tools/r8/internal/Mw0;->c:Lcom/android/tools/r8/internal/Mw0;

    return-object p0

    .line 23
    :cond_3
    sget-object p0, Lcom/android/tools/r8/internal/Mw0;->b:Lcom/android/tools/r8/internal/Mw0;

    return-object p0

    .line 24
    :cond_4
    sget-object p0, Lcom/android/tools/r8/internal/Mw0;->d:Lcom/android/tools/r8/internal/Mw0;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Mw0;
    .locals 1

    .line 25
    iget-object p0, p0, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    iget-object p0, p0, Lcom/android/tools/r8/graph/L2;->f:[B

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    int-to-char p0, p0

    invoke-static {p0}, Lcom/android/tools/r8/internal/Mw0;->a(C)Lcom/android/tools/r8/internal/Mw0;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Kw0;)Lcom/android/tools/r8/internal/Mw0;
    .locals 3

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/Lw0;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 3
    sget-object p0, Lcom/android/tools/r8/internal/Mw0;->h:Lcom/android/tools/r8/internal/Mw0;

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected value type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    sget-object p0, Lcom/android/tools/r8/internal/Mw0;->g:Lcom/android/tools/r8/internal/Mw0;

    return-object p0

    .line 6
    :cond_2
    sget-object p0, Lcom/android/tools/r8/internal/Mw0;->d:Lcom/android/tools/r8/internal/Mw0;

    return-object p0

    .line 7
    :cond_3
    sget-object p0, Lcom/android/tools/r8/internal/Mw0;->c:Lcom/android/tools/r8/internal/Mw0;

    return-object p0

    .line 8
    :cond_4
    sget-object p0, Lcom/android/tools/r8/internal/Mw0;->b:Lcom/android/tools/r8/internal/Mw0;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/Mw0;
    .locals 3

    .line 26
    sget-object v0, Lcom/android/tools/r8/internal/Lw0;->c:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 27
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid numeric type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :pswitch_0
    sget-object p0, Lcom/android/tools/r8/internal/Mw0;->h:Lcom/android/tools/r8/internal/Mw0;

    return-object p0

    .line 29
    :pswitch_1
    sget-object p0, Lcom/android/tools/r8/internal/Mw0;->g:Lcom/android/tools/r8/internal/Mw0;

    return-object p0

    .line 30
    :pswitch_2
    sget-object p0, Lcom/android/tools/r8/internal/Mw0;->d:Lcom/android/tools/r8/internal/Mw0;

    return-object p0

    .line 31
    :pswitch_3
    sget-object p0, Lcom/android/tools/r8/internal/Mw0;->c:Lcom/android/tools/r8/internal/Mw0;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lcom/android/tools/r8/internal/YV;)Lcom/android/tools/r8/internal/Mw0;
    .locals 3

    .line 9
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 10
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected member type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :pswitch_0
    sget-object p0, Lcom/android/tools/r8/internal/Mw0;->i:Lcom/android/tools/r8/internal/Mw0;

    return-object p0

    .line 12
    :pswitch_1
    sget-object p0, Lcom/android/tools/r8/internal/Mw0;->e:Lcom/android/tools/r8/internal/Mw0;

    return-object p0

    .line 13
    :pswitch_2
    sget-object p0, Lcom/android/tools/r8/internal/Mw0;->h:Lcom/android/tools/r8/internal/Mw0;

    return-object p0

    .line 14
    :pswitch_3
    sget-object p0, Lcom/android/tools/r8/internal/Mw0;->g:Lcom/android/tools/r8/internal/Mw0;

    return-object p0

    .line 15
    :pswitch_4
    sget-object p0, Lcom/android/tools/r8/internal/Mw0;->d:Lcom/android/tools/r8/internal/Mw0;

    return-object p0

    .line 16
    :pswitch_5
    sget-object p0, Lcom/android/tools/r8/internal/Mw0;->c:Lcom/android/tools/r8/internal/Mw0;

    return-object p0

    .line 17
    :pswitch_6
    sget-object p0, Lcom/android/tools/r8/internal/Mw0;->b:Lcom/android/tools/r8/internal/Mw0;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/Mw0;
    .locals 3

    .line 32
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    sget-object p0, Lcom/android/tools/r8/internal/Mw0;->b:Lcom/android/tools/r8/internal/Mw0;

    return-object p0

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pu0;->u()Z

    move-result v0

    if-nez v0, :cond_8

    .line 35
    instance-of v0, p0, Lcom/android/tools/r8/internal/uI;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 36
    :cond_1
    instance-of v0, p0, Lcom/android/tools/r8/internal/Fx;

    if-eqz v0, :cond_2

    .line 37
    sget-object p0, Lcom/android/tools/r8/internal/Mw0;->d:Lcom/android/tools/r8/internal/Mw0;

    return-object p0

    .line 38
    :cond_2
    instance-of v0, p0, Lcom/android/tools/r8/internal/tU;

    if-eqz v0, :cond_3

    .line 39
    sget-object p0, Lcom/android/tools/r8/internal/Mw0;->g:Lcom/android/tools/r8/internal/Mw0;

    return-object p0

    .line 40
    :cond_3
    instance-of v0, p0, Lcom/android/tools/r8/internal/kt;

    if-eqz v0, :cond_4

    .line 41
    sget-object p0, Lcom/android/tools/r8/internal/Mw0;->h:Lcom/android/tools/r8/internal/Mw0;

    return-object p0

    .line 42
    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pu0;->z()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 43
    sget-object p0, Lcom/android/tools/r8/internal/Mw0;->e:Lcom/android/tools/r8/internal/Mw0;

    return-object p0

    .line 44
    :cond_5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/pu0;->A()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 45
    sget-object p0, Lcom/android/tools/r8/internal/Mw0;->i:Lcom/android/tools/r8/internal/Mw0;

    return-object p0

    .line 46
    :cond_6
    instance-of v0, p0, Lcom/android/tools/r8/internal/xs0;

    if-eqz v0, :cond_7

    .line 47
    sget-object p0, Lcom/android/tools/r8/internal/Mw0;->f:Lcom/android/tools/r8/internal/Mw0;

    return-object p0

    .line 48
    :cond_7
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected conversion of type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_8
    :goto_0
    sget-object p0, Lcom/android/tools/r8/internal/Mw0;->c:Lcom/android/tools/r8/internal/Mw0;

    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/Mw0;->g:Lcom/android/tools/r8/internal/Mw0;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/tools/r8/internal/Mw0;->h:Lcom/android/tools/r8/internal/Mw0;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/tools/r8/internal/Mw0;->i:Lcom/android/tools/r8/internal/Mw0;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x2

    return v0
.end method

.method public final b()Lcom/android/tools/r8/internal/D70;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->i()Lcom/android/tools/r8/internal/kt;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type in conversion to primitive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->l()Lcom/android/tools/r8/internal/tU;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->j()Lcom/android/tools/r8/internal/Fx;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object v0

    return-object v0
.end method
