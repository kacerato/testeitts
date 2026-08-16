.class public enum Lcom/android/tools/r8/internal/Sx0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum d:Lcom/android/tools/r8/internal/Sx0;

.field public static final enum e:Lcom/android/tools/r8/internal/Sx0;

.field public static final enum f:Lcom/android/tools/r8/internal/Mx0;

.field public static final enum g:Lcom/android/tools/r8/internal/Ox0;

.field public static final enum h:Lcom/android/tools/r8/internal/Sx0;


# instance fields
.field public final b:Lcom/android/tools/r8/internal/Ux0;

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget-object v0, Lcom/android/tools/r8/internal/Ux0;->f:Lcom/android/tools/r8/internal/Ux0;

    sget-object v0, Lcom/android/tools/r8/internal/Ux0;->e:Lcom/android/tools/r8/internal/Ux0;

    sget-object v0, Lcom/android/tools/r8/internal/Ux0;->d:Lcom/android/tools/r8/internal/Ux0;

    new-instance v0, Lcom/android/tools/r8/internal/Sx0;

    sget-object v1, Lcom/android/tools/r8/internal/Ux0;->c:Lcom/android/tools/r8/internal/Ux0;

    const-string v2, "INT32"

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/android/tools/r8/internal/Sx0;-><init>(Ljava/lang/String;ILcom/android/tools/r8/internal/Ux0;I)V

    sput-object v0, Lcom/android/tools/r8/internal/Sx0;->d:Lcom/android/tools/r8/internal/Sx0;

    new-instance v0, Lcom/android/tools/r8/internal/Sx0;

    sget-object v1, Lcom/android/tools/r8/internal/Ux0;->g:Lcom/android/tools/r8/internal/Ux0;

    const-string v2, "BOOL"

    const/4 v3, 0x7

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/android/tools/r8/internal/Sx0;-><init>(Ljava/lang/String;ILcom/android/tools/r8/internal/Ux0;I)V

    sput-object v0, Lcom/android/tools/r8/internal/Sx0;->e:Lcom/android/tools/r8/internal/Sx0;

    new-instance v0, Lcom/android/tools/r8/internal/Kx0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Kx0;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/Mx0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Mx0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Sx0;->f:Lcom/android/tools/r8/internal/Mx0;

    new-instance v0, Lcom/android/tools/r8/internal/Ox0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Ox0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Sx0;->g:Lcom/android/tools/r8/internal/Ox0;

    new-instance v0, Lcom/android/tools/r8/internal/Qx0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Qx0;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/Sx0;

    sget-object v1, Lcom/android/tools/r8/internal/Ux0;->j:Lcom/android/tools/r8/internal/Ux0;

    const-string v2, "ENUM"

    const/16 v3, 0xd

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/android/tools/r8/internal/Sx0;-><init>(Ljava/lang/String;ILcom/android/tools/r8/internal/Ux0;I)V

    sput-object v0, Lcom/android/tools/r8/internal/Sx0;->h:Lcom/android/tools/r8/internal/Sx0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/android/tools/r8/internal/Ux0;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/android/tools/r8/internal/Sx0;->b:Lcom/android/tools/r8/internal/Ux0;

    .line 3
    iput p4, p0, Lcom/android/tools/r8/internal/Sx0;->c:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/android/tools/r8/internal/Ux0;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5
    iput-object p3, p0, Lcom/android/tools/r8/internal/Sx0;->b:Lcom/android/tools/r8/internal/Ux0;

    .line 6
    iput p4, p0, Lcom/android/tools/r8/internal/Sx0;->c:I

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/Kx0;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
