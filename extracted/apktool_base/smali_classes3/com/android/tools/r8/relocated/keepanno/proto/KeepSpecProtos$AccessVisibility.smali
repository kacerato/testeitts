.class public final enum Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/QI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AccessVisibility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;",
        ">;",
        "Lcom/android/tools/r8/internal/QI;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;

.field public static final enum ACCESS_PACKAGE_PRIVATE:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;

.field public static final ACCESS_PACKAGE_PRIVATE_VALUE:I = 0x3

.field public static final enum ACCESS_PRIVATE:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;

.field public static final ACCESS_PRIVATE_VALUE:I = 0x4

.field public static final enum ACCESS_PROTECTED:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;

.field public static final ACCESS_PROTECTED_VALUE:I = 0x2

.field public static final enum ACCESS_PUBLIC:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;

.field public static final ACCESS_PUBLIC_VALUE:I = 0x1

.field public static final enum ACCESS_UNSPECIFIED:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;

.field public static final ACCESS_UNSPECIFIED_VALUE:I

.field public static final enum UNRECOGNIZED:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;

.field private static final VALUES:[Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;

.field private static final internalValueMap:Lcom/android/tools/r8/internal/RI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/tools/r8/internal/RI;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;

    const-string v1, "ACCESS_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;->ACCESS_UNSPECIFIED:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;

    new-instance v1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;

    const-string v2, "ACCESS_PUBLIC"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;->ACCESS_PUBLIC:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;

    new-instance v2, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;

    const-string v3, "ACCESS_PROTECTED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;->ACCESS_PROTECTED:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;

    new-instance v3, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;

    const-string v4, "ACCESS_PACKAGE_PRIVATE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;->ACCESS_PACKAGE_PRIVATE:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;

    new-instance v4, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;

    const-string v5, "ACCESS_PRIVATE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;->ACCESS_PRIVATE:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;

    new-instance v5, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;

    const/4 v6, 0x5

    const/4 v7, -0x1

    const-string v8, "UNRECOGNIZED"

    invoke-direct {v5, v8, v6, v7}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;->UNRECOGNIZED:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;

    filled-new-array/range {v0 .. v5}, [Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;->$VALUES:[Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;

    new-instance v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility$1;

    invoke-direct {v0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility$1;-><init>()V

    sput-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;->internalValueMap:Lcom/android/tools/r8/internal/RI;

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;->values()[Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;->VALUES:[Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;->ACCESS_PRIVATE:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;

    return-object p0

    :cond_1
    sget-object p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;->ACCESS_PACKAGE_PRIVATE:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;

    return-object p0

    :cond_2
    sget-object p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;->ACCESS_PROTECTED:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;

    return-object p0

    :cond_3
    sget-object p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;->ACCESS_PUBLIC:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;

    return-object p0

    :cond_4
    sget-object p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;->ACCESS_UNSPECIFIED:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;

    return-object p0
.end method

.method public static final getDescriptor()Lcom/android/tools/r8/internal/Hl;
    .locals 2

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos;->getDescriptor()Lcom/android/tools/r8/internal/Pl;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/Pl;->d:[Lcom/android/tools/r8/internal/Hl;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Hl;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/android/tools/r8/internal/RI;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/r8/internal/RI;"
        }
    .end annotation

    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;->internalValueMap:Lcom/android/tools/r8/internal/RI;

    return-object v0
.end method

.method public static valueOf(I)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;->forNumber(I)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/android/tools/r8/internal/Kl;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/Kl;->e:Lcom/android/tools/r8/internal/Hl;

    .line 4
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;->getDescriptor()Lcom/android/tools/r8/internal/Hl;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 5
    iget p0, p0, Lcom/android/tools/r8/internal/Kl;->b:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 6
    sget-object p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;->UNRECOGNIZED:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;

    return-object p0

    .line 7
    :cond_0
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;->VALUES:[Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;

    aget-object p0, v0, p0

    return-object p0

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;
    .locals 1

    .line 1
    const-class v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;

    return-object p0
.end method

.method public static values()[Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;->$VALUES:[Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;

    invoke-virtual {v0}, [Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/android/tools/r8/internal/Hl;
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;->getDescriptor()Lcom/android/tools/r8/internal/Hl;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 2

    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;->UNRECOGNIZED:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;

    if-eq p0, v0, :cond_0

    iget v0, p0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;->value:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getValueDescriptor()Lcom/android/tools/r8/internal/Kl;
    .locals 2

    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;->UNRECOGNIZED:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;

    if-eq p0, v0, :cond_0

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AccessVisibility;->getDescriptor()Lcom/android/tools/r8/internal/Hl;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/internal/Hl;->e:[Lcom/android/tools/r8/internal/Kl;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Kl;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t get the descriptor of an unrecognized enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
