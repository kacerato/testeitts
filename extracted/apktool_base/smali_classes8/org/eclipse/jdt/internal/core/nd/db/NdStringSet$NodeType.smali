.class final enum Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NodeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;

.field public static final enum Item:Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;

.field public static final enum Next:Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;

.field public static final enum _last:Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;

.field public static final sizeof:I


# instance fields
.field public final offset:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;

    const-string v1, "Next"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;->Next:Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;

    new-instance v1, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;

    const-string v2, "Item"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;->Item:Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;

    new-instance v2, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;

    const-string v3, "_last"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;->_last:Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;

    filled-new-array {v0, v1, v2}, [Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;->ENUM$VALUES:[Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;

    iget-wide v0, v2, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;->offset:J

    long-to-int v0, v0

    sput v0, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;->sizeof:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    int-to-long p1, p1

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;->offset:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;
    .locals 1

    const-class v0, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;

    return-object p0
.end method

.method public static values()[Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;
    .locals 4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;->ENUM$VALUES:[Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;

    array-length v1, v0

    new-array v2, v1, [Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public get(Lorg/eclipse/jdt/internal/core/nd/db/Database;J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;->offset:J

    add-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getRecPtr(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public put(Lorg/eclipse/jdt/internal/core/nd/db/Database;JJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/NdStringSet$NodeType;->offset:J

    add-long/2addr p2, v0

    invoke-virtual {p1, p2, p3, p4, p5}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->putRecPtr(JJ)V

    return-void
.end method
