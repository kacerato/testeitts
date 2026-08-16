.class final enum Lorg/google/googlejavaformat/java/JavaInputAstVisitor$ReceiverParameter;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/google/googlejavaformat/java/JavaInputAstVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReceiverParameter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/google/googlejavaformat/java/JavaInputAstVisitor$ReceiverParameter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/google/googlejavaformat/java/JavaInputAstVisitor$ReceiverParameter;

.field public static final enum NO:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$ReceiverParameter;

.field public static final enum YES:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$ReceiverParameter;


# direct methods
.method private static synthetic $values()[Lorg/google/googlejavaformat/java/JavaInputAstVisitor$ReceiverParameter;
    .locals 2

    sget-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$ReceiverParameter;->YES:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$ReceiverParameter;

    sget-object v1, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$ReceiverParameter;->NO:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$ReceiverParameter;

    filled-new-array {v0, v1}, [Lorg/google/googlejavaformat/java/JavaInputAstVisitor$ReceiverParameter;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$ReceiverParameter;

    const-string v1, "YES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$ReceiverParameter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$ReceiverParameter;->YES:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$ReceiverParameter;

    new-instance v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$ReceiverParameter;

    const-string v1, "NO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$ReceiverParameter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$ReceiverParameter;->NO:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$ReceiverParameter;

    invoke-static {}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$ReceiverParameter;->$values()[Lorg/google/googlejavaformat/java/JavaInputAstVisitor$ReceiverParameter;

    move-result-object v0

    sput-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$ReceiverParameter;->$VALUES:[Lorg/google/googlejavaformat/java/JavaInputAstVisitor$ReceiverParameter;

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

.method public static valueOf(Ljava/lang/String;)Lorg/google/googlejavaformat/java/JavaInputAstVisitor$ReceiverParameter;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$ReceiverParameter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$ReceiverParameter;

    return-object p0
.end method

.method public static values()[Lorg/google/googlejavaformat/java/JavaInputAstVisitor$ReceiverParameter;
    .locals 1

    sget-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$ReceiverParameter;->$VALUES:[Lorg/google/googlejavaformat/java/JavaInputAstVisitor$ReceiverParameter;

    invoke-virtual {v0}, [Lorg/google/googlejavaformat/java/JavaInputAstVisitor$ReceiverParameter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/google/googlejavaformat/java/JavaInputAstVisitor$ReceiverParameter;

    return-object v0
.end method


# virtual methods
.method public isYes()Z
    .locals 1

    sget-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$ReceiverParameter;->YES:Lorg/google/googlejavaformat/java/JavaInputAstVisitor$ReceiverParameter;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
