.class public abstract Lorg/openjdk/tools/javac/comp/Infer$IncorporationAction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Infer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "IncorporationAction"
.end annotation


# instance fields
.field t:Lorg/openjdk/tools/javac/code/Type;

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Infer;

.field uv:Lorg/openjdk/tools/javac/code/Type$UndetVar;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Infer;Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/code/Type;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Infer$IncorporationAction;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/Infer$IncorporationAction;->uv:Lorg/openjdk/tools/javac/code/Type$UndetVar;

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/Infer$IncorporationAction;->t:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method


# virtual methods
.method public abstract apply(Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/util/Warner;)V
.end method

.method public abstract dup(Lorg/openjdk/tools/javac/code/Type$UndetVar;)Lorg/openjdk/tools/javac/comp/Infer$IncorporationAction;
.end method

.method public isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer$IncorporationAction;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    sget-object v1, Lorg/openjdk/tools/javac/comp/Infer$IncorporationBinaryOpKind;->IS_SAME_TYPE:Lorg/openjdk/tools/javac/comp/Infer$IncorporationBinaryOpKind;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/openjdk/tools/javac/comp/Infer;->doIncorporationOp(Lorg/openjdk/tools/javac/comp/Infer$IncorporationBinaryOpKind;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;)Z

    move-result p1

    return p1
.end method

.method public isSubtype(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;)Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer$IncorporationAction;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    sget-object v1, Lorg/openjdk/tools/javac/comp/Infer$IncorporationBinaryOpKind;->IS_SUBTYPE:Lorg/openjdk/tools/javac/comp/Infer$IncorporationBinaryOpKind;

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Infer;->doIncorporationOp(Lorg/openjdk/tools/javac/comp/Infer$IncorporationBinaryOpKind;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Infer$IncorporationAction;->uv:Lorg/openjdk/tools/javac/code/Type$UndetVar;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Type$DelegatedType;->qtype:Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Infer$IncorporationAction;->t:Lorg/openjdk/tools/javac/code/Type;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s[undet=%s,t=%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
