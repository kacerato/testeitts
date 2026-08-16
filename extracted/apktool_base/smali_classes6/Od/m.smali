.class public final synthetic LOd/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 6

    invoke-static {}, LOd/p;->values()[LOd/p;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, LOd/m;->a:[I

    sget-object v1, LOd/p;->START:LOd/p;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, LOd/p;->TOP:LOd/p;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v1, LOd/p;->END:LOd/p;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sget-object v1, LOd/p;->BOTTOM:LOd/p;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v5, 0x4

    aput v5, v0, v1

    invoke-static {}, LOd/o;->values()[LOd/o;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, LOd/m;->b:[I

    sget-object v1, LOd/o;->DROPDOWN:LOd/o;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, LOd/o;->FADE:LOd/o;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, LOd/o;->BOUNCE:LOd/o;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    return-void
.end method
