.class public final enum Lorg/google/googlejavaformat/CloseOp;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lorg/google/googlejavaformat/Op;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/google/googlejavaformat/CloseOp;",
        ">;",
        "Lorg/google/googlejavaformat/Op;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/google/googlejavaformat/CloseOp;

.field public static final enum CLOSE:Lorg/google/googlejavaformat/CloseOp;


# direct methods
.method private static synthetic $values()[Lorg/google/googlejavaformat/CloseOp;
    .locals 1

    sget-object v0, Lorg/google/googlejavaformat/CloseOp;->CLOSE:Lorg/google/googlejavaformat/CloseOp;

    filled-new-array {v0}, [Lorg/google/googlejavaformat/CloseOp;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/google/googlejavaformat/CloseOp;

    const-string v1, "CLOSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/google/googlejavaformat/CloseOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/google/googlejavaformat/CloseOp;->CLOSE:Lorg/google/googlejavaformat/CloseOp;

    invoke-static {}, Lorg/google/googlejavaformat/CloseOp;->$values()[Lorg/google/googlejavaformat/CloseOp;

    move-result-object v0

    sput-object v0, Lorg/google/googlejavaformat/CloseOp;->$VALUES:[Lorg/google/googlejavaformat/CloseOp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static make()Lorg/google/googlejavaformat/Op;
    .locals 1

    sget-object v0, Lorg/google/googlejavaformat/CloseOp;->CLOSE:Lorg/google/googlejavaformat/CloseOp;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/google/googlejavaformat/CloseOp;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lorg/google/googlejavaformat/CloseOp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/google/googlejavaformat/CloseOp;

    return-object p0
.end method

.method public static values()[Lorg/google/googlejavaformat/CloseOp;
    .locals 1

    sget-object v0, Lorg/google/googlejavaformat/CloseOp;->$VALUES:[Lorg/google/googlejavaformat/CloseOp;

    invoke-virtual {v0}, [Lorg/google/googlejavaformat/CloseOp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/google/googlejavaformat/CloseOp;

    return-object v0
.end method


# virtual methods
.method public add(Lorg/google/googlejavaformat/DocBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/google/googlejavaformat/DocBuilder;->close()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lw2/z;->c(Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    invoke-virtual {v0}, Lw2/z$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
