.class public abstract enum Lcom/android/tools/r8/internal/NB;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/tools/r8/internal/NB;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/android/tools/r8/internal/NB;

.field public static final enum c:Lcom/android/tools/r8/internal/NB;

.field public static final enum d:Lcom/android/tools/r8/internal/NB;

.field public static final enum e:Lcom/android/tools/r8/internal/NB;

.field public static final enum f:Lcom/android/tools/r8/internal/NB;

.field public static final enum g:Lcom/android/tools/r8/internal/NB;

.field public static final synthetic h:[Lcom/android/tools/r8/internal/NB;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/android/tools/r8/internal/GB;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/GB;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/NB;->b:Lcom/android/tools/r8/internal/NB;

    new-instance v1, Lcom/android/tools/r8/internal/HB;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/HB;-><init>()V

    sput-object v1, Lcom/android/tools/r8/internal/NB;->c:Lcom/android/tools/r8/internal/NB;

    new-instance v2, Lcom/android/tools/r8/internal/IB;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/IB;-><init>()V

    sput-object v2, Lcom/android/tools/r8/internal/NB;->d:Lcom/android/tools/r8/internal/NB;

    new-instance v3, Lcom/android/tools/r8/internal/JB;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/JB;-><init>()V

    sput-object v3, Lcom/android/tools/r8/internal/NB;->e:Lcom/android/tools/r8/internal/NB;

    new-instance v4, Lcom/android/tools/r8/internal/KB;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/KB;-><init>()V

    sput-object v4, Lcom/android/tools/r8/internal/NB;->f:Lcom/android/tools/r8/internal/NB;

    new-instance v5, Lcom/android/tools/r8/internal/LB;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/LB;-><init>()V

    sput-object v5, Lcom/android/tools/r8/internal/NB;->g:Lcom/android/tools/r8/internal/NB;

    const/4 v6, 0x6

    new-array v6, v6, [Lcom/android/tools/r8/internal/NB;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const/4 v0, 0x4

    aput-object v4, v6, v0

    const/4 v0, 0x5

    aput-object v5, v6, v0

    sput-object v6, Lcom/android/tools/r8/internal/NB;->h:[Lcom/android/tools/r8/internal/NB;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static c()[Lcom/android/tools/r8/internal/NB;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/NB;->h:[Lcom/android/tools/r8/internal/NB;

    invoke-virtual {v0}, [Lcom/android/tools/r8/internal/NB;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/internal/NB;

    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract a(I)Z
.end method

.method public final b()Lcom/android/tools/r8/internal/NB;
    .locals 2

    sget-object v0, Lcom/android/tools/r8/internal/MB;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    const-string v1, "Unknown if condition type."

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v0, Lcom/android/tools/r8/internal/NB;->c:Lcom/android/tools/r8/internal/NB;

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/android/tools/r8/internal/NB;->d:Lcom/android/tools/r8/internal/NB;

    return-object v0

    :pswitch_2
    sget-object v0, Lcom/android/tools/r8/internal/NB;->e:Lcom/android/tools/r8/internal/NB;

    return-object v0

    :pswitch_3
    sget-object v0, Lcom/android/tools/r8/internal/NB;->f:Lcom/android/tools/r8/internal/NB;

    return-object v0

    :pswitch_4
    sget-object v0, Lcom/android/tools/r8/internal/NB;->b:Lcom/android/tools/r8/internal/NB;

    return-object v0

    :pswitch_5
    sget-object v0, Lcom/android/tools/r8/internal/NB;->g:Lcom/android/tools/r8/internal/NB;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
