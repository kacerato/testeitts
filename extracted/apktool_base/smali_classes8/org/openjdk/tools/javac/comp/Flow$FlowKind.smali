.class final enum Lorg/openjdk/tools/javac/comp/Flow$FlowKind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FlowKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/comp/Flow$FlowKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/comp/Flow$FlowKind;

.field public static final enum NORMAL:Lorg/openjdk/tools/javac/comp/Flow$FlowKind;

.field public static final enum SPECULATIVE_LOOP:Lorg/openjdk/tools/javac/comp/Flow$FlowKind;


# instance fields
.field final errKey:Ljava/lang/String;

.field final isFinal:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/openjdk/tools/javac/comp/Flow$FlowKind;

    const/4 v1, 0x0

    const-string v2, "var.might.already.be.assigned"

    const-string v3, "NORMAL"

    invoke-direct {v0, v3, v1, v2, v1}, Lorg/openjdk/tools/javac/comp/Flow$FlowKind;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lorg/openjdk/tools/javac/comp/Flow$FlowKind;->NORMAL:Lorg/openjdk/tools/javac/comp/Flow$FlowKind;

    new-instance v1, Lorg/openjdk/tools/javac/comp/Flow$FlowKind;

    const/4 v2, 0x1

    const-string v3, "var.might.be.assigned.in.loop"

    const-string v4, "SPECULATIVE_LOOP"

    invoke-direct {v1, v4, v2, v3, v2}, Lorg/openjdk/tools/javac/comp/Flow$FlowKind;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lorg/openjdk/tools/javac/comp/Flow$FlowKind;->SPECULATIVE_LOOP:Lorg/openjdk/tools/javac/comp/Flow$FlowKind;

    filled-new-array {v0, v1}, [Lorg/openjdk/tools/javac/comp/Flow$FlowKind;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/comp/Flow$FlowKind;->$VALUES:[Lorg/openjdk/tools/javac/comp/Flow$FlowKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowKind;->errKey:Ljava/lang/String;

    iput-boolean p4, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowKind;->isFinal:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/comp/Flow$FlowKind;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/comp/Flow$FlowKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/comp/Flow$FlowKind;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/comp/Flow$FlowKind;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/comp/Flow$FlowKind;->$VALUES:[Lorg/openjdk/tools/javac/comp/Flow$FlowKind;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/comp/Flow$FlowKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/comp/Flow$FlowKind;

    return-object v0
.end method


# virtual methods
.method public isFinal()Z
    .locals 1

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowKind;->isFinal:Z

    return v0
.end method
