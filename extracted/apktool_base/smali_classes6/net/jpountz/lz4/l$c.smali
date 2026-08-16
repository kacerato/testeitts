.class public final enum Lnet/jpountz/lz4/l$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/jpountz/lz4/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/jpountz/lz4/l$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/jpountz/lz4/l$c;

.field public static final enum SIZE_1MB:Lnet/jpountz/lz4/l$c;

.field public static final enum SIZE_256KB:Lnet/jpountz/lz4/l$c;

.field public static final enum SIZE_4MB:Lnet/jpountz/lz4/l$c;

.field public static final enum SIZE_64KB:Lnet/jpountz/lz4/l$c;


# instance fields
.field private final indicator:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lnet/jpountz/lz4/l$c;

    const/4 v1, 0x0

    const/4 v2, 0x4

    const-string v3, "SIZE_64KB"

    invoke-direct {v0, v3, v1, v2}, Lnet/jpountz/lz4/l$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/jpountz/lz4/l$c;->SIZE_64KB:Lnet/jpountz/lz4/l$c;

    new-instance v1, Lnet/jpountz/lz4/l$c;

    const/4 v2, 0x1

    const/4 v3, 0x5

    const-string v4, "SIZE_256KB"

    invoke-direct {v1, v4, v2, v3}, Lnet/jpountz/lz4/l$c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/jpountz/lz4/l$c;->SIZE_256KB:Lnet/jpountz/lz4/l$c;

    new-instance v2, Lnet/jpountz/lz4/l$c;

    const/4 v3, 0x2

    const/4 v4, 0x6

    const-string v5, "SIZE_1MB"

    invoke-direct {v2, v5, v3, v4}, Lnet/jpountz/lz4/l$c;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lnet/jpountz/lz4/l$c;->SIZE_1MB:Lnet/jpountz/lz4/l$c;

    new-instance v3, Lnet/jpountz/lz4/l$c;

    const/4 v4, 0x3

    const/4 v5, 0x7

    const-string v6, "SIZE_4MB"

    invoke-direct {v3, v6, v4, v5}, Lnet/jpountz/lz4/l$c;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lnet/jpountz/lz4/l$c;->SIZE_4MB:Lnet/jpountz/lz4/l$c;

    filled-new-array {v0, v1, v2, v3}, [Lnet/jpountz/lz4/l$c;

    move-result-object v0

    sput-object v0, Lnet/jpountz/lz4/l$c;->$VALUES:[Lnet/jpountz/lz4/l$c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lnet/jpountz/lz4/l$c;->indicator:I

    return-void
.end method

.method public static b(I)Lnet/jpountz/lz4/l$c;
    .locals 3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    sget-object p0, Lnet/jpountz/lz4/l$c;->SIZE_4MB:Lnet/jpountz/lz4/l$c;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "Block size must be 4-7. Cannot use value of [%d]"

    invoke-static {v1, v2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Lnet/jpountz/lz4/l$c;->SIZE_1MB:Lnet/jpountz/lz4/l$c;

    return-object p0

    :cond_2
    sget-object p0, Lnet/jpountz/lz4/l$c;->SIZE_256KB:Lnet/jpountz/lz4/l$c;

    return-object p0

    :cond_3
    sget-object p0, Lnet/jpountz/lz4/l$c;->SIZE_64KB:Lnet/jpountz/lz4/l$c;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/jpountz/lz4/l$c;
    .locals 1

    const-class v0, Lnet/jpountz/lz4/l$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/jpountz/lz4/l$c;

    return-object p0
.end method

.method public static values()[Lnet/jpountz/lz4/l$c;
    .locals 1

    sget-object v0, Lnet/jpountz/lz4/l$c;->$VALUES:[Lnet/jpountz/lz4/l$c;

    invoke-virtual {v0}, [Lnet/jpountz/lz4/l$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/jpountz/lz4/l$c;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lnet/jpountz/lz4/l$c;->indicator:I

    return v0
.end method
