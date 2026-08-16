.class public final enum Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReferenceKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

.field public static final enum ARRAY_CTOR:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

.field public static final enum BOUND:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

.field public static final enum IMPLICIT_INNER:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

.field public static final enum STATIC:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

.field public static final enum SUPER:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

.field public static final enum TOPLEVEL:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

.field public static final enum UNBOUND:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;


# instance fields
.field final mode:Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;

.field final unbound:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    sget-object v1, Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;->INVOKE:Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;

    const-string v2, "SUPER"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v3}, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;-><init>(Ljava/lang/String;ILorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;Z)V

    sput-object v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;->SUPER:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    new-instance v2, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    const-string v4, "UNBOUND"

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5, v1, v5}, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;-><init>(Ljava/lang/String;ILorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;Z)V

    sput-object v2, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;->UNBOUND:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    new-instance v4, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    const-string v5, "STATIC"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v1, v3}, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;-><init>(Ljava/lang/String;ILorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;Z)V

    sput-object v4, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;->STATIC:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    new-instance v5, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    const-string v6, "BOUND"

    const/4 v7, 0x3

    invoke-direct {v5, v6, v7, v1, v3}, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;-><init>(Ljava/lang/String;ILorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;Z)V

    sput-object v5, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;->BOUND:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    new-instance v6, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    sget-object v1, Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;->NEW:Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;

    const-string v7, "IMPLICIT_INNER"

    const/4 v8, 0x4

    invoke-direct {v6, v7, v8, v1, v3}, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;-><init>(Ljava/lang/String;ILorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;Z)V

    sput-object v6, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;->IMPLICIT_INNER:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    new-instance v7, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    const-string v8, "TOPLEVEL"

    const/4 v9, 0x5

    invoke-direct {v7, v8, v9, v1, v3}, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;-><init>(Ljava/lang/String;ILorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;Z)V

    sput-object v7, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;->TOPLEVEL:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    new-instance v8, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    const-string v9, "ARRAY_CTOR"

    const/4 v10, 0x6

    invoke-direct {v8, v9, v10, v1, v3}, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;-><init>(Ljava/lang/String;ILorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;Z)V

    sput-object v8, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;->ARRAY_CTOR:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    move-object v1, v2

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    filled-new-array/range {v0 .. v6}, [Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;->$VALUES:[Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;->mode:Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;

    iput-boolean p4, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;->unbound:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;->$VALUES:[Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    return-object v0
.end method


# virtual methods
.method public isUnbound()Z
    .locals 1

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;->unbound:Z

    return v0
.end method
