.class public final enum Lcom/google/protobuf/H$v$c;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/B1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/H$v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/protobuf/H$v$c;",
        ">;",
        "Lcom/google/protobuf/B1;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protobuf/H$v$c;

.field public static final enum CODE_SIZE:Lcom/google/protobuf/H$v$c;

.field public static final CODE_SIZE_VALUE:I = 0x2

.field public static final enum LITE_RUNTIME:Lcom/google/protobuf/H$v$c;

.field public static final LITE_RUNTIME_VALUE:I = 0x3

.field public static final enum SPEED:Lcom/google/protobuf/H$v$c;

.field public static final SPEED_VALUE:I = 0x1

.field private static final VALUES:[Lcom/google/protobuf/H$v$c;

.field private static final internalValueMap:Lcom/google/protobuf/D0$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/D0$d<",
            "Lcom/google/protobuf/H$v$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/protobuf/H$v$c;

    const-string v1, "SPEED"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/H$v$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/protobuf/H$v$c;->SPEED:Lcom/google/protobuf/H$v$c;

    new-instance v1, Lcom/google/protobuf/H$v$c;

    const-string v2, "CODE_SIZE"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/google/protobuf/H$v$c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/protobuf/H$v$c;->CODE_SIZE:Lcom/google/protobuf/H$v$c;

    new-instance v2, Lcom/google/protobuf/H$v$c;

    const-string v3, "LITE_RUNTIME"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lcom/google/protobuf/H$v$c;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/protobuf/H$v$c;->LITE_RUNTIME:Lcom/google/protobuf/H$v$c;

    filled-new-array {v0, v1, v2}, [Lcom/google/protobuf/H$v$c;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/H$v$c;->$VALUES:[Lcom/google/protobuf/H$v$c;

    new-instance v0, Lcom/google/protobuf/H$v$c$a;

    invoke-direct {v0}, Lcom/google/protobuf/H$v$c$a;-><init>()V

    sput-object v0, Lcom/google/protobuf/H$v$c;->internalValueMap:Lcom/google/protobuf/D0$d;

    invoke-static {}, Lcom/google/protobuf/H$v$c;->values()[Lcom/google/protobuf/H$v$c;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/H$v$c;->VALUES:[Lcom/google/protobuf/H$v$c;

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
            "$enum$name",
            "$enum$ordinal",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/protobuf/H$v$c;->value:I

    return-void
.end method

.method public static a(I)Lcom/google/protobuf/H$v$c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/protobuf/H$v$c;->LITE_RUNTIME:Lcom/google/protobuf/H$v$c;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/protobuf/H$v$c;->CODE_SIZE:Lcom/google/protobuf/H$v$c;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/protobuf/H$v$c;->SPEED:Lcom/google/protobuf/H$v$c;

    return-object p0
.end method

.method public static final b()Lcom/google/protobuf/Descriptors$d;
    .locals 2

    invoke-static {}, Lcom/google/protobuf/H$v;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->q()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$d;

    return-object v0
.end method

.method public static c()Lcom/google/protobuf/D0$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/D0$d<",
            "Lcom/google/protobuf/H$v$c;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/H$v$c;->internalValueMap:Lcom/google/protobuf/D0$d;

    return-object v0
.end method

.method public static e(I)Lcom/google/protobuf/H$v$c;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/H$v$c;->a(I)Lcom/google/protobuf/H$v$c;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lcom/google/protobuf/Descriptors$e;)Lcom/google/protobuf/H$v$c;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "desc"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$e;->i()Lcom/google/protobuf/Descriptors$d;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/H$v$c;->b()Lcom/google/protobuf/Descriptors$d;

    move-result-object v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/protobuf/H$v$c;->VALUES:[Lcom/google/protobuf/H$v$c;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$e;->g()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/H$v$c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/google/protobuf/H$v$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/H$v$c;

    return-object p0
.end method

.method public static values()[Lcom/google/protobuf/H$v$c;
    .locals 1

    sget-object v0, Lcom/google/protobuf/H$v$c;->$VALUES:[Lcom/google/protobuf/H$v$c;

    invoke-virtual {v0}, [Lcom/google/protobuf/H$v$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/H$v$c;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$d;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/H$v$c;->b()Lcom/google/protobuf/Descriptors$d;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/H$v$c;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$e;
    .locals 2

    invoke-static {}, Lcom/google/protobuf/H$v$c;->b()Lcom/google/protobuf/Descriptors$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$d;->t()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$e;

    return-object v0
.end method
