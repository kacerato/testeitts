.class public final enum Lcom/google/android/filament/View$t;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "t"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/filament/View$t;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/filament/View$t;

.field public static ALL:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/google/android/filament/View$t;",
            ">;"
        }
    .end annotation
.end field

.field public static ALL_COLOR:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/google/android/filament/View$t;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum COLOR0:Lcom/google/android/filament/View$t;

.field public static final enum COLOR1:Lcom/google/android/filament/View$t;

.field public static final enum COLOR2:Lcom/google/android/filament/View$t;

.field public static final enum COLOR3:Lcom/google/android/filament/View$t;

.field public static final enum DEPTH:Lcom/google/android/filament/View$t;

.field public static DEPTH_STENCIL:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/google/android/filament/View$t;",
            ">;"
        }
    .end annotation
.end field

.field public static NONE:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/google/android/filament/View$t;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum STENCIL:Lcom/google/android/filament/View$t;


# instance fields
.field private mFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/google/android/filament/View$t;

    const-string v1, "COLOR0"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/filament/View$t;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/filament/View$t;->COLOR0:Lcom/google/android/filament/View$t;

    new-instance v1, Lcom/google/android/filament/View$t;

    const-string v2, "COLOR1"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/filament/View$t;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/filament/View$t;->COLOR1:Lcom/google/android/filament/View$t;

    new-instance v2, Lcom/google/android/filament/View$t;

    const-string v3, "COLOR2"

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/filament/View$t;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/filament/View$t;->COLOR2:Lcom/google/android/filament/View$t;

    new-instance v3, Lcom/google/android/filament/View$t;

    const/4 v4, 0x3

    const/16 v6, 0x8

    const-string v7, "COLOR3"

    invoke-direct {v3, v7, v4, v6}, Lcom/google/android/filament/View$t;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/filament/View$t;->COLOR3:Lcom/google/android/filament/View$t;

    new-instance v4, Lcom/google/android/filament/View$t;

    const-string v6, "DEPTH"

    const/16 v7, 0x10

    invoke-direct {v4, v6, v5, v7}, Lcom/google/android/filament/View$t;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/filament/View$t;->DEPTH:Lcom/google/android/filament/View$t;

    new-instance v5, Lcom/google/android/filament/View$t;

    const/4 v6, 0x5

    const/16 v7, 0x20

    const-string v8, "STENCIL"

    invoke-direct {v5, v8, v6, v7}, Lcom/google/android/filament/View$t;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/filament/View$t;->STENCIL:Lcom/google/android/filament/View$t;

    invoke-static {}, Lcom/google/android/filament/View$t;->a()[Lcom/google/android/filament/View$t;

    move-result-object v6

    sput-object v6, Lcom/google/android/filament/View$t;->$VALUES:[Lcom/google/android/filament/View$t;

    const-class v6, Lcom/google/android/filament/View$t;

    invoke-static {v6}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v6

    sput-object v6, Lcom/google/android/filament/View$t;->NONE:Ljava/util/EnumSet;

    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    sput-object v1, Lcom/google/android/filament/View$t;->ALL_COLOR:Ljava/util/EnumSet;

    invoke-static {v4, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    sput-object v1, Lcom/google/android/filament/View$t;->DEPTH_STENCIL:Ljava/util/EnumSet;

    invoke-static {v0, v5}, Ljava/util/EnumSet;->range(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/filament/View$t;->ALL:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/filament/View$t;->mFlags:I

    return-void
.end method

.method public static synthetic a()[Lcom/google/android/filament/View$t;
    .locals 6

    sget-object v0, Lcom/google/android/filament/View$t;->COLOR0:Lcom/google/android/filament/View$t;

    sget-object v1, Lcom/google/android/filament/View$t;->COLOR1:Lcom/google/android/filament/View$t;

    sget-object v2, Lcom/google/android/filament/View$t;->COLOR2:Lcom/google/android/filament/View$t;

    sget-object v3, Lcom/google/android/filament/View$t;->COLOR3:Lcom/google/android/filament/View$t;

    sget-object v4, Lcom/google/android/filament/View$t;->DEPTH:Lcom/google/android/filament/View$t;

    sget-object v5, Lcom/google/android/filament/View$t;->STENCIL:Lcom/google/android/filament/View$t;

    filled-new-array/range {v0 .. v5}, [Lcom/google/android/filament/View$t;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/util/EnumSet;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/google/android/filament/View$t;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/filament/View$t;

    iget v1, v1, Lcom/google/android/filament/View$t;->mFlags:I

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/filament/View$t;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/google/android/filament/View$t;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/filament/View$t;

    return-object p0
.end method

.method public static values()[Lcom/google/android/filament/View$t;
    .locals 1

    sget-object v0, Lcom/google/android/filament/View$t;->$VALUES:[Lcom/google/android/filament/View$t;

    invoke-virtual {v0}, [Lcom/google/android/filament/View$t;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/filament/View$t;

    return-object v0
.end method
