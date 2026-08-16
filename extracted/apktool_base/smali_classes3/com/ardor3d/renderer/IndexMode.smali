.class public final enum Lcom/ardor3d/renderer/IndexMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ardor3d/renderer/IndexMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ardor3d/renderer/IndexMode;

.field public static final enum LineLoop:Lcom/ardor3d/renderer/IndexMode;

.field public static final enum LineStrip:Lcom/ardor3d/renderer/IndexMode;

.field public static final enum Lines:Lcom/ardor3d/renderer/IndexMode;

.field public static final enum Points:Lcom/ardor3d/renderer/IndexMode;

.field public static final enum QuadStrip:Lcom/ardor3d/renderer/IndexMode;

.field public static final enum Quads:Lcom/ardor3d/renderer/IndexMode;

.field public static final enum TriangleFan:Lcom/ardor3d/renderer/IndexMode;

.field public static final enum TriangleStrip:Lcom/ardor3d/renderer/IndexMode;

.field public static final enum Triangles:Lcom/ardor3d/renderer/IndexMode;


# instance fields
.field private final _hasPolygons:Z


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/ardor3d/renderer/IndexMode;

    const-string v1, "Triangles"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/ardor3d/renderer/IndexMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/ardor3d/renderer/IndexMode;->Triangles:Lcom/ardor3d/renderer/IndexMode;

    new-instance v1, Lcom/ardor3d/renderer/IndexMode;

    const-string v4, "TriangleStrip"

    invoke-direct {v1, v4, v3, v3}, Lcom/ardor3d/renderer/IndexMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/ardor3d/renderer/IndexMode;->TriangleStrip:Lcom/ardor3d/renderer/IndexMode;

    new-instance v4, Lcom/ardor3d/renderer/IndexMode;

    const-string v5, "TriangleFan"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v3}, Lcom/ardor3d/renderer/IndexMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Lcom/ardor3d/renderer/IndexMode;->TriangleFan:Lcom/ardor3d/renderer/IndexMode;

    new-instance v5, Lcom/ardor3d/renderer/IndexMode;

    const-string v6, "Quads"

    const/4 v7, 0x3

    invoke-direct {v5, v6, v7, v3}, Lcom/ardor3d/renderer/IndexMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lcom/ardor3d/renderer/IndexMode;->Quads:Lcom/ardor3d/renderer/IndexMode;

    new-instance v6, Lcom/ardor3d/renderer/IndexMode;

    const-string v7, "QuadStrip"

    const/4 v8, 0x4

    invoke-direct {v6, v7, v8, v3}, Lcom/ardor3d/renderer/IndexMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v6, Lcom/ardor3d/renderer/IndexMode;->QuadStrip:Lcom/ardor3d/renderer/IndexMode;

    new-instance v7, Lcom/ardor3d/renderer/IndexMode;

    const-string v3, "Lines"

    const/4 v8, 0x5

    invoke-direct {v7, v3, v8, v2}, Lcom/ardor3d/renderer/IndexMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v7, Lcom/ardor3d/renderer/IndexMode;->Lines:Lcom/ardor3d/renderer/IndexMode;

    new-instance v8, Lcom/ardor3d/renderer/IndexMode;

    const-string v3, "LineStrip"

    const/4 v9, 0x6

    invoke-direct {v8, v3, v9, v2}, Lcom/ardor3d/renderer/IndexMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v8, Lcom/ardor3d/renderer/IndexMode;->LineStrip:Lcom/ardor3d/renderer/IndexMode;

    new-instance v9, Lcom/ardor3d/renderer/IndexMode;

    const-string v3, "LineLoop"

    const/4 v10, 0x7

    invoke-direct {v9, v3, v10, v2}, Lcom/ardor3d/renderer/IndexMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v9, Lcom/ardor3d/renderer/IndexMode;->LineLoop:Lcom/ardor3d/renderer/IndexMode;

    new-instance v10, Lcom/ardor3d/renderer/IndexMode;

    const-string v3, "Points"

    const/16 v11, 0x8

    invoke-direct {v10, v3, v11, v2}, Lcom/ardor3d/renderer/IndexMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v10, Lcom/ardor3d/renderer/IndexMode;->Points:Lcom/ardor3d/renderer/IndexMode;

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    filled-new-array/range {v0 .. v8}, [Lcom/ardor3d/renderer/IndexMode;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/renderer/IndexMode;->$VALUES:[Lcom/ardor3d/renderer/IndexMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/ardor3d/renderer/IndexMode;->_hasPolygons:Z

    return-void
.end method

.method public static getPrimitiveCount(Lcom/ardor3d/renderer/IndexMode;I)I
    .locals 2

    sget-object v0, Lcom/ardor3d/renderer/IndexMode$1;->$SwitchMap$com$ardor3d$renderer$IndexMode:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unimplemented index mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    return p1

    :pswitch_1
    add-int/lit8 p1, p1, -0x1

    return p1

    :pswitch_2
    div-int/lit8 p1, p1, 0x2

    return p1

    :pswitch_3
    div-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, -0x1

    return p1

    :pswitch_4
    div-int/lit8 p1, p1, 0x4

    return p1

    :pswitch_5
    add-int/lit8 p1, p1, -0x2

    return p1

    :pswitch_6
    div-int/lit8 p1, p1, 0x3

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ardor3d/renderer/IndexMode;
    .locals 1

    const-class v0, Lcom/ardor3d/renderer/IndexMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ardor3d/renderer/IndexMode;

    return-object p0
.end method

.method public static values()[Lcom/ardor3d/renderer/IndexMode;
    .locals 1

    sget-object v0, Lcom/ardor3d/renderer/IndexMode;->$VALUES:[Lcom/ardor3d/renderer/IndexMode;

    invoke-virtual {v0}, [Lcom/ardor3d/renderer/IndexMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ardor3d/renderer/IndexMode;

    return-object v0
.end method


# virtual methods
.method public getVertexCount()I
    .locals 3

    sget-object v0, Lcom/ardor3d/renderer/IndexMode$1;->$SwitchMap$com$ardor3d$renderer$IndexMode:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    const/4 v0, 0x2

    return v0

    :pswitch_2
    const/4 v0, 0x4

    return v0

    :pswitch_3
    const/4 v0, 0x3

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hasPolygons()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/IndexMode;->_hasPolygons:Z

    return v0
.end method
