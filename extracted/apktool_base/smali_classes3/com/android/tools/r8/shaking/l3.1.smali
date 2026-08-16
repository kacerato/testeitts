.class public abstract enum Lcom/android/tools/r8/shaking/l3;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/tools/r8/shaking/l3;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/android/tools/r8/shaking/l3;

.field public static final enum c:Lcom/android/tools/r8/shaking/l3;

.field public static final enum d:Lcom/android/tools/r8/shaking/i3;

.field public static final enum e:Lcom/android/tools/r8/shaking/j3;

.field public static final synthetic f:[Lcom/android/tools/r8/shaking/l3;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/tools/r8/shaking/g3;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/g3;-><init>()V

    sput-object v0, Lcom/android/tools/r8/shaking/l3;->b:Lcom/android/tools/r8/shaking/l3;

    new-instance v1, Lcom/android/tools/r8/shaking/h3;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/h3;-><init>()V

    sput-object v1, Lcom/android/tools/r8/shaking/l3;->c:Lcom/android/tools/r8/shaking/l3;

    new-instance v2, Lcom/android/tools/r8/shaking/i3;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/i3;-><init>()V

    sput-object v2, Lcom/android/tools/r8/shaking/l3;->d:Lcom/android/tools/r8/shaking/i3;

    new-instance v3, Lcom/android/tools/r8/shaking/j3;

    invoke-direct {v3}, Lcom/android/tools/r8/shaking/j3;-><init>()V

    sput-object v3, Lcom/android/tools/r8/shaking/l3;->e:Lcom/android/tools/r8/shaking/j3;

    const/4 v4, 0x4

    new-array v4, v4, [Lcom/android/tools/r8/shaking/l3;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    sput-object v4, Lcom/android/tools/r8/shaking/l3;->f:[Lcom/android/tools/r8/shaking/l3;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/android/tools/r8/graph/E0;)Z
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/android/tools/r8/shaking/k3;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string v0, "interface"

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid proguard class type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "enum"

    return-object v0

    :cond_2
    const-string v0, "class"

    return-object v0

    :cond_3
    const-string v0, "@interface"

    return-object v0
.end method
