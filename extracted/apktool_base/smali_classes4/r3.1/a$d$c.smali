.class public final enum Lr3/a$d$c;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/B1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr3/a$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lr3/a$d$c;",
        ">;",
        "Lcom/google/protobuf/B1;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lr3/a$d$c;

.field public static final enum FEATURE_NONE:Lr3/a$d$c;

.field public static final FEATURE_NONE_VALUE:I = 0x0

.field public static final enum FEATURE_PROTO3_OPTIONAL:Lr3/a$d$c;

.field public static final FEATURE_PROTO3_OPTIONAL_VALUE:I = 0x1

.field private static final VALUES:[Lr3/a$d$c;

.field private static final internalValueMap:Lcom/google/protobuf/D0$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/D0$d<",
            "Lr3/a$d$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lr3/a$d$c;

    const-string v1, "FEATURE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lr3/a$d$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lr3/a$d$c;->FEATURE_NONE:Lr3/a$d$c;

    new-instance v1, Lr3/a$d$c;

    const-string v2, "FEATURE_PROTO3_OPTIONAL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lr3/a$d$c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lr3/a$d$c;->FEATURE_PROTO3_OPTIONAL:Lr3/a$d$c;

    filled-new-array {v0, v1}, [Lr3/a$d$c;

    move-result-object v0

    sput-object v0, Lr3/a$d$c;->$VALUES:[Lr3/a$d$c;

    new-instance v0, Lr3/a$d$c$a;

    invoke-direct {v0}, Lr3/a$d$c$a;-><init>()V

    sput-object v0, Lr3/a$d$c;->internalValueMap:Lcom/google/protobuf/D0$d;

    invoke-static {}, Lr3/a$d$c;->values()[Lr3/a$d$c;

    move-result-object v0

    sput-object v0, Lr3/a$d$c;->VALUES:[Lr3/a$d$c;

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

    iput p3, p0, Lr3/a$d$c;->value:I

    return-void
.end method

.method public static a(I)Lr3/a$d$c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lr3/a$d$c;->FEATURE_PROTO3_OPTIONAL:Lr3/a$d$c;

    return-object p0

    :cond_1
    sget-object p0, Lr3/a$d$c;->FEATURE_NONE:Lr3/a$d$c;

    return-object p0
.end method

.method public static final b()Lcom/google/protobuf/Descriptors$d;
    .locals 2

    invoke-static {}, Lr3/a$d;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

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
            "Lr3/a$d$c;",
            ">;"
        }
    .end annotation

    sget-object v0, Lr3/a$d$c;->internalValueMap:Lcom/google/protobuf/D0$d;

    return-object v0
.end method

.method public static e(I)Lr3/a$d$c;
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

    invoke-static {p0}, Lr3/a$d$c;->a(I)Lr3/a$d$c;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lcom/google/protobuf/Descriptors$e;)Lr3/a$d$c;
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

    invoke-static {}, Lr3/a$d$c;->b()Lcom/google/protobuf/Descriptors$d;

    move-result-object v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lr3/a$d$c;->VALUES:[Lr3/a$d$c;

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

.method public static valueOf(Ljava/lang/String;)Lr3/a$d$c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lr3/a$d$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lr3/a$d$c;

    return-object p0
.end method

.method public static values()[Lr3/a$d$c;
    .locals 1

    sget-object v0, Lr3/a$d$c;->$VALUES:[Lr3/a$d$c;

    invoke-virtual {v0}, [Lr3/a$d$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr3/a$d$c;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$d;
    .locals 1

    invoke-static {}, Lr3/a$d$c;->b()Lcom/google/protobuf/Descriptors$d;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    iget v0, p0, Lr3/a$d$c;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$e;
    .locals 2

    invoke-static {}, Lr3/a$d$c;->b()Lcom/google/protobuf/Descriptors$d;

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
