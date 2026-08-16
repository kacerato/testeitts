.class public final enum Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DangerousMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Contains:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

.field public static final enum ContainsAll:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

.field public static final enum ContainsKey:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

.field public static final enum ContainsValue:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

.field private static final synthetic ENUM$VALUES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

.field public static final enum Equals:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

.field public static final enum Get:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

.field public static final enum IndexOf:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

.field public static final enum LastIndexOf:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

.field public static final enum Remove:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

.field public static final enum RemoveAll:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

.field public static final enum RetainAll:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    const-string v1, "Contains"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;->Contains:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    const-string v2, "Remove"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;->Remove:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    const-string v3, "RemoveAll"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;->RemoveAll:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    new-instance v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    const-string v4, "ContainsAll"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;->ContainsAll:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    new-instance v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    const-string v5, "RetainAll"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;->RetainAll:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    new-instance v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    const-string v6, "Get"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;->Get:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    new-instance v6, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    const-string v7, "ContainsKey"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;->ContainsKey:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    new-instance v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    const-string v8, "ContainsValue"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;->ContainsValue:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    new-instance v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    const-string v9, "IndexOf"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;->IndexOf:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    new-instance v9, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    const-string v10, "LastIndexOf"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;->LastIndexOf:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    new-instance v10, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    const-string v11, "Equals"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;->Equals:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    filled-new-array/range {v0 .. v10}, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;->ENUM$VALUES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static detectSelector([C)Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;
    .locals 2

    const/4 v0, 0x0

    aget-char v0, p0, v0

    const/16 v1, 0x63

    if-eq v0, v1, :cond_7

    const/16 v1, 0x65

    if-eq v0, v1, :cond_6

    const/16 v1, 0x67

    if-eq v0, v1, :cond_5

    const/16 v1, 0x69

    if-eq v0, v1, :cond_4

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_3

    const/16 v1, 0x72

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->REMOVE:[C

    invoke-static {v0, p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->prefixEquals([C[C)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;->Remove:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    return-object p0

    :cond_1
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->REMOVE_ALL:[C

    invoke-static {p0, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p0

    if-eqz p0, :cond_b

    sget-object p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;->RemoveAll:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    return-object p0

    :cond_2
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->RETAIN_ALL:[C

    invoke-static {p0, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p0

    if-eqz p0, :cond_b

    sget-object p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;->RetainAll:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    return-object p0

    :cond_3
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->LAST_INDEX_OF:[C

    invoke-static {p0, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p0

    if-eqz p0, :cond_b

    sget-object p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;->LastIndexOf:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    return-object p0

    :cond_4
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->INDEX_OF:[C

    invoke-static {p0, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p0

    if-eqz p0, :cond_b

    sget-object p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;->IndexOf:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    return-object p0

    :cond_5
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->GET:[C

    invoke-static {p0, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p0

    if-eqz p0, :cond_b

    sget-object p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;->Get:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    return-object p0

    :cond_6
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->EQUALS:[C

    invoke-static {p0, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p0

    if-eqz p0, :cond_b

    sget-object p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;->Equals:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    return-object p0

    :cond_7
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->CONTAINS:[C

    invoke-static {v0, p0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->prefixEquals([C[C)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {p0, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;->Contains:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    return-object p0

    :cond_8
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->CONTAINS_ALL:[C

    invoke-static {p0, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;->ContainsAll:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    return-object p0

    :cond_9
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->CONTAINS_KEY:[C

    invoke-static {p0, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;->ContainsKey:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    return-object p0

    :cond_a
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->CONTAINS_VALUE:[C

    invoke-static {p0, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p0

    if-eqz p0, :cond_b

    sget-object p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;->ContainsValue:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    return-object p0

    :cond_b
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;
    .locals 1

    const-class v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    return-object p0
.end method

.method public static values()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;->ENUM$VALUES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    array-length v1, v0

    new-array v2, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
