.class public enum Lcom/android/tools/r8/internal/Tx0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum d:Lcom/android/tools/r8/internal/Nx0;

.field public static final enum e:Lcom/android/tools/r8/internal/Tx0;

.field public static final synthetic f:[Lcom/android/tools/r8/internal/Tx0;


# instance fields
.field public final b:Lcom/android/tools/r8/internal/Vx0;

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 22

    new-instance v0, Lcom/android/tools/r8/internal/Tx0;

    sget-object v1, Lcom/android/tools/r8/internal/Vx0;->e:Lcom/android/tools/r8/internal/Vx0;

    const-string v2, "DOUBLE"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/android/tools/r8/internal/Tx0;-><init>(Ljava/lang/String;ILcom/android/tools/r8/internal/Vx0;I)V

    new-instance v1, Lcom/android/tools/r8/internal/Tx0;

    sget-object v2, Lcom/android/tools/r8/internal/Vx0;->d:Lcom/android/tools/r8/internal/Vx0;

    const-string v5, "FLOAT"

    const/4 v6, 0x5

    invoke-direct {v1, v5, v4, v2, v6}, Lcom/android/tools/r8/internal/Tx0;-><init>(Ljava/lang/String;ILcom/android/tools/r8/internal/Vx0;I)V

    new-instance v2, Lcom/android/tools/r8/internal/Tx0;

    sget-object v5, Lcom/android/tools/r8/internal/Vx0;->c:Lcom/android/tools/r8/internal/Vx0;

    const-string v7, "INT64"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v5, v3}, Lcom/android/tools/r8/internal/Tx0;-><init>(Ljava/lang/String;ILcom/android/tools/r8/internal/Vx0;I)V

    new-instance v7, Lcom/android/tools/r8/internal/Tx0;

    const-string v9, "UINT64"

    const/4 v10, 0x3

    invoke-direct {v7, v9, v10, v5, v3}, Lcom/android/tools/r8/internal/Tx0;-><init>(Ljava/lang/String;ILcom/android/tools/r8/internal/Vx0;I)V

    new-instance v9, Lcom/android/tools/r8/internal/Tx0;

    sget-object v11, Lcom/android/tools/r8/internal/Vx0;->b:Lcom/android/tools/r8/internal/Vx0;

    const-string v12, "INT32"

    const/4 v13, 0x4

    invoke-direct {v9, v12, v13, v11, v3}, Lcom/android/tools/r8/internal/Tx0;-><init>(Ljava/lang/String;ILcom/android/tools/r8/internal/Vx0;I)V

    new-instance v12, Lcom/android/tools/r8/internal/Tx0;

    const-string v14, "FIXED64"

    invoke-direct {v12, v14, v6, v5, v4}, Lcom/android/tools/r8/internal/Tx0;-><init>(Ljava/lang/String;ILcom/android/tools/r8/internal/Vx0;I)V

    new-instance v14, Lcom/android/tools/r8/internal/Tx0;

    const-string v15, "FIXED32"

    const/4 v13, 0x6

    invoke-direct {v14, v15, v13, v11, v6}, Lcom/android/tools/r8/internal/Tx0;-><init>(Ljava/lang/String;ILcom/android/tools/r8/internal/Vx0;I)V

    new-instance v15, Lcom/android/tools/r8/internal/Tx0;

    sget-object v13, Lcom/android/tools/r8/internal/Vx0;->f:Lcom/android/tools/r8/internal/Vx0;

    const-string v10, "BOOL"

    const/4 v8, 0x7

    invoke-direct {v15, v10, v8, v13, v3}, Lcom/android/tools/r8/internal/Tx0;-><init>(Ljava/lang/String;ILcom/android/tools/r8/internal/Vx0;I)V

    new-instance v10, Lcom/android/tools/r8/internal/Lx0;

    invoke-direct {v10}, Lcom/android/tools/r8/internal/Lx0;-><init>()V

    new-instance v13, Lcom/android/tools/r8/internal/Nx0;

    sget-object v8, Lcom/android/tools/r8/internal/Vx0;->j:Lcom/android/tools/r8/internal/Vx0;

    invoke-direct {v13, v8}, Lcom/android/tools/r8/internal/Nx0;-><init>(Lcom/android/tools/r8/internal/Vx0;)V

    sput-object v13, Lcom/android/tools/r8/internal/Tx0;->d:Lcom/android/tools/r8/internal/Nx0;

    new-instance v4, Lcom/android/tools/r8/internal/Px0;

    invoke-direct {v4, v8}, Lcom/android/tools/r8/internal/Px0;-><init>(Lcom/android/tools/r8/internal/Vx0;)V

    new-instance v8, Lcom/android/tools/r8/internal/Rx0;

    sget-object v6, Lcom/android/tools/r8/internal/Vx0;->h:Lcom/android/tools/r8/internal/Vx0;

    invoke-direct {v8, v6}, Lcom/android/tools/r8/internal/Rx0;-><init>(Lcom/android/tools/r8/internal/Vx0;)V

    new-instance v6, Lcom/android/tools/r8/internal/Tx0;

    move-object/from16 v16, v8

    const-string v8, "UINT32"

    move-object/from16 v17, v4

    const/16 v4, 0xc

    invoke-direct {v6, v8, v4, v11, v3}, Lcom/android/tools/r8/internal/Tx0;-><init>(Ljava/lang/String;ILcom/android/tools/r8/internal/Vx0;I)V

    new-instance v8, Lcom/android/tools/r8/internal/Tx0;

    sget-object v4, Lcom/android/tools/r8/internal/Vx0;->i:Lcom/android/tools/r8/internal/Vx0;

    move-object/from16 v18, v6

    const-string v6, "ENUM"

    move-object/from16 v19, v13

    const/16 v13, 0xd

    invoke-direct {v8, v6, v13, v4, v3}, Lcom/android/tools/r8/internal/Tx0;-><init>(Ljava/lang/String;ILcom/android/tools/r8/internal/Vx0;I)V

    sput-object v8, Lcom/android/tools/r8/internal/Tx0;->e:Lcom/android/tools/r8/internal/Tx0;

    new-instance v4, Lcom/android/tools/r8/internal/Tx0;

    const-string v6, "SFIXED32"

    const/16 v13, 0xe

    const/4 v3, 0x5

    invoke-direct {v4, v6, v13, v11, v3}, Lcom/android/tools/r8/internal/Tx0;-><init>(Ljava/lang/String;ILcom/android/tools/r8/internal/Vx0;I)V

    new-instance v3, Lcom/android/tools/r8/internal/Tx0;

    const-string v6, "SFIXED64"

    const/16 v13, 0xf

    move-object/from16 v20, v4

    const/4 v4, 0x1

    invoke-direct {v3, v6, v13, v5, v4}, Lcom/android/tools/r8/internal/Tx0;-><init>(Ljava/lang/String;ILcom/android/tools/r8/internal/Vx0;I)V

    new-instance v4, Lcom/android/tools/r8/internal/Tx0;

    const-string v6, "SINT32"

    const/16 v13, 0x10

    move-object/from16 v21, v3

    const/4 v3, 0x0

    invoke-direct {v4, v6, v13, v11, v3}, Lcom/android/tools/r8/internal/Tx0;-><init>(Ljava/lang/String;ILcom/android/tools/r8/internal/Vx0;I)V

    new-instance v6, Lcom/android/tools/r8/internal/Tx0;

    const-string v11, "SINT64"

    const/16 v13, 0x11

    invoke-direct {v6, v11, v13, v5, v3}, Lcom/android/tools/r8/internal/Tx0;-><init>(Ljava/lang/String;ILcom/android/tools/r8/internal/Vx0;I)V

    const/16 v5, 0x12

    new-array v5, v5, [Lcom/android/tools/r8/internal/Tx0;

    aput-object v0, v5, v3

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v7, v5, v0

    const/4 v0, 0x4

    aput-object v9, v5, v0

    const/4 v0, 0x5

    aput-object v12, v5, v0

    const/4 v0, 0x6

    aput-object v14, v5, v0

    const/4 v0, 0x7

    aput-object v15, v5, v0

    const/16 v0, 0x8

    aput-object v10, v5, v0

    const/16 v0, 0x9

    aput-object v19, v5, v0

    const/16 v0, 0xa

    aput-object v17, v5, v0

    const/16 v0, 0xb

    aput-object v16, v5, v0

    const/16 v0, 0xc

    aput-object v18, v5, v0

    const/16 v0, 0xd

    aput-object v8, v5, v0

    const/16 v0, 0xe

    aput-object v20, v5, v0

    const/16 v0, 0xf

    aput-object v21, v5, v0

    const/16 v0, 0x10

    aput-object v4, v5, v0

    aput-object v6, v5, v13

    sput-object v5, Lcom/android/tools/r8/internal/Tx0;->f:[Lcom/android/tools/r8/internal/Tx0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/android/tools/r8/internal/Vx0;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/android/tools/r8/internal/Tx0;->b:Lcom/android/tools/r8/internal/Vx0;

    .line 3
    iput p4, p0, Lcom/android/tools/r8/internal/Tx0;->c:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/android/tools/r8/internal/Vx0;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5
    iput-object p3, p0, Lcom/android/tools/r8/internal/Tx0;->b:Lcom/android/tools/r8/internal/Vx0;

    .line 6
    iput p4, p0, Lcom/android/tools/r8/internal/Tx0;->c:I

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/Lx0;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
