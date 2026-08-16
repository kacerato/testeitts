.class public abstract enum Lcom/google/protobuf/A2$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/A2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/protobuf/A2$d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protobuf/A2$d;

.field public static final enum LAZY:Lcom/google/protobuf/A2$d;

.field public static final enum LOOSE:Lcom/google/protobuf/A2$d;

.field public static final enum STRICT:Lcom/google/protobuf/A2$d;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/google/protobuf/A2$d$a;

    const-string v1, "LOOSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/A2$d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/protobuf/A2$d;->LOOSE:Lcom/google/protobuf/A2$d;

    new-instance v1, Lcom/google/protobuf/A2$d$b;

    const-string v3, "STRICT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/protobuf/A2$d$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/protobuf/A2$d;->STRICT:Lcom/google/protobuf/A2$d;

    new-instance v3, Lcom/google/protobuf/A2$d$c;

    const-string v5, "LAZY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/protobuf/A2$d$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/protobuf/A2$d;->LAZY:Lcom/google/protobuf/A2$d;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/protobuf/A2$d;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/google/protobuf/A2$d;->$VALUES:[Lcom/google/protobuf/A2$d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/google/protobuf/A2$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/A2$d;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/A2$d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/google/protobuf/A2$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/A2$d;

    return-object p0
.end method

.method public static values()[Lcom/google/protobuf/A2$d;
    .locals 1

    sget-object v0, Lcom/google/protobuf/A2$d;->$VALUES:[Lcom/google/protobuf/A2$d;

    invoke-virtual {v0}, [Lcom/google/protobuf/A2$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/A2$d;

    return-object v0
.end method


# virtual methods
.method public abstract a(Lcom/google/protobuf/C;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
