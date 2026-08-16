.class public final enum Lcom/android/tools/r8/internal/Dk;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/QI;


# static fields
.field public static final enum c:Lcom/android/tools/r8/internal/Dk;

.field public static final enum d:Lcom/android/tools/r8/internal/Dk;

.field public static final enum e:Lcom/android/tools/r8/internal/Dk;

.field public static final enum f:Lcom/android/tools/r8/internal/Dk;

.field public static final enum g:Lcom/android/tools/r8/internal/Dk;

.field public static final enum h:Lcom/android/tools/r8/internal/Dk;

.field public static final enum i:Lcom/android/tools/r8/internal/Dk;

.field public static final enum j:Lcom/android/tools/r8/internal/Dk;

.field public static final enum k:Lcom/android/tools/r8/internal/Dk;

.field public static final enum l:Lcom/android/tools/r8/internal/Dk;

.field public static final enum m:Lcom/android/tools/r8/internal/Dk;

.field public static final enum n:Lcom/android/tools/r8/internal/Dk;

.field public static final enum o:Lcom/android/tools/r8/internal/Dk;

.field public static final enum p:Lcom/android/tools/r8/internal/Dk;

.field public static final enum q:Lcom/android/tools/r8/internal/Dk;

.field public static final enum r:Lcom/android/tools/r8/internal/Dk;

.field public static final enum s:Lcom/android/tools/r8/internal/Dk;

.field public static final enum t:Lcom/android/tools/r8/internal/Dk;

.field public static final synthetic u:[Lcom/android/tools/r8/internal/Dk;


# instance fields
.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 22

    new-instance v1, Lcom/android/tools/r8/internal/Dk;

    move-object v0, v1

    const-string v2, "TYPE_DOUBLE"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/android/tools/r8/internal/Dk;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/tools/r8/internal/Dk;->c:Lcom/android/tools/r8/internal/Dk;

    new-instance v2, Lcom/android/tools/r8/internal/Dk;

    move-object v1, v2

    const-string v3, "TYPE_FLOAT"

    const/4 v5, 0x2

    invoke-direct {v2, v3, v4, v5}, Lcom/android/tools/r8/internal/Dk;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/tools/r8/internal/Dk;->d:Lcom/android/tools/r8/internal/Dk;

    new-instance v3, Lcom/android/tools/r8/internal/Dk;

    move-object v2, v3

    const-string v4, "TYPE_INT64"

    const/4 v6, 0x3

    invoke-direct {v3, v4, v5, v6}, Lcom/android/tools/r8/internal/Dk;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/tools/r8/internal/Dk;->e:Lcom/android/tools/r8/internal/Dk;

    new-instance v4, Lcom/android/tools/r8/internal/Dk;

    move-object v3, v4

    const-string v5, "TYPE_UINT64"

    const/4 v7, 0x4

    invoke-direct {v4, v5, v6, v7}, Lcom/android/tools/r8/internal/Dk;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/tools/r8/internal/Dk;->f:Lcom/android/tools/r8/internal/Dk;

    new-instance v5, Lcom/android/tools/r8/internal/Dk;

    move-object v4, v5

    const-string v6, "TYPE_INT32"

    const/4 v8, 0x5

    invoke-direct {v5, v6, v7, v8}, Lcom/android/tools/r8/internal/Dk;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/tools/r8/internal/Dk;->g:Lcom/android/tools/r8/internal/Dk;

    new-instance v6, Lcom/android/tools/r8/internal/Dk;

    move-object v5, v6

    const-string v7, "TYPE_FIXED64"

    const/4 v9, 0x6

    invoke-direct {v6, v7, v8, v9}, Lcom/android/tools/r8/internal/Dk;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/tools/r8/internal/Dk;->h:Lcom/android/tools/r8/internal/Dk;

    new-instance v7, Lcom/android/tools/r8/internal/Dk;

    move-object v6, v7

    const-string v8, "TYPE_FIXED32"

    const/4 v10, 0x7

    invoke-direct {v7, v8, v9, v10}, Lcom/android/tools/r8/internal/Dk;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/tools/r8/internal/Dk;->i:Lcom/android/tools/r8/internal/Dk;

    new-instance v8, Lcom/android/tools/r8/internal/Dk;

    move-object v7, v8

    const-string v9, "TYPE_BOOL"

    const/16 v11, 0x8

    invoke-direct {v8, v9, v10, v11}, Lcom/android/tools/r8/internal/Dk;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/tools/r8/internal/Dk;->j:Lcom/android/tools/r8/internal/Dk;

    new-instance v9, Lcom/android/tools/r8/internal/Dk;

    move-object v8, v9

    const-string v10, "TYPE_STRING"

    const/16 v12, 0x9

    invoke-direct {v9, v10, v11, v12}, Lcom/android/tools/r8/internal/Dk;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/tools/r8/internal/Dk;->k:Lcom/android/tools/r8/internal/Dk;

    new-instance v10, Lcom/android/tools/r8/internal/Dk;

    move-object v9, v10

    const-string v11, "TYPE_GROUP"

    const/16 v13, 0xa

    invoke-direct {v10, v11, v12, v13}, Lcom/android/tools/r8/internal/Dk;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/android/tools/r8/internal/Dk;->l:Lcom/android/tools/r8/internal/Dk;

    new-instance v11, Lcom/android/tools/r8/internal/Dk;

    move-object v10, v11

    const-string v12, "TYPE_MESSAGE"

    const/16 v14, 0xb

    invoke-direct {v11, v12, v13, v14}, Lcom/android/tools/r8/internal/Dk;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/android/tools/r8/internal/Dk;->m:Lcom/android/tools/r8/internal/Dk;

    new-instance v12, Lcom/android/tools/r8/internal/Dk;

    move-object v11, v12

    const-string v13, "TYPE_BYTES"

    const/16 v15, 0xc

    invoke-direct {v12, v13, v14, v15}, Lcom/android/tools/r8/internal/Dk;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/android/tools/r8/internal/Dk;->n:Lcom/android/tools/r8/internal/Dk;

    new-instance v13, Lcom/android/tools/r8/internal/Dk;

    move-object v12, v13

    const-string v14, "TYPE_UINT32"

    move-object/from16 v18, v0

    const/16 v0, 0xd

    invoke-direct {v13, v14, v15, v0}, Lcom/android/tools/r8/internal/Dk;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/android/tools/r8/internal/Dk;->o:Lcom/android/tools/r8/internal/Dk;

    new-instance v14, Lcom/android/tools/r8/internal/Dk;

    move-object v13, v14

    const-string v15, "TYPE_ENUM"

    move-object/from16 v19, v1

    const/16 v1, 0xe

    invoke-direct {v14, v15, v0, v1}, Lcom/android/tools/r8/internal/Dk;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/android/tools/r8/internal/Dk;->p:Lcom/android/tools/r8/internal/Dk;

    new-instance v0, Lcom/android/tools/r8/internal/Dk;

    move-object v14, v0

    const-string v15, "TYPE_SFIXED32"

    move-object/from16 v20, v2

    const/16 v2, 0xf

    invoke-direct {v0, v15, v1, v2}, Lcom/android/tools/r8/internal/Dk;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/tools/r8/internal/Dk;->q:Lcom/android/tools/r8/internal/Dk;

    new-instance v0, Lcom/android/tools/r8/internal/Dk;

    move-object v15, v0

    const-string v1, "TYPE_SFIXED64"

    move-object/from16 v21, v3

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/Dk;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/tools/r8/internal/Dk;->r:Lcom/android/tools/r8/internal/Dk;

    new-instance v0, Lcom/android/tools/r8/internal/Dk;

    move-object/from16 v16, v0

    const-string v1, "TYPE_SINT32"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v3, v2}, Lcom/android/tools/r8/internal/Dk;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/tools/r8/internal/Dk;->s:Lcom/android/tools/r8/internal/Dk;

    new-instance v0, Lcom/android/tools/r8/internal/Dk;

    move-object/from16 v17, v0

    const-string v1, "TYPE_SINT64"

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/Dk;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/tools/r8/internal/Dk;->t:Lcom/android/tools/r8/internal/Dk;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    filled-new-array/range {v0 .. v17}, [Lcom/android/tools/r8/internal/Dk;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/Dk;->u:[Lcom/android/tools/r8/internal/Dk;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/tools/r8/internal/Dk;->b:I

    return-void
.end method

.method public static a(I)Lcom/android/tools/r8/internal/Dk;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/android/tools/r8/internal/Dk;->t:Lcom/android/tools/r8/internal/Dk;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/android/tools/r8/internal/Dk;->s:Lcom/android/tools/r8/internal/Dk;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/android/tools/r8/internal/Dk;->r:Lcom/android/tools/r8/internal/Dk;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/android/tools/r8/internal/Dk;->q:Lcom/android/tools/r8/internal/Dk;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/android/tools/r8/internal/Dk;->p:Lcom/android/tools/r8/internal/Dk;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/android/tools/r8/internal/Dk;->o:Lcom/android/tools/r8/internal/Dk;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/android/tools/r8/internal/Dk;->n:Lcom/android/tools/r8/internal/Dk;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/android/tools/r8/internal/Dk;->m:Lcom/android/tools/r8/internal/Dk;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/android/tools/r8/internal/Dk;->l:Lcom/android/tools/r8/internal/Dk;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/android/tools/r8/internal/Dk;->k:Lcom/android/tools/r8/internal/Dk;

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/android/tools/r8/internal/Dk;->j:Lcom/android/tools/r8/internal/Dk;

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/android/tools/r8/internal/Dk;->i:Lcom/android/tools/r8/internal/Dk;

    return-object p0

    :pswitch_c
    sget-object p0, Lcom/android/tools/r8/internal/Dk;->h:Lcom/android/tools/r8/internal/Dk;

    return-object p0

    :pswitch_d
    sget-object p0, Lcom/android/tools/r8/internal/Dk;->g:Lcom/android/tools/r8/internal/Dk;

    return-object p0

    :pswitch_e
    sget-object p0, Lcom/android/tools/r8/internal/Dk;->f:Lcom/android/tools/r8/internal/Dk;

    return-object p0

    :pswitch_f
    sget-object p0, Lcom/android/tools/r8/internal/Dk;->e:Lcom/android/tools/r8/internal/Dk;

    return-object p0

    :pswitch_10
    sget-object p0, Lcom/android/tools/r8/internal/Dk;->d:Lcom/android/tools/r8/internal/Dk;

    return-object p0

    :pswitch_11
    sget-object p0, Lcom/android/tools/r8/internal/Dk;->c:Lcom/android/tools/r8/internal/Dk;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/Dk;->b:I

    return v0
.end method
