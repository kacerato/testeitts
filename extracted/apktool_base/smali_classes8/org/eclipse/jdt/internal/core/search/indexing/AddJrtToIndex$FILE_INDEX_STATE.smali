.class final enum Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$FILE_INDEX_STATE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FILE_INDEX_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$FILE_INDEX_STATE;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DELETED:Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$FILE_INDEX_STATE;

.field private static final synthetic ENUM$VALUES:[Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$FILE_INDEX_STATE;

.field public static final enum EXISTS:Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$FILE_INDEX_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$FILE_INDEX_STATE;

    const-string v1, "EXISTS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$FILE_INDEX_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$FILE_INDEX_STATE;->EXISTS:Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$FILE_INDEX_STATE;

    new-instance v1, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$FILE_INDEX_STATE;

    const-string v2, "DELETED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$FILE_INDEX_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$FILE_INDEX_STATE;->DELETED:Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$FILE_INDEX_STATE;

    filled-new-array {v0, v1}, [Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$FILE_INDEX_STATE;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$FILE_INDEX_STATE;->ENUM$VALUES:[Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$FILE_INDEX_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$FILE_INDEX_STATE;
    .locals 1

    const-class v0, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$FILE_INDEX_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$FILE_INDEX_STATE;

    return-object p0
.end method

.method public static values()[Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$FILE_INDEX_STATE;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$FILE_INDEX_STATE;->ENUM$VALUES:[Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$FILE_INDEX_STATE;

    array-length v1, v0

    new-array v2, v1, [Lorg/eclipse/jdt/internal/core/search/indexing/AddJrtToIndex$FILE_INDEX_STATE;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
