.class public final enum Lcom/android/tools/r8/internal/vh0;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/QI;


# static fields
.field public static final enum c:Lcom/android/tools/r8/internal/vh0;

.field public static final enum d:Lcom/android/tools/r8/internal/vh0;

.field public static final enum e:Lcom/android/tools/r8/internal/vh0;

.field public static final enum f:Lcom/android/tools/r8/internal/vh0;

.field public static final enum g:Lcom/android/tools/r8/internal/vh0;

.field public static final enum h:Lcom/android/tools/r8/internal/vh0;

.field public static final enum i:Lcom/android/tools/r8/internal/vh0;

.field public static final enum j:Lcom/android/tools/r8/internal/vh0;

.field public static final enum k:Lcom/android/tools/r8/internal/vh0;

.field public static final enum l:Lcom/android/tools/r8/internal/vh0;

.field public static final enum m:Lcom/android/tools/r8/internal/vh0;


# instance fields
.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/vh0;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/tools/r8/internal/vh0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/tools/r8/internal/vh0;->c:Lcom/android/tools/r8/internal/vh0;

    new-instance v0, Lcom/android/tools/r8/internal/vh0;

    const-string v1, "PUBLIC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/android/tools/r8/internal/vh0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/tools/r8/internal/vh0;->d:Lcom/android/tools/r8/internal/vh0;

    new-instance v0, Lcom/android/tools/r8/internal/vh0;

    const-string v1, "SYSTEM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/android/tools/r8/internal/vh0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/tools/r8/internal/vh0;->e:Lcom/android/tools/r8/internal/vh0;

    new-instance v0, Lcom/android/tools/r8/internal/vh0;

    const-string v1, "VENDOR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/android/tools/r8/internal/vh0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/tools/r8/internal/vh0;->f:Lcom/android/tools/r8/internal/vh0;

    new-instance v0, Lcom/android/tools/r8/internal/vh0;

    const-string v1, "PRODUCT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/android/tools/r8/internal/vh0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/tools/r8/internal/vh0;->g:Lcom/android/tools/r8/internal/vh0;

    new-instance v0, Lcom/android/tools/r8/internal/vh0;

    const-string v1, "SIGNATURE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/android/tools/r8/internal/vh0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/tools/r8/internal/vh0;->h:Lcom/android/tools/r8/internal/vh0;

    new-instance v0, Lcom/android/tools/r8/internal/vh0;

    const-string v1, "ODM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/android/tools/r8/internal/vh0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/tools/r8/internal/vh0;->i:Lcom/android/tools/r8/internal/vh0;

    new-instance v0, Lcom/android/tools/r8/internal/vh0;

    const-string v1, "OEM"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lcom/android/tools/r8/internal/vh0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/tools/r8/internal/vh0;->j:Lcom/android/tools/r8/internal/vh0;

    new-instance v0, Lcom/android/tools/r8/internal/vh0;

    const-string v1, "ACTOR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Lcom/android/tools/r8/internal/vh0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/tools/r8/internal/vh0;->k:Lcom/android/tools/r8/internal/vh0;

    new-instance v0, Lcom/android/tools/r8/internal/vh0;

    const-string v1, "CONFIG_SIGNATURE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v2}, Lcom/android/tools/r8/internal/vh0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/tools/r8/internal/vh0;->l:Lcom/android/tools/r8/internal/vh0;

    new-instance v0, Lcom/android/tools/r8/internal/vh0;

    const/16 v1, 0xa

    const/4 v2, -0x1

    const-string v3, "UNRECOGNIZED"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/tools/r8/internal/vh0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/tools/r8/internal/vh0;->m:Lcom/android/tools/r8/internal/vh0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/tools/r8/internal/vh0;->b:I

    return-void
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    sget-object v0, Lcom/android/tools/r8/internal/vh0;->m:Lcom/android/tools/r8/internal/vh0;

    if-eq p0, v0, :cond_0

    iget v0, p0, Lcom/android/tools/r8/internal/vh0;->b:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
