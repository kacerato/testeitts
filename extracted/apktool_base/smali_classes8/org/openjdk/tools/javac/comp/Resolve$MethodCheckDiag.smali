.class final enum Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Resolve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MethodCheckDiag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;

.field public static final enum ARG_MISMATCH:Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;

.field public static final enum ARITY_MISMATCH:Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;

.field public static final enum INACCESSIBLE_VARARGS:Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;

.field public static final enum VARARG_MISMATCH:Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;


# instance fields
.field final basicKey:Ljava/lang/String;

.field final inferKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;

    const-string v1, "arg.length.mismatch"

    const-string v2, "infer.arg.length.mismatch"

    const-string v3, "ARITY_MISMATCH"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;->ARITY_MISMATCH:Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;

    new-instance v1, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;

    const-string v2, "no.conforming.assignment.exists"

    const-string v3, "infer.no.conforming.assignment.exists"

    const-string v4, "ARG_MISMATCH"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v3}, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;->ARG_MISMATCH:Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;

    new-instance v2, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;

    const-string v3, "varargs.argument.mismatch"

    const-string v4, "infer.varargs.argument.mismatch"

    const-string v5, "VARARG_MISMATCH"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v3, v4}, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;->VARARG_MISMATCH:Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;

    new-instance v3, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;

    const/4 v4, 0x3

    const-string v5, "inaccessible.varargs.type"

    const-string v6, "INACCESSIBLE_VARARGS"

    invoke-direct {v3, v6, v4, v5, v5}, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;->INACCESSIBLE_VARARGS:Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;

    filled-new-array {v0, v1, v2, v3}, [Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;->$VALUES:[Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;->basicKey:Ljava/lang/String;

    iput-object p4, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;->inferKey:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;->$VALUES:[Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;

    return-object v0
.end method


# virtual methods
.method public regex()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;->basicKey:Ljava/lang/String;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;->inferKey:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "([a-z]*\\.)*(%s|%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
