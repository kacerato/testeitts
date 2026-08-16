.class public final enum Lcom/android/tools/r8/internal/T10;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/tools/r8/internal/T10;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/android/tools/r8/internal/T10;

.field public static final enum c:Lcom/android/tools/r8/internal/T10;

.field public static final enum d:Lcom/android/tools/r8/internal/T10;

.field public static final enum e:Lcom/android/tools/r8/internal/T10;

.field public static final enum f:Lcom/android/tools/r8/internal/T10;

.field public static final enum g:Lcom/android/tools/r8/internal/T10;

.field public static final enum h:Lcom/android/tools/r8/internal/T10;

.field public static final synthetic i:[Lcom/android/tools/r8/internal/T10;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/android/tools/r8/internal/T10;

    const/4 v1, 0x0

    const-string v2, "BYTE"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/T10;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/T10;->b:Lcom/android/tools/r8/internal/T10;

    new-instance v1, Lcom/android/tools/r8/internal/T10;

    const/4 v2, 0x1

    const-string v3, "CHAR"

    invoke-direct {v1, v2, v3}, Lcom/android/tools/r8/internal/T10;-><init>(ILjava/lang/String;)V

    sput-object v1, Lcom/android/tools/r8/internal/T10;->c:Lcom/android/tools/r8/internal/T10;

    new-instance v2, Lcom/android/tools/r8/internal/T10;

    const/4 v3, 0x2

    const-string v4, "SHORT"

    invoke-direct {v2, v3, v4}, Lcom/android/tools/r8/internal/T10;-><init>(ILjava/lang/String;)V

    sput-object v2, Lcom/android/tools/r8/internal/T10;->d:Lcom/android/tools/r8/internal/T10;

    new-instance v3, Lcom/android/tools/r8/internal/T10;

    const/4 v4, 0x3

    const-string v5, "INT"

    invoke-direct {v3, v4, v5}, Lcom/android/tools/r8/internal/T10;-><init>(ILjava/lang/String;)V

    sput-object v3, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    new-instance v4, Lcom/android/tools/r8/internal/T10;

    const/4 v5, 0x4

    const-string v6, "LONG"

    invoke-direct {v4, v5, v6}, Lcom/android/tools/r8/internal/T10;-><init>(ILjava/lang/String;)V

    sput-object v4, Lcom/android/tools/r8/internal/T10;->f:Lcom/android/tools/r8/internal/T10;

    new-instance v5, Lcom/android/tools/r8/internal/T10;

    const/4 v6, 0x5

    const-string v7, "FLOAT"

    invoke-direct {v5, v6, v7}, Lcom/android/tools/r8/internal/T10;-><init>(ILjava/lang/String;)V

    sput-object v5, Lcom/android/tools/r8/internal/T10;->g:Lcom/android/tools/r8/internal/T10;

    new-instance v6, Lcom/android/tools/r8/internal/T10;

    const/4 v7, 0x6

    const-string v8, "DOUBLE"

    invoke-direct {v6, v7, v8}, Lcom/android/tools/r8/internal/T10;-><init>(ILjava/lang/String;)V

    sput-object v6, Lcom/android/tools/r8/internal/T10;->h:Lcom/android/tools/r8/internal/T10;

    filled-new-array/range {v0 .. v6}, [Lcom/android/tools/r8/internal/T10;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/T10;->i:[Lcom/android/tools/r8/internal/T10;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/T10;
    .locals 1

    .line 10
    iget-object p0, p0, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    iget-object p0, p0, Lcom/android/tools/r8/graph/L2;->f:[B

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    const/16 v0, 0x46

    if-eq p0, v0, :cond_3

    const/16 v0, 0x53

    if-eq p0, v0, :cond_2

    const/16 v0, 0x49

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4a

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 11
    :pswitch_0
    sget-object p0, Lcom/android/tools/r8/internal/T10;->h:Lcom/android/tools/r8/internal/T10;

    return-object p0

    .line 12
    :pswitch_1
    sget-object p0, Lcom/android/tools/r8/internal/T10;->c:Lcom/android/tools/r8/internal/T10;

    return-object p0

    .line 13
    :pswitch_2
    sget-object p0, Lcom/android/tools/r8/internal/T10;->b:Lcom/android/tools/r8/internal/T10;

    return-object p0

    .line 14
    :cond_0
    sget-object p0, Lcom/android/tools/r8/internal/T10;->f:Lcom/android/tools/r8/internal/T10;

    return-object p0

    .line 15
    :cond_1
    sget-object p0, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    return-object p0

    .line 16
    :cond_2
    sget-object p0, Lcom/android/tools/r8/internal/T10;->d:Lcom/android/tools/r8/internal/T10;

    return-object p0

    .line 17
    :cond_3
    sget-object p0, Lcom/android/tools/r8/internal/T10;->g:Lcom/android/tools/r8/internal/T10;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/S10;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid numeric type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :pswitch_0
    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->H1:Lcom/android/tools/r8/graph/M2;

    return-object p1

    .line 4
    :pswitch_1
    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->I1:Lcom/android/tools/r8/graph/M2;

    return-object p1

    .line 5
    :pswitch_2
    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->K1:Lcom/android/tools/r8/graph/M2;

    return-object p1

    .line 6
    :pswitch_3
    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    return-object p1

    .line 7
    :pswitch_4
    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->L1:Lcom/android/tools/r8/graph/M2;

    return-object p1

    .line 8
    :pswitch_5
    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->G1:Lcom/android/tools/r8/graph/M2;

    return-object p1

    .line 9
    :pswitch_6
    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->F1:Lcom/android/tools/r8/graph/M2;

    return-object p1

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

.method public a()Z
    .locals 1

    .line 18
    sget-object v0, Lcom/android/tools/r8/internal/T10;->f:Lcom/android/tools/r8/internal/T10;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/tools/r8/internal/T10;->h:Lcom/android/tools/r8/internal/T10;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
