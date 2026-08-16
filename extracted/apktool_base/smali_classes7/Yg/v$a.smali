.class public final enum LYg/v$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LYg/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LYg/v$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LCf/a;

.field private static final synthetic $VALUES:[LYg/v$a;

.field public static final enum BOTTOM:LYg/v$a;

.field public static final enum BOTTOM_LEFT:LYg/v$a;

.field public static final enum BOTTOM_RIGHT:LYg/v$a;

.field public static final enum LEFT:LYg/v$a;

.field public static final enum NORMAL:LYg/v$a;

.field public static final enum RIGHT:LYg/v$a;

.field public static final enum TOP:LYg/v$a;

.field public static final enum TOP_LEFT:LYg/v$a;

.field public static final enum TOP_RIGHT:LYg/v$a;


# instance fields
.field private final divHeight:I

.field private final divWidth:I

.field private final isHalf:Z

.field private final maxDegree:I

.field private final minDegree:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v8, LYg/v$a;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x2d0

    const/4 v5, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, LYg/v$a;-><init>(Ljava/lang/String;IIIZII)V

    sput-object v8, LYg/v$a;->NORMAL:LYg/v$a;

    new-instance v0, LYg/v$a;

    const/4 v15, 0x2

    const/16 v16, 0x1

    const-string v10, "LEFT"

    const/4 v11, 0x1

    const/16 v12, 0x5a

    const/16 v13, 0x10e

    const/4 v14, 0x1

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, LYg/v$a;-><init>(Ljava/lang/String;IIIZII)V

    sput-object v0, LYg/v$a;->LEFT:LYg/v$a;

    new-instance v0, LYg/v$a;

    const/4 v8, 0x2

    const-string v2, "TOP"

    const/4 v3, 0x2

    const/16 v4, 0xb4

    const/16 v5, 0x168

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, LYg/v$a;-><init>(Ljava/lang/String;IIIZII)V

    sput-object v0, LYg/v$a;->TOP:LYg/v$a;

    new-instance v0, LYg/v$a;

    const-string v10, "RIGHT"

    const/4 v11, 0x3

    const/16 v12, 0x10e

    const/16 v13, 0x1c2

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, LYg/v$a;-><init>(Ljava/lang/String;IIIZII)V

    sput-object v0, LYg/v$a;->RIGHT:LYg/v$a;

    new-instance v0, LYg/v$a;

    const-string v2, "BOTTOM"

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/16 v5, 0xb4

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, LYg/v$a;-><init>(Ljava/lang/String;IIIZII)V

    sput-object v0, LYg/v$a;->BOTTOM:LYg/v$a;

    new-instance v0, LYg/v$a;

    const/4 v15, 0x1

    const-string v10, "TOP_LEFT"

    const/4 v11, 0x5

    const/16 v12, 0xb4

    const/16 v13, 0x10e

    const/4 v14, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, LYg/v$a;-><init>(Ljava/lang/String;IIIZII)V

    sput-object v0, LYg/v$a;->TOP_LEFT:LYg/v$a;

    new-instance v0, LYg/v$a;

    const/4 v8, 0x1

    const-string v2, "TOP_RIGHT"

    const/4 v3, 0x6

    const/16 v4, 0x10e

    const/16 v5, 0x168

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, LYg/v$a;-><init>(Ljava/lang/String;IIIZII)V

    sput-object v0, LYg/v$a;->TOP_RIGHT:LYg/v$a;

    new-instance v0, LYg/v$a;

    const-string v10, "BOTTOM_RIGHT"

    const/4 v11, 0x7

    const/4 v12, 0x0

    const/16 v13, 0x5a

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, LYg/v$a;-><init>(Ljava/lang/String;IIIZII)V

    sput-object v0, LYg/v$a;->BOTTOM_RIGHT:LYg/v$a;

    new-instance v0, LYg/v$a;

    const-string v2, "BOTTOM_LEFT"

    const/16 v3, 0x8

    const/16 v4, 0x5a

    const/16 v5, 0xb4

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, LYg/v$a;-><init>(Ljava/lang/String;IIIZII)V

    sput-object v0, LYg/v$a;->BOTTOM_LEFT:LYg/v$a;

    invoke-static {}, LYg/v$a;->a()[LYg/v$a;

    move-result-object v0

    sput-object v0, LYg/v$a;->$VALUES:[LYg/v$a;

    invoke-static {v0}, LCf/c;->c([Ljava/lang/Enum;)LCf/a;

    move-result-object v0

    sput-object v0, LYg/v$a;->$ENTRIES:LCf/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIZII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZII)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, LYg/v$a;->minDegree:I

    iput p4, p0, LYg/v$a;->maxDegree:I

    iput-boolean p5, p0, LYg/v$a;->isHalf:Z

    iput p6, p0, LYg/v$a;->divWidth:I

    iput p7, p0, LYg/v$a;->divHeight:I

    return-void
.end method

.method public static final synthetic a()[LYg/v$a;
    .locals 9

    sget-object v0, LYg/v$a;->NORMAL:LYg/v$a;

    sget-object v1, LYg/v$a;->LEFT:LYg/v$a;

    sget-object v2, LYg/v$a;->TOP:LYg/v$a;

    sget-object v3, LYg/v$a;->RIGHT:LYg/v$a;

    sget-object v4, LYg/v$a;->BOTTOM:LYg/v$a;

    sget-object v5, LYg/v$a;->TOP_LEFT:LYg/v$a;

    sget-object v6, LYg/v$a;->TOP_RIGHT:LYg/v$a;

    sget-object v7, LYg/v$a;->BOTTOM_RIGHT:LYg/v$a;

    sget-object v8, LYg/v$a;->BOTTOM_LEFT:LYg/v$a;

    filled-new-array/range {v0 .. v8}, [LYg/v$a;

    move-result-object v0

    return-object v0
.end method

.method public static d()LCf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LCf/a<",
            "LYg/v$a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, LYg/v$a;->$ENTRIES:LCf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LYg/v$a;
    .locals 1

    const-class v0, LYg/v$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LYg/v$a;

    return-object p0
.end method

.method public static values()[LYg/v$a;
    .locals 1

    sget-object v0, LYg/v$a;->$VALUES:[LYg/v$a;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LYg/v$a;

    return-object v0
.end method


# virtual methods
.method public final b()I
    .locals 1

    iget v0, p0, LYg/v$a;->divHeight:I

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, LYg/v$a;->divWidth:I

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, LYg/v$a;->maxDegree:I

    return v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, LYg/v$a;->minDegree:I

    return v0
.end method

.method public final h()Z
    .locals 1

    sget-object v0, LYg/v$a;->BOTTOM:LYg/v$a;

    if-eq p0, v0, :cond_1

    sget-object v0, LYg/v$a;->BOTTOM_LEFT:LYg/v$a;

    if-eq p0, v0, :cond_1

    sget-object v0, LYg/v$a;->BOTTOM_RIGHT:LYg/v$a;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, LYg/v$a;->isHalf:Z

    return v0
.end method

.method public final j()Z
    .locals 1

    sget-object v0, LYg/v$a;->LEFT:LYg/v$a;

    if-eq p0, v0, :cond_1

    sget-object v0, LYg/v$a;->TOP_LEFT:LYg/v$a;

    if-eq p0, v0, :cond_1

    sget-object v0, LYg/v$a;->BOTTOM_LEFT:LYg/v$a;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final k()Z
    .locals 1

    iget-boolean v0, p0, LYg/v$a;->isHalf:Z

    if-nez v0, :cond_0

    sget-object v0, LYg/v$a;->NORMAL:LYg/v$a;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final o()Z
    .locals 1

    sget-object v0, LYg/v$a;->RIGHT:LYg/v$a;

    if-eq p0, v0, :cond_1

    sget-object v0, LYg/v$a;->TOP_RIGHT:LYg/v$a;

    if-eq p0, v0, :cond_1

    sget-object v0, LYg/v$a;->BOTTOM_RIGHT:LYg/v$a;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final q()Z
    .locals 1

    sget-object v0, LYg/v$a;->TOP:LYg/v$a;

    if-eq p0, v0, :cond_1

    sget-object v0, LYg/v$a;->TOP_LEFT:LYg/v$a;

    if-eq p0, v0, :cond_1

    sget-object v0, LYg/v$a;->TOP_RIGHT:LYg/v$a;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
