.class Lorg/openjdk/tools/javac/comp/Infer$CheckInst;
.super Lorg/openjdk/tools/javac/comp/Infer$CheckBounds;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Infer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CheckInst"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Infer;

.field to:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Infer;Lorg/openjdk/tools/javac/code/Type$UndetVar;Ljava/util/EnumSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type$UndetVar;",
            "Ljava/util/EnumSet<",
            "Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;",
            ">;)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Infer$CheckInst;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    .line 3
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->getInst()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->EQ:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/openjdk/tools/javac/comp/Infer$CheckBounds;-><init>(Lorg/openjdk/tools/javac/comp/Infer;Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)V

    .line 4
    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/Infer$CheckInst;->to:Ljava/util/EnumSet;

    return-void
.end method

.method public varargs constructor <init>(Lorg/openjdk/tools/javac/comp/Infer;Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;[Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)V
    .locals 0

    .line 1
    invoke-static {p3, p4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Infer$CheckInst;-><init>(Lorg/openjdk/tools/javac/comp/Infer;Lorg/openjdk/tools/javac/code/Type$UndetVar;Ljava/util/EnumSet;)V

    return-void
.end method


# virtual methods
.method public boundsToCheck()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer$CheckInst;->to:Ljava/util/EnumSet;

    return-object v0
.end method

.method public dup(Lorg/openjdk/tools/javac/code/Type$UndetVar;)Lorg/openjdk/tools/javac/comp/Infer$IncorporationAction;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/comp/Infer$CheckInst;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Infer$CheckInst;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Infer$CheckInst;->to:Ljava/util/EnumSet;

    invoke-direct {v0, v1, p1, v2}, Lorg/openjdk/tools/javac/comp/Infer$CheckInst;-><init>(Lorg/openjdk/tools/javac/comp/Infer;Lorg/openjdk/tools/javac/code/Type$UndetVar;Ljava/util/EnumSet;)V

    return-object v0
.end method

.method public report(Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)V
    .locals 1

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Infer$CheckInst;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer$IncorporationAction;->uv:Lorg/openjdk/tools/javac/code/Type$UndetVar;

    invoke-virtual {p1, v0, p2}, Lorg/openjdk/tools/javac/comp/Infer;->reportInstError(Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)V

    return-void
.end method
